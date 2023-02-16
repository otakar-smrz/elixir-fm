-- |
--
-- Module      :  PureFP.Parsers.Trie
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


--------------------------------------------------
-- the trie parser from section 4.2.1


module PureFP.Parsers.Trie (Trie) where

import PureFP.OrdMap

import PureFP.Parsers.Parser

import Control.Applicative

import Control.Monad


data Trie s a = Shift (Map s (Trie s a))  |
                a ::: Trie s a


instance Ord s => Monoid' (Trie s) where
  zero                      = Shift emptyMap

  (a ::: p)  <+> q          = a ::: (p <+> q)
  p          <+> (b ::: q)  = b ::: (p <+> q)
  Shift pmap <+> Shift qmap = Shift (mergeWith (<+>) pmap qmap)


instance Ord s => Applicative (Trie s) where
  pure a = a ::: zero
  (<*>)  = ap

instance Ord s => Monad (Trie s) where
  return           = pure

  (a ::: p)  >>= k = k a <+> (p >>= k)
  Shift pmap >>= k = Shift (mapMap (>>=k) pmap)


instance Ord s => Functor (Trie s) where
  fmap f p = do a <- p ; return (f a)
{--
  fmap f (a ::: p)    = f a ::: fmap f p
  fmap f (Shift pmap) = Shift (mapMap (fmap f) pmap)
--}


instance Ord s => Sequence (Trie s)


instance InputSymbol s => Symbol (Trie s) s where
  sym s = Shift (s |-> return s)
  sat p = anyof (map sym (filter p symbols))


instance Ord s => Parser (Trie s) s where
  parse (a ::: p)    inp     = (inp, a) : parse p inp
  parse _            []      = []
  parse (Shift pmap) (s:inp) = case pmap ? s of
                                 Just p  -> parse p inp
                                 Nothing -> []

  parseFull p            []      = collect p
    where collect (a:::p)        = a : collect p
          collect  _             = []
  parseFull (_ ::: p)    inp     = parseFull p inp
  parseFull (Shift pmap) (s:inp) = case pmap ? s of
                                     Just p  -> parseFull p inp
                                     Nothing -> []
