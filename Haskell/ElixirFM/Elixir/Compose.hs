-- |
--
-- Module      :  Elixir.Compose
-- Copyright   :  Otakar Smrz 2005-2017
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Compose where


import Elixir.Data

import Elixir.Lexicon

import Elixir.Inflect

import Elixir.Pretty

import Encode.Arabic

import Data.List

import qualified Data.Map as Map


data Token a = Token { lexeme :: (Lexeme a, Index), struct :: (Root, Morphs a), tag :: Tag }

    deriving (Show, Eq)


type Tag = ParaType


class Compose a where

    compose :: [a] -> String

    compose x = ""


instance Compose String where

    compose x = unwords x


instance Compose (Wrap Token) where

 -- compose = unwords . map (unwraps (uncurry merge . struct))

    compose = fst . foldr (\ x (y, z) -> (f x y z, x : z)) ("", [])

        where f x _ [] = unwraps (uncurry merge . struct) x

              f x y (z : _) = case unwraps tag x of

                            ParaVerb (VerbP _ Second Masculine Plural)  ->  w ++ "U" ++ y

                            ParaNoun _  | "ya" == y && init w `elem` ["'ab", "'a_h", ".ham", "f"]
                                                    && last w `elem` "UIA"      ->  init w ++ "I"
                                        | "|I" == y                             ->  init w ++ tail y


                            ParaAdj  _  | "|I" == y                     ->  init w ++ tail y

                            ParaNum  (NumV Feminine _ (_ :-: True))     ->  w ++ y

                            ParaPron _  | "mA" == y && "mA" == w        ->  init w ++ "ah" ++ y

                            ParaConj _  | y `elem` ["lA", "mA"] && w `elem` ["'an", "'in"]
                                                                                ->  init w ++ [head y] ++ y

                            ParaPrep _  | y `elem` ["mA", "man"] && w `elem` ["`an", "min"]
                                                                                ->  init w ++ "m" ++ y
                                        | "|I" == y                             ->  init w ++ tail y

                            _   ->  case unwraps tag z of

                                                ParaPron (PronP _ _ _ Nominative)   ->  w ++ "-" ++ y
                                                ParaPron (PronP _ _ _ _)            ->  w ++ y
                                                _                                   ->  w ++ "-" ++ y

                where u = unwraps (uncurry merge . struct) x

                      w = case reverse u of

                                c : 'T' : v     ->  reverse v ++ "t" ++ [c]
                                c : '-' : v     ->  reverse v ++ [c]
                                'W' : 'U' : v   ->  reverse v ++ "U"
                                'W' : 'a' : v   ->  reverse v ++ "aw"
                                'Y' : v         ->  reverse v ++ "A"
                                _               ->  u


euphony :: String -> String -> Bool

euphony [] _ = True

euphony x "|I" = all (last x /=) "AIUYwy"
euphony x "ya" = any (last x ==) "AIUYwy"

euphony x y | isPrefixOf "hu" y = all (last x /=) "Iiy"
euphony x y | isPrefixOf "hi" y = any (last x ==) "Iiy"

euphony _ _ = True


numeric :: [String]

numeric = [ merge "" z | x <- [".hAdI", "_tAnI", "_tAli_t", "rAbi`", "_hAmis", "sAdis", "sAbi`", "_tAmin", "tAsi`"],
                         y <- [morph x, x |< aT], z <- [y |<< "a", al >| y |<< "a", y |<< "aN"] ]


harmony :: ParaType -> String -> [Maybe (String, String -> Bool)]

harmony (ParaVerb (VerbP   Passive _ _ _))  _   = [Nothing]
harmony (ParaVerb (VerbI _ Passive _ _ _))  _   = [Nothing]
harmony (ParaVerb _)                        y   = [Nothing, Just ("SP------4-", euphony y)]

harmony (ParaNoun (NounN _ _ (Nothing :-: True)))   y   = [Nothing, Just ("SP------2-", (\ x -> euphony y x && x /= "nI")),
                                                                    Just ("S---------", (== "mA"))]
