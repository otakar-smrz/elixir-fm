-- |
--
-- Module      :  Encode.Arabic.ArabTeX
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- /Encode::Arabic::ArabTeX/ in Perl:
-- <http://search.cpan.org/dist/Encode-Arabic/lib/Encode/Arabic/ArabTeX.pm>
--
-- "Encode.Extend"
-- "Encode.Mapper"


module Encode.Arabic.ArabTeX (

        -- * Types

        ArabTeX (..),

        -- * Functions

        tokens, events

    ) where


import Encode

import Encode.Mapper
import Encode.Extend

import PureFP.OrdMap


data ArabTeX = ArabTeX | Lagally | TeX

    deriving (Enum, Show)


instance Encoding ArabTeX where

    encode _ = error "Encode.Arabic.ArabTeX: 'encode' not implemented"

    decode _ = concat . parseFull decoderParsing .
               concat . parseLongest decoderMapping


encoder :: Mapper UPoint [[[Char]]]

encoder = error "Encode.Arabic.ArabTeX: 'encoder' not implemented"


tokens :: String -> [String]

tokens = concat . parseLongest decoderMapping


events :: String -> [[String]]

events = parseLongest decoderMapping


-- --------------------------------------------------------------------------
--  Extend and ExtEnv Definitions
-- --------------------------------------------------------------------------


data Mode = Nodiacritics | Novocalize | Vocalize | Fullvocalize

    deriving (Eq, Ord)


data Env i = Env { envQuote :: Bool, envMode :: Mode,
                   envWasla :: Bool, envVerb :: Bool, envEarly :: [i] }


setQuote q (Env _ m w v e) = Env q m w v e

setMode  m (Env q _ w v e) = Env q m w v e

setWasla w (Env q m _ v e) = Env q m w v e

setVerb  v (Env q m w _ e) = Env q m w v e

setEarly e (Env q m w v _) = Env q m w v e


instance ExtEnv Env where

    initEnv = Env False Vocalize False False []


-- --------------------------------------------------------------------------
--  Parsing Definitions
-- --------------------------------------------------------------------------


type Parsing = Extend Env [Char] ([UPoint] -> [UPoint])

type Environ = Env [Char]

--(4010490 reductions, 10407991 cells, 1 garbage collection)
--(3184454 reductions, 7137461 cells, 1 garbage collection)
--(3184377 reductions, 7137402 cells, 1 garbage collection)

--(6312 reductions, 13922 cells)
-- ??(830524 reductions, 3279470 cells)

--type Parsing = Extend [Char] [UPoint]

--(4085807 reductions, 10541087 cells, 1 garbage collection)
--(3259698 reductions, 7270510 cells, 1 garbage collection)

--(12760 reductions, 28250 cells)
--(6443 reductions, 14160 cells)
-- ??(830651 reductions, 3279696 cells)


vowelControl :: OrdMap m
        => [Char] -> [Char] -> [m [Char] [UPoint]] -> Environ -> [[UPoint]]

vowelControl c x l e = case c of

    "W" -> case sukun ? x of

                Just _  -> if envQuote e then theWasla else [[]]
                Nothing -> if envQuote e then [ j ++ n | j <- justAlif,
                                                         n <- noChange ]
                                         else case envMode e of

                            Fullvocalize -> if envWasla e
                                    then [ j ++ dropOne n | j <- theWasla,
                                                            n <- noChange ]
                                    else [ j ++ n | j <- justAlif,
                                                    n <- noChange ]

                            Vocalize -> if envWasla e
                                    then [ j ++ dropOne n | j <- justAlif,
                                                            n <- noChange ]
                                    else [ j ++ n | j <- justAlif,
                                                    n <- noChange ]

                            _ -> [ j ++ f | j <- justAlif, f <- filterIt ]

    _   | c `elem` ["'A", "|", "_W"]

        -> case sukun ? x of

                Just _  -> if envQuote e then noChange else [[]]
                Nothing -> if envQuote e then filterIt else noChange

    _   -> case sukun ? x of

                 Just _  -> if envMode e > Vocalize && not (envQuote e) ||
                               not (envMode e > Vocalize) && envQuote e
                            then noChange
                            else [[]]

                 Nothing -> if envMode e > Novocalize && not (envQuote e) ||
                               not (envMode e > Novocalize) && envQuote e
                            then noChange
                            else filterIt

    where theWasla = lookupList "W" [wasla]
          justAlif = lookupList "W" [silent]
          noChange = lookupList x l
          filterIt = [ filter (flip all ([0x064B .. 0x0650] ++
                                         [0x0656, 0x0657, 0x0670])
                                      . ((/=) . fromEnum)) s
                     | s <- lookupList x l ]

          dropOne (_:xs) = xs
          dropOne []     = []


