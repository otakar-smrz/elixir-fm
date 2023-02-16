-- |
--
-- Module      :  Main.Encode
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "Encode.Arabic" "Encode.Mapper" "Encode.Unicode"


module Main where


import Encode
import Encode.Arabic
import Encode.Unicode

import System.Environment
import System.Console.GetOpt
import System.IO

import Data.Char
import Data.List

import Encode.Version


data Opts = DisplayUsage | PrintVersion | LineOriented |

            Prefix String | Suffix String

    deriving (Eq, Ord)


options :: [OptDescr Opts]

options = [ Option ['h'] ["help"]       (NoArg  DisplayUsage)
                                                "show usage information",

            Option ['l'] ["lines"]      (NoArg  LineOriented)
                                                "use line-oriented mode",

            Option ['p'] ["prefix"]     (ReqArg Prefix "text")
                                                "prefix input with text",

            Option ['s'] ["suffix"]     (ReqArg Suffix "text")
                                                "suffix input with text",

            Option ['v'] ["version"]    (NoArg  PrintVersion)
                                                "show program's version" ]


copyleft = unlines ["Encode Arabic (C) 2016-2005 Otakar Smrz",
                    "GNU General Public License http://www.gnu.org/licenses/"]

synopsis = unlines [copyleft,
                    "           http://github.com/otakar-smrz/encode-arabic/",
                    "                           http://encode-arabic.sf.net/",
                    "                             <otakar-smrz users.sf.net>",
                    "",
                    "encode [--OPTIONS] [ENCODING]"]


main = do   args <- getArgs

            hSetBinaryMode stdin  True
            hSetBinaryMode stdout True

            hSetBuffering stdin  LineBuffering
            hSetBuffering stdout LineBuffering

            let (opts, nons, errs) = getOpt Permute options args

            if null errs then case (sort . nub) opts of

                DisplayUsage : _    ->  tell (usageInfo synopsis options)
                PrintVersion : _    ->  tell (unlines [copyleft,
                                              unwords ["Encode Arabic",
                                                       showPretty version]])
                LineOriented : _    ->  execute True (tail opts) nons
                _                   ->  execute False      opts  nons

                         else           warn (usageInfo synopsis options)


tell = hPutStr stdout


warn = hPutStr stderr


execute l opts nons = case opts of

                        [Prefix p]  -> interactPlus l e (p ++)
                        [Prefix p, Suffix s]
                                    -> interactPlus l e ((p ++) . (++ s))
                        [Suffix s]  -> interactPlus l e (++ s)
                        _           -> interactPlus l e id

    where e = case nons of  [] -> ""
                            _  -> head nons


interactPlus :: Bool -> String -> (String -> String) -> IO ()

interactPlus l e f = interact (if l then unlines . map decodes . lines
                                    else decodes)

    where decodes = encodes . decode UTF . f

          encodes = case map toLower e of

                        "arabtex"       ->  encode UTF . decode UCS . encode ArabTeX
                        "lagally"       ->  encode UTF . decode UCS . encode Lagally
                        "tex"           ->  encode UTF . decode UCS . encode TeX

                        "zdmg"          ->  encode UTF . decode UCS . encode ZDMG
                        "arabtex_zdmg"  ->  encode UTF . decode UCS . encode ArabTeX_ZDMG
                        "arabtex-zdmg"  ->  encode UTF . decode UCS . encode ArabTeX_ZDMG

                        "buckwalter"    ->  encode UTF . decode UCS . encode Buckwalter
                        "tim"           ->  encode UTF . decode UCS . encode Tim

                        "parkinson"     ->  encode UTF . decode UCS . encode Parkinson
                        "dil"           ->  encode UTF . decode UCS . encode Dil

                        "habash"        ->  encode UTF . decode UCS . encode Habash
                        "soudi"         ->  encode UTF . decode UCS . encode Soudi
                        "hsb"           ->  encode UTF . decode UCS . encode HSB

                        "winarabic"     ->  encode WinArabic
                        "cp1256"        ->  encode CP1256
                        "windows_1256"  ->  encode Windows_1256
                        "windows-1256"  ->  encode Windows_1256

                        "isoarabic"     ->  encode ISOArabic
                        "iso_8859_6"    ->  encode ISO_8859_6
                        "iso-8859-6"    ->  encode ISO_8859_6

                        "macarabic"     ->  encode MacArabic

                        "macfarsi"      ->  encode MacFarsi

                        "dosarabic"     ->  encode DOSArabic
                        "cp864"         ->  encode CP864

                        "dosfarsi"      ->  encode DOSFarsi
                        "cp1006"        ->  encode CP1006

                        "asmo449"       ->  encode ASMO449

                        "isiri3342"     ->  encode ISIRI3342

                        _               ->  encode UTF
