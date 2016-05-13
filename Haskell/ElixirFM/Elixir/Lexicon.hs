-- |
--
-- Module      :  Elixir.Lexicon
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Lexicon (

        module Elixir.Patterns,

        module Elixir.Template,

        module Elixir.Entity,

        module Elixir.System,

        Wrapping (..),

        Lexicon, Wrap, Index, Clips,

        include, cluster, listing,

        unwraps, wraps, clips,

        (|>), (<|)

    ) where


import Elixir.Template

import Elixir.Patterns

import Elixir.System

import Elixir.Entity

import Elixir.Pretty

import Elixir.Derive


type Clips = (Int, [Int])

type Index = (Int, Int)


clips :: Index -> Clips

clips (i, j) = (i, [j])


include :: [Lexicon] -> Lexicon

include = concat    -- include f = concat . map f


cluster :: Cluster

cluster = []


type Lexicon = [Wrap Nest]

type Cluster = Lexicon


-- anything to become 'Wrap x' must have a newtype or data constructor 'x' of kind * -> *

data Wrap a = WrapS (a String)
            | WrapT (a PatternT)
            | WrapQ (a PatternQ)
            | WrapL (a PatternL)

    -- deriving (Show, Eq)


instance (Eq (a String), Eq (a PatternT), Eq (a PatternQ), Eq (a PatternL)) => Eq (Wrap a) where

    WrapS x == WrapS y = x == y
    WrapT x == WrapT y = x == y
    WrapQ x == WrapQ y = x == y
    WrapL x == WrapL y = x == y
    _       == _       = False


instance (Show (a String), Show (a PatternT), Show (a PatternQ), Show (a PatternL)) => Show (Wrap a) where

    showsPrec _ (WrapS x) = ("WrapS (" ++) . shows x . (")" ++)
    showsPrec _ (WrapT x) = ("WrapT (" ++) . shows x . (")" ++)
    showsPrec _ (WrapQ x) = ("WrapQ (" ++) . shows x . (")" ++)
    showsPrec _ (WrapL x) = ("WrapL (" ++) . shows x . (")" ++)


-- instance (forall b . Pretty (a b)) => Pretty (Wrap a) where

instance (Pretty (a String), Pretty (a PatternT), Pretty (a PatternQ), Pretty (a PatternL)) => Pretty (Wrap a) where

    pretty (WrapS x) = pretty x
    pretty (WrapT x) = pretty x
    pretty (WrapQ x) = pretty x
    pretty (WrapL x) = pretty x


instance Read (Wrap Morphs) where

    readsPrec p x = first ( final [ (wrap (z :: Morphs PatternT), y) | (z, y) <- readsPrec p x ] ++
                            final [ (wrap (z :: Morphs PatternQ), y) | (z, y) <- readsPrec p x ] ++
                            final [ (wrap (z :: Morphs PatternL), y) | (z, y) <- readsPrec p x ] ++
                            final [ (wrap (z :: Morphs String),   y) | (z, y) <- readsPrec p x ] )

                    -- expected parse is first
                    -- complete parse is final


instance Pretty Lexicon => Pretty [Lexicon] where

    pretty xs = text "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
                <$$> -- empty <$$>
                (element "ElixirFM" [("xmlns", "http://ufal.mff.cuni.cz/pdt/pml/")] .
                    (element "head" [] (elempty "schema" [("href", "elixir.schema.xml")]) <$$>) .
                    (element "meta" [] (elemtxt "revision" [] (text ("$" ++ "Revision: " ++ "$")) <$$>
                                        elemtxt "date" [] (text ("$" ++ "Date: " ++ "$"))) <$$>) .
                     element "data" []) (vcat (map pretty xs))
                <$$> empty


instance Pretty (Wrap Nest) => Pretty Cluster where

    pretty = element "Cluster" [] . vcat . map pretty


instance (Pretty (Lexeme PatternT), Pretty (Lexeme PatternQ),
          Pretty (Lexeme PatternL), Pretty (Lexeme String)) =>
          Pretty (Wrap Lexeme) where

    pretty (WrapT y) = text "WrapT" <+> pretty y
    pretty (WrapQ y) = text "WrapQ" <+> pretty y
    pretty (WrapS y) = text "WrapS" <+> pretty y
    pretty (WrapL y) = text "WrapL" <+> pretty y


class Wrapping a where

    wrap   :: m a    -> Wrap m
    unwrap :: Wrap m -> m a


wraps :: (forall c . (Template c, Show c, Rules c, Forming c, Morphing c c)
            => a c -> [b c]) -> Wrap a -> [Wrap b]

-- wraps f x = unwraps (map wrap . f)     -- ... not exactly

wraps f (WrapT y) = map wrap (f y)
wraps f (WrapQ y) = map wrap (f y)
wraps f (WrapS y) = map wrap (f y)
wraps f (WrapL y) = map wrap (f y)


unwraps :: (forall c . (Wrapping c, Template c, Show c, Rules c, Forming c, Morphing c c) => a c -> b) -> Wrap a -> b

unwraps f (WrapT y) = f y
unwraps f (WrapQ y) = f y
unwraps f (WrapS y) = f y
unwraps f (WrapL y) = f y


instance Wrapping PatternT  where   wrap             = WrapT
                                    unwrap (WrapT x) = x

instance Wrapping PatternQ  where   wrap             = WrapQ
                                    unwrap (WrapQ x) = x

instance Wrapping PatternL  where   wrap             = WrapL
                                    unwrap (WrapL x) = x

instance Wrapping String    where   wrap             = WrapS
                                    unwrap (WrapS x) = x


infixl 6 <|

(<|) :: (Wrapping a, Morphing a a, Forming a, Rules a) => Root -> [Entry a] -> Wrap Nest

(<|) r l = wrap (Nest r [ e | s <- l, e <- s : entries r s ])


infixl 5 |>

(|>) :: [a] -> a -> [a]

(|>) x y = (:) y x        -- (|>) x y = ((:) $! y) $! x


listing :: a -> [b]

listing = const []


entries :: (Morphing a a, Forming a, Rules a) => Root -> Entry a -> [Entry a]

entries r e = case entity e of

                  Verb [I] _ _ _ [] _ _ -> [ y | (t, f) <- derive (Lexeme r e) [TagsAdj  []], (_, Lexeme _ y) <- f ]
                  Verb _   _ _ _ _  _ _ -> [ y | (t, f) <- derive (Lexeme r e) [TagsNoun [],
                                                                                TagsAdj  []], (_, Lexeme _ y) <- f ]

                  Noun _ f _            -> [ e { morphs = m, entity = Noun [Morphs t p (feminine s)] [] Nothing }
                                               | m@(Morphs t p s) <- f ]

                  _                     -> []

              where feminine s = case s of

                                     AT : r -> At : r
                                     _      -> At : s
