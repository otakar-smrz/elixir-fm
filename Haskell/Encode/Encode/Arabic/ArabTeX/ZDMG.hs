-- |
--
-- Module      :  Encode.Arabic.ArabTeX.ZDMG
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- /Encode::Arabic::ArabTeX::ZDMG/ in Perl:
-- <http://search.cpan.org/dist/Encode-Arabic/lib/Encode/Arabic/ArabTeX/ZDMG.pm>
--
-- "Encode.Extend"
-- "Encode.Mapper"


module Encode.Arabic.ArabTeX.ZDMG (

        -- * Types

        ZDMG (..)

    ) where


import Encode

import Encode.Mapper
import Encode.Extend

import PureFP.OrdMap


data ZDMG = ZDMG | ArabTeX_ZDMG

    deriving (Enum, Show)


instance Encoding ZDMG where

    encode _ = error "Encode.Arabic.ArabTeX.ZDMG: 'encode' not implemented"

    decode _ = concat . parseFull decoderParsing .
               concat . parseLongest decoderMapping


encoder :: Mapper UPoint [[[Char]]]

encoder = error "Encode.Arabic.ArabTeX.ZDMG: 'encoder' not implemented"


-- --------------------------------------------------------------------------
--  Extend and ExtEnv Definitions
-- --------------------------------------------------------------------------


data Mode = Nodiacritics | Novocalize | Vocalize | Fullvocalize

    deriving (Eq, Ord)


data Env i = Env { envQuote :: Bool, envMode :: Mode,
                   envWasla :: Bool, envVerb :: Bool, envCap :: Bool }


setQuote q (Env _ m w v c) = Env q m w v c

setMode  m (Env q _ w v c) = Env q m w v c

setWasla w (Env q m _ v c) = Env q m w v c

setVerb  v (Env q m w _ c) = Env q m w v c

setCap   c (Env q m w v _) = Env q m w v c


instance ExtEnv Env where

    initEnv = Env False Vocalize False False False


-- --------------------------------------------------------------------------
--  Parsing Definitions
-- --------------------------------------------------------------------------


type Parsing = Extend Env [Char] ([UPoint] -> [UPoint])

type Environ = Env [Char]


consControl :: OrdMap m
        => [Char] -> [m [Char] [UPoint]] -> Environ -> [[UPoint]]

consControl x l e = if envCap e then [ capFirst n | n <- noChange ]
                                else noChange
    where noChange = lookupList x l
          capFirst []     = []
          capFirst (x:xs) = (toEnum . flip (-) 0x0020 . fromEnum) x : xs


vowelControl :: OrdMap m
        => [Char] -> [Char] -> [m [Char] [UPoint]] -> Environ -> [[UPoint]]

vowelControl c x l e = if envCap e then consControl x l e
                                   else case c of

    "W" -> case sukun ? x of

                Just _  -> if envQuote e then theWasla else noChange
                Nothing -> if envQuote e then noChange
                                         else
                           if envWasla e then [ t ++ dropOne n | t <- theWasla,
                                                                 n <- noChange ]
                                         else noChange

    _   -> noChange

    where theWasla = lookupList "W" [wasla]
          noChange = lookupList x l

          dropOne (_:xs) = xs
          dropOne []     = []


shaddaControl :: (OrdMap m, Ord s) => s -> [m s [a]] -> Environ -> [[a]]

shaddaControl x l e = if envMode e > Nodiacritics then lookupList x l else [[]]


infixr 7 `plus`             -- infixr 9 .
                            -- infixr 5 ++

plus :: (a -> b) -> (c -> a) -> c -> b
plus = (.)


decoderParsing :: Extend Env [Char] [UPoint]

decoderParsing = (fmap (foldr ($) []) . again) $

                parseHyphen

        <|>     parseDoubleCons
        <|>     parseSingleCons
        <|>     parseInitVowel

        <|>     parseWhite

    --  <|>     parsePunct
    --  <|>     parseDigit

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
                                "cap"   -> setCap True q : r

                                "fullvocalize"  -> setMode Fullvocalize q : r
                                "vocalize"      -> setMode Vocalize q : r
                                "novocalize"    -> setMode Novocalize q : r
                                "nodiacritics"  -> setMode Nodiacritics q : r

                                "setverb"   -> setVerb True q : r
                                "setarab"   -> setVerb False q : r

                                _       -> q : r

                    returnEList envList
                    parseNothing


parseInitVowel =
                do  v <- oneof [define [("i", []), ("u", [])]]
                    c <- oneof [define [("w", []), ("y", [])]]
                    e <- inspectEnv
                    if envCap e || not (envWasla e)
                       then do  lower [] [if v == "i" then "I" else "U"]
                                parseNothing
                       else do  lower [] [c]
                                y <- upperWith (vowelControl "W")
                                           [v] [vowel]
                                completeSyllable y True
        <|>
                do  v <- oneof [vowel] <|> (parseQuote >>
                         oneof [vowel] <|> return "")
                    y <- upperWith (vowelControl "W")
                               [v] [vowel, sukun]
                    completeSyllable y True