harmony (ParaNoun _)                                _   = [Nothing]

harmony (ParaAdj  (AdjA  _ _ _ (Nothing :-: True)))     y

    | init y `elem` ["'ayy", "'ayyaT"]  = [Nothing, Just ("S---------", (== "mA"))]
    | otherwise                         = [Nothing, Just ("SP------2-", (\ x -> euphony y x && x /= "nI"))]
                                        -- consider Just ("SP------4-", euphony y)

harmony (ParaAdj  _)                                    _   = [Nothing]

harmony (ParaPron (PronD _ _ Nominative))    y

    | y `elem` ["kilA", "kiltA"]        = [Nothing, Just ("S------D2-", euphony y)]
    | y `elem` ["_dU", "_dAtu",
                "_dawA", "_dAtA",
                         "_dawAtA",
                "_dawU", "_dawAtu"]     = [Nothing, Just ("S-------2-", euphony y)]
    | y `elem` ["'_UlU", "'_UlAtu"]     = [Nothing, Just ("S-------2-", euphony y)]
    | otherwise                         = [Nothing]

harmony (ParaPron (PronD _ _ _))    y

    | y `elem` ["kilay", "kiltay"]      = [Nothing, Just ("S------D2-", euphony y)]
    | y `elem` ["_dI", "_dAti",
                "_dA", "_dAta",
                "_daway", "_dAtay",
                          "_dawAtay",
                "_dawI", "_dawAti"]     = [Nothing, Just ("S-------2-", euphony y)]
    | y `elem` ["'_UlI", "'_UlAti"]     = [Nothing, Just ("S-------2-", euphony y)]
    | otherwise                         = [Nothing]

harmony (ParaPron PronS)    "mA"    = [Nothing, Just ("V[PI]I-------", const True),
                                                Just ("P---------", const True),
                                                Just ("S---------", (== "mA"))]
harmony (ParaPron PronS)    y       = [Nothing, Just ("S---------", (== "mA"))]
harmony (ParaPron _)        y       = [Nothing]     -- in modern language

-- Wrigth (1991), Fischer (2002), Badawi et al. (2004) on options with [Nothing, Just ("SP------4-", euphony y)]

harmony (ParaNum  (NumV Feminine _ (_ :-: True)))           _   = [Nothing, Just ("QC-----S2[IRA]", const True)]
harmony (ParaNum  (NumC _        _ (Nothing :-: True)))     y   = [Nothing, Just ("SP------2-", (\ x -> euphony y x && x /= "nI"))]
harmony (ParaNum  (NumM _        _ (Nothing :-: True)))     y   = [Nothing, Just ("SP------2-", (\ x -> euphony y x && x /= "nI"))]
harmony (ParaNum  _)                                        _   = [Nothing]

harmony (ParaAdv  _)    _   = [Nothing]

harmony (ParaPrep _)    "la"    = [Nothing, Just ("SP------2-", (\ x -> euphony "la" x && x /= "nI"))]
harmony (ParaPrep _)    "li"    = [Nothing, Just ("S[-DR]------2-", const True),
                                            Just ("[NADXZ]-------2-", const True),
                                            Just ("A-------4[IRCL]", (`elem` numeric)),
                                            Just ("Q[IYVXLCM]------2-", const True),
                                            Just ("Q[IV]------4[RCL]", const True),
                                            Just ("C---------", (`elem` ["'anna", "'an"])),
                                            Just ("P[-I]------2-", const True)]    -- in modern language
harmony (ParaPrep _)    "ka"    = [Nothing, Just ("SP------1-", const True),
                                            Just ("S[-DR]------2-", const True),
                                            Just ("[NADXZ]-------2-", const True),
                                            Just ("A-------4[IRCL]", (`elem` numeric)),
                                            Just ("Q[IYVXLCM]------2-", const True),
                                            Just ("Q[IV]------4[RCL]", const True),
                                            Just ("C---------", (`elem` ["'anna", "'an"])),
                                            Just ("P[-I]------2-", const True)]    -- in modern language