shaddaControl :: (OrdMap m, Ord s) => s -> [m s [a]] -> Environ -> [[a]]

shaddaControl x l e = if envMode e > Nodiacritics then lookupList x l else [[]]


infixr 7 `plus`             -- infixr 9 .
                            -- infixr 5 ++

plus :: (a -> b) -> (c -> a) -> c -> b
plus = (.)
--plus :: [a] -> [a] -> [a]
--plus = (++)


decoderParsing :: Extend Env [Char] [UPoint]

decoderParsing = (fmap (foldr ($) []) . again) $
--decoderParsing = (fmap (flip ($) [] . foldr (.) id) . again) $
--decoderParsing = (fmap concat . again) $
--decoderParsing = (fmap (foldr (++) []) . again) $

                parseHyphen

        <|>     parseHamza
        <|>     parseDefinite

        <|>     parseDoubleCons
        <|>     parseSingleCons
        <|>     parseInitVowel

        <|>     parseWhite

        <|>     parsePunct
        <|>     parseDigit

        <|>     parseControl

        <|>     parseAnything

        <|>     returnError


returnError :: Parsing
returnError =   do  x <- inspectIList
                    sat (const True)
                    return (error (show x))


parseAnything :: Parsing
parseAnything = do  x <- sat (const True)
                    resetEnv setWasla False
                    return ((++) (map (toEnum . fromEnum) x))


parseNothing :: Parsing
parseNothing = return id


parseQuote =    do  lower ["\""] []
                    processControl "\""


parseControl =
                do  i <- inspectIList
                    case i of
                        (r : s) -> case r of

                            "\""        ->  do  returnIList s
                                                processControl r

                            '\\' : t    ->  do  returnIList s
                                                return ((++) (map (toEnum . fromEnum) r))

                            '\NUL' : t  ->  do  returnIList s
                                                processControl t

                            [c] | c `elem` ['<', '>']

                                        ->  do  returnIList v
                                                return ((++) [(toEnum . fromEnum) y | x <- r : p ++ u, y <- x ])

                                                    where (p, q) = break (`elem` ["<", ">"]) s
                                                          (u, v) = splitAt 1 q

                            [c] | c `elem` ['{', '}']

                                        ->  do  returnIList s
                                                processControl r
                                                return ((++) (map (toEnum . fromEnum) r))

                            _           ->  zero

                        []      ->  zero


processControl :: [Char] -> Parsing
processControl t =
                do  e <- inspectEList
                    let envList = case e of

                            []      -> error "Empty environment"
                            (q : r) -> case t of

                                "{"     -> q : q : r
                                "}"     -> case r of
                                                []  -> q : r
                                                _   -> r

                                "\""    -> setQuote True q : r

                                "fullvocalize"  -> setMode Fullvocalize q : r
                                "vocalize"      -> setMode Vocalize q : r
                                "novocalize"    -> setMode Novocalize q : r
                                "nodiacritics"  -> setMode Nodiacritics q : r

                                "setverb"   -> setVerb True q : r
                                "setarab"   -> setVerb False q : r

                                _       -> q : r

                    returnEList envList
                    parseNothing


parseHamza =
                do  h <- oneof [hamza]
                    e <- inspectEnv
                    let combineWithCarrier = case envVerb e of
                                True    -> parseVerbHamza h
                                False   -> parseArabHamza h

                    ;       do  lower [h] []
                                b <- combineWithCarrier
                                lower [] [b, b]
                     <|>
                            do  lower ["-", h] []
                                b <- combineWithCarrier
                                lower [] [b, "-", b]
                     <|>
                            do  b <- combineWithCarrier
                                lower [] [b]

                    parseNothing


parseVerbHamza :: [Char] -> Extend Env [Char] [Char]
parseVerbHamza h =
                do  i <- inspectIList
                    case i of
                        x : y   -> returnIList ((h ++ x) : y)
                        _       -> returnIList [h]
                    oneof [bound]


