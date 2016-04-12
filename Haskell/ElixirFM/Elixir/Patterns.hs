-- |
--
-- Module      :  Elixir.Patterns
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM" "Elixir.Template"


module Elixir.Patterns (

        PatternL (..), _____,

        PatternT (..),

        PatternQ (..)

    ) where


import Elixir.Template

import Elixir.System

import Elixir.Patterns.Literal

import Elixir.Patterns.Triliteral

import Elixir.Patterns.Quadriliteral


instance Morphing String String where

    morph x = Morphs x [] []


instance Template String where

    interlocks _ s r t | null r    = restore t
                       | null t    = t
                       | otherwise = (concat . modify) t

        where modify | isForm VIII t                   = assimiVIII
                     | isForm VII  t                   = assimiVII
                     | null s                          = substitute

                     | t `elem` ["`an", "min"] &&
                       last s == Suffix "mA"           = (: []) . (++ "m") . init

                     | t `elem` ["mA"] &&
                       last s == Suffix "mA"           = (: []) . (++ "ah") . init

                     | t `elem` ["'an", "'in"] &&
                       last s == Suffix "lA"           = (: []) . (++ "l") . init

                     | t `elem` ["'an", "'in"] &&
                       last s == Suffix "mA"           = (: []) . (++ "m") . init

                     | last t == 'A' &&
                       head s == Iy                    = (++ ["w"]) . substitute

                     | otherwise                       = substitute

              substitute x = (replace . restore) x

              assimiVIII x = (replace . restore . init) iF
                             ++ [z, d] ++
                             (replace . tail) taCaL

                    where (iF, taCaL) = break ('t' ==) x
                          (z, d) = case r of ["'", "_h", "_d"]
                                                    -> assimVIII "'" True
                                             c : _  -> assimVIII c False
                                             _      -> ("F", "t")

              assimiVII  x = (replace . restore . init) iN
                             ++ [n, m] ++
                             (replace . tail) faCaL

                    where (iN, faCaL) = break ('F' ==) x
                          (n, m) = case r of c : _  -> assimVII c False
                                             _      -> ("n", "F")

              replace x = [ maybe [c] id (lookup c lock) | c <- x ]

                    where lock = zip ['F', 'C', 'L'] r ++
                                 zip ['K', 'R', 'D', 'S'] r

              restore x = case x of 'H' : y -> '\'' : y
                                    'I' : y -> 'i' : y
                                    'M' : y -> 'm' : y
                                    'N' : y -> 'n' : y
                                    'S' : y -> 's' : y
                                    'T' : y -> 't' : y
                                    'U' : y -> 'u' : y
                                    'Y' : y -> 'y' : y
                                    _       -> x


instance Rules String where

    isForm I    x | x `elem` ["", "lays", "las"] = True

    isForm f x = let t = [ True | y <- [toEnum 0 :: PatternT ..],
                                  show y == x, f `isForm` y ]

                     q = [ True | y <- [toEnum 0 :: PatternQ ..],
                                  show y == x, f `isForm` y ]

                     l = [ True | y <- [toEnum 0 :: PatternL ..],
                                  show y == x, f `isForm` y ]

                 in any (not . null) [t, q, l]


    prefixVerbI _ _ Passive = "u"

    prefixVerbI _ _ _       = "a"

    prefixVerbC _   _       = "i"


    isDiptote x = case letters x of [_, "a", _, "A", _, y, _]   ->  y `elem` ["i", "I"]
                                    _                           ->  x `elem` ["FaCL_an"]


instance Forming String where

    verbStems I _ = [

        (   Just  (     "",         "",         "",         ""          ),
                        "",         "",         "",         ""          ),
        (   Just  (     "las",      "",         "",         ""          ),
                        "lays",     "",         "",         ""          ),

        (   Just  (     "FaL",      "",         "",         ""          ),
                        "FaCL",     "",         "",         ""          )

        ]

    verbStems VII _ = [

        (   Nothing,    "InFaCaL",  "UnFuCiL",  "NFaCiL",   "NFaCaL"    ),
        (   Nothing,    "InFaCY",   "UnFuCI",   "NFaCI",    "NFaCY"     )

        ]


    verbStems VIII _ = [

        (   Nothing,    "IFtaCaL",  "UFtuCiL",  "FtaCiL",   "FtaCaL"    )

        ]

    verbStems _ _ = []


    nounStems VII _ = [

        (   "InFaCaL",  "MunFaCiL", "MunFaCaL", morph   "InFiCAL"       ),
        (   "InFaCY",   "MunFaCI",  "MunFaCY",  morph   "InFiCA'"       )

        ]

    nounStems VIII _ = [

        (   "IFtaCaL",  "MuFtaCiL", "MuFtaCaL", morph   "IFtiCAL"       )

        ]

    nounStems _ _ = []
