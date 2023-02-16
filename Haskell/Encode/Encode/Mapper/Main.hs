-- |
--
-- Module      :  Encode.Mapper.Main
-- Copyright   :  Otakar Smrz 2005-2007
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "Encode.Arabic" "Encode.Mapper" "Encode.Unicode"


module Encode.Mapper.Main where

import Encode.Mapper

trie :: Mapper Char [Char]
trie = (many (syms "c") >> return "x")  -- loop over "c"
       |+| "b"          |.| "b"     -- equal to syms "b"
       |+| "a"          |.| "a"
       |+| "ab" |-| "b" |:| "ab"    -- cheating with "b"
       |+| "ba"         |.| "ba"
       |+| "abacbd"     |.| "abacbd"

trie' = trie |+| "ab" |.| "ab"
             |+| ""   |-| "a"    |:| "y"
             |+| "c"  |-| "abac" |:| ""

ex' = unParseWide trie' . parseWide trie' [initPW trie' id]

ex = unParseWide trie . parseWide trie [initPW trie id]

ex'' = parseLongestWideWith id trie'


main = mapM (print . ex') [ "ab", "aba" ]

--main = mapM (print . concat . (\ i -> [show i ++ "\t~>\t" ++ show (ex i)])) [ "ab", "aba" ]


ex2 =
 let m = (many (syms "c") >> return "x")
         |+| "b" |.| "b"
         |+| "a" |.| "a"
         |+| "ab" |-| "b" |:| "ab" |+| syms "ba" |+| syms "abacbd"
     in unParseWide m (parseWide m [initPW m id] "ba")
