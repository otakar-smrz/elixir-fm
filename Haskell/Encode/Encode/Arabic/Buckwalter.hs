-- |
--
-- Module      :  Encode.Arabic.Buckwalter
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- Tim Buckwalter's notation is a one-to-one transliteration of the graphemes
-- of the Arabic script using lower ASCII characters only. This system is very
-- popular in Natural Language Processing, however, there are limits to its
-- applicability due to numerous non-alphabetic characters involved.
--
-- The XML-friendly variant of the notation replaces codes @>@, @&@, @<@ with
-- @O@, @W@, @I@, respectively. In this implementation, the 'decode' function
-- considers both of these conventions and converts from them, while the
-- 'encode' function produces the XML-friendly notation only.
--
-- /Encode::Arabic::Buckwalter/ in Perl:
-- <http://search.cpan.org/dist/Encode-Arabic/lib/Encode/Arabic/Buckwalter.pm>


module Encode.Arabic.Buckwalter (

        -- * Types

        Buckwalter (..)

    ) where


import Encode

import Data.Map (Map)
import qualified Data.Map as Map


data Buckwalter = Buckwalter | Tim

    deriving (Enum, Show)


instance Encoding Buckwalter where

    encode _ = recode encoder

    decode _ = recode decoder


recode :: (Ord a, Enum b, Enum a) => Map a b -> [a] -> [b]

recode xry xs = [ Map.findWithDefault ((toEnum . fromEnum) x) x xry | x <- xs ]


recoder :: Ord a => [a] -> [b] -> Map a b

recoder xs ys = Map.fromList (zip xs ys)


encoder :: Map UPoint Char

encoder = recoder decoded encoded


decoder :: Map Char UPoint

decoder = recoder encoded decoded


decoded :: [UPoint]

decoded = map toEnum ( []

            ++ [0x0623, 0x0624, 0x0625] ++ [0x0623, 0x0624, 0x0625]
            ++ [0x060C, 0x061B, 0x061F]
            ++ [0x0621, 0x0622] ++ [0x0626 .. 0x063A] ++ [0x0641 .. 0x064A]
            ++ [0x067E, 0x0686, 0x0698, 0x06A4, 0x06AF]
            ++ [0x0660 .. 0x0669]
            ++ [0x0671]
            ++ [0x0651]
            ++ [0x064B .. 0x0650] ++ [0x0670] ++ [0x0652]
            ++ [0x0640]

            )


encoded :: [Char]

encoded = map id ( []

            ++ ">&<" ++ "OWI"
            ++ ",;?"
            ++ "'|" ++ "}AbptvjHxd*rzs$SDTZEg" ++ "fqklmnhwYy"
            ++ "PJRVG"
            ++ ['0' .. '9']
            ++ "{"
            ++ "~"
            ++ "FNKaui" ++ "`" ++ "o"
            ++ "_"

            )
