-- |
--
-- Module      :  Encode.ExPlus
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "Encode.Extend"


module Encode.ExPlus (

        -- * Modules

        module PureFP.Parsers.Parser,

        -- * Classes

        ExtEnv,

        -- * Types

        Extend,

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
import PureFP.Parsers.Standard

import Control.Monad
import Control.Monad.State


class ExtEnv e where

    initEnv :: e i


type Extend e s = StateT [e s] (Standard s)

-- newtype Extend e s a = Ext (InE s e -> [(InE s e, a)])

-- type InE i e = ([i], [e i])


inspectIList :: Extend e s [s]
inspectIList = lift get
            -- Ext (\ (i, e) -> [((i, e), i)])

returnIList :: [s] -> Extend e s [s]
returnIList i = lift (put i >> return i)
            -- Ext (\ (_, e) -> [((i, e), i)])

inspectEList :: Extend e s [e s]
inspectEList = get
            -- Ext (\ (i, e) -> [((i, e), e)])

returnEList :: [e s] -> Extend e s [e s]
returnEList e = put e >> return e
            -- Ext (\ (i, _) -> [((i, e), e)])

inspectEnv :: Extend e s (e s)
inspectEnv = gets head
            -- get >>= return . head
            -- do x <- get; return (head x)

resetEnv :: (a -> e s -> e s) -> a -> Extend e s (e s)
resetEnv f v = modify (\(e : q) -> f v e : q) >> gets head


infixr 2 <|>

(<|>) :: Extend e s a -> Extend e s a -> Extend e s a

(<|>) p q = StateT (\s -> Std (\inp -> let Std pp = runStateT p s
                                           r = pp inp
                                           Std qq = runStateT q s
                                           t = qq inp

                                           takeOne (x:_) = [x]
                                           takeOne []    = []

                                       in case r of [] -> takeOne t
                                                    _  -> takeOne r ))


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
lower s c = lift (syms s >> modify (c ++) >> get)

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
  zero    = lift zero
  p <+> q = StateT (\s -> runStateT p s <+> runStateT q s)


instance Sequence (Extend e s)


instance Eq s => Symbol (Extend e s) s where
  sat p = lift (sat p)

{-
instance Eq s => SymbolCont (Extend e s) s where
  satCont p fut = lift (satCont p fut)
{-
  satCont p fut = Ext sat'
    where sat' ((s:inp), e) | p s = let Ext p = fut s in p (inp, e)
          sat' _                  = []
-}
-}

instance ExtEnv e => Parser (Extend e s) s where
  parse     p = parse     (evalStateT p [initEnv])
  parseFull p = parseFull (evalStateT p [initEnv])

{-
instance Lookahead (Extend e s) s where
  lookahead f = Ext (\ (inp, e) -> let Ext p = f inp in p (inp, e))
-}
