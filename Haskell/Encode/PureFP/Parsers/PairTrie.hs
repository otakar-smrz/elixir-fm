-- |
--
-- Module      :  PureFP.Parsers.PairTrie
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
-- the pairing trie parser from section 4.4


module PureFP.Parsers.PairTrie (PairTrie, ParserTrie) where

import PureFP.OrdMap

import PureFP.Parsers.Parser

import Control.Applicative

import Control.Monad


--------------------------------------------------
-- section 4.4.2: pairing a trie with a parser

data PairTrie m s a = ParserTrie s (m a) :&: m a


makeParser :: (Ord s, Monoid' m, Lookahead m s) => ParserTrie s (m a) -> m a
makeParser ptrie = lookahead (anyof . parseFull ptrie)


instance (Ord s, Monoid' m, Lookahead m s) => Monoid' (PairTrie m s) where
  zero                            = zero :&: zero

  (ptrie :&: _) <+> (qtrie :&: _) = pqtrie :&: makeParser pqtrie
    where pqtrie                  = ptrie <+> qtrie


instance (Ord s, Monad m, Applicative m) => Applicative (PairTrie m s) where
  pure a = (p ::: zero) :&: p
    where p = pure a
  (<*>)  = ap


instance (Ord s, Monad m, Applicative m) => Monad (PairTrie m s) where
  return = pure

  (>>=)  = error "PairTrie: (>>=) is not implemented"


instance (Ord s, Functor m) => Functor (PairTrie m s) where
  fmap f (trie :&: p) = fmap (fmap f) trie :&: fmap f p


instance (Ord s, Monoid' m, Sequence m, Applicative m, Lookahead m s) => Sequence (PairTrie m s) where
  (ptrie :&: _) </> ~(qtrie :&: q) = pqtrie :&: makeParser pqtrie
    where pqtrie                   = mapPQ ptrie
          mapPQ (Shift pmap')      = Shift (mapMap mapPQ pmap')
          mapPQ (p' ::: ptrie')    = mapPQ ptrie' <+> fmap (p' </>) qtrie
          mapPQ (Found p' ptrie')  = Found (p' </> q) (mapPQ ptrie')


instance (InputSymbol s, Monoid' m, Symbol m s, Lookahead m s) => Symbol (PairTrie m s) s where
  sym s         = Found p ptrie :&: p
    where p     = sym s
          ptrie = Shift (s |-> Found skip (skip ::: zero))

  sat p = anyof (map sym (filter p symbols))


instance (Ord s, Parser m s) => Parser (PairTrie m s) s where
  parse               = error "PairTrie: parse is not implemented"
  parseFull (_ :&: p) = parseFull p


--------------------------------------------------
-- section 4.4.1: a trie of parsers

data ParserTrie s a = Shift (Map s (ParserTrie s a))  |
                      a ::: ParserTrie s a            |
                      Found a (ParserTrie s a)

instance Ord s => Monoid' (ParserTrie s) where
  zero                            = Shift emptyMap

  Found p ptrie <+> qtrie         = ptrie <+> qtrie
  ptrie         <+> Found q qtrie = ptrie <+> qtrie
  (p ::: ptrie) <+> qtrie         = p ::: (ptrie <+> qtrie)
  ptrie         <+> (q ::: qtrie) = q ::: (ptrie <+> qtrie)
  Shift ptries  <+> Shift qtries  = Shift (mergeWith (<+>) ptries qtries)


instance Ord s => Functor (ParserTrie s) where
  fmap f (Shift pmap)    = Shift (mapMap (fmap f) pmap)
  fmap f (p ::: ptrie)   = f p ::: fmap f ptrie
  fmap f (Found p ptrie) = Found (f p) (fmap f ptrie)


instance Ord s => Parser (ParserTrie s) s where
  parse = error "PairTrie: parse is not implemented"

  parseFull (Found p _)   inp     = [p]
  parseFull (p ::: ptrie) inp     = p : parseFull ptrie inp
  parseFull (Shift _)     []      = []
  parseFull (Shift pmap)  (s:inp) = case pmap ? s of
                                      Just ptrie -> parseFull ptrie inp
                                      Nothing    -> []
