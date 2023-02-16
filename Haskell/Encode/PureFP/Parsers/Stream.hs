-- |
--
-- Module      :  PureFP.Parsers.Stream
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
-- <http://hackage.haskell.org/package/parsek>
--
-- "Text.ParserCombinators.Parsek"


--------------------------------------------------
-- the stream processor from section 3.5.2


module PureFP.Parsers.Stream (Stream) where

import PureFP.Parsers.Parser

import Control.Applicative

import Control.Monad


data Stream s a = Shift (s -> Stream s a)  |
                  a ::: Stream s a         |
                  Nil


instance Monoid' (Stream s) where
  zero                  = Nil

  Nil      <+> bs       = bs
  as       <+> Nil      = as
  (a:::as) <+> bs       = a ::: (as <+> bs)
  as       <+> (b:::bs) = b ::: (as <+> bs)
  Shift f  <+> Shift g  = Shift (\s -> f s <+> g s)


instance Applicative (Stream s) where
  pure a = a ::: Nil
  (<*>)  = ap


instance Monad (Stream s) where
  return         = pure

  Shift f  >>= k = Shift (\s -> f s >>= k)
  (a:::as) >>= k = k a <+> (as >>= k)
  Nil      >>= k = Nil


instance Functor (Stream s) where
  fmap f p = do a <- p ; return (f a)
{--
  fmap f (Shift g) = Shift (fmap f . g)
  fmap f (a:::as)  = f a ::: fmap f as
  fmap f Nil       = Nil
--}


instance Sequence (Stream s)


instance Eq s => Symbol (Stream s) s where
  skip  = Shift return
  sat p = Shift (\s -> if p s then return s else zero)


instance Eq s => SymbolCont (Stream s) s where
  satCont p fut = Shift (\s -> if p s then fut s else zero)


instance Parser (Stream s) s where
  parse (Shift f) (s:inp) = parse (f s) inp
  parse (a:::p)   inp     = (inp, a) : parse p inp
  parse _         _       = []

  parseFull (Shift f) (s:inp) = parseFull (f s) inp
  parseFull p         []      = collect p
    where collect (a:::p)     = a : collect p
          collect _           = []
  parseFull (a:::p)   inp     = parseFull p inp
  parseFull _         _       = []
