-- |
--
-- Module      :  Main
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Main where


import ElixirFM

import Encode.Arabic

import System.Environment
import System.Console.GetOpt
import System.IO

import Data.Char

import Data.List hiding (lookup)

import qualified Data.Map as Map

import Prelude hiding (lookup)

import Elixir.Version


data Opts = RunAction ([Opts] -> [String] -> IO ()) | TreesResolve
                                                    | ListsResolve
                                                    | FuzzyResolve
                                                    | QuickResolve
          | DisplayUsage
          | PrintVersion


options :: [OptDescr Opts]

options = [ Option []    ["resolve"]    (NoArg (RunAction elixirResolve))
                                                "run the 'resolve' mode",

            Option []    ["inflect"]    (NoArg (RunAction elixirInflect))
                                                "run the 'inflect' mode",

            Option []    ["derive"]     (NoArg (RunAction elixirDerive))
                                                "run the 'derive' mode",

            Option []    ["lookup"]     (NoArg (RunAction elixirLookup))
                                                "run the 'lookup' mode\n\n",

            Option []    ["merge"]      (NoArg (RunAction elixirMerge))
                                                "'merge' templates with roots\n\n",

            Option []    ["lexicon"]    (NoArg (RunAction elixirLexicon))
                                                "dump the 'lexicon' data",

            Option []    ["compose"]    (NoArg (RunAction elixirCompose))
                                                "dump the 'compose' data\n\n",

            Option ['t'] ["trees"]      (NoArg  TreesResolve)
                                                "resolve using MorphoTrees",

            Option ['l'] ["lists"]      (NoArg  ListsResolve)
                                                "resolve using MorphoLists",

            Option ['f'] ["fuzzy"]      (NoArg  FuzzyResolve)
                                                "resolve even fuzzy notation",

            Option ['q'] ["quick"]      (NoArg  QuickResolve)
                                                "resolve without tokenizing\n\n",

            Option ['h'] ["help"]       (NoArg  DisplayUsage)
                                                "program's usage and online references",

            Option ['v'] ["version"]    (NoArg  PrintVersion)
                                                "library version and build information" ]


copyleft = unlines ["ElixirFM (C) 2016-2005 Otakar Smrz and Viktor Bielicky",
                    "             2004 Markus Forsberg, 2002 Tim Buckwalter",
                    "GNU General Public License http://www.gnu.org/licenses/"]

synopsis = unlines [copyleft,
                    "               http://github.com/otakar-smrz/elixir-fm/",
                    "                               http://elixir-fm.sf.net/",
                    "                             <otakar-smrz users.sf.net>",
                    "",
                    "elixir [--]MODE [--OPTIONS] [PARAMETERS]"]


main = do   args <- getArgs

            hSetBinaryMode stdin  True
            hSetBinaryMode stdout True

            hSetBuffering stdin  LineBuffering
            hSetBuffering stdout LineBuffering

            let mods = case args of []      ->  []
                                    x : xs  ->  case x of

                                        '-' : '-' : y   ->  stop y ++ xs
                                        '-' : _         ->  args
                                        _               ->  stop x ++ xs

                stop x = if any (isPrefixOf x) ["inflect", "derive"]
                         then ["--" ++ x, "--"]
                         else ["--" ++ x]

                (opts, pars, errs) = getOpt Permute options mods

            if null errs && not (null opts) then case head opts of

                RunAction runs  ->  runs (tail opts) pars

                PrintVersion    ->  tell (unlines [copyleft,
                                          unwords ["ElixirFM",
                                                   show (pretty version)]])

                DisplayUsage    ->  tell (usageInfo synopsis options)

                _               ->  warn (usageInfo synopsis options)

                    else            warn (usageInfo synopsis options)


tell = hPutStr stdout


warn = hPutStr stderr