parseArabHamza :: [Char] -> Extend Env [Char] [Char]
parseArabHamza h =
                do  e <- inspectEnv
                    b <- prospectCarrier
                    let carryHamza = case envEarly e of

                            []          -> case b of

                                            "'y"    ->  "'i"
                                            "'i"    ->  "'i"
                                            "'A"    ->  "'A"
                                            _       ->  "'a"

                            "i"  : _    ->              "'y"
                            "_i" : _    ->              "'y"
                            "e"  : _    ->              "'y"

                            "I"  : _    -> caseofMultiI b
                            "_I" : _    -> caseofMultiI b
                            "E"  : _    -> caseofMultiI b
                            "^I" : _    -> caseofMultiI b

                            ["", "y"]   -> caseofMultiI b

                            "u"  : _    -> caseofVowelU b
                            "_u" : _    -> caseofVowelU b
                            "o"  : _    -> caseofVowelU b

                            "U"  : _    -> caseofMultiU b
                            "_U" : _    -> caseofMultiU b
                            "O"  : _    -> caseofMultiU b
                            "^U" : _    -> caseofMultiU b

                            "a"  : _    -> caseofVowelA b
                            "_a" : _    -> caseofVowelA b

                            "A"  : _    -> caseofMultiA b
                            "^A" : _    -> caseofMultiA b

                            ["", "'A"]  -> caseofMultiA b

                            ""   : _    -> case b of

                                            "'y"    ->  "'y"
                                            "'w"    ->  "'w"
                                            "'A"    ->  "'A"
                                            "'a"    ->  "'a"
                                            _       ->  "'|"

                            _           -> error "Other context for carrier"

                    case carryHamza of

                            "'A"    -> lower ["A"] []
                            _       -> return []

                    return carryHamza


        where prospectCarrier = do  lower ["\""] []
                                    b <- lookaheadCarrier
                                    lower [] ["\""]
                                    return b
                                <|> lookaheadCarrier

              caseofMultiI b = case b of
                                            "'i"    ->  "'|"
                                            "'|"    ->  "'|"
                                            _       ->  "'y"

              caseofMultiU b = case b of
                                            "'i"    ->  "'|"
                                            "'|"    ->  "'|"
                                            "'y"    ->  "'y"
                                            _       ->  "'w"

              caseofMultiA b = case b of
                                            "'y"    ->  "'y"
                                            "'w"    ->  "'w"
                                            _       ->  "'|"

              caseofVowelU b = case b of
                                            "'y"    ->  "'y"
                                            _       ->  "'w"

              caseofVowelA b = case b of
                                            "'y"    ->  "'y"
                                            "'w"    ->  "'w"
                                            "'i"    ->  "'i"
                                            "'A"    ->  "'A"
                                            _       ->  "'a"

              lookaheadCarrier =

                        do  v <- oneof' '-' [multi, other] <|>
                                 oneof [multi, other]
                            let carryHamza = case v of

                                    "I"     ->  "'y"
                                    "_I"    ->  "'y"
                                    "^I"    ->  "'y"
                                    "E"     ->  "'y"

                                    "U"     ->  "'w"
                                    "_U"    ->  "'w"
                                    "^U"    ->  "'w"
                                    "O"     ->  "'w"

                                    "A"     ->  "'A"

                                    "aNA"   ->  "'N"

                                    _       ->  "'a"

                            lower [] [v]
                            return carryHamza

                <|>
                        do  v <- oneof [vowel, nuuns] <|> return ""
                            c <- oneof [sunny, moony, taaaa, invis, silent]
                            let carryHamza = case v of

                                    "i"     ->  "'y"
                                    "iN"    ->  "'y"
                                    "_i"    ->  "'y"
                                    "e"     ->  "'y"

                                    "u"     ->  "'w"
                                    "uN"    ->  "'w"
                                    "_u"    ->  "'w"
                                    "o"     ->  "'w"

                                    "a"     ->  "'a"
                                    "aN"    ->  "'a"
                                    "_a"    ->  "'a"

                                    _       ->  "'|"

                            case v of   ""      -> lower [] [c]
                                        _       -> lower [] [v, c]

                            return carryHamza

                <|>
                        do  v <- oneof [vowel, nuuns] <|> return ""
                            let carryHamza = case v of

                                    "i"     ->  "'i"
                                    "iN"    ->  "'i"
                                    "_i"    ->  "'i"
                                    "e"     ->  "'i"

                                    _       ->  "'|"

                            case v of   ""      -> lower [] []
                                        _       -> lower [] [v]

                            return carryHamza


parseInitVowel =
                do  v <- oneof [vowel, multi, nuuns, other] <|> (parseQuote
                      >> oneof [vowel, multi, nuuns, other] <|> return "")
                 -- x <- upper ["W"] [silent] -- depends on 'vowelControl'
                    y <- upperWith (vowelControl "W")
                               [v] [vowel, multi, nuuns, other]
                    completeSyllable y ["W", v]


