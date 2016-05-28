-- |
--
-- Module      :  Elixir.Entity
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Entity where


import Elixir.Template

import Elixir.Patterns

import Elixir.System

import Elixir.Pretty


data Lexeme a   =   Lexeme Root (Entry a)   deriving (Show, Eq)


(>-<) :: Root -> Entry a -> Lexeme a

(>-<) x y = Lexeme x y


(<->) :: Root -> Entry a -> Lexeme a

(<->) x y = Lexeme x y


infix 2 >-<, <->


data Nest   a   =   Nest   Root [Entry a]   deriving (Show, Eq)


root :: Nest a -> Root

root (Nest r _) = r


ents :: Nest a -> [Entry a]

ents (Nest _ e) = e


type Reflex = [String]

data Entry a = Entry { morphs :: Morphs a, entity :: Entity a,
                       limits :: Limits a, reflex :: Reflex }

    deriving (Show, Eq)


type Limits a = (TagsType, [([TagsType], [Morphs a])])


domain :: Entry a -> TagsType

domain = fst . limits


(<::>) :: (Morphing a b, Forming b, Rules b) => a -> String -> Entry b

x <::> y = Entry { morphs = morph x, entity = e, limits = (d, []), reflex = [] }

    where e = case d of

                    TagsVerb _ -> entity (verb x [])
                    TagsNoun _ -> entity (noun x [])
                    TagsAdj  _ -> entity (adj  x [])
                    TagsPron _ -> Pron
                    TagsNum  _ -> entity (num  x [])
                    TagsAdv  _ -> Adv
                    TagsPrep _ -> Prep
                    TagsConj _ -> Conj
                    TagsPart _ -> Part
                    TagsIntj _ -> Intj
                    TagsXtra _ -> Xtra
                    TagsYnit _ -> Ynit
                    TagsZero _ -> Zero
                    TagsGrph _ -> Grph

          d = head (convert y ++ [TagsGrph []])


infixl 6 <::>, <..>, <.>, <:>


(<..>) :: Entry a -> Reflex -> Entry a

x <..> y = x { reflex = y }


(<.>) :: Entry a -> String -> Entry a

x <.> y = x { limits = (d, (restrict d (convert y), []) : l) }

    where (d, l) = limits x


(<:>) :: Morphing a b => Entry b -> a -> Entry b

x <:> y = x { limits = (d, r) }

    where (d, l) = limits x
          r = case l of []         -> []
                        (u, v) : w -> (u, morph y : v) : w


data Entity a = Verb [Form] [a] [a] [a] [Morphs a] (Maybe Tense) (Maybe Voice)
              | Noun [Morphs a] [Morphs a] (Maybe Except)
              | Adj  [Morphs a] [Morphs a]
              | Pron
              | Num  [Morphs a] [Morphs a]
              | Adv
              | Prep
              | Conj
              | Part
              | Intj
              | Xtra
              | Ynit
              | Zero
              | Grph

    deriving (Show, Eq)


isVerb, isNoun, isAdj, isPron, isNum, isAdv, isPrep, isConj, isPart, isIntj :: Entity a -> Bool

isVerb (Verb _ _ _ _ _ _ _) = True
isVerb _                    = False

isNoun (Noun _ _ _) = True
isNoun _            = False

isAdj (Adj _ _) = True
isAdj _         = False

isPron Pron = True
isPron _    = False

isNum (Num _ _) = True
isNum _         = False

isAdv Adv = True
isAdv _   = False

isPrep Prep = True
isPrep _    = False

isConj Conj = True
isConj _    = False

isPart Part = True
isPart _    = False

isIntj Intj = True
isIntj _    = False


isXtra, isYnit, isZero, isGrph :: Entity a -> Bool

isXtra Xtra = True
isXtra _    = False

isYnit Ynit = True
isYnit _    = False

isZero Zero = True
isZero _    = False

isGrph Grph = True
isGrph _    = False


verb :: (Morphing a b, Forming b, Rules b) => a -> Reflex -> Entry b

verb h = Entry m (Verb forms [] [] [] [] justT justV) (TagsVerb [], [])

    where m@(Morphs t p s) = morph h

          forms = first [ f | f <- [III, I, II] ++ [IV ..], isForm f t ]

          roots I = ["F C L", "w C L", "F C C", "F y y", "r ' y"]
          roots X = ["F C L", "w C L"]
          roots _ = ["F C L"]

          stems = [ s | f <- forms, r <- roots f, s <- verbStems f r ]

          notPA = null [ () | (_, x, _, _, _) <- stems, x == t ]
          notPP = null [ () | (_, _, x, _, _) <- stems, x == t ]
          notIA = null [ () | (_, _, _, x, _) <- stems, x == t ]
          notIP = null [ () | (_, _, _, _, x) <- stems, x == t ]

          justT = if notPA && notPP then Just Imperfect
                                    else Nothing

          justV = if notPA && notIA then Just Passive
                                    else Nothing


