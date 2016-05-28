-- |
--
-- Module      :  Elixir.Derive
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Derive where


import Elixir.Template

import Elixir.Patterns

import Elixir.System

import Elixir.Entity

import Elixir.Pretty

import Data.List


instance (Show a, Template a) => Pretty [(String, [(TagsType, [(Form, Lexeme a)])])] where

    pretty = vcat . map pretty . filter (not . null . snd)


instance (Show a, Template a) => Pretty (String, [(TagsType, [(Form, Lexeme a)])]) where

    pretty (x, y) = text x <> align ( vcat [

                        text "\t" <> pretty t <> hcat ( punctuate ( line <>

                            text "\t" <> fill 10 empty )

                            [ joinText [show u, merge r (morphs e), show r, show (morphs e)] | (u, Lexeme r e) <- f ]

                        ) | (t, f) <- y, not (null f) ] )


instance (Show a, Template a) => Pretty [(TagsType, [(Form, Lexeme a)])] where

    pretty = singleline pretty . filter (not . null . snd)


instance (Show a, Template a) => Pretty (TagsType, [(Form, Lexeme a)]) where

    pretty (x, y) = pretty x <> (nest 10 . vcat)

                    [ joinText [show u, merge r (morphs e), show r, show (morphs e)] | (u, Lexeme r e) <- y ]


class Derive m p where

    derive :: (Morphing a a, Forming a, Rules a) => m a -> p -> [(TagsType, [(Form, Lexeme a)])]


newtype Derived a = Derived [(TagsType, [(Form, Lexeme a)])]


instance Show a => Show (Derived a) where

    show (Derived x) = show x


instance (Show a, Template a) => Pretty (Derived a) where

    pretty (Derived x) = pretty x


instance Derive Lexeme String where

    derive x y = derive x (convert y)


instance Derive Lexeme a => Derive Lexeme [a] where

    derive x y = [ z | i <- y, z <- derive x i ]


instance Derive Lexeme TagsTypes where

    derive x (TagsTypes y) = derive x y


instance Derive Lexeme TagsType where

    derive x y = case expand y of

        TagsVerb z ->  derive x (first z)
        TagsNoun z ->  derive x (first z)
        TagsAdj  z ->  derive x (first z)
        _          ->  []


instance Derive Lexeme TagsVerb where

 -- derive (Lexeme r e) x | (not . isVerb) (entity e) = []

    derive (Lexeme r e) x = [ (y, z) |

            let y = TagsVerb [],

            let z = [ (f, z) | f <- [I ..],

                               let ms = lookNoun (morphs e) (domain e) 'V' (nounStems f r),

                               m <- nub ms,

                               let z = Lexeme r (m `verb` (reflex e)) ] ]


instance Derive Lexeme TagsNoun where

 -- derive (Lexeme r e) x | (not . isNoun) (entity e) = []

    derive (Lexeme r e) x | isVerb (entity e) && (not . null) ms = [ (y, z) |

                            let y = TagsNoun [],

                            let z = [ (f, z) | f <- fs,

                                               m <- ms,

                                               let z = Lexeme r (m `noun` (reflex e)) ] ]

            where Verb fs _ _ _ ms _ _ = entity e

    derive (Lexeme r e) x = [ (y, z) |

            let y = TagsNoun [],

            let z = [ (f, z) | f <- [I ..],

                               let ms = lookNoun (morphs e) (domain e) 'N' (nounStems f r),

                               m <- nub ms,

                               let z = Lexeme r (m `noun` (reflex e)) ] ]