parseSyllVowel :: [Char] -> ([UPoint] -> [UPoint]) -> Parsing
parseSyllVowel c x =
                do  parseQuote <|> parseNothing
                    v <- oneof [vowel]
                    y <- upperWith (vowelControl c)
                               [v] [vowel]
                    completeSyllable (x `plus` y) True
        <|>
                do  parseQuote <|> parseNothing
                    v <- return "" -- oneof [sukun]
                    y <- upperWith (vowelControl c)
                               [v] [sukun]
                    completeSyllable (x `plus` y) False


completeSyllable :: ([UPoint] -> [UPoint]) -> Bool -> Parsing
completeSyllable x y =
                do  resetEnv setQuote False
                    resetEnv setWasla y
                    resetEnv setCap False
                    return x


parseSingleCons =
                do  c <- oneof [sunny, moony, extra, invis]
                    x <- upperWith consControl
                               [c] [sunny, moony, extra, invis]
                    resetEnv setCap False
                    parseSyllVowel c x
        <|>
                do  c <- oneof [minor]
                    x <- upper [c] [minor]
                    parseSyllVowel c x


parseDoubleCons =
                do  c <- oneof [sunny, moony, extra, invis]
                    lower [c] []
                    x <- upperWith consControl
                               [c] [sunny, moony, extra, invis]
                    resetEnv setCap False
                    y <- upperWith shaddaControl
                               [c] [sunny, moony, extra, invis]
                            -- [""] [shadda]
                    parseSyllVowel c (x `plus` y)
        <|>
                do  c <- oneof [minor]
                    lower [c] []
                    x <- upper [c] [minor]
                    y <- upperWith shaddaControl
                               [c] [minor]
                            -- [""] [shadda]
                    parseSyllVowel c (x `plus` y)


parseHyphen =
                do  lower ["-"] []
                    upper ["-"] [hyphen]


parseWhite =
                do  w <- oneof [white]
                    resetEnv setQuote False
                    upper [w] [white]


{-
parsePunct =
                do  p <- oneof [punct]
                    resetEnv setWasla False
                    upper [p] [punct]


parseDigit =
                do  d <- oneof [digit]
                    resetEnv setWasla False
                    upper [d] [digit]
-}


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
                    ( pairs [ sunny, moony, minor, extra, invis,
                              -- empty, white, digit, punct,
                              vowel ] )
            <+> rules

            `others` (\ s -> (Just . return) ([], [[s]]))

         -- <+> "" |.| error "Illegal symbol"


defineMapping :: [([Char], [a])] -> Mapping

defineMapping = foldr (listing . mapping) zero

    where   listing = (<+>)
            mapping (encoded, _) = symbols encoded

            symbols = fmap (((,) []) . (: [])) . syms


rules :: Mapping

rules =

        "N_A"   |-|      "NY"   |:|     []          |+|
        "_A"    |-|       "Y"   |:|     []          |+|

        "_W"    |.|             []

        |+|     ruleVerbalSilentAlif
        |+|     ruleInternalTaaaa

    --  |+|     ruleLiWithDefinite
        |+|     ruleDefinite
        |+|     ruleIndefinite

        |+|     ruleMultiVowel
        |+|     ruleHyphenedVowel

        |+|     ruleGroupControl
        |+|     ruleCapsControl
        |+|     ruleControlSequence


ruleVerbalSilentAlif =

        "aWA"   |-|     "aw"    |:|     []      |+|
        "aW"    |-|     "aw"    |:|     []      |+|
        "UA"    |-|     "U"     |:|     []      |+|
        "uW"    |-|     "uw"    |:|     []


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
                    "l" ++ "-" ++ c ++ "\\cap  "    |-|
                    "l" ++ "-" ++ c ++ "\\cap "     |:| []      |+|

                    "l" ++ "-" ++ c ++ "\\cap " ++ c    |-|
                           "-\\cap " ++ c               |:| [c] |+|

                    c ++ "-" ++ "\\cap  "           |-|
                    c ++ "-" ++ "\\cap "            |:| []      |+|

                    c ++ "-" ++ "\\cap " ++ c       |-|
                         "-" ++ "\\cap " ++ c       |:| [c]     |+|

                    "l" ++ "-\\cap " ++ c ++ "\\cap  "  |-|
                    "l" ++ "-\\cap " ++ c ++ "\\cap "   |:| []  |+|

                    "l" ++ "-\\cap " ++ c ++ "\\cap " ++ c  |-|
                           "-\\cap " ++ c                   |:| ["\\cap", c] |+|

                    "l" ++ "-\\cap " ++ c ++ c      |-|
                           "-\\cap " ++ c           |:| [c]

                |   c <- elems [sunny, moony, minor] ]


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

                |   c <- elems [sunny, moony, minor], c /= "l",
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

                |   c <- elems [sunny, moony, minor], c == "l",
                    v <- elems [vowel, sukun] ++ quote [vowel, sukun] ]