parseSyllVowel :: [Char] -> ([UPoint] -> [UPoint]) -> Parsing
parseSyllVowel c x =
                do  parseQuote <|> parseNothing
                    v <- oneof' '-' [vowel, multi, nuuns, other] <|>
                         oneof [vowel, multi, nuuns, other] <|> return ""
                    y <- upperWith (vowelControl c)
                               [v] [vowel, multi, nuuns, other, sukun]
                    completeSyllable (x `plus` y) [c, v]


completeSyllable :: ([UPoint] -> [UPoint]) -> [[Char]] -> Parsing
completeSyllable x y =
                do  resetEnv setQuote False
                    resetEnv setWasla True
                    resetEnv setEarly (reverse y)
                    return x


parseSingleCons =
                do  c <- oneof [sunny, moony, bound, taaaa, invis, silent]
                    x <- upper [c] [sunny, moony, bound, taaaa, invis, silent]
                    parseSyllVowel c x


parseDoubleCons =
                do  c <- oneof [sunny, moony, bound, taaaa, invis, silent]
                    lower [c] []
                    x <- upper [c] [sunny, moony, bound, taaaa, invis, silent]
                    y <- upperWith shaddaControl
                              [""] [shadda]
                    parseSyllVowel c (x `plus` y)


parseHyphen =
                do  lower ["-", "-"] []
                    upper ["B"] [moony]
        <|>
                do  lower ["-"] []
                    resetEnv setEarly []
                    parseNothing
        <|>
                do  oneof' '-' [vowel, multi, nuuns, other]
                    resetEnv setEarly []
                    parseNothing


parseDefinite =
                do  c <- oneof [sunny, moony, bound]  -- [sunny]
                    lower ["-", c] [c, c]
                    upper ["l"] [sunny]


parseWhite =
                do  w <- oneof [white]
                    resetEnv setEarly []
                    upper [w] [white]


parsePunct =
                do  p <- oneof [punct]
                    resetEnv setWasla False
                    resetEnv setEarly []
                    upper [p] [punct]


parseDigit =
                do  d <- oneof [digit]
                    resetEnv setWasla False
                    resetEnv setEarly []
                    upper [d] [digit]


-- --------------------------------------------------------------------------
--  Mapping Definitions
-- --------------------------------------------------------------------------


type Mapping = Mapper Char (Quit Char [[Char]])


pairs :: (OrdMap m, Ord s) => [m s a] -> [(s, a)]
pairs l = concat [ assocs i | i <- l ]

elems :: (OrdMap m, Ord s) => [m s a] -> [s]
elems l = (map fst . concat) [ assocs i | i <- l ]

quote :: OrdMap m => [m [Char] a] -> [[Char]]
quote = map ("\"" ++) . elems


decoderMapping :: Mapper Char (Quit Char [[Char]])

decoderMapping = defineMapping
                    ( pairs [ sunny, moony, invis, taaaa, silent,
                              vowel, multi, nuuns, other,
                              -- empty, white, sukun, shadda,
                              digit, punct ] )
            <+>     rules

            `others` (\ s -> (Just . return) ([], [[s]]))

         -- <+>     "" |.| error "Illegal symbol"


defineMapping :: [([Char], [a])] -> Mapping

defineMapping = foldr (listing . mapping) zero

    where   listing = (<+>)
            mapping (encoded, _) = symbols encoded

            symbols = fmap (((,) []) . (: [])) . syms


rules :: Mapping

rules =

        "+"     |.|             []              |+|
        "*"     |.|             []

        |+|     ruleVerbalSilentAlif
        |+|     ruleMaqsuuraWithAlif
        |+|     ruleInternalTaaaa
        |+|     ruleInternalYaaaa

        |+|     ruleLiWithDefinite
        |+|     ruleDefinite
        |+|     ruleIndefinite

        |+|     ruleMultiVowel
        |+|     ruleHyphenedVowel

        |+|     ruleGroupControl
        |+|     ruleCapsControl
        |+|     ruleControlSequence


ruleVerbalSilentAlif =

        "aWA"   |-|     "awW"   |:|     []      |+|
        "aW"    |-|     "awW"   |:|     []      |+|
        "UA"    |-|     "UW"    |:|     []      |+|
        "uW"    |-|     "UW"    |:|     []