noun, adj, pron, num, adv, prep, conj, part, intj :: Morphing a b => a -> Reflex -> Entry b

noun h = Entry m (Noun [] [] Nothing) (TagsNoun d, [])

    where Morphs t p s = morph h

          (m, d) = case s of

                        Suffix "aN" : _ -> (Morphs t p (tail s), [TagsNounN [] [] [] [Singular] [Accusative]
                                                                 [indefinite]])
                        Suffix "a" : _  -> (Morphs t p (tail s), [TagsNounN [] [] [] [Singular] [Accusative]
                                                                 [if article then definite else construct]])
                        _               -> (Morphs t p s, if article then [TagsNounN [] [] [] [] [] [definite]]
                                                                     else [])

          article = case p of

                        Al : _          -> True
                        Prefix "al" : _ -> True
                        _               -> False


adj  h = Entry m (Adj [] [])          (TagsAdj  d, [])

    where Morphs t p s = morph h

          (m, d) = case s of

                        Suffix "aN" : _ -> (Morphs t p (tail s), [TagsAdjA  [] [] [] [Singular]
                                                                 [Accusative] [indefinite]])
                        _               -> (Morphs t p s, [])


pron m = Entry (morph m) Pron         (TagsPron [TagsPronS], [])

num  m = Entry (morph m) (Num [] [])  (TagsNum  [TagsNumQ], [])

adv  m = Entry (morph m) Adv  (TagsAdv  [], [])
prep m = Entry (morph m) Prep (TagsPrep [], [])
conj m = Entry (morph m) Conj (TagsConj [], [])
part m = Entry (morph m) Part (TagsPart [], [])
intj m = Entry (morph m) Intj (TagsIntj [], [])


xtra, ynit, zero, grph :: Morphing a b => a -> Reflex -> Entry b

xtra m = Entry (morph m) Xtra (TagsXtra [], [])
ynit m = Entry (morph m) Ynit (TagsYnit [], [])
zero m = Entry (morph m) Zero (TagsZero [], [])
grph m = Entry (morph m) Grph (TagsGrph [], [])


infixl 6 `verb`, `noun`, `adj`,  `pron`,
         `num`,  `adv`,  `prep`, `conj`,
         `part`, `intj`,
         `xtra`, `ynit`, `zero`, `grph`


imperf, pfirst, ithird, second :: Entry a -> a -> Entry a

imperf x y = case entity x of

                Verb f p i c m t v  -> x { entity = Verb f p (y : i) c m t v }
                _                   -> x


pfirst x y = case entity x of

                Verb f p i c m t v  -> x { entity = Verb f (y : p) i c m t v }
                _                   -> x


ithird = const


second x y = case entity x of

                Verb f p i c m t v  -> x { entity = Verb f p i (y : c) m t v }
                _                   -> x


masdar :: Morphing a b => Entry b -> a -> Entry b

masdar x y = case entity x of

                Verb f p i c m t v  -> x { entity = Verb f p i c (morph y : m) t v }
                _                   -> x


derives :: Entry a -> Bool -> Entry a

derives x y = case entity x of

                Noun z f e | y -> x { entity = Noun z (morphs x |< aT : f) e }
                _              -> x


excepts :: Entry a -> Except -> Entry a

excepts x y = case entity x of

                Noun z f _ -> x { entity = Noun z f (Just y) }
                _          -> x


except :: Entry a -> Maybe Except

except x = case entity x of

                Noun _ _ e -> e
                _          -> Nothing


limited :: Entry a -> String -> Entry a

limited x y = x { limits = (h, l) }

    where (d, l) = limits x
          h = head (restrict d (convert y) ++ [d])


femini :: Morphing a b => Entry b -> a -> Entry b

femini x y = case entity x of

                Noun z f e -> x { entity = Noun z (morph y : f) e }
                Adj  z f   -> x { entity = Adj  z (morph y : f) }
                Num  z f   -> x { entity = Num  z (morph y : f) }
                _          -> x


plural :: Morphing a b => Entry b -> a -> Entry b

plural x y = case entity x of

                Noun z f e -> x { entity = Noun (morph y : z) f e }
                Adj  z f   -> x { entity = Adj  (morph y : z) f }
                Num  z f   -> x { entity = Num  (morph y : z) f }
                _          -> x


infixl 6 `imperf`, `pfirst`, `ithird`, `second`

infixl 6 `masdar`, `plural`, `femini`, `others`

infixl 6 `limited`, `derives`, `excepts`