ruleDefinite =

        anyof [
                    "l" ++ "-" ++ c ++ c                    |-|
                           "-" ++ c                         |:| [c]

                |   c <- elems [sunny, moony, minor] ]


ruleIndefinite =

        "NA"    |-|     "N"     |:|     []      |+|
        "NU"    |-|     "N"     |:|     []      |+|
        "NY"    |-|     "N"     |:|     []


ruleMultiVowel =

        -- "iy"    |-|     "I"     |:|     []      |+|
        -- "uw"    |-|     "U"     |:|     []      |+|

        "ii"    |-|     "I"     |:|     []      |+|
        "uu"    |-|     "U"     |:|     []      |+|
        "aa"    |-|     "A"     |:|     []

        |+| anyof [

                    "iy" ++ v   |-|     "y" ++ v        |:| ["i", "|"]  |+|
                    "uw" ++ v   |-|     "w" ++ v        |:| ["u", "|"]

                |   v <- elems [vowel] ++ quote [vowel, sukun] ]


ruleHyphenedVowel =

        anyof [
                    "-"  ++ v   |-|     v               |:| ["-"]       |+|

                    "iy-" ++ v  |-|     "y-" ++ v       |:| ["i", "|"]  |+|
                    "uw-" ++ v  |-|     "w-" ++ v       |:| ["u", "|"]  |+|

                    "W-" ++ v   |-|     "W"             |:| [v]

                |   v <- elems [vowel] ++ quote [vowel] ]

        |+| anyof [

                    -- "iy-" ++ v ++ c |-| "-" ++ v ++ c   |:| ["I"]   |+|
                    -- "uw-" ++ v ++ c |-| "-" ++ v ++ c   |:| ["U"]   |+|

                    "W-"  ++ v ++ c |-|        v ++ c   |:| ["W", "-"]

                |   c <- elems [sunny, moony, minor, invis],
                    v <- elems [vowel] ++ quote [vowel] ]


ruleInternalTaaaa =

        anyof [
                    "H" ++ v        |-|     "H"             |:| []

                |   v <- elems [vowel] ++ quote [vowel, sukun] ]

        |+| anyof [

                    "T" ++ v ++ c   |-|     "t" ++ v ++ c   |:| []  |+|
                    "H" ++ v ++ c   |-|     "t" ++ v ++ c   |:| []

                |   c <- elems [sunny, moony, minor, invis],
                    v <- elems [vowel, sukun] ++ quote [vowel, sukun] ]


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
consonant = unionMap [sunny, moony, minor]


sunny = define [
                    ( "t",          [ 0x0074 ] ),
                    ( "_t",         [ 0x0074, 0x0331 ] ),
                    ( "d",          [ 0x0064 ] ),
                    ( "_d",         [ 0x0064, 0x0331 ] ),
                    ( "r",          [ 0x0072 ] ),
                    ( "z",          [ 0x007A ] ),
                    ( "s",          [ 0x0073 ] ),
                    ( "^s",         [ 0x0073, 0x030C ] ),
                    ( ".s",         [ 0x0073, 0x0323 ] ),
                    ( ".d",         [ 0x0064, 0x0323 ] ),
                    ( ".t",         [ 0x0074, 0x0323 ] ),
                    ( ".z",         [ 0x007A, 0x0323 ] ),
                    ( "l",          [ 0x006C ] ),
                    ( "n",          [ 0x006E ] )
            ]


invis = define [
                    ( "|",          [        ] )
            ]


empty = define [
                    ( "",           [        ] )
            ]


hyphen = define [
                    ( "-",          [ 0x002D ] )
            ]


sukun = define [
                    ( "",           [        ] )
            ]


{-
sukun = define [
                    ( "",           [        ] ),
                    ( "+",          [        ] )
            ]


shadda = define [
                    ( "",           [        ] ),
                    ( "*",          [        ] )
            ]
-}


wasla = define [
                    ( "W",          [ 0x02BC ] )
            ]


extra = define [
                    ( "T",          [ 0x0074 ] ),
                    ( "H",          [ 0x0068 ] ),
                    ( "N",          [ 0x006E ] ),
                    ( "W",          [        ] )
            ]


{-
hamza = define [
                    ( "'A",         [ 0x0622 ] ),
                    ( "'a",         [ 0x0623 ] ),
                    ( "'i",         [ 0x0625 ] ),
                    ( "'w",         [ 0x0624 ] ),
                    ( "'y",         [ 0x0626 ] ),
                    ( "'|",         [ 0x0621 ] )
            ]
-}