ruleMaqsuuraWithAlif =

        "yY"    |-|      "yA"   |:|     []      |+|
        "yaNY"  |-|     "yaN"   |:|     []      |+|

        "aN_A"  |-|     "aNY"   |:|     []      |+|
        "iN_A"  |-|     "iNY"   |:|     []      |+|
        "uN_A"  |-|     "uNY"   |:|     []      |+|

        "y_A"   |-|      "yY"   |:|     []      |+|
        "yaN_A" |-|    "yaNY"   |:|     []      |+|

        "_A"    |-|       "Y"   |:|     []


ruleGroupControl =

        "\NUL"      |.|         []

        <+>
                do  syms "\NUL"

                    ">"     |.|     [">"]           |+|     "<"     |.|     ["<"]

                        `others` (\ s -> (Just . return) ("\NUL", [[s]]))
        <+>
                do  syms "<"

                    ">"     |.|     ["<", ">"]      |+|     "<"     |.|     ["<", "<"]

                        `others` (\ s -> (Just . return) ("\NUL", ["<", [s]]))
        <+>
                do  syms ">"

                    "<"     |.|     [">", "<"]      |+|     ">"     |.|     [">", ">"]

                        `others` (\ s -> (Just . return) ("\NUL", [">", [s]]))


ruleCapsControl =

        anyof [
                    "l" ++ v ++ "-a" ++ c ++ "-" ++ "\\cap  "   |-|
                    "l" ++ v ++ "-a" ++ c ++ "-" ++ "\\cap "    |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ "-" ++ "\\cap "    |-|
                    "l" ++ v ++ "-a" ++ c ++ "-"                |:| []

                |   c <- elems [sunny, moony],
                    v <- elems [vowel, sukun] ++ quote [vowel, sukun] ]

        |+| anyof [

                    "l" ++ "-" ++ c ++ "\\cap  "    |-|
                    "l" ++ "-" ++ c ++ "\\cap "     |:| []      |+|

                    "l" ++ "-" ++ c ++ "\\cap "     |-|
                    "l" ++ "-" ++ c                 |:| []      |+|

                    c ++ "-" ++ "\\cap  "           |-|
                    c ++ "-" ++ "\\cap "            |:| []      |+|

                    c ++ "-" ++ "\\cap "            |-|
                    c ++ "-"                        |:| []

                |   c <- elems [sunny, moony] ]


ruleControlSequence =

        "\\<"       |.|         ["\\<"]         |+|
        "\\>"       |.|         ["\\>"]         |+|

        "\\{"       |.|         ["\\{"]         |+|
        "\\}"       |.|         ["\\}"]         |+|

        "\\\""      |.|         ["\\\""]        |+|

        "\\\\"      |.|         ["\\\\"]

        <+>
                do  sym '\\'
                    x <- some (anySymbol (['A'..'Z'] ++ ['a'..'z']))
                    y <- many (sym ' ')
                    let s = case x of

                            "cap"   -> ([], ['\NUL' : x])

                            "fullvocalize"  -> ([], ['\NUL' : x])
                            "vocalize"      -> ([], ['\NUL' : x])
                            "novocalize"    -> ([], ['\NUL' : x])
                            "nodiacritics"  -> ([], ['\NUL' : x])

                            "full"          -> ([], ['\NUL' : "fullvocalize"])

                            "nosukuun"      -> ([], ['\NUL' : "vocalize"])

                            "novowels"      -> ([], ['\NUL' : "novocalize"])
                            "none"          -> ([], ['\NUL' : "novocalize"])

                            "noshadda"      -> ([], ['\NUL' : "nodiacritics"])
                            "noneplus"      -> ([], ['\NUL' : "nodiacritics"])

                            "setverb"   -> ([], ['\NUL' : x])
                            "setarab"   -> ([], ['\NUL' : x])

                            _           -> (y, ['\\' : x])

                    return s


