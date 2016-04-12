-- |
--
-- Module      :  Elixir.System
-- Copyright   :  Otakar Smrz 2005-2013
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.System where


import FM.Generic.General

import Elixir.Pretty

import Data.Char

import Data.List


data EntVerb a = EntVerbP          (a Voice) (a Person) (a Gender) (a Number)
               | EntVerbI (a Mood) (a Voice) (a Person) (a Gender) (a Number)
               | EntVerbC (a Mood)                      (a Gender) (a Number)

    -- deriving Eq -- (Show, Eq)


instance ShowE a => Show (EntVerb a) where

    show (EntVerbP   v p g n) =    "VP-" ++ concat [showE v] ++ "-" ++
                                   concat [showE p, showE g, showE n] ++ "--"

    show (EntVerbI m v p g n) =    "VI" ++ concat [showE m, showE v] ++ "-" ++
                                   concat [showE p, showE g, showE n] ++ "--"

    show (EntVerbC m     g n) =    "VC" ++ concat [showE m] ++ "---" ++
                                   concat [showE g, showE n] ++ "--"


data EntPron a = EntPronS
               | EntPronP (a Person) (a Gender) (a Number) (a Case)
               | EntPronD            (a Gender) (a Number) (a Case)
               | EntPronR            (a Gender) (a Number) (a Case)

    -- deriving Eq -- (Show, Eq)


instance ShowE a => Show (EntPron a) where

    show (EntPronS        ) =  "S---------"

    show (EntPronP p g n c) =  "SP---" ++
                               concat [showE p, showE g, showE n, showE c] ++ "-"

    show (EntPronD   g n c) =  "SD----" ++ concat [showE g, showE n, showE c] ++ "-"

    show (EntPronR   g n c) =  "SR----" ++ concat [showE g, showE n, showE c] ++ "-"


class ShowE a where

    showE :: Show b => a b -> String


