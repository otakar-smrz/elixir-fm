-- |
--
-- Module      :  Elixir.Inflect
-- Copyright   :  Otakar Smrz 2005-2013
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Inflect where


import Elixir.Template

import Elixir.Patterns

import Elixir.System

import Elixir.Entity

import Elixir.Derive

import Elixir.Pretty

import Data.List


instance (Show a, Template a) => Pretty [(String, [(ParaType, [(Root, Morphs a)])])] where

    pretty = vcat . map pretty . filter (not . null . snd)


instance (Show a, Template a) => Pretty (String, [(ParaType, [(Root, Morphs a)])]) where

    pretty (x, y) = text x <> align ( vcat [

                        text "\t" <> pretty t <> hcat ( punctuate ( line <>

                            text "\t" <> fill 10 empty )

                            [ joinText [merge u v, show u, show v] | (u, v) <- f ]

                        ) | (t, f) <- y, not (null f) ] )


instance (Show a, Template a) => Pretty [(ParaType, [(Root, Morphs a)])] where

    pretty = singleline pretty . filter (not . null . snd)


instance (Show a, Template a) => Pretty (ParaType, [(Root, Morphs a)]) where

    pretty (x, y) = pretty x <> (nest 10 . vcat)

                    [ joinText [merge u v, show u, show v] | (u, v) <- y ]


inflectDerive :: (Morphing a a, Forming a, Rules a, Derive b c, Inflect Lexeme c) =>
                 b a -> c -> [[(ParaType, [(Root, Morphs a)])]]

inflectDerive x y = [ inflect w y | (_, z) <- derive x y, (_, w) <- z ]


class Inflect m p where

    inflect :: (Morphing a a, Forming a, Rules a) => m a -> p -> [(ParaType, [(Root, Morphs a)])]


newtype Inflected a = Inflected [(ParaType, [(Root, Morphs a)])]


instance Show a => Show (Inflected a) where

    show (Inflected x) = show x


instance (Show a, Template a) => Pretty (Inflected a) where

    pretty (Inflected x) = pretty x


instance Inflect Lexeme a => Inflect Entry a where

    inflect x = inflect (Lexeme "f ` l" x)


instance Inflect Entry TagsVerb where

    inflect x = inflect (Lexeme "d r s" x)


instance Inflect Entry TagsNoun where

    inflect x = inflect (Lexeme "k t b" x)


instance Inflect Lexeme ParaType where

    inflect x y = inflect x (revert y)


instance Inflect Lexeme String where

    inflect x y = inflect x (convert y)


instance Inflect Lexeme a => Inflect Lexeme [a] where

    inflect x y = [ z | i <- y, z <- inflect x i ]

    -- inflect x = concat . map (inflect x)
    -- inflect = (.) concat . map . inflect


instance Inflect Lexeme TagsTypes where

    inflect x (TagsTypes y) = inflect x y


instance Inflect Lexeme TagsType where

    inflect x y = case y of

        TagsVerb z ->  inflect x z
        TagsNoun z ->  inflect x z
        TagsAdj  z ->  inflect x z
        TagsPron z ->  inflect x z
        TagsNum  z ->  inflect x z
        TagsAdv  z ->  inflect x z
        TagsPrep z ->  inflect x z
        TagsConj z ->  inflect x z
        TagsPart z ->  inflect x z
        TagsIntj z ->  inflect x z
        TagsXtra z ->  inflect x z
        TagsYnit z ->  inflect x z
        TagsZero z ->  inflect x z
        TagsGrph z ->  inflect x z


infoVerb r e = case entity e of

    Verb fs ps is cs _ _ jv ->  ([ (f, z) | f <- fs,

                                    let x =                                 siftVerb t Perfect v False (verbStems f r)
                                        y = if null ps then x else concat [ siftVerb p Perfect v True x | p <- ps ]
                                        z = if null is then y else concat [ siftVerb i Imperfect v False y | i <- is ] ],

                                 [ (prefixVerbC f c, morph c) | f <- fs, c <- nub cs ])

                                    where Morphs t _ _ = morphs e

                                          v = maybe Active id jv

    _                       ->  ([], [])


