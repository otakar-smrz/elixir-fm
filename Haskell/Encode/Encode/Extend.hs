-- |
--
-- Module      :  Encode.Extend
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "Encode.Arabic.ArabTeX"
-- "Encode.Arabic.ArabTeX.ZDMG"


module Encode.Extend (

        -- * Modules

        module PureFP.Parsers.Parser,

        -- * Classes

        ExtEnv,

        -- * Types

        Extend (..),

        -- * Methods

        initEnv,

        -- * Functions

        inspectIList, returnIList,
        inspectEList, returnEList,

        inspectEnv, resetEnv,

        oneof, lower, upper, upperWith, oneof',

        -- * Operators

        (<|>),

        -- * Extensions

        again, lookupList

    ) where


import PureFP.OrdMap

import PureFP.Parsers.Parser

import Control.Applicative hiding ((<|>))

import Control.Monad


class ExtEnv e where

    initEnv :: e i


newtype Extend e s a = Ext (InE s e -> [(InE s e, a)])

type InE i e = ([i], [e i])


inspectIList :: Extend e s [s]
inspectIList = Ext (\ (i, e) -> [((i, e), i)])

returnIList :: [s] -> Extend e s [s]
returnIList i = Ext (\ (_, e) -> [((i, e), i)])

inspectEList :: Extend e s [e s]
inspectEList = Ext (\ (i, e) -> [((i, e), e)])

returnEList :: [e s] -> Extend e s [e s]
returnEList e = Ext (\ (i, _) -> [((i, e), e)])

inspectEnv :: Extend e s (e s)
inspectEnv = Ext (\ (i, e) -> [((i, e), head e)])

resetEnv :: (a -> e s -> e s) -> a -> Extend e s (e s)
resetEnv f v = Ext (\ (i, e : q) -> [((i, f v e : q), f v e)])


infixr 2 <|>

(<|>) :: Extend e s a -> Extend e s a -> Extend e s a

(<|>) p q = Ext (\ cs -> let Ext pp = p
                             r = pp cs
                             Ext qq = q
                             t = qq cs

                             takeOne (x:_) = [x]
                             takeOne []    = []

                         in case r of [] -> takeOne t
                                      _  -> takeOne r )

{-
(<|>) p q = Ext (\ cs -> case r cs of [] -> []; (x:xs) -> [x])
                where Ext r = p <+> q
-}


again :: Extend e s a -> Extend e s [a]
again p = ps where ps = p <:> ps <|> return []


lookupList :: (OrdMap m, Ord s) => s -> [m s a] -> [a]
lookupList x l = concat [ maybe [] (: []) (i ? x) | i <- l ]


oneof' :: (Ord [s], Symbol m [s], Eq s, Monad m) => s -> [Map [s] a] -> m [s]
oneof' p l = do y <- sat (\ (x : s) -> if x == p
                        then any (\ i -> maybe False (const True) (i ? s)) l
                        else False)
                return (tail y)

oneof :: (Ord s, Symbol m s) => [Map s a] -> m s
oneof l = sat (\ s -> any (\ i -> maybe False (const True) (i ? s)) l)

lower :: (Ord s) => [s] -> [s] -> Extend e s [s]
lower s c = Ext (\ inp -> [ ((c ++ i, e), r) | ((i, e), r) <- f inp ])
                where Ext f = syms s

upper :: (OrdMap m, Ord s) => [s] -> [m s [c]] -> Extend e d ([c] -> [c])
upper s l = foldM (\ f -> fmap ((.) f) . anyof . map (return . (++))) id
                  [ lookupList x l | x <- s ]
{-
upper :: (Ord s, Monad m, Functor m, Monoid' m)
      => [s] -> [Map s [UPoint]] -> m [UPoint]
upper s l = (fmap concat . sequence . map (anyof . map return))
                  [ lookupList x l | x <- s ]
-}

upperWith :: (s -> m -> e d -> [[c]]) -> [s] -> m -> Extend e d ([c] -> [c])
upperWith f s l =
        do  e <- inspectEnv
            foldM (\ f -> fmap ((.) f) . anyof . map (return . (++))) id
                  [ f x l e | x <- s ]


--------------------------------------------------
-- the standard parser from section 3.2


instance Monoid' (Extend e s) where
  zero            = Ext (\ inp -> [])
  Ext p <+> Ext q = Ext (\ inp -> p inp ++ q inp)


instance Applicative (Extend e s) where
  pure a = Ext (\ inp -> [(inp, a)])
  (<*>)  = ap


instance Monad (Extend e s) where
  return      = pure
  Ext p >>= k = Ext (\ inp -> concat [ q inp' | (inp', a) <- p inp,
                                                 let Ext q = k a ])


instance Functor (Extend e s) where
  fmap f p = do a <- p; return (f a)
{--
  fmap f (Ext p) = Ext (\inp -> [ (inp', f a) | (inp', a) <- p inp ])
--}


instance Sequence (Extend e s)
{--
  Ext p </> Ext q = Ext (\inp -> [ (inp'', f a) | (inp', f) <- p inp, (inp'', a) <- q inp' ])
--}


instance Eq s => Symbol (Extend e s) s where
  sat p = Ext sat'
    where sat' ((s:inp), e) | p s = [((inp, e), s)]
          sat' _                  = []


instance Eq s => SymbolCont (Extend e s) s where
  satCont p fut = Ext sat'
    where sat' ((s:inp), e) | p s = let Ext p = fut s in p (inp, e)
          sat' _                  = []


instance ExtEnv e => Parser (Extend e s) s where
  parse     = parse'     initEnv
  parseFull = parseFull' initEnv


instance Lookahead (Extend e s) s where
  lookahead f = Ext (\ (inp, e) -> let Ext p = f inp in p (inp, e))


parse' :: ExtEnv e => e s -> Extend e s a -> [s] -> [([s], a)]

parse' e (Ext p) i = [ (x, y) | ((x, _), y) <- p (i, [e]) ]


parseFull' :: ExtEnv e => e s -> Extend e s a -> [s] -> [a]

parseFull' e (Ext p) i = [ y | (([], _), y) <- p (i, [e]) ]
