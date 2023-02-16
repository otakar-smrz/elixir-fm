-- |
--
-- Module      :  PureFP.Parsers.Standard
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
-- the standard parser from section 3.2


module PureFP.Parsers.Standard (Standard (..)) where

import PureFP.Parsers.Parser

import Control.Applicative

import Control.Monad.State


newtype Standard s a = Std ([s] -> [([s], a)])


instance MonadState [s] (Standard s) where
  get   = Std (\inp -> [(inp, inp)])
  put s = Std (\inp -> [(s, ())])


instance Monoid' (Standard s) where
  zero            = Std (\inp -> [])
  Std p <+> Std q = Std (\inp -> p inp ++ q inp)


instance Applicative (Standard s) where
  pure a = Std (\inp -> [(inp,a)])
  (<*>)  = ap


instance Monad (Standard s) where
  return      = pure
  Std p >>= k = Std (\inp -> concat [ q inp' |
                                      (inp', a) <- p inp,
                                      let Std q = k a ])


instance Functor (Standard s) where
  fmap f p = do a <- p ; return (f a)
{--
  fmap f (Std p) = Std (\inp -> [ (inp', f a) | (inp', a) <- p inp ])
--}


instance Sequence (Standard s)
{--
  Std p </> Std q = Std (\inp -> [ (inp'', f a) | (inp', f) <- p inp, (inp'', a) <- q inp' ])
--}


instance Eq s => Symbol (Standard s) s where
  sat p = Std sat'
    where sat' (s:inp) | p s = [(inp, s)]
          sat' _             = []


instance Eq s => SymbolCont (Standard s) s where
  satCont p fut = Std sat'
    where sat' (s:inp) | p s = let Std p = fut s in p inp
          sat' _             = []


instance Parser (Standard s) s where
  parse (Std p) inp = p inp


instance Lookahead (Standard s) s where
  lookahead f = Std (\inp -> let Std p = f inp in p inp)