instance Inflect Lexeme TagsVerb where

    inflect (Lexeme r e) (TagsVerbP   v p g n) = [ (y, z) |

            let d = domain e,

            TagsVerb y <- [d],

            let v' = vals v
                p' = vals p
                g' = vals g
                n' = vals n

                d' = TagsVerbP v' p' g' n',

            TagsVerbP v' p' g' n' <- if null y then [d'] else restrict d' y,

            let inEntry = infoVerb r e,

            v <- v', n <- n', p <- p', g <- g',

            let theVariant = isVariant (VerbP v p g n)

                inRules es = [ morph l | (f, e) <- es, let ls = map (findVerb Perfect v theVariant) e, l <- nub ls ]

                paradigm p = map ((,) r . p) (inRules (fst inEntry)),

            let y = ParaVerb (VerbP v p g n),

            let z = paradigm (paraVerbP p g n) ]


    inflect (Lexeme r e) (TagsVerbI m v p g n) = [ (y, z) |

            let d = domain e,

            TagsVerb y <- [d],

            let m' = vals m
                v' = vals v
                p' = vals p
                g' = vals g
                n' = vals n

                d' = TagsVerbI m' v' p' g' n',

            TagsVerbI m' v' p' g' n' <- if null y then [d'] else restrict d' y,

            let inEntry = infoVerb r e,

            v <- v', m <- m', n <- n', p <- p', g <- g',

            let x = VerbI m v p g n

                theVariant = isVariant x

                inRules es

                    | isEndless x  =  [ k | (f, e) <- es,

                                        let ls = map (findVerb Imperfect v True) e

                                            hs = map (findVerb Imperfect v False) e,

                                            k <- [ (prefixVerbI f l v, morph l) | l <- nub ls ]

                                              ++ [ (prefixh, suffix a morphh)   | h <- nub hs,

                                                    let prefixh = prefixVerbI f h v

                                                        morphh = morph h,

                                                    a <- auxiesDouble f h ] ]

                    | otherwise    =  [ (prefixVerbI f l v, morph l) | (f, e) <- es,

                                        let ls = map (findVerb Imperfect v theVariant) e,

                                        l <- nub ls ]

                paradigm p = map ((,) r . reduce p) (inRules (fst inEntry)),

            let y = ParaVerb x,

            let z = paradigm (paraVerbI m p g n) ]

        where reduce f (x, y) = case s of Suffix "" : q@(Suffix ('-' : _) : _) -> Morphs t p q
                                          _                                    -> m

                  where m@(Morphs t p s) = f x y


    inflect (Lexeme r e) (TagsVerbC m     g n) = [ (y, z) |

            let d = domain e,

            TagsVerb y <- [d],

            let m' = trim m [Jussive, Energetic]
                g' = vals g
                n' = vals n

                d' = TagsVerbC m' g' n',

            TagsVerbC m' g' n' <- if null y then [d'] else restrict d' y,

            let inEntry = infoVerb r e,

            m <- m', n <- n', g <- g',

            let x = VerbC m g n

                theVariant = isVariant x

                inRules es

                    | isEndless x  =  [ k | (f, e) <- es,

                                        let ls = map (findVerb Imperfect Active True) e          -- reuse ...

                                            hs = map (findVerb Imperfect Active False) e,        -- reuse ...

                                            k <- [ (prefixVerbC f l, morph l) | l <- nub ls ]

                                              ++ [ (prefixh, suffix a morphh) | h <- nub hs,

                                                    let prefixh = prefixVerbC f h

                                                        morphh = morph h,

                                                    a <- auxiesDouble f h ] ]

                    | otherwise    =  [ (prefixVerbC f l, morph l) | (f, e) <- es,

                                        let ls = map (findVerb Imperfect Active theVariant) e,   -- reuse ...

                                        l <- nub ls ]

                paradigm p = map ((,) r . reduce p) (if null (snd inEntry) then inRules (fst inEntry) else snd inEntry),

            let y = ParaVerb x,

            let z = paradigm (paraVerbC m g n) ]

        where reduce f (x, y) = case s of Suffix "" : q@(Suffix ('-' : _) : _) -> Morphs t p q
                                          _                                    -> m

                  where m@(Morphs t p s) = f x y


instance Inflect Lexeme TagsNoun where

    inflect (Lexeme r e) (TagsNounN _ _ _ n c s) = [ (y, lists z q) |

            let (d, l) = limits e,

            TagsNoun y <- [d],

            let n' = vals n
                c' = vals c
                s' = trim s [indefinite, construct, definite, absolute]

                d' = TagsNounN [] [] [] n' c' s',

            TagsNounN _ _ _ n' c' s' <- if null y then [d'] else restrict d' y,

            let x = except e,

            n <- n',

            let i = inEntry n e,

            s <- s', c <- c',

            let y = ParaNoun (NounN n c s),

            let q = [ (r, q) | (d', r') <- l, TagsNoun y <- d',

                       q <- if null (restrict (TagsNounN [] [] [] [n] [c] [s]) y)

                            then [] else r' ],

            let z = map (inRules r c s x) i ]