minor = define [
                    ( "'",          [ 0x02BE ] ),   -- [ 0x02BC ]
                    ( "`",          [ 0x02BF ] )    -- [ 0x02BB ]
            ]


moony = define [
                    ( "b",          [ 0x0062 ] ),
                    ( "^g",         [ 0x0067, 0x030C ] ),
                    ( ".h",         [ 0x0068, 0x0323 ] ),
                    ( "_h",         [ 0x0068, 0x032E ] ),
                    ( ".g",         [ 0x0067, 0x0307 ] ),
                    ( "f",          [ 0x0066 ] ),
                    ( "q",          [ 0x0071 ] ),
                    ( "k",          [ 0x006B ] ),
                    ( "m",          [ 0x006D ] ),
                    ( "h",          [ 0x0068 ] ),
                    ( "w",          [ 0x0077 ] ),
                    ( "y",          [ 0x0079 ] ),

                    ( "p",          [ 0x0070 ] ),
                    ( "v",          [ 0x0076 ] ),
                    ( "g",          [ 0x0067 ] ),

                    ( "c",          [ 0x0063 ] ),
                    ( "^c",         [ 0x0063, 0x030C ] ),
                    ( ",c",         [ 0x0063, 0x0301 ] ),
                    ( "^z",         [ 0x007A, 0x030C ] ),
                    ( "^n",         [ 0x006E, 0x0303 ] ),
                    ( "^l",         [ 0x006C, 0x0303 ] ),
                    ( ".r",         [ 0x0072, 0x0307 ] )
            ]


vowel = define [
                    ( "a",          [ 0x0061 ] ),
                 -- ( "aa",         [ 0x0061, 0x0061 ] ),
                    ( "_a",         [ 0x0061, 0x0304 ] ),
                    ( "_aA",        [ 0x0061, 0x0304 ] ),
                    ( "_aY",        [ 0x0061, 0x0304 ] ),
                    ( "_aU",        [ 0x0061, 0x0304 ] ),
                    ( "_aI",        [ 0x0061, 0x0304 ] ),
                    ( "A",          [ 0x0061, 0x0304 ] ),
                    ( "^A",         [ 0x0061, 0x0304 ] ),
                    ( "e",          [ 0x0065 ] ),
                --  ( "ee",         [ 0x0065, 0x0065 ] ),
                    ( "E",          [ 0x0065, 0x0304 ] ),
                    ( "i",          [ 0x0069 ] ),
                --  ( "ii",         [ 0x0069, 0x0069 ] ),
                    ( "_i",         [ 0x0069, 0x0304 ] ),
                    ( "I",          [ 0x0069, 0x0304 ] ),
                    ( "^I",         [ 0x0069, 0x0304 ] ),
                    ( "_I",         [ 0x0069 ] ),
                    ( "o",          [ 0x006F ] ),
                --  ( "oo",         [ 0x006F, 0x006F ] ),
                    ( "O",          [ 0x006F, 0x0304 ] ),
                    ( "u",          [ 0x0075 ] ),
                --  ( "uu",         [ 0x0075, 0x0075 ] ),
                    ( "_u",         [ 0x0075, 0x0304 ] ),
                    ( "U",          [ 0x0075, 0x0304 ] ),
                    ( "^U",         [ 0x0075, 0x0304 ] ),
                    ( "_U",         [ 0x0075 ] ),
                    ( "Y",          [ 0x0061, 0x0304 ] )
            ]


{-
digit = define [
                    ( "0",          [ 0x0030 ] ),
                    ( "1",          [ 0x0031 ] ),
                    ( "2",          [ 0x0032 ] ),
                    ( "3",          [ 0x0033 ] ),
                    ( "4",          [ 0x0034 ] ),
                    ( "5",          [ 0x0035 ] ),
                    ( "6",          [ 0x0036 ] ),
                    ( "7",          [ 0x0037 ] ),
                    ( "8",          [ 0x0038 ] ),
                    ( "9",          [ 0x0039 ] )
            ]


punct = define [
                    ( ".",          [ 0x002E ] ),
                    ( ":",          [ 0x003A ] ),
                    ( "!",          [ 0x0021 ] ),

                    ( ",",          [ 0x002C ] ),
                    ( ";",          [ 0x003B ] ),
                    ( "?",          [ 0x003F ] )
            ]
-}


white = define [
                    ( " ",          [ 0x0020 ] ),
                    ( "\n",         [ 0x000A ] ),
                    ( "\r",         [ 0x000D ] ),
                    ( "\t",         [ 0x0009 ] ),
                    ( "\v",         [ 0x000B ] ),
                    ( "\f",         [ 0x000C ] )
            ]
