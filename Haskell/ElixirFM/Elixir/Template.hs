-- |
--
-- Module      :  Elixir.Template
-- Copyright   :  Otakar Smrz 2005-2014
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Template where


import Elixir.System

import Encode.Arabic

import Data.Char

import Data.List

import qualified Data.Map as Map


class Template a where

    interlock  :: [String] -> a -> String

    interlocks :: [Prefix] -> [Suffix] -> [String] -> a -> String

    interlock = interlocks [] []


pattern :: Morphs a -> a

pattern (Morphs t p s) = t


merge :: (Morphing a b, Template b, Show b) => Root -> a -> String

merge r y = (prefixes . suffixes) [interlocks p s (words r) t]

    where Morphs t p s = morph y

          prefixes x = foldr (->-) x p

          suffixes x = folds (-<-) x s

          folds f z = foldl (flip (++)) [] .
                      foldr (\ x (y:s) -> let (e, i) = split y
                                          in  f i x : e : s) z

          split [x]    = ([], x)
          split (x:xs) = (x:ys, y)  where (ys, y) = split xs
          split []     = ([], '\NUL')  -- ([], '|')

{-
            if null s then prefixes shown
                      else prefixes (init shown ++ modified ++
                                     suffixes (tail reversed))

    where Morphs t p s = morph y

          prefixes x = foldr (->-) x p

          suffixes x = foldr shows [] x

          shown = interlock (words r) t

          reversed = reverse s

          modified = last shown -<- head reversed
-}


mergeWith :: (Morphing a b, Template b, Show b) => a -> String -> String

mergeWith = flip merge


infix 5 `merge`, `mergeWith`

infix 4 ->-
infix 4 -<-