instance Inflect Lexeme TagsAdj where

    inflect (Lexeme r e) (TagsAdjA _ _ g n c s) = [ (y, lists z q) |

            let (d, l) = limits e,

            TagsAdj y <- [d],

            let g' = vals g
                n' = vals n
                c' = vals c
                s' = vals s

                d' = TagsAdjA [] [] g' n' c' s',

            TagsAdjA _ _ g' n' c' s' <- if null y then [d'] else restrict d' y,

            g <- g', n <- n',

            let i = inEntry' g n e,

            s <- s', c <- c',

            let y = ParaAdj (AdjA g n c s),

            let q = [ (r, q) | (d', r') <- l, TagsAdj y <- d',

                       q <- if null (restrict (TagsAdjA [] [] [g] [n] [c] [s]) y)

                            then [] else r' ],

            let z = map (inRules r c s Nothing) i ]


instance Inflect Lexeme TagsPron where

    inflect (Lexeme r e) (TagsPronP p g n c) = [ (ParaPron (PronP p g n c), lists [(r, morphs e)] q) |

                                                    let (d, l) = limits e,

                                                    TagsPron y <- [d],

                                                    let p' = vals p
                                                        g' = vals g
                                                        n' = vals n
                                                        c' = vals c

                                                        d' = TagsPronP p' g' n' c',

                                                    TagsPronP p' g' n' c' <- if null y then [d'] else restrict d' y,

                                                    c <- c', n <- n', p <- p', g <- g',

                                                    let q = [ (r, q) | (d', r') <- l, TagsPron y <- d',

                                                               q <- if null (restrict (TagsPronP [p] [g] [n] [c]) y)

                                                                    then [] else r' ] ]

    inflect (Lexeme r e) (TagsPronD   g n c) = [ (ParaPron (PronD g n c), lists [(r, morphs e)] q) |

                                                    let (d, l) = limits e,

                                                    TagsPron y <- [d],

                                                    let g' = vals g
                                                        n' = vals n
                                                        c' = vals c

                                                        d' = TagsPronD g' n' c',

                                                    TagsPronD g' n' c' <- if null y then [d'] else restrict d' y,

                                                    n <- n', g <- g', c <- c',

                                                    let q = [ (r, q) | (d', r') <- l, TagsPron y <- d',

                                                               q <- if null (restrict (TagsPronD [g] [n] [c]) y)

                                                                    then [] else r' ] ]

    inflect (Lexeme r e) (TagsPronR   g n c) = [ (ParaPron (PronR g n c), lists [(r, morphs e)] q) |

                                                    let (d, l) = limits e,

                                                    TagsPron y <- [d],

                                                    let g' = vals g
                                                        n' = vals n
                                                        c' = vals c

                                                        d' = TagsPronR g' n' c',

                                                    TagsPronR g' n' c' <- if null y then [d'] else restrict d' y,

                                                    n <- n', g <- g', c <- c',

                                                    let q = [ (r, q) | (d', r') <- l, TagsPron y <- d',

                                                               q <- if null (restrict (TagsPronR [g] [n] [c]) y)

                                                                    then [] else r' ] ]

    inflect (Lexeme r e) (TagsPronS        ) = [ (ParaPron PronS, [(r, morphs e)]) |

                                                    let d = domain e,

                                                    TagsPron y <- [d],

                                                    let d' = TagsPronS,

                                                    TagsPronS <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsPrep where

    inflect (Lexeme r e) (TagsPrepP  ) | isInflect s = []

                                       | otherwise   = [ (ParaPrep PrepP, lists [(r, m)] q) |

                                                            let (d, l) = limits e,

                                                            TagsPrep y <- [d],

                                                            let d' = TagsPrepP,

                                                            TagsPrepP <- if null y then [d'] else restrict d' y,

                                                            let q = [ (r, q) | (d', r') <- l, TagsPrep y <- d',

                                                                       q <- if null (restrict TagsPrepP y)

                                                                            then [] else r' ] ]

        where m@(Morphs t p s) = morphs e

    inflect (Lexeme r e) (TagsPrepI c) | isInflect s = [ (ParaPrep (PrepI c), [(r, paraPrepI c m)]) |

                                                            let d = domain e,

                                                            TagsPrep y <- [d],

                                                            let c' = vals c

                                                                d' = TagsPrepI c',

                                                            TagsPrepI c' <- if null y then [d'] else restrict d' y,

                                                            c <- c' ]

                                       | otherwise   = []

        where Morphs t p s = morphs e
              m = Morphs t p (tail s)


instance Inflect Lexeme TagsNum where

    inflect (Lexeme r e) (TagsNumI g   c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let g' = vals g
                c' = vals c
                s' = vals s

                d' = TagsNumI g' c' s',

            TagsNumI g' c' s' <- if null y then [d'] else restrict d' y,

            g <- g',

            let i = inEntry' g Singular e,

            s <- s', c <- c',

            let y = ParaNum (NumI g   c s),

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumU g   c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let g' = vals g
                c' = vals c
                s' = vals s

                d' = TagsNumU g' c' s',

            TagsNumU g' c' s' <- if null y then [d'] else restrict d' y,

            g <- g',

            let i = inEntry' g Singular e,

            s <- s', c <- c',

            let y = ParaNum (NumU g   c s),

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumV  g   c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let g' = vals g
                c' = vals c
                s' = vals s

                d' = TagsNumV g' c' s',

            TagsNumV g' c' s' <- if null y then [d'] else restrict d' y,

            g <- g',

            let i = inEntry' g Singular e,

            s <- s', c <- c',

            let y = ParaNum (NumV g   c s),

            let z = map (inRules r c s (Just Triptote)) i ]

    inflect (Lexeme r e) (TagsNumX  g   c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let g' = vals g
                c' = vals c
                s' = trim s [indefinite, construct, definite, absolute]

                d' = TagsNumX g' c' s',

            TagsNumX g' c' s' <- if null y then [d'] else restrict d' y,

            g <- g',

            let i = inEntry' g Singular e,

            s <- s', c <- c',

            let y = ParaNum (NumX g   c s),

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumY  g      ) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let g' = vals g

                d' = TagsNumY g',

            TagsNumY g' <- if null y then [d'] else restrict d' y,

            g <- g',

            let i = inEntry' g Singular e,

            let y = ParaNum (NumY g      ),

            let z = map (inRules r Accusative absolute Nothing) i ]

    inflect (Lexeme r e) (TagsNumL      c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let c' = vals c
                s' = trim s [indefinite, construct, definite, absolute]

                d' = TagsNumL c' s',

            TagsNumL c' s' <- if null y then [d'] else restrict d' y,

            let i = inEntry Singular e,

            s <- s', c <- c',

            let y = ParaNum (NumL     c s),

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumC    n c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let n' = vals n
                c' = vals c
                s' = trim s [indefinite, construct, definite, absolute]

                d' = TagsNumC n' c' s',

            TagsNumC n' c' s' <- if null y then [d'] else restrict d' y,

            n <- n',

            let i = inEntry n e,

            s <- s', c <- c',

            let y = ParaNum (NumC   n c s),

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumD      c s) = [ (y, z) |

            let d = domain e,

            TagsNum y <- [d],

            let c' = vals c
                s' = trim s [indefinite, construct, definite, absolute]

                d' = TagsNumD c' s',

            TagsNumD c' s' <- if null y then [d'] else restrict d' y,

            let i = inEntry Singular e,

            s <- s', c <- c',

            let y = ParaNum (NumD     c s),

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumM    n c s) = [ (y, lists z q) |

            let (d, l) = limits e,

            TagsNum y <- [d],

            let n' = vals n
                c' = vals c
                s' = trim s [indefinite, construct, definite, absolute]

                d' = TagsNumM n' c' s',

            TagsNumM n' c' s' <- if null y then [d'] else restrict d' y,

            n <- n',

            let i = inEntry n e,

            s <- s', c <- c',

            let y = ParaNum (NumM   n c s),

            let q = [ (r, q) | (d', r') <- l, TagsNum y <- d',

                       q <- if null (restrict (TagsNumM [n] [c] [s]) y)

                            then [] else r' ],

            let z = map (inRules r c s Nothing) i ]

    inflect (Lexeme r e) (TagsNumQ        ) = [ (ParaNum NumQ, [(r, morphs e)]) |

                                                    let d = domain e,

                                                    TagsNum y <- [d],

                                                    let d' = TagsNumQ,

                                                    TagsNumQ <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsAdv where

    inflect (Lexeme r e) TagsAdvD = [ (ParaAdv AdvD, [(r, morphs e)]) |

                                        let d = domain e,

                                        TagsAdv y <- [d],

                                        let d' = TagsAdvD,

                                        TagsAdvD <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsConj where

    inflect (Lexeme r e) TagsConjC = [ (ParaConj ConjC, lists [(r, morphs e)] q) |

                                        let (d, l) = limits e,

                                        TagsConj y <- [d],

                                        let d' = TagsConjC,

                                        TagsConjC <- if null y then [d'] else restrict d' y,

                                        let q = [ (r, q) | (d', r') <- l, TagsConj y <- d',

                                                   q <- if null (restrict TagsConjC y)

                                                        then [] else r' ] ]


instance Inflect Lexeme TagsPart where

    inflect (Lexeme r e) TagsPartF = [ (ParaPart PartF, lists [(r, morphs e)] q) |

                                        let (d, l) = limits e,

                                        TagsPart y <- [d],

                                        let d' = TagsPartF,

                                        TagsPartF <- if null y then [d'] else restrict d' y,

                                        let q = [ (r, q) | (d', r') <- l, TagsPart y <- d',

                                                   q <- if null (restrict TagsPartF y)

                                                        then [] else r' ] ]


instance Inflect Lexeme TagsIntj where

    inflect (Lexeme r e) TagsIntjI = [ (ParaIntj IntjI, [(r, morphs e)]) |

                                        let d = domain e,

                                        TagsIntj y <- [d],

                                        let d' = TagsIntjI,

                                        TagsIntjI <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsXtra where

    inflect (Lexeme r e) TagsXtraX = [ (ParaXtra XtraX, [(r, morphs e)]) |

                                        let d = domain e,

                                        TagsXtra y <- [d],

                                        let d' = TagsXtraX,

                                        TagsXtraX <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsYnit where

    inflect (Lexeme r e) TagsYnitY = [ (ParaYnit YnitY, [(r, morphs e)]) |

                                        let d = domain e,

                                        TagsYnit y <- [d],

                                        let d' = TagsYnitY,

                                        TagsYnitY <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsZero where

    inflect (Lexeme r e) TagsZeroZ = [ (ParaZero ZeroZ, [(r, morphs e)]) |

                                        let d = domain e,

                                        TagsZero y <- [d],

                                        let d' = TagsZeroZ,

                                        TagsZeroZ <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme TagsGrph where

    inflect (Lexeme r e) TagsGrphG = [ (ParaGrph GrphG, [(r, morphs e)]) |

                                        let d = domain e,

                                        TagsGrph y <- [d],

                                        let d' = TagsGrphG,

                                        TagsGrphG <- if null y then [d'] else restrict d' y ]


instance Inflect Lexeme ParaVerb where

    inflect x y = inflect x (ParaVerb y)

    -- inflect x y = [(ParaVerb y, inflectVerb x y)]


inflectVerb :: (Morphing a b, Forming a, Rules a) => Lexeme a -> ParaVerb -> [(Root, Morphs b)]

inflectVerb (Lexeme r e) x@(VerbP   v p g n) = paradigm (paraVerbP p g n)

    where paradigm p = map ((,) r . p) inEntry

          Morphs t _ _ = morphs e

          theVariant = isVariant x

          inEntry = case entity e of

              Verb fs is _ _ _ jt jv

                | maybe False (/= v) jv || maybe False (/= Perfect) jt -> []

                | null is || not theVariant
                          || v == Passive   -> inRules fs Perfect w [t]

                | otherwise                 -> [ morph i | f <- fs, i <- is ]

                        where w = maybe Active id jv

              _     ->  (error . unwords) ["Incompatible VerbP", show r]

          inRules fs pp vv ts = [ morph l | f <- fs, t <- ts,

                                  let ls = lookVerb t pp vv False Perfect v theVariant (verbStems f r),

                                  l <- nub ls ]


inflectVerb (Lexeme r e) x@(VerbI m v p g n) = paradigm (paraVerbI m p g n)

    where paradigm p = map ((,) r . reduce p) inEntry

          reduce f (x, y) = case s of Suffix "" : q@(Suffix ('-' : _) : _) -> Morphs t p q
                                      _                                    -> m

              where m@(Morphs t p s) = f x y

          Morphs t _ _ = morphs e

          theVariant = isVariant x

          inEntry = case entity e of

              Verb fs _ is _ _ jt jv

                | maybe False (/= v) jv || maybe False (== Perfect) jt -> []

                | null is   -> inRules fs Perfect   w [t]

                | otherwise -> inRules fs Imperfect w is

                        where w = maybe Active id jv

              _     ->  (error . unwords) ["Incompatible VerbI", show r]

          inRules fs pp vv ts

            | isEndless x  =  [ k | f <- fs, t <- ts,

                                let ls = lookVerb t pp vv False Imperfect v True
                                                       (verbStems f r)

                                    hs = lookVerb t pp vv False Imperfect v False
                                                       (verbStems f r),

                                k <- [ (prefixVerbI f l v, morph l) | l <- nub ls ]

                                  ++ [ (prefixh, suffix a morphh)   | h <- nub hs,

                                       let prefixh = prefixVerbI f h v

                                           morphh = morph h,

                                       a <- auxiesDouble f h ] ]

            | otherwise    =  [ (prefixVerbI f l v, morph l) | f <- fs, t <- ts,

                                let ls = lookVerb t pp vv False Imperfect v theVariant
                                                       (verbStems f r),
                                l <- nub ls ]


inflectVerb (Lexeme r e) x@(VerbC m     g n) = paradigm (paraVerbC m g n)

    where paradigm p = map ((,) r . reduce p) inEntry

          reduce f (x, y) = case s of Suffix "" : q@(Suffix ('-' : _) : _) -> Morphs t p q
                                      _                                    -> m

              where m@(Morphs t p s) = f x y

          Morphs t _ _ = morphs e

          theVariant = isVariant x

          inEntry = case entity e of

              Verb fs _ ys is _ jt jv

                | maybe False (/= Active) jv || maybe False (== Perfect) jt -> []

                | null is -> if null ys then inRules fs Perfect   Active [t]

                                        else inRules fs Imperfect Active ys

                | otherwise            -> [ (prefixVerbC f i, morph i) | f <- fs, i <- is ]

              _     ->  (error . unwords) ["Incompatible VerbC", show r]

          inRules fs pp vv ts

            | isEndless x  =  [ k | f <- fs, t <- ts,

                                let ls = lookVerb t pp vv False Imperfect Active True
                                                       (verbStems f r)

                                    hs = lookVerb t pp vv False Imperfect Active False
                                                       (verbStems f r),

                                    k <- [ (prefixVerbC f l, morph l) | l <- nub ls ]

                                      ++ [ (prefixh, suffix a morphh) | h <- nub hs,

                                            let prefixh = prefixVerbC f h
                                                morphh = morph h,

                                            a <- auxiesDouble f h ] ]

            | otherwise    =  [ (prefixVerbC f l, morph l) | f <- fs, t <- ts,

                                let ls = lookVerb t pp vv False Imperfect Active theVariant
                                                       (verbStems f r),
                                l <- nub ls ]


isVariant :: ParaVerb -> Bool

isVariant (VerbP   _ p g n) = case (p, g, n) of

                                (Third, Feminine, Plural) -> True
                                (Third,    _    ,   _   ) -> False
                                (  _  ,    _    ,   _   ) -> True

isVariant (VerbI m _ p g n) = case (m, p, g, n) of

                                (   _   , Third,  Feminine,  Plural)   -> True
                                (   _   , Second, Feminine,  Plural)   -> True
                                (Jussive, First,     _    ,     _    ) -> True
                                (Jussive,   _   , Masculine, Singular) -> True
                                (Jussive, Third,     _    ,  Singular) -> True
                                (   _   ,   _   ,    _    ,     _    ) -> False

isVariant (VerbC m     g n) = case (m, g, n) of

                                (   _   , Feminine,  Plural)   -> True
                                (Jussive, Masculine, Singular) -> True
                                (   _   ,    _    ,     _    ) -> False

                            -- isVariant (VerbI m Active Second g n)


isEndless :: ParaVerb -> Bool

isEndless (VerbI Jussive _ p g n) = case (p, g, n) of

                                (Second, Feminine, Singular)    ->  False
                                (  _  ,     _    , Singular)    ->  True
                                (First,     _    ,    _    )    ->  True
                                (  _  ,     _    ,    _    )    ->  False

isEndless (VerbC Jussive     g n) = case (g, n) of

                                (Masculine, Singular) -> True
                                (    _    ,    _    ) -> False

                            -- isEndless (VerbI Jussive Active Second g n)

isEndless _                 = False


paraVerbP p g n = suffix c

    where c = case n of

            Singular    ->  case (p, g) of

                (Third,  Masculine) ->  "a"
                (Third,  Feminine)  ->  "at"        -- "at-i"
                (Second, Masculine) ->  "ta"
                (Second, Feminine)  ->  "ti"
                (First,      _    ) ->  "tu"

            Dual        -> case (p, g) of

                (Third,  Masculine) ->  "A"
                (Third,  Feminine)  ->  "atA"
                (Second,     _    ) ->  "tumA"
                (First,      _    ) ->  "nA"

            Plural      -> case (p, g) of

                (Third,  Masculine) ->  "UW"
                (Third,  Feminine)  ->  "na"
                (Second, Masculine) ->  "tum"       -- "tum-u"
                (Second, Feminine)  ->  "tunna"
                (First,      _    ) ->  "nA"


paraVerbI m p g n i = prefixesVerbI p g n i . suffixesVerbI m p g n


prefixesVerbI p g n i = prefix (c : i)

    where c = case (p, g, n) of

                (Third, Masculine,    _    )  ->  'y'
                (Third, Feminine,  Plural)    ->  'y'
                (First,     _    , Singular)  ->  '\''
                (First,     _    ,    _    )  ->  'n'
                (  _  ,     _    ,    _    )  ->  't'


suffixesVerbI m p g n = suffix c

    where c = case m of

            Indicative  ->  case n of

                    Singular    ->  case (p, g) of

                        (Second, Feminine)  ->  "Ina"
                        ( _ ,    _    )     ->  "u"

                    Dual        -> case (p, g) of

                        (First, _ )         ->  "u"
                        ( _,    _ )         ->  "Ani"

                    Plural      -> case (p, g) of

                        (First, _ )         ->  "u"
                        ( _,    Masculine)  ->  "Una"
                        ( _,    Feminine)   ->  "na"

            Subjunctive ->  case n of

                    Singular    ->  case (p, g) of

                        (Second, Feminine)  ->  "I"
                        (_,      _ )        ->  "a"

                    Dual        -> case (p, g) of

                        (First,  _    )     ->  "a"
                        ( _ ,    _    )     ->  "A"

                    Plural      -> case (p, g) of

                        (First, _    )      ->  "a"
                        ( _ ,   Masculine)  ->  "UW"
                        ( _ ,   Feminine)   ->  "na"

            Jussive     ->  case n of

                    Singular    ->  case (p, g) of

                        (Second, Feminine)  ->  "I"
                        ( _ ,    _    )     ->  ""

                    Dual        -> case (p, g) of

                        (First,  _  )       ->  ""
                        ( _ ,    _  )       ->  "A"

                    Plural      -> case (p, g) of

                        (First, _   )       ->  ""
                        ( _ ,   Masculine)  ->  "UW"
                        ( _ ,   Feminine)   ->  "na"

            Energetic   ->  case n of

                    Singular    ->  case (p, g) of

                        (Second, Feminine)  ->  "inna"      -- "in"
                        (_,      _ )        ->  "anna"      -- "an"

                    Dual        -> case (p, g) of

                        (First,  _    )     ->  "anna"      -- "an"
                        ( _ ,    _    )     ->  "Anni"

                    Plural      -> case (p, g) of

                        (First, _    )      ->  "anna"      -- "an"
                        ( _ ,   Masculine)  ->  "unna"      -- "un"
                        ( _ ,   Feminine)   ->  "nAnni"


paraVerbC m g n i = prefix i . suffix c

    where c = case m of

            Energetic   ->  case n of

                    Singular    ->  case g of

                        Masculine   ->  "anna"      -- "an"
                        Feminine    ->  "inna"      -- "in"

                    Dual        -> case g of

                        _           ->  "Anni"

                    Plural      -> case g of

                        Masculine   ->  "unna"      -- "un"
                        Feminine    ->  "nAnni"

            _           ->  case n of

                    Singular    -> case g of

                        Masculine   ->  ""
                        Feminine    ->  "I"

                    Dual        -> case g of

                        _           ->  "A"

                    Plural      -> case g of

                        Masculine   ->  "UW"
                        Feminine    ->  "na"


instance Inflect Lexeme ParaNoun where

    inflect x y = inflect x (ParaNoun y)

    -- inflect x y = [(ParaNoun y, inflectNoun x y)]


inflectNoun (Lexeme r e) (NounN n c s) = (map (inRules r c s x) . inEntry n) e

    where x = except e


inEntry Plural e = case entity e of Noun l _ _ -> l
                                    Num  l _   -> l

inEntry Dual   e = case entity e of Noun l _ _ | null l    -> []
                                               | otherwise -> [morphs e |< An]
                                    Num  l _   | null l    -> []
                                               | otherwise -> [morphs e |< An]

inEntry _ e = [morphs e]


inRules r c (d :-: a) x m = ((,) r . article . endings c d a) m

    where Morphs t p s = m

          article = case d of   Just True       -> case p of

                                                        Al : _          -> id
                                                        Prefix "al" : _ -> id

                                                        _               -> (al >|)

                                _               -> id

          endings = case s of   Un : _              -> paraMasculine `with` reduce
                                At : _              -> paraFeminine
                                An : _              -> paraDual      `with` reduce

                                _   | isInert r m   -> (const . const . const) id

                                    | otherwise     -> case x of

                                        Just Diptote        -> paraDiptote
                                        Just Triptote       -> paraTriptote

                                        _   | isDiptote m   -> paraDiptote
                                            | otherwise     -> paraTriptote

          (p `with` f) x y z = p x y z . f

          reduce y = if null s then m else Morphs t p (tail s)

              where m@(Morphs t p s) = morph y


instance Inflect Lexeme ParaAdj where

    inflect x y = inflect x (ParaAdj y)

    -- inflect x y = [(ParaAdj y, inflectAdj x y)]


inflectAdj (Lexeme r e) (AdjA g n c s) = (map (inRules r c s Nothing) . inEntry' g n) e


inEntry' Masculine n e = case n of Plural -> y
                                   Dual   -> [morphs e |< An]
                                   _      -> [morphs e]

    where y = case entity e of Adj  l _ | null l    -> [morphs e |< Un]
                                        | otherwise -> l
                               _                    -> []

inEntry' Feminine  n e = case n of Plural | null y    -> [morphs e |< At]
                                          | otherwise -> [ i |< At | i <- y ]
                                   Dual   | null y    -> [morphs e |< aT |< An]
                                          | otherwise -> [ i |< An | i <- y ]
                                   _      | null y    -> [morphs e |< aT]
                                          | otherwise -> [ i | i <- y ]

    where y = case entity e of Adj  _ f -> f
                               Num  _ f -> f
                               _        -> []


prefix :: Morphing a b => String -> a -> Morphs b

prefix x y = x >>| y


suffix :: Morphing a b => String -> a -> Morphs b

suffix x y = y |<< x


paraTriptote, paraDiptote, paraDual, paraMasculine, paraFeminine ::

    Morphing a b => Case -> Definite -> Annexing -> a -> Morphs b


paraTriptote c d a = case (c, d, a) of

        (Nominative, Nothing, False)    -> suffix "uN"  -- suffix u . suffix N
        (Genitive,   Nothing, False)    -> suffix "iN"  -- suffix i . suffix N
        (Accusative, Nothing, False)    -> suffix "aN"  -- suffix a . suffix N

        (Nominative, _ , _ )            -> suffix "u"
        (Genitive,   _ , _ )            -> suffix "i"
        (Accusative, _ , _ )            -> suffix "a"


paraDiptote c d a = case (c, d, a) of

        (Nominative, Nothing, False)    -> suffix "u"
        ( _ ,        Nothing, False)    -> suffix "a"

        (Nominative, _ , _ )            -> suffix "u"
        (Genitive,   _ , _ )            -> suffix "i"
        (Accusative, _ , _ )            -> suffix "a"


paraMasculine c d a = case (c, d, a) of

        (Nominative, _ , False)         -> suffix "Una"
        ( _ ,        _ , False)         -> suffix "Ina"

        (Nominative, _ , True)          -> suffix "U"
        ( _ ,        _ , True)          -> suffix "I"


paraDual c d a = case (c, d, a) of

        (Nominative, _ , False)         -> suffix "Ani"
        ( _ ,        _ , False)         -> suffix "ayni"

        (Nominative, _ , True)          -> suffix "A"
        ( _ ,        _ , True)          -> suffix "ay"      -- "ay-i"


paraFeminine c d a = case (c, d, a) of

        (Nominative, Nothing, False)    -> suffix "uN"
        ( _ ,        Nothing, False)    -> suffix "iN"

        (Nominative, _ , _ )            -> suffix "u"
        ( _ ,        _ , _ )            -> suffix "i"


instance Inflect Lexeme ParaPron where

    inflect x y = inflect x (ParaPron y)


paraPronP p g n c = case p of

    First   ->  case n of

            Singular    ->          case c of   Nominative  ->  "'anA"
                                                Genitive    ->  "|I"
                                                Accusative  ->  "nI"

            _           ->          case c of   Nominative  ->  "na.hnu"
                                                _           ->  "nA"

    Second  ->  case n of

            Singular    ->  case g of

                    Masculine   ->  case c of   Nominative  ->  "'anta"
                                                _           ->  "ka"

                    Feminine    ->  case c of   Nominative  ->  "'anti"
                                                _           ->  "ki"

            Dual        ->          case c of   Nominative  ->  "'antumA"
                                                _           ->  "kumA"

            Plural      ->  case g of

                    Masculine   ->  case c of   Nominative  ->  "'antum"
                                                _           ->  "kum"

                    Feminine    ->  case c of   Nominative  ->  "'antunna"
                                                _           ->  "kunna"

    Third   ->  case n of

            Singular    ->  case g of

                    Masculine   ->  case c of   Nominative  ->  "huwa"
                                                _           ->  "hu"

                    Feminine    ->  case c of   Nominative  ->  "hiya"
                                                _           ->  "hA"

            Dual        ->                                      "humA"

            Plural      ->  case g of

                    Masculine   ->                              "hum"

                    Feminine    ->                              "hunna"


paraPronR   g n c = case n of

    Singular    ->  case g of

        Masculine   ->                              "alla_dI"
        Feminine    ->                              "allatI"

    Dual        ->  case g of

        Masculine   ->  case c of   Nominative  ->  "al-la_dAni"
                                    _           ->  "al-la_dayni"

        Feminine    ->  case c of   Nominative  ->  "al-latAni"
                                    _           ->  "al-latayni"

    Plural      ->  case g of

        Masculine   ->                              "alla_dIna"
        Feminine    ->                              "al-lawAtI"
                        --  "al-lAtI", "al-lA'I"


paraPronD   g n c ('h' : _) = case n of

    Singular    ->  case g of

        Masculine   ->                              "h_a_dA"
        Feminine    ->                              "h_a_dihi"

    Dual        ->  case g of

        Masculine   ->  case c of   Nominative  ->  "h_a_dAni"
                                    _           ->  "h_a_dayni"

        Feminine    ->  case c of   Nominative  ->  "h_atAni"
                                    _           ->  "h_atayni"

    Plural      ->                                  "h_a'ulA'i"


paraPronD   g n c _ = case n of

    Singular    ->  case g of

        Masculine   ->                              "_d_alika"
        Feminine    ->                              "tilka"

    Dual        ->  case g of

        Masculine   ->  case c of   Nominative  ->  "_dAnika"
                                    _           ->  "_daynika"

        Feminine    ->  case c of   Nominative  ->  "tAnika"
                                    _           ->  "taynika"

    Plural      ->                                  "'_Ul_a'ika"


instance Inflect Lexeme ParaPrep where

    inflect x y = inflect x (ParaPrep y)


isInflect :: [Suffix] -> Bool

isInflect s = case s of Suffix "a" : _ -> True
                        _              -> False


paraPrepI c = case c of

        Nominative      -> suffix "u"
        Genitive        -> suffix "i"
        Accusative      -> suffix "a"


instance Inflect Lexeme ParaNum where

    inflect x y = inflect x (ParaNum y)


instance Inflect Lexeme ParaAdv where

    inflect x y = inflect x (ParaAdv y)


instance Inflect Lexeme ParaConj where

    inflect x y = inflect x (ParaConj y)


instance Inflect Lexeme ParaPart where

    inflect x y = inflect x (ParaPart y)


instance Inflect Lexeme ParaIntj where

    inflect x y = inflect x (ParaIntj y)


instance Inflect Lexeme ParaXtra where

    inflect x y = inflect x (ParaXtra y)


instance Inflect Lexeme ParaYnit where

    inflect x y = inflect x (ParaYnit y)


instance Inflect Lexeme ParaZero where

    inflect x y = inflect x (ParaZero y)


instance Inflect Lexeme ParaGrph where

    inflect x y = inflect x (ParaGrph y)