instance ShowE Id where

    showE (Id a) = [show' a]


instance ShowE [] where

    showE [] = "-"
    showE [x] = [show' x]
    showE xs  = '[' : foldr ((:) . show')  "]" xs


newtype Id a = Id a         deriving Eq


instance Show a => Show (Id a) where

    show (Id x) = show x


data EntType a = EntVerb (a (EntVerb a))
               | EntPron (a (EntPron a))

    -- deriving (Show, Eq)


type EntTags = EntType []

type EntPara = EntType Id


entPara = [EntVerb (Id (EntVerbC (Id Jussive) (Id Feminine) (Id Plural))),
           EntPron (Id (EntPronD (Id Feminine) (Id Singular) (Id Nominative))),
           EntVerb (Id (EntVerbC (Id Jussive) (Id Masculine) (Id Dual)))]


entTags = [EntVerb ([]), EntPron ([]), EntVerb ([])]


instance Pretty ParaType where

    pretty = text . dropWhile isSpace . dropWhile (not . isSpace) . show


data ParaType = ParaVerb  ParaVerb
              | ParaNoun  ParaNoun
              | ParaAdj   ParaAdj
              | ParaPron  ParaPron
              | ParaNum   ParaNum
              | ParaAdv   ParaAdv
              | ParaPrep  ParaPrep
              | ParaConj  ParaConj
              | ParaPart  ParaPart
              | ParaIntj  ParaIntj
              | ParaXtra  ParaXtra
              | ParaYnit  ParaYnit
              | ParaZero  ParaZero
              | ParaGrph  ParaGrph

    deriving (Eq, Show)


instance Pretty TagsType where

    pretty (TagsVerb xs) = if null xs then text ("V-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsNoun xs) = if null xs then text ("N-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsAdj  xs) = if null xs then text ("A-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsPron xs) = if null xs then text ("S-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsNum  xs) = if null xs then text ("Q-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsAdv  xs) = if null xs then text ("D-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsPrep xs) = if null xs then text ("P-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsConj xs) = if null xs then text ("C-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsPart xs) = if null xs then text ("F-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsIntj xs) = if null xs then text ("I-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsXtra xs) = if null xs then text ("X-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsYnit xs) = if null xs then text ("Y-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsZero xs) = if null xs then text ("Z-" ++ noinflects) else (text . unwords . map show) xs
    pretty (TagsGrph xs) = if null xs then text ("G-" ++ noinflects) else (text . unwords . map show) xs


data TagsType = TagsVerb  [TagsVerb]
              | TagsNoun  [TagsNoun]
              | TagsAdj   [TagsAdj]
              | TagsPron  [TagsPron]
              | TagsNum   [TagsNum]
              | TagsAdv   [TagsAdv]
              | TagsPrep  [TagsPrep]
              | TagsConj  [TagsConj]
              | TagsPart  [TagsPart]
              | TagsIntj  [TagsIntj]
              | TagsXtra  [TagsXtra]
              | TagsYnit  [TagsYnit]
              | TagsZero  [TagsZero]
              | TagsGrph  [TagsGrph]

    deriving (Eq, Show)


data TagsVerb = TagsVerbP             [Voice] [Person] [Gender] [Number]
              | TagsVerbI [Mood]      [Voice] [Person] [Gender] [Number]
              | TagsVerbC [Mood]                       [Gender] [Number]

    deriving Eq


data TagsNoun = TagsNounN [Humanness] [Voice]          [Gender] [Number] [Case] [State]

    deriving Eq


data TagsAdj  = TagsAdjA  [Humanness] [Voice]          [Gender] [Number] [Case] [State]

    deriving Eq


data TagsPron = TagsPronS
              | TagsPronP                     [Person] [Gender] [Number] [Case]
              | TagsPronD                              [Gender] [Number] [Case]
              | TagsPronR                              [Gender] [Number] [Case]

    deriving Eq


data TagsNum  = TagsNumQ
              | TagsNumI                               [Gender]          [Case] [State]
              | TagsNumU                               [Gender]          [Case] [State]
              | TagsNumV                               [Gender]          [Case] [State]
              | TagsNumX                               [Gender]          [Case] [State]
              | TagsNumY                               [Gender]
              | TagsNumL                                                 [Case] [State]
              | TagsNumC                                        [Number] [Case] [State]
              | TagsNumD                                                 [Case] [State]
              | TagsNumM                                        [Number] [Case] [State]

    deriving Eq


data TagsAdv  = TagsAdvD

    deriving Eq


data TagsPrep = TagsPrepP
              | TagsPrepI                                                [Case]

    deriving Eq


data TagsConj = TagsConjC

    deriving Eq


data TagsPart = TagsPartF

    deriving Eq


data TagsIntj = TagsIntjI

    deriving Eq


data TagsXtra = TagsXtraX

    deriving Eq


data TagsYnit = TagsYnitY

    deriving Eq


data TagsZero = TagsZeroZ

    deriving Eq


data TagsGrph = TagsGrphG

    deriving Eq


vals :: Param a => [a] -> [a]

vals [] = values
vals vs = vs


trim :: Eq a => [a] -> [a] -> [a]

trim [] ys = ys
trim xs ys = intersect xs ys


lets :: Param a => [a] -> [a] -> [[a]]

lets xs [] = [xs]
lets xs ys = case intersect (vals xs) ys of [] -> []
                                            zs -> [zs]


lists :: [a] -> [a] -> [a]

lists x [] = x
lists _ y  = y


expand :: TagsType -> TagsType

expand (TagsVerb xs) = TagsVerb (lists complete xs)
expand (TagsNoun xs) = TagsNoun (lists complete xs)
expand (TagsAdj  xs) = TagsAdj  (lists complete xs)
expand (TagsPron xs) = TagsPron (lists complete xs)
expand (TagsNum  xs) = TagsNum  (lists complete xs)
expand (TagsAdv  xs) = TagsAdv  (lists complete xs)
expand (TagsPrep xs) = TagsPrep (lists complete xs)
expand (TagsConj xs) = TagsConj (lists complete xs)
expand (TagsPart xs) = TagsPart (lists complete xs)
expand (TagsIntj xs) = TagsIntj (lists complete xs)
expand (TagsXtra xs) = TagsXtra (lists complete xs)
expand (TagsYnit xs) = TagsYnit (lists complete xs)
expand (TagsZero xs) = TagsZero (lists complete xs)
expand (TagsGrph xs) = TagsGrph (lists complete xs)


select :: TagsType -> [TagsType] -> [TagsType]

select (TagsVerb _) ys = [ y | y@(TagsVerb _) <- ys ]
select (TagsNoun _) ys = [ y | y@(TagsNoun _) <- ys ]
select (TagsAdj  _) ys = [ y | y@(TagsAdj  _) <- ys ]
select (TagsPron _) ys = [ y | y@(TagsPron _) <- ys ]
select (TagsNum  _) ys = [ y | y@(TagsNum  _) <- ys ]
select (TagsAdv  _) ys = [ y | y@(TagsAdv  _) <- ys ]
select (TagsPrep _) ys = [ y | y@(TagsPrep _) <- ys ]
select (TagsConj _) ys = [ y | y@(TagsConj _) <- ys ]
select (TagsPart _) ys = [ y | y@(TagsPart _) <- ys ]
select (TagsIntj _) ys = [ y | y@(TagsIntj _) <- ys ]
select (TagsXtra _) ys = [ y | y@(TagsXtra _) <- ys ]
select (TagsYnit _) ys = [ y | y@(TagsYnit _) <- ys ]
select (TagsZero _) ys = [ y | y@(TagsZero _) <- ys ]
select (TagsGrph _) ys = [ y | y@(TagsGrph _) <- ys ]


class Restrict a where

    restrict :: a -> [a] -> [a]

    complete :: [a]


instance Restrict [TagsType] where

    complete = [complete]

    restrict [] ys = ys
    restrict xs [] = [xs]
    restrict xs ys = [ restrict x zs | zs <- ys, z <- zs, x <- select z (nub xs) ]
    -- restrict xs ys = [ restrict z (nub xs) | zs <- ys, z <- zs ]


instance Restrict String where

    complete = ["----------"]

    restrict x y = (map show . concat) (restrict (convert x) (map convert y))


instance Restrict TagsType where

    complete = [TagsVerb [], TagsNoun [], TagsAdj  [], TagsPron [],
                TagsNum  [], TagsAdv  [], TagsPrep [], TagsConj [],
                TagsPart [], TagsIntj [],
                TagsXtra [], TagsYnit [], TagsZero [], TagsGrph []]

    restrict (TagsVerb []) ys = [ y | y@(TagsVerb _) <- ys ]
    restrict (TagsNoun []) ys = [ y | y@(TagsNoun _) <- ys ]
    restrict (TagsAdj  []) ys = [ y | y@(TagsAdj  _) <- ys ]
    restrict (TagsPron []) ys = [ y | y@(TagsPron _) <- ys ]
    restrict (TagsNum  []) ys = [ y | y@(TagsNum  _) <- ys ]
    restrict (TagsAdv  []) ys = [ y | y@(TagsAdv  _) <- ys ]
    restrict (TagsPrep []) ys = [ y | y@(TagsPrep _) <- ys ]
    restrict (TagsConj []) ys = [ y | y@(TagsConj _) <- ys ]
    restrict (TagsPart []) ys = [ y | y@(TagsPart _) <- ys ]
    restrict (TagsIntj []) ys = [ y | y@(TagsIntj _) <- ys ]
    restrict (TagsXtra []) ys = [ y | y@(TagsXtra _) <- ys ]
    restrict (TagsYnit []) ys = [ y | y@(TagsYnit _) <- ys ]
    restrict (TagsZero []) ys = [ y | y@(TagsZero _) <- ys ]
    restrict (TagsGrph []) ys = [ y | y@(TagsGrph _) <- ys ]

    restrict (TagsVerb xs) ys = [ TagsVerb [ y | z <- zs, y <- restrict z (nub xs) ] | TagsVerb zs <- ys ]
    restrict (TagsNoun xs) ys = [ TagsNoun [ y | z <- zs, y <- restrict z      xs  ] | TagsNoun zs <- ys ]
    restrict (TagsAdj  xs) ys = [ TagsAdj  [ y | z <- zs, y <- restrict z      xs  ] | TagsAdj  zs <- ys ]
    restrict (TagsPron xs) ys = [ TagsPron [ y | z <- zs, y <- restrict z (nub xs) ] | TagsPron zs <- ys ]
    restrict (TagsNum  xs) ys = [ TagsNum  [ y | z <- zs, y <- restrict z (nub xs) ] | TagsNum  zs <- ys ]
    restrict (TagsAdv  xs) ys = [ TagsAdv  [ y | z <- zs, y <- restrict z      xs  ] | TagsAdv  zs <- ys ]
    restrict (TagsPrep xs) ys = [ TagsPrep [ y | z <- zs, y <- restrict z (nub xs) ] | TagsPrep zs <- ys ]
    restrict (TagsConj xs) ys = [ TagsConj [ y | z <- zs, y <- restrict z      xs  ] | TagsConj zs <- ys ]
    restrict (TagsPart xs) ys = [ TagsPart [ y | z <- zs, y <- restrict z      xs  ] | TagsPart zs <- ys ]
    restrict (TagsIntj xs) ys = [ TagsIntj [ y | z <- zs, y <- restrict z      xs  ] | TagsIntj zs <- ys ]
    restrict (TagsXtra xs) ys = [ TagsXtra [ y | z <- zs, y <- restrict z      xs  ] | TagsXtra zs <- ys ]
    restrict (TagsYnit xs) ys = [ TagsYnit [ y | z <- zs, y <- restrict z      xs  ] | TagsYnit zs <- ys ]
    restrict (TagsZero xs) ys = [ TagsZero [ y | z <- zs, y <- restrict z      xs  ] | TagsZero zs <- ys ]
    restrict (TagsGrph xs) ys = [ TagsGrph [ y | z <- zs, y <- restrict z      xs  ] | TagsGrph zs <- ys ]


instance Restrict TagsVerb where

    complete = [TagsVerbP [] [] [] [], TagsVerbI [] [] [] [] [], TagsVerbC [] [] []]

    restrict (TagsVerbP   v p g n) y = [ TagsVerbP    v  p  g  n  |
                                         TagsVerbP    v' p' g' n' <- y,
                                         v <- lets v v', p <- lets p p',
                                         g <- lets g g', n <- lets n n' ]

    restrict (TagsVerbI m v p g n) y = [ TagsVerbI m  v  p  g  n  |
                                         TagsVerbI m' v' p' g' n' <- y,
                                                         m <- lets m m',
                                         v <- lets v v', p <- lets p p',
                                         g <- lets g g', n <- lets n n' ]

    restrict (TagsVerbC m     g n) y = [ TagsVerbC m'       g  n  |
                                         TagsVerbC m'       g' n' <- y,
                                                         m <- lets m m',
                                         g <- lets g g', n <- lets n n' ]


instance Restrict TagsNoun where

    complete = [TagsNounN [] [] [] [] [] []]

    restrict (TagsNounN h v   g n c s) y = [ TagsNounN h  v     g  n  c  s  |
                                             TagsNounN h' v'    g' n' c' s' <- y,
                                             h <- lets h h', v <- lets v v',
                                             g <- lets g g', n <- lets n n',
                                             c <- lets c c', s <- lets s s' ]


instance Restrict TagsAdj where

    complete = [TagsAdjA  [] [] [] [] [] []]

    restrict (TagsAdjA  h v   g n c s) y = [ TagsAdjA  h  v     g  n  c  s  |
                                             TagsAdjA  h' v'    g' n' c' s' <- y,
                                             h <- lets h h', v <- lets v v',
                                             g <- lets g g', n <- lets n n',
                                             c <- lets c c', s <- lets s s' ]


instance Restrict TagsPron where

    complete = [TagsPronS, TagsPronP [] [] [] [], TagsPronD [] [] [], TagsPronR [] [] []]

    restrict (TagsPronS        ) y = [ TagsPronS | TagsPronS <- y ]

    restrict (TagsPronP p g n c) y = [ TagsPronP       p  g  n  c  |
                                       TagsPronP       p' g' n' c' <- y,
                                       p <- lets p p', g <- lets g g',
                                       n <- lets n n', c <- lets c c' ]

    restrict (TagsPronD   g n c) y = [ TagsPronD          g  n  c  |
                                       TagsPronD          g' n' c' <- y,
                                                       g <- lets g g',
                                       n <- lets n n', c <- lets c c' ]

    restrict (TagsPronR   g n c) y = [ TagsPronR          g  n  c  |
                                       TagsPronR          g' n' c' <- y,
                                                       g <- lets g g',
                                       n <- lets n n', c <- lets c c' ]


instance Restrict TagsNum where

    complete = [TagsNumQ, TagsNumI [] [] [], TagsNumU [] [] [], TagsNumV [] [] [],
                          TagsNumX [] [] [], TagsNumY [],       TagsNumL [] [],
                          TagsNumC [] [] [], TagsNumD [] [],    TagsNumM [] [] []]

    restrict (TagsNumQ             ) y = [ TagsNumQ | TagsNumQ <- y ]

    restrict (TagsNumI  g   c s) y = [ TagsNumI        g     c  s |
                                       TagsNumI        g'    c' s' <- y,
                                                       g <- lets g g',
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumU  g   c s) y = [ TagsNumU        g     c  s |
                                       TagsNumU        g'    c' s' <- y,
                                                       g <- lets g g',
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumV  g   c s) y = [ TagsNumV        g     c  s |
                                       TagsNumV        g'    c' s' <- y,
                                                       g <- lets g g',
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumX  g   c s) y = [ TagsNumX        g     c  s |
                                       TagsNumX        g'    c' s' <- y,
                                                       g <- lets g g',
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumY  g      ) y = [ TagsNumY        g          |
                                       TagsNumY        g'          <- y,
                                                       g <- lets g g' ]

    restrict (TagsNumL      c s) y = [ TagsNumL              c  s |
                                       TagsNumL              c' s' <- y,
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumC    n c s) y = [ TagsNumC           n  c  s |
                                       TagsNumC           n' c' s' <- y,
                                                       n <- lets n n',
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumD      c s) y = [ TagsNumD              c  s |
                                       TagsNumD              c' s' <- y,
                                       c <- lets c c', s <- lets s s' ]

    restrict (TagsNumM    n c s) y = [ TagsNumM           n  c  s |
                                       TagsNumM           n' c' s' <- y,
                                                       n <- lets n n',
                                       c <- lets c c', s <- lets s s' ]

instance Restrict TagsAdv where

    complete = [TagsAdvD]

    restrict TagsAdvD y = [ TagsAdvD | TagsAdvD <- y ]


instance Restrict TagsPrep where

    complete = [TagsPrepP, TagsPrepI []]

    restrict (TagsPrepP  ) y = [ TagsPrepP | TagsPrepP <- y ]

    restrict (TagsPrepI c) y = [ TagsPrepI c  |
                                 TagsPrepI c' <- y, c <- lets c c' ]


instance Restrict TagsConj where

    complete = [TagsConjC]

    restrict TagsConjC y = [ TagsConjC | TagsConjC <- y ]


instance Restrict TagsPart where

    complete = [TagsPartF]

    restrict TagsPartF y = [ TagsPartF | TagsPartF <- y ]


instance Restrict TagsIntj where

    complete = [TagsIntjI]

    restrict TagsIntjI y = [ TagsIntjI | TagsIntjI <- y ]


instance Restrict TagsXtra where

    complete = [TagsXtraX]

    restrict TagsXtraX y = [ TagsXtraX | TagsXtraX <- y ]


instance Restrict TagsYnit where

    complete = [TagsYnitY]

    restrict TagsYnitY y = [ TagsYnitY | TagsYnitY <- y ]


instance Restrict TagsZero where

    complete = [TagsZeroZ]

    restrict TagsZeroZ y = [ TagsZeroZ | TagsZeroZ <- y ]


instance Restrict TagsGrph where

    complete = [TagsGrphG]

    restrict TagsGrphG y = [ TagsGrphG | TagsGrphG <- y ]


instance Show TagsVerb where

    show (TagsVerbP   v p g n) = "VP" ++ concat [noshowlist, showlist v,
                                                 noshowlist, showlist p,
                                                 showlist g, showlist n,
                                                 noshowlist, noshowlist]

    show (TagsVerbI m v p g n) = "VI" ++ concat [showlist m, showlist v,
                                                 noshowlist, showlist p,
                                                 showlist g, showlist n,
                                                 noshowlist, noshowlist]

    show (TagsVerbC m     g n) = "VC" ++ concat [showlist m, noshowlist,
                                                 noshowlist, noshowlist,
                                                 showlist g, showlist n,
                                                 noshowlist, noshowlist]

instance Show TagsNoun where

    show (TagsNounN h v g n c s) = "N" ++ concat [noshowlist, showlist h, showlist v,
                                                  noshowlist, noshowlist, showlist g,
                                                  showlist n, showlist c, showlist s]

instance Show TagsAdj where

    show (TagsAdjA  h v g n c s) = "A" ++ concat [noshowlist, showlist h, showlist v,
                                                  noshowlist, noshowlist, showlist g,
                                                  showlist n, showlist c, showlist s]

instance Show TagsPron where

    show (TagsPronS        ) = "S-" ++ noinflects

    show (TagsPronP p g n c) = "SP" ++ concat [noshowlist, noshowlist,
                                               noshowlist, showlist p,
                                               showlist g, showlist n,
                                               showlist c, noshowlist]

    show (TagsPronD   g n c) = "SD" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, showlist n,
                                               showlist c, noshowlist]

    show (TagsPronR   g n c) = "SR" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, showlist n,
                                               showlist c, noshowlist]

instance Show TagsNum where

    show (TagsNumQ         ) = "Q-" ++ noinflects

    show (TagsNumI  g   c s) = "QI" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, noshowlist,
                                               showlist c, showlist s]

    show (TagsNumU  g   c s) = "QU" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, noshowlist,
                                               showlist c, showlist s]

    show (TagsNumV  g   c s) = "QV" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, noshowlist,
                                               showlist c, showlist s]

    show (TagsNumX  g   c s) = "QX" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, noshowlist,
                                               showlist c, showlist s]

    show (TagsNumY  g      ) = "QY" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist g, noshowlist,
                                               noshowlist, noshowlist]

    show (TagsNumL      c s) = "QL" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist c, showlist s]

    show (TagsNumC    n c s) = "QC" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               noshowlist, showlist n,
                                               showlist c, showlist s]

    show (TagsNumD      c s) = "QD" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist c, showlist s]

    show (TagsNumM    n c s) = "QM" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               noshowlist, showlist n,
                                               showlist c, showlist s]