harmony (ParaPrep _)    "bi"    = [Nothing, Just ("S-------2-", (\ x -> euphony "bi" x && x /= "nI")),
                                            Just ("F---------", (== "lA")),
                                            Just ("[NADXZ]-------2-", const True),
                                            Just ("A-------4[IRCL]", (`elem` numeric)),
                                            Just ("Q[IYVXLCM]------2-", const True),
                                            Just ("Q[IV]------4[RCL]", const True),
                                            Just ("C---------", (`elem` ["'anna", "'an", ".hay_tu"])),
                                            Just ("P[-I]------2-", const True)]    -- in modern language
harmony (ParaPrep _)    y

    | y `elem` ["wa", "ta"]     = [Nothing, Just ("N-------2D", (== "al-l_ahi"))]
    | y `elem` ["`an", "min"]   = [Nothing, Just ("S-------2-", (\ x -> euphony y x && x /= "|I"))]
    | otherwise                 = [Nothing, Just ("S-------2-", (\ x -> euphony y x && x /= "nI"))]

harmony (ParaConj _)    "li"        = [Nothing, Just ("VIS-------", const True),
                                                Just ("C---------", (`elem` ["'an", "kay"]))]
harmony (ParaConj _)    "kay"       = [Nothing, Just ("F---------", (== "lA")),
                                                Just ("S---------", (== "mA"))]
harmony (ParaConj _)    "law"       = [Nothing, Just ("F---------", (== "lA"))]
harmony (ParaConj _)    y

    | y `elem` ["'anna", "ka-'anna", "li-'anna"]    = [Nothing, Just ("SP------4-", euphony y)]
    | y `elem` ["'an", "'in"]                       = [Nothing, Just ("F---------", (== "lA")),
                                                                Just ("SP---1--4-", const True)]
    | y `elem` ["'inna", "l_akinna", "lAkinna"]     = [Nothing, Just ("SP------4-", euphony y),
                                                                Just ("S---------", (== "mA"))]
    | y `elem` ["l_akin", "lAkin"]                  = [Nothing, Just ("SP---1--4-", const True)]
    | y `elem` ["wa", "fa"]                         = [Nothing, Just ("SP------1-", const True),
                                                                Just ("S[-DR]--------", const True),
                                                                Just ("Q[IYVXLCM]--------", const True),
                                                                Just ("[VNADPCFIXZ]---------", const True)]
    | otherwise                                     = [Nothing]

harmony (ParaPart _)    "sa"        = [Nothing, Just ("VII-------", const True)]
harmony (ParaPart _)    "li"        = [Nothing, Just ("VIJ-------", const True)]
harmony (ParaPart _)    "la"        = [Nothing, Just ("[VNADPFIXZ]---------", const True),
                                                Just ("Q[IYVXLCM]--------", const True),
                                                Just ("SP------1-", const True),
                                                Just ("S[-DR]--------", const True)]                -- excluding "[CY]---------"
harmony (ParaPart _)    "'a"        = [Nothing, Just ("V---------", const True),
                                                Just ("D---------", (`elem` ["hunA", "hunAka", "_tammaTa"])),
                                                Just ("F---------", (`elem` ["mA", "lA", "lam", "lan", "sa"])),
                                                Just ("S-------1-", const True)]
harmony (ParaPart _)    "hal"       = [Nothing, Just ("F---------", (== "lA"))]
harmony (ParaPart _)    "'IyA"      = [Nothing, Just ("SP------2-", (\ x -> euphony "'IyA" x && x /= "nI"))]
harmony (ParaPart _)    "'inna"     = [Nothing, Just ("SP------4-", euphony "'inna"),
                                                Just ("S---------", (== "mA"))]
