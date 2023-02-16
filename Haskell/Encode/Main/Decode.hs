-- |
--
-- Module      :  Main.Decode
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
                    "decode [--OPTIONS] [ENCODING]"]


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

interactPlus l e f = interact (if l then unlines . map encodes . lines
                                    else encodes)

    where encodes = encode UTF . decodes . f

          decodes = case map toLower e of

                        "arabtex"       ->  decode ArabTeX . encode UCS . decode UTF
                        "lagally"       ->  decode Lagally . encode UCS . decode UTF
                        "tex"           ->  decode TeX . encode UCS . decode UTF

                        "zdmg"          ->  decode ZDMG . encode UCS . decode UTF
                        "arabtex_zdmg"  ->  decode ArabTeX_ZDMG . encode UCS . decode UTF
                        "arabtex-zdmg"  ->  decode ArabTeX_ZDMG . encode UCS . decode UTF

                        "buckwalter"    ->  decode Buckwalter . encode UCS . decode UTF
                        "tim"           ->  decode Tim . encode UCS . decode UTF

                        "parkinson"     ->  decode Parkinson . encode UCS . decode UTF
                        "dil"           ->  decode Dil . encode UCS . decode UTF

                        "habash"        ->  decode Habash . encode UCS . decode UTF
                        "soudi"         ->  decode Soudi . encode UCS . decode UTF
                        "hsb"           ->  decode HSB . encode UCS . decode UTF

                        "winarabic"     ->  decode WinArabic
                        "cp1256"        ->  decode CP1256
                        "windows_1256"  ->  decode Windows_1256
                        "windows-1256"  ->  decode Windows_1256

                        "isoarabic"     ->  decode ISOArabic
                        "iso_8859_6"    ->  decode ISO_8859_6
                        "iso-8859-6"    ->  decode ISO_8859_6

                        "macarabic"     ->  decode MacArabic

                        "macfarsi"      ->  decode MacFarsi

                        "dosarabic"     ->  decode DOSArabic
                        "cp864"         ->  decode CP864

                        "dosfarsi"      ->  decode DOSFarsi
                        "cp1006"        ->  decode CP1006

                        "asmo449"       ->  decode ASMO449

                        "isiri3342"     ->  decode ISIRI3342

                        _               ->  decode UTF