ruleLiWithDefinite =

        anyof [
                    "l" ++ v ++ "-a" ++ c ++ "-" ++ c       |-|
                    "l" ++ v ++         c ++ "-" ++ c       |:| []

                |   c <- elems [sunny, moony], c /= "l",
                    v <- elems [vowel, sukun] ++ quote [vowel, sukun] ]

        |+| anyof [

                    "l" ++ v ++ "-a" ++ c ++ "-" ++ c       |-|
                    "l" ++ v ++ "|-" ++ c ++ c              |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ "-" ++ c ++ c  |-|
                    "l" ++ v ++ "|-" ++ c ++ c              |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ "-"            |-|
                    "l" ++ v ++         c ++ "-"            |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ c              |-|
                    "l" ++ v ++ "|-" ++ c ++ c              |:| []

                |   c <- elems [sunny, moony], c == "l",
                    v <- elems [vowel, sukun] ++ quote [vowel, sukun] ]

    {-
        anyof [ case c of

                "l" ->

                    "l" ++ v ++ "-a" ++ c ++ "-" ++ c       |-|
                    "l" ++ v ++ "|-" ++ c ++ c              |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ "-" ++ c ++ c  |-|
                    "l" ++ v ++ "|-" ++ c ++ c              |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ "-"            |-|
                    "l" ++ v ++ "|-" ++ c ++ "-"            |:| []  |+|

                    "l" ++ v ++ "-a" ++ c ++ c              |-|
                    "l" ++ v ++ "|-" ++ c ++ c              |:| []

                _   ->

                    "l" ++ v ++ "-a" ++ c ++ "-" ++ c       |-|
                    "l" ++ v ++         c ++ "-" ++ c       |:| []

                |   c <- elems [sunny, moony],
                    v <- elems [vowel, sukun] ++ quote [vowel, sukun] ]
    -}


ruleDefinite =

        anyof [
                    "l" ++ "-" ++ c ++ c                    |-|
                           "-" ++ c                         |:| [c]

                |   c <- elems [sunny, moony] ]


ruleIndefinite =

        anyof [
                    c ++ m ++ "aNY"     |-|    m ++ "aNY"   |:|   [c]   |+|
                    c ++ m ++ "aNU"     |-|    m ++ "aNU"   |:|   [c]   |+|
                    c ++ m ++ "aNA"     |-|    m ++ "aNA"   |:|   [c]   |+|
                    c ++ m ++ "aN"      |-|    m ++ "aNA"   |:|   [c]

                |   c <- elems [sunny, moony], m <- ["", "-", "\"", "-\""] ]

        |+| anyof [

                    v ++ "''" ++ m ++ "aN"      |-|
                                 m ++ "aN"      |:|     [v, "'", "'"]   |+|

                    v ++ "'"  ++ m ++ "aN"      |-|
                                 m ++ "aN"      |:|     [v, "'"]

                |   v <- ["A", "a"], m <- ["", "-", "\"", "-\""] ]


ruleMultiVowel =

        "iy"    |-|     "I"     |:|     []      |+|
        "Iy"    |-|     "yy"    |:|     ["i"]   |+|

        "uw"    |-|     "U"     |:|     []      |+|
        "Uw"    |-|     "ww"    |:|     ["u"]   |+|

        "ii"    |-|     "I"     |:|     []      |+|
        "uu"    |-|     "U"     |:|     []      |+|

        "aa"    |-|     "A"     |:|     []

        |+| anyof [

                    "iy" ++ v   |-|     "y" ++ v        |:| ["i"]   |+|
                    "uw" ++ v   |-|     "w" ++ v        |:| ["u"]

                |   v <- elems [vowel, multi, nuuns, other] ++
                         quote [vowel, multi, nuuns, other, sukun] ]


ruleHyphenedVowel =

        anyof [
                    "-"   ++ v          |.|            ["-" ++ v]   |+|

                --  "-\"" ++ v          |.|      ["\"", "-" ++ v]   |+|

                    "-\"" ++ v  |-|     "\"-" ++ v      |:| []      |+|

                --  "-"   ++ v  |-|     v               |:| []      |+|

                    "iy-" ++ v  |-|     "y-" ++ v       |:| ["i"]   |+|
                    "uw-" ++ v  |-|     "w-" ++ v       |:| ["u"]   |+|

                    "W-"  ++ v  |-|     "W"             |:| [v]

                |   v <- elems [vowel, multi, nuuns, other] ]

        |+| anyof [

                    "iy-" ++ v  |-|     "y-" ++ v       |:| ["i"]   |+|
                    "uw-" ++ v  |-|     "w-" ++ v       |:| ["u"]   |+|

                    "W-"  ++ v  |-|     "W"             |:| [v]

                |   v <- quote [vowel, multi, nuuns, other, sukun] ]

        |+| anyof [

                    "-"   ++ v ++ c |-|         v ++ c  |:| ["-"]   |+|
                    "-\"" ++ v ++ c |-| "\"" ++ v ++ c  |:| ["-"]   |+|

                    "iy-" ++ v ++ c |-|  "-" ++ v ++ c  |:| ["I"]   |+|
                    "uw-" ++ v ++ c |-|  "-" ++ v ++ c  |:| ["U"]   |+|

                    "W-"  ++ v ++ c |-|         v ++ c  |:| ["W", "-"]

                |   c <- elems [sunny, moony, invis],
                    v <- elems [vowel, multi, nuuns, other] ++
                         quote [vowel, multi, nuuns, other, sukun] ]

        |+| anyof [

                    "iy-" ++ v ++ c |-| "-" ++ v ++ c   |:| ["I"]   |+|
                    "uw-" ++ v ++ c |-| "-" ++ v ++ c   |:| ["U"]   |+|

                    "W-"  ++ v ++ c |-|        v ++ c   |:| ["W", "-"]

                |   c <- elems [sunny, moony, invis],
                    v <- quote [vowel, multi, nuuns, other, sukun] ]