harmony (ParaPart _)    "'in"       = [Nothing, Just ("SP---1--4-", const True)]
harmony (ParaPart _)    "`alla"     = [Nothing, Just ("SP------4-", euphony "`alla")]
harmony (ParaPart _)    "layta"     = [Nothing, Just ("SP------4-", euphony "layta")]
harmony (ParaPart _)    "lA"        = [Nothing, Just ("VI--------", const True),
                                                Just ("[NADXZ]-------4-", const True),              -- excluding "[SCPFIY]---------"
                                                Just ("Q[IYVXLCM]------4-", const True),
                                                Just ("SP------4-", euphony "lA")]
harmony (ParaPart _)    "mA"        = [Nothing, Just ("VP--------", const True)]
harmony (ParaPart _)    y           = [Nothing, Just ("[VNADXZ]-------4-", const True),             -- excluding "[SCPFIY]---------"
                                                Just ("Q[IYVXLCM]------4-", const True),
                                                Just ("SP------4-", euphony y)]

harmony (ParaIntj _)    y   = [Nothing, Just ("SP------2-", (\ x -> euphony y x && x /= "nI"))]

harmony (ParaXtra _)    _   = [Nothing]

harmony (ParaYnit _)    _   = [Nothing]

harmony (ParaZero _)    _   = [Nothing]

harmony (ParaGrph _)    _   = [Nothing]


generate :: [TagsType] -> Lexicon -> Doc

generate x y = doubleline id [ z | (w, n) <- zip y [1 ..], z <- unwraps (\ (Nest r z) -> [ (list . (:)

                                    ((list . map text) [show (merge r (morphs e)), show r, (show . show) (morphs e),
                                                        show (reflex e), (show . show) (entity e), show (n, m)])

                                    . map (text . show) . process)

                                    i | (e, m) <- zip z [1 ..], let i = inflect (Lexeme r e) x, (not . null) i ]) w ]


process x = (map (\ (i, x) ->
                    (i, (map (\ (c, y) ->
                                (c, (map (\ (m, z) ->

                                            (m, (reverse . nub . map (\ (p, s, t) -> (p, s, (show . pretty) t))) z))

                                . Map.toList . Map.fromListWith (++)) y))
                    . Map.toList . Map.fromListWith (++)) x))
            . Map.toList . Map.fromListWith (++))

            [ (i ++ w, [(c, [(show (Morphs t p' s'), [(p'', s'', v)])])]) | (v, y) <- x, (r, m) <- y,

                c <- continue v,

                let z = (filter (`notElem` "aiu~o`FNK") . encode Tim . decode TeX)
                        (if head c == Just "SP---1-S2-" then merge r (Morphs t p n) else merge r m)

                    Morphs t p s = m

                    n = case s of Suffix "U"  : x -> x
                                  Suffix "I"  : x -> x
                                  Suffix "ay" : x -> x
                                  _               -> s

                    (p'', p') = if null p then (Nothing, []) else (Just (case head p of Prefix x -> show x
                                                                                        x        -> show x), tail p)
                    (s'', s') = if null s then (Nothing, []) else (Just (case head s of Suffix x -> show x
                                                                                        x        -> show x), tail s)

                    i = init z
                    l = last z,

                w <- rewrite v (head c) l ]


continue :: ParaType -> [[Maybe String]]

continue (ParaVerb _) = [[Nothing], [Just "SP------4-"]]

continue (ParaNoun (NounN _ _ (Nothing :-: True))) = [[Nothing], [Just "SP---1-S2-"],
                                                                 [Just "SP---1-D2-",
                                                                  Just "SP---1-P2-",
                                                                  Just "SP---2--2-",
                                                                  Just "SP---3--2-"]]
continue (ParaNoun _) = [[Nothing]]

continue (ParaAdj  (AdjA  _ _ _ (Nothing :-: True))) = [[Nothing], [Just "SP---1-S2-"],
                                                                   [Just "SP---1-D2-",
                                                                    Just "SP---1-P2-",
                                                                    Just "SP---2--2-",
                                                                    Just "SP---3--2-"]]
