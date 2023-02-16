-- |
--
-- Module      :  Encode.Arabic.Parkinson
-- Copyright   :  Otakar Smrz 2005-2012
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- Dil Parkinson's notation is a one-to-one transliteration of the graphemes
-- of the Arabic script using lower ASCII characters only.
--
-- /Encode::Arabic::Parkinson/ in Perl:
-- <http://search.cpan.org/dist/Encode-Arabic/lib/Encode/Arabic/Parkinson.pm>


module Encode.Arabic.Parkinson (

        -- * Types

        Parkinson (..)

    ) where


import Encode

import Data.Map (Map)
import qualified Data.Map as Map


data Parkinson = Parkinson | Dil

    deriving (Enum, Show)


instance Encoding Parkinson where

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

            ++ [0x0623, 0x0624, 0x0625]
            ++ [0x060C, 0x061B, 0x061F]
            ++ [0x0621, 0x0622] ++ [0x0626 .. 0x063A] ++ [0x0641 .. 0x064A]
            ++ [0x0660 .. 0x0669]
            ++ [0x0671]
            ++ [0x0651]
            ++ [0x064B .. 0x0650] ++ [0x0670] ++ [0x0652]
            ++ [0x0640]

            )


encoded :: [Char]

encoded = map id ( []

            ++ "LWE"
            ++ ",;?"
            ++ "CM" ++ "YAbQtVjHxdvrzspSDTZcg" ++ "fqklmnhwey"
            ++ ['0' .. '9']
            ++ "O"
            ++ "~"
            ++ "NUIaui" ++ "R" ++ "o"
            ++ "_"

            )
