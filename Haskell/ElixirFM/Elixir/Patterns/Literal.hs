-- |
--
-- Module      :  Elixir.Patterns.Literal
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM" "Elixir.Template"


module Elixir.Patterns.Literal where


import Elixir.Template


instance Morphing PatternL PatternL where

    morph x = Morphs x [] []


instance Template PatternL where

    interlocks _ s [] _ = show Identity

    interlocks _ s r _ = (if null s then id else modify) (concat r)

        where modify t | t `elem` ["`an", "min"] &&
                         last s == Suffix "mA"      = init t ++ "m"

                       | t `elem` ["mA"] &&
                         last s == Suffix "mA"      = init t ++ "ah"

                       | t `elem` ["'an", "'in"] &&
                         last s == Suffix "lA"      = init t ++ "l"

                       | t `elem` ["'an", "'in"] &&
                         last s == Suffix "mA"      = init t ++ "m"

                       | otherwise                  = t


instance Rules PatternL where

    isForm I Identity = True
    isForm _ _        = False

    isInert r _ = (not . null) r && last r `elem` "AIUY"


instance Forming PatternL where

    verbStems _ _ = []

    nounStems _ _ = []


data PatternL =  Identity

    deriving (Enum, Eq)


instance Show PatternL where

    showsPrec _ _ = (++) "_____"


instance Read PatternL where

    readsPrec _ x = [ (v, s) | (t, s) <- lex x,

                                v <- case t of

                                    "_____"    -> [Identity]

                                    "Identity" -> [Identity]

                                    "____"     -> [Identity]
                                    "___"      -> [Identity]
                                    "__"       -> [Identity]

                                    _          -> [] ]


_____    = Identity
