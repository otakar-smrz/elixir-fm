-- |
--
-- Module      :  PureFP.Parsers.Parser
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
-- The classes of context-free and monadic combinator
-- parsers, from sections 2.4, 2.5 and 2.7 together
-- with the derived combinators from section 2.8

-- observe that the class hierarchy differs somewhat
-- from the thesis, /return/ is already defined in
-- the /Monad/ class


module PureFP.Parsers.Parser where

infixr 4  <:>
infixl 3  </> , />
infixl 2  <+>


--------------------------------------------------
-- the /Parser/ class (section 2.4)

class Parser m s | m -> s where
  parse     :: m a -> [s] -> [([s], a)]
  parseFull :: m a -> [s] -> [a]
  parseFull p inp = [ a | ([], a) <- parse p inp ]


--------------------------------------------------
-- the /Monoid/ class (section 2.5)

class Monoid' m where
  zero  :: m a
  (<+>) :: m a -> m a -> m a
  anyof :: [m a] -> m a
  anyof = foldr (<+>) zero


{-------------------------------------------------
-- the /PreMonad/ class (section 2.5) cannot be
-- defined, since /return/ is already in /Monad/

class PreMonad m where
  return :: a -> m a
--}


--------------------------------------------------
-- the /Sequence/ class (section 2.5)
-- depends on /return/, which means that it
-- has to depend on /Monad/

-- also we require it to be a /Functor/ because
-- of the definitions in section 2.8

class (Monad m, Functor m) => Sequence m where
  (</>) :: m (a -> b) -> m a -> m b
  ( />) :: m a -> m b -> m b
  p </> q = p >>= \f -> fmap f q
  p  /> q = fmap (\x y -> y) p </> q


{-------------------------------------------------
-- the /Monad/ class is already defined,
-- as is the /Functor/ class

class PreMonad m => Monad m where
  (>>=) :: m a -> (a -> m b) -> m b
  (>>)  :: m a -> m b -> m b

class Functor m where
  fmap :: (a -> b) -> m a -> m b
--}


--------------------------------------------------
-- the /Symbol/ class (section 2.5)

class Eq s => Symbol m s | m -> s where
  sym  :: s -> m s
  sat  :: (s -> Bool) -> m s
  skip :: m s
  sym s = sat (s ==)
  skip  = sat (\x -> True)


--------------------------------------------------
-- to be able to define /sat/ in terms of /sym/
-- we need a list of all possible input symbols
-- as explaine in section 2.5, the paragraph on
-- input symbols

-- this class is used in the trie parsers
-- from chapter 4

class Ord s => InputSymbol s where
  minSym, maxSym :: s
  symbols        :: [s]

instance InputSymbol Char where
  minSym  = minBound
  maxSym  = maxBound
  symbols = [minSym .. maxSym]

instance InputSymbol Int where
  minSym  = minBound
  maxSym  = maxBound
  symbols = [minSym .. maxSym]


--------------------------------------------------
-- the /SymbolCont/ class is used by the continuation
-- transformers in sections 3.3.1 and 3.4

class Eq s => SymbolCont m s | m -> s where
  satCont :: (s -> Bool) -> (s -> m a) -> m a


--------------------------------------------------
-- the /Lookahead/ class is used by the pairing trie
-- and is described in section 4.4.2

class Lookahead m s | m -> s where
  lookahead :: ([s] -> m a) -> m a


--------------------------------------------------
-- the derived combinators from section 2.8.1

success :: Monad m => m ()
success = return ()

many0 :: (Monoid' m, Sequence m) => m a -> m ()
many0 p = ps
  where ps = success <+> p /> ps

syms0 :: (Sequence m, Symbol m s) => [s] -> m ()
syms0 []     = success
syms0 (s:ss) = sym s /> syms0 ss

(<:>) :: Sequence m => m a -> m [a] -> m [a]
p <:> ps = fmap (:) p </> ps

many :: (Monoid' m, Sequence m) => m a -> m [a]
many p = ps
  where ps = return [] <+> p <:> ps

syms :: (Sequence m, Symbol m s) => [s] -> m [s]
syms []     = return []
syms (s:ss) = sym s <:> syms ss
