-- |
--
-- Module      :  PureFP.Parsers.AmbExTrie
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
-- the ambiguous extended trie from section 4.3.4


module PureFP.Parsers.AmbExTrie (AmbExTrie (..), unfold) where

import PureFP.OrdMap

import PureFP.Parsers.Parser

import Control.Applicative

import Control.Monad


data AmbExTrie s a = [a] :&: Map s (AmbExTrie s a)    |
                     forall b . FMap (b -> a) (AmbExTrie s b)


unfold :: Ord s => (a -> b) -> AmbExTrie s a -> AmbExTrie s b
unfold f (as :&: pmap) = map f as :&: mapMap (FMap f) pmap
unfold f (FMap g p)    = FMap (f . g) p


instance Ord s => Monoid' (AmbExTrie s) where
  zero                        = [] :&: emptyMap

  FMap f p    <+> q           = unfold f p <+> q
  p           <+> FMap f q    = p <+> unfold f q
  (as:&:pmap) <+> (bs:&:qmap) = (as++bs) :&: mergeWith (<+>) pmap qmap


instance Ord s => Applicative (AmbExTrie s) where
  pure a = [a] :&: emptyMap
  (<*>)  = ap


instance Ord s => Monad (AmbExTrie s) where
  return            = pure

  FMap f p    >>= k = unfold f p >>= k
  (as:&:pmap) >>= k = foldr (<+>) ([]:&:mapMap (>>=k) pmap) (map k as)


instance Ord s => Functor (AmbExTrie s) where
  fmap = FMap


instance Ord s => Sequence (AmbExTrie s)


instance InputSymbol s => Symbol (AmbExTrie s) s where
  sym s = [] :&: (s |-> return s)
  sat p = anyof (map sym (filter p symbols))


instance Ord s => Parser (AmbExTrie s) s where

  -- parse = error "AmbExTrie: parse is not implemented"
  --
  -- parse   implemented by Otakar Smrz

  parse     p inp = parse'     p inp id
  parseFull p inp = parseFull' p inp id

parse' :: Ord s => AmbExTrie s a -> [s] -> (a -> b) -> [([s], b)]
parse' (FMap f p)    inp     k = parse' p inp (k . f)
parse' ([] :&: pmap) []      k = []
parse' ([] :&: pmap) (s:inp) k = case pmap ? s of
                                   Just p  -> parse' p inp k
                                   Nothing -> []
parse' (xs :&: pmap) inp     k = foldr ( (:) . (,) inp . k )
                                       (parse' ([] :&: pmap) inp k) xs

parseFull' :: Ord s => AmbExTrie s a -> [s] -> (a -> b) -> [b]
parseFull' (FMap f p)    inp     k = parseFull' p inp (k . f)
parseFull' (xs :&: _)    []      k = map k xs
parseFull' (_  :&: pmap) (s:inp) k = case pmap ? s of
                                       Just p  -> parseFull' p inp k
                                       Nothing -> []