continue (ParaAdj  _) = [[Nothing]]

continue (ParaPron _) = [[Nothing]]   -- in modern language

continue (ParaNum  (NumV Feminine _ (Nothing :-: True))) = [[Nothing], [Just "QC-----S2I",
                                                                        Just "QC-----S2R",
                                                                        Just "QC-----S2A"]]
continue (ParaNum  (NumC _ _ (Nothing :-: True))) = [[Nothing], [Just "SP---1-S2-"],
                                                                [Just "SP---1-D2-",
                                                                 Just "SP---1-P2-",
                                                                 Just "SP---2--2-",
                                                                 Just "SP---3--2-"]]
continue (ParaNum  (NumM _ _ (Nothing :-: True))) = [[Nothing], [Just "SP---1-S2-"],
                                                                [Just "SP---1-D2-",
                                                                 Just "SP---1-P2-",
                                                                 Just "SP---2--2-",
                                                                 Just "SP---3--2-"]]
continue (ParaNum  _) = [[Nothing]]

continue (ParaAdv  _) = [[Nothing]]

continue (ParaPrep _) = [[Nothing], [Just "S---------",
                                     Just "SD------2-",
                                     Just "SR------2-",
                                     Just "N-------2-",
                                     Just "A-------2-",
                                     Just "Q-------2-",
                                     Just "PI------2-",    -- in modern language
                                     Just "D---------",
                                     Just "C---------",
                                     Just "F---------"],
                                    [Just "SP---1-S2-"],
                                    [Just "SP---1-D2-",
                                     Just "SP---1-P2-",
                                     Just "SP---2--2-",
                                     Just "SP---3--2-"]]

continue (ParaConj _) = [[Nothing], [Just "----------"]]

continue (ParaPart _) = [[Nothing], [Just "V---------"],
                                    [Just "SP------4-"]]

continue (ParaIntj _) = [[Nothing], [Just "SP------2-"]]

continue (ParaXtra _) = [[Nothing]]

continue (ParaYnit _) = [[Nothing]]

continue (ParaZero _) = [[Nothing]]

continue (ParaGrph _) = [[Nothing]]


rewrite :: ParaType -> Maybe String -> Char -> [String]

rewrite _ Nothing               x = [[x]]

rewrite (ParaVerb (VerbP _ Second Masculine Plural)) (Just _) 'm' = ["mw"]
rewrite (ParaVerb (VerbP _ Third  Masculine Plural)) (Just _) 'A' = [""]

rewrite (ParaVerb (VerbI Subjunctive _ Second Masculine Plural)) (Just _) 'A' = [""]
rewrite (ParaVerb (VerbI Subjunctive _ Third  Masculine Plural)) (Just _) 'A' = [""]

rewrite (ParaVerb (VerbI Jussive     _ Second Masculine Plural)) (Just _) 'A' = [""]
rewrite (ParaVerb (VerbI Jussive     _ Third  Masculine Plural)) (Just _) 'A' = [""]

rewrite (ParaVerb (VerbC Jussive Masculine Plural)) (Just _) 'A' = [""]

rewrite (ParaPrep _) (Just "SP---1-S2-") 'n' = [""]
rewrite (ParaPrep _) (Just "S---------") 'n' = [""]
rewrite (ParaPrep _) (Just "SP---1-S2-") 'y' = [""]
rewrite (ParaPrep _) (Just "SP---1-S2-") 'Y' = [""]
rewrite (ParaPrep _) (Just _)            'Y' = ["y"]

rewrite _ (Just _)            'Y' = ["A"]

rewrite _ (Just _)            'p' = ["t"]

rewrite _ (Just _)           '\'' = ["'", "W", "}"]
rewrite _ (Just _)            'O' = ["O", "W", "}"]
rewrite _ (Just _)            'I' = ["I", "W", "}"]
rewrite _ (Just _)            'W' = ["W", "}"]

rewrite _ _                     x = [[x]]
