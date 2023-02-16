-- |
--
-- Module      :  PureFP.Parsers
-- Copyright   :  Peter Ljunglof 2002
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- Chapters 3 and 4 of /Pure Functional Parsing &#150; an advanced tutorial/
-- by Peter Ljungl&#246;f
--
-- <http://www.ling.gu.se/~peb/pubs/p02-lic-thesis.pdf>
--
-- <http://www.ling.gu.se/~peb/software/functional-parsing/>
--
-- With this limited distribution, you can create only some of the parsers
-- described in the thesis. These include in particular:
--
--  ['Standard' @s@]
--      "PureFP.Parsers.Standard",
--      the standard parser, sec. 3.2
--
--  ['Stream' @s@]
--      "PureFP.Parsers.Stream",
--      the stream processor parser, sec. 3.5.2
--
--  ['Trie' @s@]
--      "PureFP.Parsers.Trie",
--      the trie parser, sec. 4.2.1
--
--  ['AmbTrie' @s@]
--      "PureFP.Parsers.AmbTrie",
--      the ambiguous trie parser, sec. 4.2.2
--
--  ['ExTrie' @s@]
--      "PureFP.Parsers.ExTrie",
--      the extended trie parser, sec. 4.3.3
--
--  ['AmbExTrie' @s@]
--      "PureFP.Parsers.AmbExTrie",
--      the ambiguous extended trie parser, sec. 4.3.4
--
--  ['PairTrie' 'Standard' @s@]
--      "PureFP.Parsers.PairTrie", together with
--      "PureFP.Parsers.Standard",
--      the paired trie parser, sec. 4.4
--
-- "PureFP.OrdMap" "PureFP.Parsers.Parser"


module PureFP.Parsers where


import PureFP.Parsers.Standard
import PureFP.Parsers.Stream
import PureFP.Parsers.Trie
import PureFP.Parsers.AmbTrie
import PureFP.Parsers.ExTrie
import PureFP.Parsers.AmbExTrie
import PureFP.Parsers.PairTrie