ruleInternalTaaaa =

        anyof [
                    "T" ++ v        |-|     "t" ++ v        |:| []  |+|
                    "H" ++ v        |-|     "t" ++ v        |:| []

                |   v <- elems [multi, other] ++ quote [multi, other] ]

        |+| anyof [

                    "T" ++ v ++ c   |-|     "t" ++ v ++ c   |:| []  |+|
                    "H" ++ v ++ c   |-|     "t" ++ v ++ c   |:| []

                |   c <- elems [sunny, moony, invis],
                    v <- elems [vowel, nuuns] ++
                         quote [vowel, nuuns, sukun] ]


ruleInternalYaaaa =

        anyof [
                    "Y" ++ c        |-|     "A" ++ c        |:| []

                |   c <- elems [sunny, moony, invis, taaaa] ]


-- --------------------------------------------------------------------------
--  LowerUp Definitions
-- --------------------------------------------------------------------------


type LowerUp = Map [Char] [UPoint]


unionMap :: (OrdMap m, Ord s, Ord a) => [m s a] -> m s a

unionMap = unionMapWith (\ x y -> if compare x y == EQ
                            then error "Inconsistent mapping in the Maps"
                            else y)


define :: [([Char], [CSpace])] -> LowerUp

define l = makeMapWith const [ (x, map (toEnum . fromIntegral) y) |
                               (x, y) <- l ]


consonant :: LowerUp
consonant = unionMap [sunny, moony, bound]


sunny = define [
                    ( "t",          [ 0x062A ] ),
                    ( "_t",         [ 0x062B ] ),
                    ( "d",          [ 0x062F ] ),
                    ( "_d",         [ 0x0630 ] ),
                    ( "r",          [ 0x0631 ] ),
                    ( "z",          [ 0x0632 ] ),
                    ( "s",          [ 0x0633 ] ),
                    ( "^s",         [ 0x0634 ] ),
                    ( ".s",         [ 0x0635 ] ),
                    ( ".d",         [ 0x0636 ] ),
                    ( ".t",         [ 0x0637 ] ),
                    ( ".z",         [ 0x0638 ] ),
                    ( "l",          [ 0x0644 ] ),
                    ( "n",          [ 0x0646 ] )
            ]


invis = define [
                    ( "|",          [        ] )
            ]


empty = define [
                    ( "",           [ 0x0627 ] )
            ]


sukun = define [
                    ( "",           [ 0x0652 ] )
                --  ( "+",          [ 0x0652 ] )
            ]


shadda = define [
                    ( "",           [ 0x0651 ] )
                --  ( "*",          [ 0x0651 ] )
            ]


silent = define [
                    ( "A",          [ 0x0627 ] ),
                    ( "W",          [ 0x0627 ] ),
                    ( "_W",         [ 0x0648 ] )
            ]


wasla = define [
                    ( "W",          [ 0x0671 ] )
            ]


taaaa = define [
                    ( "T",          [ 0x0629 ] ),
                    ( "H",          [ 0x0629 ] )
            ]


bound = define [
                    ( "'A",         [ 0x0622 ] ),
                    ( "'a",         [ 0x0623 ] ),
                    ( "'i",         [ 0x0625 ] ),
                    ( "'w",         [ 0x0624 ] ),
                    ( "'y",         [ 0x0626 ] ),
                    ( "'|",         [ 0x0621 ] )
            ]


hamza = define [
                    ( "'",          [ 0x0621 ] )
            ]


