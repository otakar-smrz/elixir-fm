-- |
--
-- Module      :  PureFP.Parsers.AmbTrie
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
-- the ambiguous trie from section 4.2.2


module PureFP.Parsers.AmbTrie (AmbTrie (..)) where

import PureFP.OrdMap

import PureFP.Parsers.Parser

import Control.Applicative

import Control.Monad


data AmbTrie s a = [a] :&: Map s (AmbTrie s a)


instance Ord s => Monoid' (AmbTrie s) where
  zero                        = [] :&: emptyMap

  (as:&:pmap) <+> (bs:&:qmap) = (as++bs) :&: mergeWith (<+>) pmap qmap


instance Ord s => Applicative (AmbTrie s) where
  pure a = [a] :&: emptyMap
  (<*>)  = ap


instance Ord s => Monad (AmbTrie s) where
  return            = pure

  (as:&:pmap) >>= k = foldr (<+>) ([]:&:mapMap (>>=k) pmap) (map k as)


instance Ord s => Functor (AmbTrie s) where
  fmap f p = do a <- p ; return (f a)
{--
  fmap f (as :&: pmap) = map f as :&: mapMap (fmap f) pmap
--}


instance Ord s => Sequence (AmbTrie s)


instance InputSymbol s => Symbol (AmbTrie s) s where
  sym s = [] :&: (s |-> return s)
  sat p = anyof (map sym (filter p symbols))


instance Ord s => Parser (AmbTrie s) s where

  -- parse = error "AmbTrie: parse is not implemented"
  --
  -- parse   implemented by Otakar Smrz

  parse ([] :&: pmap) []      = []
  parse ([] :&: pmap) (s:inp) = case pmap ? s of
                                    Just p  -> parse p inp
                                    Nothing -> []
  parse (xs :&: pmap) inp     = foldr ((:) . (,) inp)
                                      (parse ([] :&: pmap) inp) xs

  parseFull (xs :&: _)    []      = xs
  parseFull (_  :&: pmap) (s:inp) = case pmap ? s of
                                        Just p  -> parseFull p inp
                                        Nothing -> []