-- Fischer (2002), par. 40 ('i' > 'iy is reflected in patterns)

(->-) :: Prefix -> String -> String

Al ->- s = case filter (flip isPrefixOf s) sunny of

            []      -> if isPrefixOf "i" s then "al-i-" ++ s
                                           else "al-"   ++ s

            ls : _  -> "a" ++ ls ++ "-" ++ s

Prefix "'a" ->- '\'' : s | isClosed s = "'A" ++ s
Prefix "'u" ->- '\'' : s | isClosed s = "'U" ++ s

Prefix [x, 'u'] ->- y : s | isClosed s &&
                            y `elem` "wy" = x : 'U' : s

-- Fischer (2002), par. 237, 238, 241, 242 (i'talif, iwdad, iwraqqa)
-- Wright (1991), par. 143, 145 vs. Ryding (2005), p. 568 (i'tamara)
--
-- Prefix "i" ->- '\'' : s = 'I' : s        -- would not cover
-- Prefix "u" ->- '\'' : s = 'U' : s        -- patterns anyway
--
-- encoding need be independent of orthographic or phonetic context

Prefix x ->- s = x ++ s

x ->- s  = shows x ('-' : s)


isClosed :: String -> Bool

isClosed (x : _) | x `elem` "aiuAIUY" = False

isClosed _ = True


(-<-) :: Char -> Suffix -> String

'Y' -<- x = case x of   AT      -> "AT"
                        Iy      -> "awIy"
                        Un      -> "awn"
                        In      -> "ayn"

                        Suffix ""       -> "a"

                        Suffix "Una"    -> "awna"
                        Suffix "U"      -> "aw"
                        Suffix "UW"     -> "aW"

                        Suffix "Ina"    -> "ayna"
                        Suffix "I"      -> "ay"

                        Suffix x | x `elem` ["a",  "i",  "u"]  -> "Y"
                                 | x `elem` ["aN", "iN", "uN"] -> "aNY"

                                 | "at" `isPrefixOf` x  -> x

                                 | "u"  `isPrefixOf` x  -> "aw" ++ x

                        Suffix "^g"     -> "a^g"

                        _       -> "ay" ++ show x

'I' -<- x = case x of   AT      -> "iyaT"
                        Iy      -> "awIy"   -- "Iy"
                        Un      -> "Un"
                        In      -> "In"

                        Suffix ""       -> "i"

                        Suffix "Una"    -> "Una"
                        Suffix "U"      -> "U"
                        Suffix "UW"     -> "UW"

                        Suffix "Ina"    -> "Ina"
                        Suffix "I"      -> "I"

                        Suffix x | x `elem` ["i",  "u"]  -> "I"
                                 | x `elem` ["iN", "uN"] -> "iN"

                                 | "n" `isPrefixOf` x ||
                                   "t" `isPrefixOf` x    -> "I" ++ x

                                 | "i" `isPrefixOf` x ||
                                   "u" `isPrefixOf` x    -> x

                                 | x `elem` ["ka", "mA"] -> "I" ++ x

                        Suffix "Iy"     -> "Iy"

                        _       -> "iy" ++ show x

'A' -<- x = case x of   AT      -> "AT"
                        Iy      -> "awIy"   -- "AwIy"
                        -- Un      -> "awn"
                        -- In      -> "ayn"

                        Suffix ""       -> "a"

                        -- Suffix "Una"    -> "awna"
                        -- Suffix "U"      -> "aw"
                        Suffix "UW"     -> "aW"

                        -- Suffix "Ina"    -> "ayna"
                        -- Suffix "I"      -> -- "ay"

                        Suffix x | x `elem` ["a",  "i",  "u"]  -> "A"
                                 | x `elem` ["aN", "iN", "uN"] -> "aN"

                                 | "at" `isPrefixOf` x  -> x

                                 | "u"  `isPrefixOf` x  -> "aw" ++ x

                                 | x `elem` ["ka", "li", "_dA", "t"] -> "A" ++ x

                        Suffix "Iy"     -> "AnIy"
                        Suffix "At"     -> "A'At"

                        _       -> "aw" ++ show x

'U' -<- x = case x of   At      -> "UhAt"
                        Un      -> "Un"
                        In      -> "In"

                        Suffix ""       -> "u"

                        Suffix "Una"    -> "Una"
                        Suffix "U"      -> "U"
                        Suffix "UW"     -> "UW"

                        Suffix "Ina"    -> "Ina"
                        Suffix "I"      -> "I"

                        Suffix "u"      -> "U"
                        Suffix "i"      -> "I"

                        Suffix x | x `elem` ["uN", "iN"] -> x

                                 | "n" `isPrefixOf` x ||
                                   "t" `isPrefixOf` x    -> "U" ++ x

                                 | "i" `isPrefixOf` x ||
                                   "u" `isPrefixOf` x    -> x

                                 | x `elem` ["^g", "f", "l"] -> "U" ++ x

                        _       -> "uw" ++ show x

'\NUL' -<- x = show x

c -<- x  = c : show x


data Form = I | II | III | IV | V | VI | VII | VIII | IX | X |
            XI | XII | XIII | XIV | XV

    deriving (Show, Eq, Enum)


class Forming a where

    verbStems :: Form -> String -> [VerbStems a]

    nounStems :: Morphing a a => Form -> String -> [NounStems a]


type VerbStems a = (Maybe (a, a, a, a), a, a, a, a)

type NounStems a = (a, a, a, Morphs a)


class Eq a => Rules a where

    isForm :: Form -> a -> Bool

    isInert :: Root -> a -> Bool

    isDiptote :: a -> Bool

    prefixVerbI :: Form -> a -> Voice -> String

    prefixVerbC :: Form -> a -> String

    auxiesDouble :: Form -> a -> [String]

    isForm I = const True
    isForm _ = const False

    isInert _ = const False
    isDiptote = const True

    prefixVerbI _ _ _ = []
    prefixVerbC _ _   = []
    auxiesDouble  _ _ = []


auxies  = ["-i", "-a"]          -- Fischer (2002), par. 53
auxies' = ["-i", "-a", "-u"]


{-
data Morphs a =     Pattern a
              |     Prefix  :>|:  Morphs a
              |                   Morphs a  :|<:  Suffix

infixr 7 :>|:
infixl 8 :|<:
-}


data Morphs a = Morphs a [Prefix] [Suffix]

    deriving Eq


class Morphing a b | a -> b where

    morph :: a -> Morphs b


(>|) :: Morphing a b => Prefix -> a -> Morphs b

x >| y = Morphs t (x : p) s

    where Morphs t p s = morph y


(|<) :: Morphing a b => a -> Suffix -> Morphs b

y |< x = Morphs t p (x : s)

    where Morphs t p s = morph y


infixr 7 >|, >>|
infixl 8 |<, |<<


(>>|) :: Morphing a b => String -> a -> Morphs b

x >>| y = Prefix x >| y


(|<<) :: Morphing a b => a -> String -> Morphs b

y |<< x = y |< Suffix x


instance Morphing (Morphs a) a where

    morph = id


instance Show a => Show (Morphs a) where

    showsPrec _ (Morphs t p s) = foldr ((.) . prefix') id p . shows t .
                                 foldl (flip ((.) . suffix')) id s

                -- foldr (((.) . flip (.) ((++) " >| ") . shows)) id p
                -- . shows t .
                -- foldl (flip ((.) . (.) ((++) " |< ") . shows)) id s

        where prefix' (Prefix x) = shows x . (++) " >>| "
              prefix' y          = shows y . (++)  " >| "

              suffix' (Suffix x) = (++) " |<< " . shows x
              suffix' y          = (++) " |< "  . shows y


instance Forming a => Forming (Morphs a) where

    verbStems _ _ = []

    nounStems _ _ = []


instance Rules a => Rules (Morphs a) where

    isForm f (Morphs t _ _) = isForm f t

    isInert r (Morphs t _ [])             = isInert r t
    isInert r (Morphs t _ (Suffix x : _)) = (not . null) x && last x `elem` "AIUY"
    isInert _ _                           = False

    isDiptote (Morphs t [] []) = isDiptote t
    isDiptote _                = False


data Prefix =   Prefix String

                |   Al
                |   LA

    deriving Eq


instance Show Prefix where

    show (Prefix x) = x

    show Al = "al"
    show LA = "lA"


al  =   Al
lA  =   LA
laa =   LA


data Suffix =   Suffix String

                |   Iy
                |   AT
                |   At
                |   Un
                |   In
                |   An
                |   Ayn

    deriving Eq


instance Show Suffix where

    show (Suffix x) = x

    show Iy = "Iy"
    show AT = "aT"
    show At = "At"
    show Un = "Un"
    show In = "In"
    show An = "An"
    show Ayn = "ayn"


iyy   = Iy
aT    = AT
aat   = At
uwn   = Un
iyn   = In
aan   = An
ayn   = Ayn

iyA   = Suffix "iyA"
iy    = Suffix "iy"

aN    = Suffix "aN"
iN    = Suffix "iN"
uN    = Suffix "uN"

a     = Suffix "a"
i     = Suffix "i"
u     = Suffix "u"


type Root = String


category :: Char -> Char -> Bool

category x y | isArabic x = isArabic y
             | isLetter x = isLetter y
             | isNumber x = isNumber y
             | otherwise  = False


isArabic :: Char -> Bool

isArabic x = '\x0620' < x && x < '\x063B' ||
             '\x063F' < x && x < '\x0653' ||
             '\x066F' < x && x < '\x0672'


sunny = [ "t", "_t", "d", "_d", "r", "z", "s", "^s",
          ".s", ".d", ".t", ".z", "l", "n" ]

moony = [ "'", "b", "^g", ".h", "_h", "`", ".g",
          "f", "q", "k", "m", "h", "w", "y",
          "B", "p", "v", "g", "^c", "^z",
          "c", ",c", "^n", "^l", ".r" ]


letters :: String -> [String]

letters ('.':z:s) | z `elem` "hsdtzgr" = ['.', z] : letters s
letters ('_':z:s) | z `elem` "thdaIUW" = ['_', z] : letters s
letters ('^':z:s) | z `elem` "gscznl"  = ['^', z] : letters s
letters (',':z:s) | z `elem` "c"       = [',', z] : letters s

letters (d:zs) = [d] : letters zs

letters []     = []

-- letters = unfoldr next


next :: String -> Maybe (String, String)

next (d:z:s) | d == '.' && z `elem` "hsdtzgr" = Just ([d, z], s)
             | d == '_' && z `elem` "thdaIUW" = Just ([d, z], s)
             | d == '^' && z `elem` "gscznl"  = Just ([d, z], s)
             | d == ',' && z `elem` "c"       = Just ([d, z], s)

next (d:zs) = Just ([d], zs)
next []     = Nothing


drops :: [a] -> [a]

drops [_]     = []
drops (_ : y) = y
drops []      = []


takes :: [a] -> [a]

takes [_]     = []
takes (x : y) = x : takes y
takes []      = []


inside :: Enum a => a -> a -> a -> Bool

inside x l r = fromEnum l <= y && y < fromEnum r

    where y = fromEnum x


unquote :: String -> [String]

unquote [] = []
unquote xs = y : unquote z                  where (y, z) = quotes xs


quotes :: String -> (String, String)

quotes []              = ([], [])
quotes ('\\' : y : ys) = ('\\' : y : u, v)  where (u, v) = quotes ys
quotes ('\\' : [])     = (['\\'], [])
quotes ('"' : ys)      = ([], ys)
quotes (y : ys)        = (y : u, v)         where (u, v) = quotes ys


omitting :: Eq a => (a -> a -> Bool) -> ([a], [a]) -> [a] -> [a] -> Bool

omitting _ _ []      []      = True

omitting e c i@(k:l) o@(q:r) | k `e` q      = omitting e c l r
                             | k' && not q' = omitting e c l o
                             | q' && not k' = omitting e c i r
                             | otherwise    = False

    where k' = k `elem` fst c
          q' = q `elem` snd c

omitting e c (k:l) []        | k `elem` fst c = omitting e c l []
                             | otherwise      = False

omitting e c [] (q:r)        | q `elem` snd c = omitting e c [] r
                             | otherwise      = False


isSubsumed :: (String -> String -> Bool) -> (String -> String -> Bool) -> [String] -> [String] -> Bool

isSubsumed _ _ []        _      = True
isSubsumed _ _ _         []     = False

isSubsumed q c zs@(x:xs) (y:ys) | x `q` y ||
                                  x `c` y   = isSubsumed q c xs ys
                                | otherwise = isSubsumed q c zs ys


assims :: String -> String -> Bool

assims "_d" "d"  = True
assims _    _    = False


approx :: String -> String -> Bool

approx "l"  "-"  = True
approx "t"  "T"  = True
approx "y"  "I"  = True
approx "y"  "Y"  = True
approx "w"  "U"  = True
approx "w"  "_W" = True
approx "w"  "_U" = True
approx _    _    = False


reduce :: String -> [String]

reduce = map head . group . trims . words

    where trims [y] | y `elem` ["`an", "min"] = [[head y]]
                    | y `elem` ["'an", "'in"] = []
                    | otherwise = [ z | z <- units y, z `notElem` skips ++ fst omits ]
          trims [x, y, "h"]     = [ z | z <- [x, y],  z `notElem` skips ]
          trims ["'", "n"]      = []
          trims x               = [ z | z <- x,       z `notElem` skips ]


skips :: [String]

skips = ["'", "w", "y"]                                                                                     -- ["`", "q"]


class Eq a => Fuzzy a where

    omits :: ([a], [a])
    units :: a -> [a]
    alike :: a -> a -> Bool
    fuzzy :: a -> a -> Bool


instance Fuzzy String where

    omits = (["a", "i", "u", "A", "I", "U", "Y", "-", "N", "W", "|", "_a", "_I", "_U"], ["|", "\"", "-"])   -- ["'", "`", "q", "T"]

    units = letters

    alike "Y" y | y `elem` ["Y", "A"] = True

    alike "T" y | y `elem` ["T", "t", "h"] = True
    alike "N" y | y `elem` ["N", "n"] = True
    alike "W" y | y `elem` ["W", "w"] = True

    alike "_a" y | y `elem` ["_a", "A"] = True
    alike "_I" y | y `elem` ["_I", "i"] = True
    alike "_U" y | y `elem` ["_U", "u"] = True

    alike x y = x == y

    fuzzy "A" y | y `elem` ["A", "a", "Y"] = True
    fuzzy "I" y | y `elem` ["I", "i", "e"] = True
    fuzzy "U" y | y `elem` ["U", "u", "o"] = True
    fuzzy "Y" y | y `elem` ["Y", "a", "A"] = True

    fuzzy "'" y | y `elem` ["'", "`", "a", "i", "u", "e", "o"] = True
    fuzzy "`" y | y `elem` ["`", "'", "a", "i", "u", "e", "o"] = True

    fuzzy "'" y | y `elem` ["w", "y"] = True

    fuzzy ".s" y | y `elem` [".s", "s"] = True
    fuzzy ".d" y | y `elem` [".d", "d"] = True
    fuzzy ".t" y | y `elem` [".t", "t"] = True
    fuzzy ".z" y | y `elem` [".z", "z", ".d", "_d", "d"] = True

    fuzzy "q" y | y `elem` ["q", "k", "'", "g"] = True
    fuzzy "k" y | y `elem` ["k", "q"] = True

    fuzzy ".h" y | y `elem` [".h", "_h", "h"] = True
    fuzzy "_h" y | y `elem` ["_h", ".h", "h"] = True

    fuzzy "^g" y | y `elem` ["^g", "g", "j"] = True
    fuzzy ".g" y | y `elem` [".g", "g"] = True

    fuzzy "_t" y | y `elem` ["_t", "t", "s"] = True
    fuzzy "_d" y | y `elem` ["_d", "d", "z"] = True

    fuzzy "^s" y | y `elem` ["^s", "s"] = True

 -- fuzzy "w" y | y `elem` ["w", "O"] = True
 -- fuzzy "y" y | y `elem` ["y", "E"] = True

    fuzzy "_a" y | y `elem` ["_a", "A", "a"] = True
    fuzzy "_I" y | y `elem` ["_I", "i", "I"] = True
    fuzzy "_U" y | y `elem` ["_U", "u", "U"] = True

    fuzzy x y = alike x y


instance Fuzzy [UPoint] where

    omits = ([ [x] | x <- decode Tim "aiu~`FNK" ],
             [ [x] | x <- decode Tim "o-" ])

    units x = [ [y] | y <- x ]    -- can become more complex

    alike [x] [y] = alike' (fromEnum x) (fromEnum y)
    alike _   _   = False

    fuzzy [x] [y] = fuzzy' (fromEnum x) (fromEnum y) ||
                    alike' (fromEnum x) (fromEnum y)
    fuzzy _  _    = False         -- can become more complex


alike' :: Int -> Int -> Bool

alike' 0x0621 y | y `elem` [0x0621, 0x0624, 0x0626] = True

alike' 0x0622 y | y > 0x0620 && y < 0x0628 = True
alike' 0x0623 y | y > 0x0620 && y < 0x0628 = True
alike' 0x0625 y | y > 0x0620 && y < 0x0628 = True

alike' 0x0627 y | y `elem` [0x0627, 0x0623, 0x0625, 0x0671] = True
alike' 0x0671 y | y `elem` [0x0671, 0x0627, 0x0623, 0x0625] = True

alike' 0x0624 y | y > 0x0622 && y < 0x0627 || y == 0x0621 = True
alike' 0x0626 y | y > 0x0622 && y < 0x0627 || y == 0x0621 = True

-- alike' 0x0649 y | y `elem` [0x0649, 0x064A] = True
-- alike' 0x064A y | y `elem` [0x064A, 0x0649] = True

-- alike' 0x0629 y | y `elem` [0x0629, 0x0647] = True

alike' 0x0670 y | y `elem` [0x0670, 0x064E] = True

alike' x y = x == y


fuzzy' :: Int -> Int -> Bool

fuzzy' 0x0624 y | y `elem` [0x0648, 0x0649, 0x064A, 0x0627] = True
fuzzy' 0x0626 y | y `elem` [0x0648, 0x0649, 0x064A, 0x0627] = True

fuzzy' 0x0635 y | y `elem` [0x0635, 0x0633] = True
fuzzy' 0x0636 y | y `elem` [0x0636, 0x062F] = True
fuzzy' 0x0637 y | y `elem` [0x0637, 0x062A] = True
fuzzy' 0x0638 y | y `elem` [0x0638, 0x0632, 0x0636, 0x0630, 0x062F] = True

fuzzy' 0x0639 y | y `elem` [0x0639, 0x0623, 0x0625, 0x0627] = True

fuzzy' 0x0642 y | y `elem` [0x0642, 0x0643, 0x0621] || y > 0x0622 && y < 0x0628 = True
fuzzy' 0x0643 y | y `elem` [0x0643, 0x0642] = True

fuzzy' 0x062D y | y `elem` [0x062D, 0x062E, 0x0647] = True
fuzzy' 0x062E y | y `elem` [0x062E, 0x062D, 0x0647] = True

fuzzy' 0x062B y | y `elem` [0x062B, 0x062A, 0x0633] = True
fuzzy' 0x0630 y | y `elem` [0x0630, 0x062F, 0x0632] = True

fuzzy' x y = x == y


recode :: [UPoint] -> [String]

recode xs = [ y | Just y <- [ Map.lookup x recoder | x <- xs ] ]


recoder :: Map.Map UPoint String

recoder = Map.fromAscList [ (toEnum x, y) | (y, x) <- [

                            ( "'",          0x0621 ),

                            ( "'",          0x0624 ),
                            ( "'",          0x0626 ),

                            ( "b",          0x0628 ),
                            ( "T",          0x0629 ),
                            ( "t",          0x062A ),
                            ( "_t",         0x062B ),
                            ( "^g",         0x062C ),
                            ( ".h",         0x062D ),
                            ( "_h",         0x062E ),
                            ( "d",          0x062F ),
                            ( "_d",         0x0630 ),
                            ( "r",          0x0631 ),
                            ( "z",          0x0632 ),
                            ( "s",          0x0633 ),
                            ( "^s",         0x0634 ),
                            ( ".s",         0x0635 ),
                            ( ".d",         0x0636 ),
                            ( ".t",         0x0637 ),
                            ( ".z",         0x0638 ),
                            ( "`",          0x0639 ),
                            ( ".g",         0x063A ),

                            ( "f",          0x0641 ),
                            ( "q",          0x0642 ),
                            ( "k",          0x0643 ),
                            ( "l",          0x0644 ),
                            ( "m",          0x0645 ),
                            ( "n",          0x0646 ),
                            ( "h",          0x0647 ),
                            ( "w",          0x0648 ),

                            ( "y",          0x064A ),

                            ( "p",          0x067E ),
                            ( "c",          0x0681 ),
                            ( ",c",         0x0685 ),
                            ( "^c",         0x0686 ),
                            ( ".r",         0x0695 ),
                            ( "^z",         0x0698 ),
                            ( "v",          0x06A4 ),
                            ( "^n",         0x06AD ),
                            ( "g",          0x06AF ),
                            ( "^l",         0x06B5 )    ] ]