instance Show TagsAdv where

    show TagsAdvD         = "D-" ++ noinflects

instance Show TagsPrep where

    show (TagsPrepP        ) = "P-" ++ noinflects

    show (TagsPrepI       c) = "PI" ++ concat [noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               noshowlist, noshowlist,
                                               showlist c, noshowlist]

instance Show TagsConj where

    show TagsConjC        = "C-" ++ noinflects

instance Show TagsPart where

    show TagsPartF        = "F-" ++ noinflects

instance Show TagsIntj where

    show TagsIntjI        = "I-" ++ noinflects

instance Show TagsXtra where

    show TagsXtraX        = "X-" ++ noinflects

instance Show TagsYnit where

    show TagsYnitY        = "Y-" ++ noinflects

instance Show TagsZero where

    show TagsZeroZ        = "Z-" ++ noinflects

instance Show TagsGrph where

    show TagsGrphG        = "G-" ++ noinflects


newtype TagsTypes = TagsTypes [TagsType] deriving Show


convert :: String -> [TagsType]

convert x = y

    where TagsTypes y = read x


instance Read TagsTypes where

    readsPrec _ x = [(TagsTypes rs, "")]

        where rs = [ r | (y, z) <- readSlot x,

                         v <- if null y then "VNASQDPCFIXYZG" else y,

                         r <- case v of

                                'V' -> [ TagsVerb [ r | (r, "") <- reads z ] ]
                                'N' -> [ TagsNoun [ r | (r, "") <- reads z ] ]
                                'A' -> [ TagsAdj  [ r | (r, "") <- reads z ] ]
                                'S' -> [ TagsPron [ r | (r, "") <- reads z ] ]
                                'Q' -> [ TagsNum  [ r | (r, "") <- reads z ] ]
                                'D' -> [ TagsAdv  [ r | (r, "") <- reads z ] ]
                                'P' -> [ TagsPrep [ r | (r, "") <- reads z ] ]
                                'C' -> [ TagsConj [ r | (r, "") <- reads z ] ]
                                'F' -> [ TagsPart [ r | (r, "") <- reads z ] ]
                                'I' -> [ TagsIntj [ r | (r, "") <- reads z ] ]
                                'X' -> [ TagsXtra [ r | (r, "") <- reads z ] ]
                                'Y' -> [ TagsYnit [ r | (r, "") <- reads z ] ]
                                'Z' -> [ TagsZero [ r | (r, "") <- reads z ] ]
                                'G' -> [ TagsGrph [ r | (r, "") <- reads z ] ]
                                _   -> [] ]