moony = define [
                    ( "'",          [ 0x0621 ] ),
                    ( "b",          [ 0x0628 ] ),
                    ( "^g",         [ 0x062C ] ),
                    ( ".h",         [ 0x062D ] ),
                    ( "_h",         [ 0x062E ] ),
                    ( "`",          [ 0x0639 ] ),
                    ( ".g",         [ 0x063A ] ),
                    ( "f",          [ 0x0641 ] ),
                    ( "q",          [ 0x0642 ] ),
                    ( "k",          [ 0x0643 ] ),
                    ( "m",          [ 0x0645 ] ),
                    ( "h",          [ 0x0647 ] ),
                    ( "w",          [ 0x0648 ] ),
                    ( "y",          [ 0x064A ] ),

                    ( "B",          [ 0x0640 ] ),

                    ( "p",          [ 0x067E ] ),
                    ( "^c",         [ 0x0686 ] ),
                    ( "^z",         [ 0x0698 ] ),
                    ( "v",          [ 0x06A4 ] ),
                    ( "g",          [ 0x06AF ] ),

                    ( "c",          [ 0x0681 ] ),
                    ( ",c",         [ 0x0685 ] ),
                    ( ".r",         [ 0x0695 ] ),
                    ( "^n",         [ 0x06AD ] ),
                    ( "^l",         [ 0x06B5 ] )
            ]


vowel = define [
                    ( "a",          [ 0x064E ] ),
                    ( "i",          [ 0x0650 ] ),
                    ( "u",          [ 0x064F ] ),

                    ( "e",          [ 0x0650 ] ),
                    ( "o",          [ 0x064F ] ),

                    ( "_a",         [ 0x0670 ] ),
                    ( "_i",         [ 0x0656 ] ),
                    ( "_u",         [ 0x0657 ] )
            ]


multi = define [
                    ( "A",          [ 0x064E, 0x0627 ] ),
                    ( "I",          [ 0x0650, 0x064A ] ),
                    ( "U",          [ 0x064F, 0x0648 ] ),
                    ( "Y",          [ 0x064E, 0x0649 ] ),

                    ( "E",          [ 0x0650, 0x064A ] ),
                    ( "O",          [ 0x064F, 0x0648 ] ),

                    ( "_I",         [ 0x0650, 0x0627 ] ),
                    ( "_U",         [ 0x064F, 0x0648 ] ),

                    ( "uNY",        [ 0x064C, 0x0649 ] ),
                    ( "uNU",        [ 0x064C, 0x0648 ] ),
                    ( "uNA",        [ 0x064C, 0x0627 ] ),

                    ( "iNY",        [ 0x064D, 0x0649 ] ),
                    ( "iNU",        [ 0x064D, 0x0648 ] ),
                    ( "iNA",        [ 0x064D, 0x0627 ] ),

                    ( "aNY",        [ 0x064B, 0x0649 ] ),
                    ( "aNU",        [ 0x064B, 0x0648 ] ),
                    ( "aNA",        [ 0x064B, 0x0627 ] )
            ]


nuuns = define [
                    ( "aN",         [ 0x064B ] ),
                    ( "iN",         [ 0x064D ] ),
                    ( "uN",         [ 0x064C ] )
            ]


other = define [
                    ( "_aY",        [ 0x0670, 0x0649 ] ),
                    ( "_aU",        [ 0x0670, 0x0648 ] ),
                    ( "_aI",        [ 0x0670, 0x064A ] ),

                    ( "^A",         [ 0x064F, 0x0627, 0x0653 ] ),
                    ( "^I",         [ 0x0650, 0x064A, 0x0653 ] ),
                    ( "^U",         [ 0x064F, 0x0648, 0x0653 ] )
            ]


digit = define [
                    ( "0",          [ 0x0660 ] ),
                    ( "1",          [ 0x0661 ] ),
                    ( "2",          [ 0x0662 ] ),
                    ( "3",          [ 0x0663 ] ),
                    ( "4",          [ 0x0664 ] ),
                    ( "5",          [ 0x0665 ] ),
                    ( "6",          [ 0x0666 ] ),
                    ( "7",          [ 0x0667 ] ),
                    ( "8",          [ 0x0668 ] ),
                    ( "9",          [ 0x0669 ] )
            ]


punct = define [
                 -- ( ".",          [ 0x002E ] ),
                 -- ( ":",          [ 0x003A ] ),
                 -- ( "!",          [ 0x0021 ] ),

                    ( ",",          [ 0x060C ] ),
                    ( ";",          [ 0x061B ] ),
                    ( "?",          [ 0x061F ] )
            ]


white = define [
                    ( " ",          [ 0x0020 ] ),
                    ( "\n",         [ 0x000A ] ),
                    ( "\r",         [ 0x000D ] ),
                    ( "\t",         [ 0x0009 ] ),
                    ( "\v",         [ 0x000B ] ),
                    ( "\f",         [ 0x000C ] )
            ]