elixirResolve o p = interact (unlines . map (encode UTF . decode UCS . show . q . words . encode UCS . decode UTF) . rows)

    where q x = case e of

                "tex"   ->  r [ (e, Map.findWithDefault (defaults e) e z) | e <- x ]

                            where f' = if f then (alike, alike) else (fuzzy, fuzzy)
                                  t' = if t then tokenize else (\ x -> [[x]])

                                  y = (nub . filter (any isLetter)) x
                                  z = (Map.fromList . zip y . map harmonize . resolveBy (fst f') (omitting (snd f') omits) . map t') y

                "tim"   ->  r [ (e, Map.findWithDefault (defaults e) e z) | e <- x ]

                            where f' = if f then (alike, alike) else (fuzzy, fuzzy)
                                  t' = if t then tokenize else (\ x -> [[x]])

                                  y = (nub . filter (any ('_' /=)) . filter (any isArabic . encode UCS . decode Tim)) x
                                  z = (Map.fromList . zip y . map harmonize . resolveBy (fst f') (omitting (snd f') omits) . map (t' . decode Tim)) y

                _       ->  r [ (e, Map.findWithDefault (defaults e) e z) | e <- w ]

                            where f' = if f then (alike, alike) else (fuzzy, fuzzy)
                                  t' = if t then tokenize else (\ x -> [[x]])

                                  w = (concat . map (groupBy category)) x
                                  y = (nub . filter (any ('\x0640' /=)) . filter (any isArabic)) w
                                  z = (Map.fromList . zip y . map harmonize . resolveBy (fst f') (omitting (snd f') omits) . map (t' . decode UCS)) y

          r = case compare l s of

                  EQ  ->  singleline pretty
                  GT  ->  singleline pretty . map (\ (x, y) -> (x, morpholists y))
                  LT  ->  singleline pretty . map (\ (x, y) -> (x, morphotrees y))

          l = [ () | ListsResolve <- o ]
          s = [ () | TreesResolve <- o ]

          f = null [ () | FuzzyResolve <- o ]
          t = null [ () | QuickResolve <- o ]

          e = if null p then "" else map toLower (head p)


elixirInflect o p = interact (unlines . map (show . q) . filter r . map cols . rows)

    where q x = singleline id [ z | (y, p) <- c (unwords x), let t = lists d p, let u = enumerate y,
                                    z <- [ f t u s | r <- regroup u, s <- emanate r ] ]

          f x u = unwraps (\ (Nest r z) -> pretty [ (show y, inflect (Lexeme r e) x) | (y, e) <- zip u z ] )

          c x = [ (y, e z) | (y, z) <- reads x ] ++ [ (clips y, e z) | (y, z) <- reads x ]

          e x = [ z | y <- words x, z <- convert y ]

          d = [ z | y <- lists ["----------"] p, z <- convert y ]

          r x = null x || otherwise
                -- null (words x) || not (null (c x) || any ('"' ==) x)


elixirDerive o p = interact (unlines . map (show . q) . filter r . rows)

    where q x = singleline id [ z | (y, p) <- c x, let t = lists d p, let u = enumerate y,
                                    z <- [ f t u s | r <- regroup u, s <- emanate r ] ]

          f x u = unwraps (\ (Nest r z) -> pretty [ (show y, derive (Lexeme r e) x) | (y, e) <- zip u z ] )

          c x = [ (y, e z) | (y, z) <- reads x ] ++ [ (clips y, e z) | (y, z) <- reads x ]

          e x = [ z | y <- words x, z <- convert y ]

          d = [ z | y <- lists ["----------"] p, z <- convert y ]

          r x = otherwise -- null (words x) || not (null (c x) || any ('"' ==) x)


elixirLookup o p = interact (unlines . map (encode UTF . decode UCS . show . q . encode UCS . decode UTF) . rows)

    where q x = if null y then empty else pretty (

                if null c then if null r then if any isArabic y        then (y, lookup (decode UCS y))

                                                 else case e of

                                                               "tex"   ->   (y, lookup y)
                                                               "tim"   ->   (y, lookup (decode Tim y))
                                                               _       ->   (y, lookup (words y))

                                         else if any isArabic (head r) then (head r, lookup (decode UCS (head r)))

                                                 else if null (head r) then (show "", lookup "")
                                                                       else (show (unwords r), lookup (map (decode UCS) r))

                          else head c )

                where c = [ (show y, [y]) | (y, _) <- reads x ] ++ [ (show y, [clips y]) | (y, _) <- reads x ]
                      r = unfoldr (\ x -> let y = reads x in if null y then Nothing else Just (head y)) x
                      y = unwords (words x)

          e = if null p then "" else map toLower (head p)


elixirLexicon o p = interact (unlines . map (show . q) . filter r . rows)

    where q x = vcat [ pretty z | y <- c x, z <- emanate y ]

          c x = [ y | (y, _) <- reads x ] ++ [ clips y | (y, _) <- reads x ]

          r x = null (words x) || not (null (c x) || any ('"' ==) x)


elixirCompose o p = (putDoc . generate e) lexicon

    where e = if null p then "Q---------" else head p


elixirMerge o p = interact (unlines . map (show . (reads :: ReadS (Wrap Morphs))) . rows)