instance Read TagsVerb where

    readsPrec _ x1 = [ (r', "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       v1 <- if null y1 then "PIC" else y1,

                       r' <- case v1 of

                                'P' -> [TagsVerbP (readData y3)
                                                  (readData y5)
                                                  (readData y6)
                                                  (readData y7)]

                                'I' -> [TagsVerbI (readData y2)
                                                  (readData y3)
                                                  (readData y5)
                                                  (readData y6)
                                                  (readData y7)]

                                'C' -> [TagsVerbC (readData y2 `intersect` [Jussive, Energetic])
                                                  (readData y6)
                                                  (readData y7)]

                                _   -> [] ]


instance Read TagsNoun where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsNounN (readData y2)
                                                 (readData y3)
                                                 (readData y6)
                                                 (readData y7)
                                                 (readData y8)
                                                 (readData y9 `intersect` [indefinite, construct, definite, absolute]) ]


instance Read TagsAdj where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsAdjA  (readData y2)
                                                 (readData y3)
                                                 (readData y6)
                                                 (readData y7)
                                                 (readData y8)
                                                 (readData y9) ]


instance Read TagsPron where

    readsPrec _ x1 = [ (r', "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       v1 <- if null y1 then "-PDR" else y1,

                       r' <- case v1 of

                                '-' -> [TagsPronS]

                                'P' -> [TagsPronP (readData y5)
                                                  (readData y6)
                                                  (readData y7)
                                                  (readData y8)]

                                'D' -> [TagsPronD (readData y6)
                                                  (readData y7)
                                                  (readData y8)]

                                'R' -> [TagsPronR (readData y6)
                                                  (readData y7)
                                                  (readData y8)]

                                _   -> [] ]


instance Read TagsNum where

    readsPrec _ x1 = [ (r', "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       v1 <- if null y1 then "-IUVXYLCDM" else y1,

                       r' <- case v1 of

                                '-' -> [TagsNumQ]

                                'I' -> [TagsNumI  (readData y6)
                                                  (readData y8)
                                                  (readData y9)]

                                'U' -> [TagsNumU  (readData y6)
                                                  (readData y8)
                                                  (readData y9)]

                                'V' -> [TagsNumV  (readData y6)
                                                  (readData y8)
                                                  (readData y9)]

                                'X' -> [TagsNumX  (readData y6)
                                                  (readData y8)
                                                  (readData y9 `intersect` [indefinite, construct, definite, absolute])]

                                'Y' -> [TagsNumY  (readData y6)]

                                'L' -> [TagsNumL  (readData y8)
                                                  (readData y9 `intersect` [indefinite, construct, definite, absolute])]

                                'C' -> [TagsNumC  (readData y7)
                                                  (readData y8)
                                                  (readData y9 `intersect` [indefinite, construct, definite, absolute])]

                                'D' -> [TagsNumD  (readData y8)
                                                  (readData y9 `intersect` [indefinite, construct, definite, absolute])]

                                'M' -> [TagsNumM  (readData y7)
                                                  (readData y8)
                                                  (readData y9 `intersect` [indefinite, construct, definite, absolute])]

                                _   -> [] ]


instance Read TagsAdv where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsAdvD ]


instance Read TagsPrep where

    readsPrec _ x1 = [ (r', "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       v1 <- if null y1 then "-I" else y1,

                       r' <- case v1 of

                                '-' -> [TagsPrepP]

                                'I' -> [TagsPrepI (readData y8)]

                                _   -> [] ]


instance Read TagsConj where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsConjC ]


instance Read TagsPart where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsPartF ]