instance Derive Lexeme TagsAdj where

 -- derive (Lexeme r e) x | (not . isAdj) (entity e) = []

    derive (Lexeme r e) x@(TagsAdjA _ v _ _ _ _) = [ (y, z) |

            let v' = vals v,

            v <- v',

            let y = TagsAdj [TagsAdjA [] [v] [] [] [] []],

            let z = [ (f, z) | f <- [I ..],

                               let ms = lookNoun (morphs e) (domain e) (show' v) (nounStems f r),

                               m <- nub ms,

                               let z = Lexeme r (m `adj` (reflex e)) ] ]


instance Derive Lexeme a => Derive Entry a where

    derive x = derive (Lexeme "f ` l" x)


lookupForm :: (Morphing a a, Forming a, Eq a) => Root -> Entry a -> [Form]

lookupForm r e = case entity e of

        Verb fs _ _ _ _ _ _ -> fs

        Noun _ _ _          -> [ f | f <- [I ..], or [ p == b || p == c || m == d | (_, b, c, d) <- nounStems f r ] ]

        Adj  _ _            -> [ f | f <- [I ..], or [ p == b || p == c           | (_, b, c, _) <- nounStems f r ] ]

        _                   -> []

        where p = pattern m
              m = morphs e


lookVerb :: Eq a => a -> Tense -> Voice -> Bool -> Tense -> Voice -> Bool -> [VerbStems a] -> [a]

lookVerb x t v b t' v' b' = map (findVerb t' v' b') . siftVerb x t v b


siftVerb :: Eq a => a -> Tense -> Voice -> Bool -> [VerbStems a] -> [VerbStems a]

siftVerb x Perfect Active  True is = [ i | i@(Just (a, _, _, _), _, _, _, _) <- is, x == a ]
siftVerb x Perfect Active  _    is = [ i | i@(_                , a, _, _, _) <- is, x == a ]

siftVerb x Perfect Passive True is = [ i | i@(Just (_, b, _, _), _, _, _, _) <- is, x == b ]
siftVerb x Perfect Passive _    is = [ i | i@(_                , _, b, _, _) <- is, x == b ]

siftVerb x _       Active  True is = [ i | i@(Just (_, _, c, _), _, _, _, _) <- is, x == c ]
siftVerb x _       Active  _    is = [ i | i@(_                , _, _, c, _) <- is, x == c ]

siftVerb x _       _       True is = [ i | i@(Just (_, _, _, d), _, _, _, _) <- is, x == d ]
siftVerb x _       _       _    is = [ i | i@(_                , _, _, _, d) <- is, x == d ]


findVerb :: Tense -> Voice -> Bool -> VerbStems a -> a

findVerb Perfect Active  True (Just (a, _, _, _), _, _, _, _) = a
findVerb Perfect Active  _    ( _               , a, _, _, _) = a

findVerb Perfect Passive True (Just (_, b, _, _), _, _, _, _) = b
findVerb Perfect Passive _    ( _               , _, b, _, _) = b

findVerb _       Active  True (Just (_, _, c, _), _, _, _, _) = c
findVerb _       Active  _    ( _               , _, _, c, _) = c

findVerb _       _       True (Just (_, _, _, d), _, _, _, _) = d
findVerb _       _       _    ( _               , _, _, _, d) = d


lookNoun :: (Morphing a a, Eq a) => Morphs a -> TagsType -> Char -> [NounStems a] -> [Morphs a]

lookNoun x y y' = map (findNoun y') . siftNoun x y


siftNoun :: (Morphing a a, Eq a) => Morphs a -> TagsType -> [NounStems a] -> [NounStems a]

siftNoun x (TagsVerb _) is = [ i | i@(a, _, _, _) <- is, x == morph a ]
siftNoun x (TagsAdj  _) is = [ i | i@(_, b, c, _) <- is, x == morph b || x == morph c ]
siftNoun x (TagsNoun _) is = [ i | i@(_, b, c, d) <- is, x == morph b || x == morph c || x == d ]
siftNoun _ _            _  = []


findNoun :: Morphing a a => Char -> NounStems a -> Morphs a

findNoun 'V' (a, _, _, _) = morph a
findNoun 'A' (_, b, _, _) = morph b
findNoun 'P' (_, _, c, _) = morph c
findNoun 'N' (_, _, _, d) = d