others = const


instance Pretty (Lexeme a) => Pretty [Lexeme a] where

    pretty = singleline pretty


instance Pretty (Entry a) => Pretty (Lexeme a) where

    pretty (Lexeme r e) = elemtxt "root" [] (text r)
                          <$$>
                          element "core" [] (pretty e)

    prettyList = vcat . map (element "Lexeme" [] . pretty)


instance Pretty (Entry a) => Pretty (Nest a) where

    pretty (Nest r l) = element "Nest" [] (elemtxt "root" [] (text r)
                                           <$$>
                                           element "ents" [] (pretty l))

    prettyList = vcat . map pretty


instance (Show a, Pretty (Entity a)) => Pretty (Entry a) where

    pretty (Entry m e l r) = vcat ([ elemtxt "morphs" [] $ pretty m,
                                     element "entity" [] $ pretty e ]
                                   ++
                                   eraseEmpty l
                                   [ element "limits" [] $ pretty l ]
                                   ++
                                   [ elemtxt "reflex" [] $ pretty r ])

        where eraseEmpty x y = case x of (z, []) | z `elem` complete -> []
                                         _                           -> y

    prettyList = vcat . map (element "Entry" [] . pretty)


instance Show a => Pretty (Entity a) where

    pretty x = case x of    Verb f p i c m t v  ->  elemesp "Verb" $

                                eraseEmpty   f [ elemtxt "form"   [] $ (pretty . map show) f ]
                                ++
                                eraseEmpty   p [ elemtxt "pfirst" [] $ (pretty . map show) p ]
                                ++
                                eraseEmpty   i [ elemtxt "imperf" [] $ (pretty . map show) i ]
                                ++
                                eraseEmpty   c [ elemtxt "second" [] $ (pretty . map show) c ]
                                ++
                                eraseNothing t [ elemtxt "tense"  [] $ case t of

                                                            Just Perfect    ->  text "Perfect"
                                                            Just Imperfect  ->  text "Imperfect" ]
                                ++
                                eraseNothing v [ elemtxt "voice"  [] $ case v of

                                                            Just Active     ->  text "Active"
                                                            Just Passive    ->  text "Passive" ]
                                ++
                                eraseEmpty   m [ elemtxt "masdar" [] $ (pretty . map show) m ]

                            Noun l f e          ->  elemesp "Noun" $

                                eraseEmpty   l [ elemtxt "plural" [] $ (pretty . map show) l ]
                                ++
                                eraseEmpty   f [ elemtxt "femini" [] $ (pretty . map show) f ]
                                ++
                                eraseNothing e [ elemtxt "except" [] $ pretty e ]

                            Adj  l f            ->  elemesp "Adj" $

                                eraseEmpty   l [ elemtxt "plural" [] $ (pretty . map show) l ]
                                ++
                                eraseEmpty   f [ elemtxt "femini" [] $ (pretty . map show) f ]

                            Pron                ->  elemesp "Pron" []

                            Num  l f            ->  elemesp "Num"  $

                                eraseEmpty   l [ elemtxt "plural" [] $ (pretty . map show) l ]
                                ++
                                eraseEmpty   f [ elemtxt "femini" [] $ (pretty . map show) f ]

                            Adv                 ->  elemesp "Adv"  []
                            Prep                ->  elemesp "Prep" []
                            Conj                ->  elemesp "Conj" []
                            Part                ->  elemesp "Part" []
                            Intj                ->  elemesp "Intj" []

                            Xtra                ->  elemesp "Xtra" []
                            Ynit                ->  elemesp "Ynit" []
                            Zero                ->  elemesp "Zero" []
                            Grph                ->  elemesp "Grph" []

        where eraseNothing x y = case x of Nothing -> []
                                           _       -> y

              eraseEmpty x y = case x of [] -> []
                                         _  -> y


instance Show a => Pretty (Limits a) where

    pretty (x, y) = elemtxt "fst" [] (pretty x)
                    <$$>
                    elemtxt "snd" [] (pretty y)


instance Show a => Pretty ([TagsType], [Morphs a]) where

    pretty (x, y) = elemtxt "fst" [] ((pretty . map (show . pretty)) x)
                    <$$>
                    elemtxt "snd" [] ((pretty . map show) y)

    prettyList []  = empty
    prettyList [x] = (nested . pretty) x
    prettyList xyz = (nested . vcat . map (element "LM" [] . pretty)) xyz


instance Show a => Pretty a where

    pretty = text . escape . show


instance Pretty String where

    pretty = text . escape

    prettyList []  = empty
    prettyList [x] | not (null x) = pretty x
    prettyList xyz = (nested . vcat . map (elemtxt "LM" [] . pretty)) xyz