instance Read TagsIntj where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsIntjI ]


instance Read TagsXtra where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsXtraX ]


instance Read TagsYnit where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsYnitY ]


instance Read TagsZero where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsZeroZ ]


instance Read TagsGrph where

    readsPrec _ x1 = [ (r, "") |
                                                (y1, x2) <- readSlot x1,
                       (y2, x3) <- readSlot x2, (y3, x4) <- readSlot x3,
                       (y4, x5) <- readSlot x4, (y5, x6) <- readSlot x5,
                       (y6, x7) <- readSlot x6, (y7, x8) <- readSlot x7,
                       (y8, x9) <- readSlot x8, (y9, "") <- readSlot x9,

                       let r =         TagsGrphG ]


showlist :: Show a => [a] -> String

showlist []  = "-"
showlist [x] = [show' x]
showlist xs  = '[' : foldr ((:) . show')  "]" xs

noshowlist = "-"
noinflects = replicate 8 '-'


readData :: (Param a, Show a) => String -> [a]

readData x = [ y | let v = [ (show' z, z) | z <- values ], c <- x, Just y <- [lookup c v] ]


readSlot :: ReadS String

readSlot [] = []
readSlot x  = [ (if c == '-' then [] else [c], s) | (c, s) <- readLitChar x, c /= '[', c /= ']' ] ++
              [ (c, s) | ('[', z) <- readLitChar x, let (c, y) = break (`elem` "][") z, not (null y),
                         (']', s) <- readLitChar y ]


show' :: Show a => a -> Char

show' = head . show


data Tense = Perfect
           | Imperfect
    deriving (Eq, Show, Enum)

instance Param Tense   where values = enum


data Aspect = Perfective
            | Imperfective
            | Imperative
    deriving (Eq, Enum)

instance Param Aspect   where values = enum

instance Show Aspect where

    show Perfective   = "P"
    show Imperfective = "I"
    show Imperative   = "C"


data Mood   = Indicative
            | Subjunctive
            | Jussive
            | Energetic
    deriving (Eq, Show, Enum)

instance Param Mood     where values = enum


data Voice  = Active
            | Passive
    deriving (Eq, Show, Enum)

instance Param Voice    where values = enum


data Person = First
            | Second
            | Third
    deriving (Eq, Enum)

instance Param Person   where values = enum


instance Show Person where

    show First  = "1"
    show Second = "2"
    show Third  = "3"


data Gender = Masculine
            | Feminine
    deriving (Eq, Show, Enum)

instance Param Gender   where values = enum


data Number = Singular
            | Dual
            | Plural
    deriving (Eq, Show, Enum)

instance Param Number   where values = enum


data Couple a b = a :-: b

    deriving Eq


type State = Couple Definite Annexing

instance Param State where

    values = [ x :-: y | x <- values, y <- values ]

instance Show State where

    show (Nothing    :-: False) = "I"
    show (Just True  :-: False) = "D"
    show (Just False :-: False) = "A"

    show (Nothing    :-: True)  = "R"
    show (Just True  :-: True)  = "C"
    show (Just False :-: True)  = "L"

state (Nothing    :-: False) = "Indefinite"
state (Just True  :-: False) = "Definite"
state (Just False :-: False) = "Absolute/Negative"
state (Nothing    :-: True)  = "Reduced/Construct"
state (Just True  :-: True)  = "Complex/Overdetermined"
state (Just False :-: True)  = "Lifted/Underdetermined"

stateI = Nothing    :-: False
stateD = Just True  :-: False
stateA = Just False :-: False
stateR = Nothing    :-: True
stateC = Just True  :-: True
stateL = Just False :-: True

indefinite = Nothing    :-: False
definite   = Just True  :-: False
absolute   = Just False :-: False
construct  = Nothing    :-: True


data State' = Def | Indef | Const


type Definite = Maybe Bool

instance Param Definite where

    values = [Nothing, Just True, Just False]


type Annexing = Bool

instance Param Annexing where values = enum


data Case   = Nominative
            | Genitive
            | Accusative
    deriving (Eq, Enum)

instance Param Case     where values = enum

instance Show Case where

    show Nominative = "1"
    show Genitive   = "2"
    show Accusative = "4"


data Except = Diptote | Triptote

    deriving (Eq, Show)


type Humanness = Bool

-- instance Param Humanness


type Definiteness = Bool

-- instance Param Definiteness


newtype Logical a = Logical a

    deriving (Eq, Show)


{-

data Grade  = Normal | Elative

    deriving (Eq, Enum, Show)

instance Param Grade    where values = enum

-}


data ParaVerb   = VerbP      Voice Person Gender Number
                | VerbI Mood Voice Person Gender Number
                | VerbC Mood              Gender Number
    deriving Eq


instance Param ParaVerb where

    values  =  [ VerbP   v p g n | v <- values,
                                   n <- values, p <- values, g <- values ]
            ++ [ VerbI m v p g n | m <- values, v <- values,
                                   n <- values, p <- values, g <- values ]
            ++ [ VerbC m     g n | m <- [Jussive, Energetic],
                                   n <- values, g <- values ]


instance Show ParaVerb where

    show (VerbP   v p g n) =    "VP-" ++ [show' v] ++ "-" ++
                                   [show' p, show' g, show' n] ++ "--"

    show (VerbI m v p g n) =    "VI" ++ [show' m, show' v] ++ "-" ++
                                   [show' p, show' g, show' n] ++ "--"

    show (VerbC m     g n) =    "VC" ++ [show' m] ++ "---" ++
                                   [show' g, show' n] ++ "--"


data ParaNoun   = NounN              Number Case State
            --- | NounP Voice Gender Number Case State
            --- | NounA       Gender Number Case State
    deriving Eq

-- data ParaNoun' = Noun Number Case State deriving (Eq, Show)


instance Param ParaNoun where

    values  =  [ NounN     n c s | n <- values,
                                   s <- [indefinite, construct, definite, absolute],
                                   c <- values ]
            -- ++ [ NounP v g n c s | v <- values, n <- values, g <- values,
            --                        s <- values, c <- values ]
            -- ++ [ NounA   g n c s | n <- values, g <- values,
            --                        s <- values, c <- values ]


instance Show ParaNoun where

    show (NounN     n c s) =    show (TagsNounN [] [] [] [n] [c] [s])

                             -- "N------" ++ [show' n, show' c, show' s]

 -- show (NounP v g n c s) =    "NP-" ++ [show' v] ++ "--" ++
 --                                 [show' g, show' n, show' c, show' s]

 -- show (NounA   g n c s) =    "NA----" ++
 --                                 [show' g, show' n, show' c, show' s]


instance Enum ParaNoun where
    fromEnum x = head [ n | (y, n) <- zip values [0 ..], x == y ]
    toEnum = (!!) values


data ParaAdj    = AdjA       Gender Number Case State

    deriving Eq


instance Param ParaAdj where

    values  =  [ AdjA   g n c s | n <- values, g <- values,
                                  s <- values, c <- values ]


instance Show ParaAdj where

    show (AdjA   g n c s) =     "A-----" ++
                                    [show' g, show' n, show' c, show' s]


data ParaPron = PronS
              | PronP Person Gender Number Case
              | PronD        Gender Number Case
              | PronR        Gender Number Case

    deriving Eq

instance Param ParaPron where

    values  =  [ PronS ]
            ++ [ PronP p g n c | n <- values, p <- values,
                                              g <- values, c <- values ]
            ++ [ PronD   g n c | n <- values, g <- values, c <- values ]
            ++ [ PronR   g n c | n <- values, g <- values, c <- values ]

instance Show ParaPron where

    show (PronS        ) =  "S---------"
    show (PronP p g n c) =  "SP---" ++ [show' p, show' g, show' n, show' c] ++ "-"
    show (PronD   g n c) =  "SD----" ++ [show' g, show' n, show' c] ++ "-"
    show (PronR   g n c) =  "SR----" ++ [show' g, show' n, show' c] ++ "-"


data ParaNum = NumQ
             | NumI  Gender        Case State
             | NumU  Gender        Case State
             | NumV  Gender        Case State
             | NumX  Gender        Case State
             | NumY  Gender
             | NumL                Case State
             | NumC         Number Case State
             | NumD                Case State
             | NumM         Number Case State

    deriving Eq

instance Param ParaNum where

    values =  [ NumQ ]
           ++ [ NumI  g   c s | g <- values, s <- [indefinite, construct, definite, absolute], c <- values ]
           ++ [ NumU  g   c s | g <- values, s <- [indefinite, construct, definite, absolute], c <- values ]
           ++ [ NumV  g   c s | g <- values, s <- values,                                      c <- values ]
           ++ [ NumX  g   c s | g <- values, s <- [indefinite, construct, definite, absolute], c <- values ]
           ++ [ NumY  g       | g <- values ]
           ++ [ NumL      c s |              s <- [indefinite, construct, definite, absolute], c <- values ]
           ++ [ NumC    n c s | n <- values, s <- [indefinite, construct, definite, absolute], c <- values ]
           ++ [ NumD      c s |              s <- [indefinite, construct, definite, absolute], c <- values ]
           ++ [ NumM    n c s | n <- values, s <- [indefinite, construct, definite, absolute], c <- values ]

instance Show ParaNum where

    show (NumQ         ) =  "Q---------"
    show (NumI  g   c s) =  "QI----" ++ [show' g] ++ "-" ++ [show' c, show' s]
    show (NumU  g   c s) =  "QU----" ++ [show' g] ++ "-" ++ [show' c, show' s]
    show (NumV  g   c s) =  "QV----" ++ [show' g] ++ "-" ++ [show' c, show' s]
    show (NumX  g   c s) =  "QX----" ++ [show' g] ++ "-" ++ [show' c, show' s]
    show (NumY  g      ) =  "QY----" ++ [show' g] ++ "---"
    show (NumL      c s) =  "QL------" ++ [show' c, show' s]
    show (NumC    n c s) =  "QC-----" ++ [show' n, show' c, show' s]
    show (NumD      c s) =  "QD------" ++ [show' c, show' s]
    show (NumM    n c s) =  "QM-----" ++ [show' n, show' c, show' s]


data ParaAdv = AdvD  deriving (Eq, Enum)

instance Param ParaAdv where

    values = [AdvD]

instance Show ParaAdv where

    show AdvD = "D---------"


data ParaPrep = PrepP
              | PrepI   Case

    deriving Eq

instance Param ParaPrep where

    values = [PrepP] ++ [ PrepI c | c <- values ]

instance Show ParaPrep where

    show (PrepP  ) = "P---------"
    show (PrepI c) = "PI------" ++ [show' c] ++ "-"


data ParaConj = ConjC  deriving (Eq, Enum)

instance Param ParaConj where

    values = [ConjC]

instance Show ParaConj where

    show ConjC = "C---------"


data ParaPart = PartF  deriving (Eq, Enum)

instance Param ParaPart where

    values = [PartF]

instance Show ParaPart where

    show PartF = "F---------"


data ParaIntj = IntjI  deriving (Eq, Enum)

instance Param ParaIntj where

    values = [IntjI]

instance Show ParaIntj where

    show IntjI = "I---------"


data ParaXtra = XtraX  deriving (Eq, Enum)

instance Param ParaXtra where

    values = [XtraX]

instance Show ParaXtra where

    show XtraX = "X---------"


data ParaYnit = YnitY  deriving (Eq, Enum)

instance Param ParaYnit where

    values = [YnitY]

instance Show ParaYnit where

    show YnitY = "Y---------"


data ParaZero = ZeroZ  deriving (Eq, Enum)

instance Param ParaZero where

    values = [ZeroZ]

instance Show ParaZero where

    show ZeroZ = "Z---------"


data ParaGrph = GrphG  deriving (Eq, Enum)

instance Param ParaGrph where

    values = [GrphG]

instance Show ParaGrph where

    show GrphG = "G---------"


revert :: ParaType -> TagsType

revert (ParaVerb (VerbP   v p g n))  = TagsVerb [TagsVerbP     [v] [p] [g] [n]]
revert (ParaVerb (VerbI m v p g n))  = TagsVerb [TagsVerbI [m] [v] [p] [g] [n]]
revert (ParaVerb (VerbC m     g n))  = TagsVerb [TagsVerbC [m]         [g] [n]]

revert (ParaNoun (NounN   n c s))  = TagsNoun [TagsNounN []  []  []  [n] [c] [s]]

revert (ParaAdj  (AdjA  g n c s))  = TagsAdj  [TagsAdjA  []  []  [g] [n] [c] [s]]

revert (ParaPron (PronS        ))  = TagsPron [TagsPronS]
revert (ParaPron (PronP p g n c))  = TagsPron [TagsPronP [p] [g] [n] [c]]
revert (ParaPron (PronD   g n c))  = TagsPron [TagsPronD     [g] [n] [c]]
revert (ParaPron (PronR   g n c))  = TagsPron [TagsPronR     [g] [n] [c]]

revert (ParaNum  (NumQ         ))  = TagsNum  [TagsNumQ]
revert (ParaNum  (NumI  g   c s))  = TagsNum  [TagsNumI  [g]     [c] [s]]
revert (ParaNum  (NumU  g   c s))  = TagsNum  [TagsNumU  [g]     [c] [s]]
revert (ParaNum  (NumV  g   c s))  = TagsNum  [TagsNumV  [g]     [c] [s]]
revert (ParaNum  (NumX  g   c s))  = TagsNum  [TagsNumX  [g]     [c] [s]]
revert (ParaNum  (NumY  g      ))  = TagsNum  [TagsNumY  [g]]
revert (ParaNum  (NumL      c s))  = TagsNum  [TagsNumL          [c] [s]]
revert (ParaNum  (NumC    n c s))  = TagsNum  [TagsNumC      [n] [c] [s]]
revert (ParaNum  (NumD      c s))  = TagsNum  [TagsNumD          [c] [s]]
revert (ParaNum  (NumM    n c s))  = TagsNum  [TagsNumM      [n] [c] [s]]

revert (ParaAdv  (AdvD))   = TagsAdv  [TagsAdvD]

revert (ParaPrep (PrepP  )) = TagsPrep [TagsPrepP]
revert (ParaPrep (PrepI c)) = TagsPrep [TagsPrepI [c]]

revert (ParaConj (ConjC))  = TagsConj [TagsConjC]

revert (ParaPart (PartF))  = TagsPart [TagsPartF]

revert (ParaIntj (IntjI))  = TagsIntj [TagsIntjI]

revert (ParaXtra (XtraX))  = TagsXtra [TagsXtraX]

revert (ParaYnit (YnitY))  = TagsYnit [TagsYnitY]

revert (ParaZero (ZeroZ))  = TagsZero [TagsZeroZ]

revert (ParaGrph (GrphG))  = TagsGrph [TagsGrphG]
