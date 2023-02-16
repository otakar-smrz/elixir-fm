{-# OPTIONS -cpp #-}
{-# LINE 1 "Mappy.x" #-}
    module Encode.Arabic.ArabTeX.Mappy where

-- #if __GLASGOW_HASKELL__ >= 603
-- #include "ghcconfig.h"
-- #else
-- #include "config.h"
-- #endif
-- #if __GLASGOW_HASKELL__ >= 503
import Data.Array
import Data.Char (ord)
import Data.Array.Base (unsafeAt)
-- #else
-- import Array
-- import Char (ord)
-- #endif
alex_base :: Array Int Int
alex_base = listArray (0,135) [-38,-9,0,22,0,51,0,82,0,111,0,142,0,171,0,202,0,231,0,262,-63,-62,294,300,309,315,328,342,343,356,357,370,371,384,385,398,399,412,413,426,427,440,441,454,455,468,469,482,483,496,497,510,511,524,525,538,539,552,553,566,567,580,581,594,595,608,609,622,623,636,637,650,651,664,665,678,679,692,693,706,707,720,721,734,735,748,749,762,-95,-88,-97,-96,758,760,784,790,-66,-52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-87,-89,768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,820]

alex_table :: Array Int Int
alex_table = listArray (0,1075) [0,95,8,9,0,26,64,65,93,68,10,11,27,101,123,0,69,125,34,35,0,22,12,13,0,0,105,0,23,99,94,14,96,97,2,3,0,92,0,16,0,0,4,5,0,15,0,0,0,0,0,18,0,17,6,7,91,89,71,0,63,135,25,0,75,19,83,0,114,79,45,81,47,0,0,77,29,33,21,0,0,85,0,87,31,90,88,70,0,62,135,24,0,74,0,82,0,114,78,44,80,46,0,0,76,28,32,20,0,0,84,0,86,30,0,0,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,0,0,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,0,0,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,0,0,113,112,126,0,122,135,100,0,128,0,132,0,114,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,113,112,126,0,122,0,100,0,128,0,132,0,0,130,110,131,111,0,0,129,102,104,98,0,0,133,0,134,103,0,0,113,112,126,8,122,0,100,0,128,9,132,10,0,130,110,131,111,11,8,129,102,104,98,12,9,133,10,134,103,13,0,0,11,96,0,2,0,8,12,97,0,3,0,4,13,10,0,0,96,5,2,9,8,0,97,6,3,12,4,11,10,7,0,0,5,9,8,96,0,2,6,13,12,11,10,0,7,4,0,9,8,97,96,3,2,13,12,11,10,6,0,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,8,97,96,3,2,13,12,11,10,7,6,5,4,9,0,97,96,3,2,13,12,11,0,7,6,5,4,0,0,97,96,3,2,13,0,58,60,7,6,5,4,59,61,97,38,3,39,72,66,73,67,7,6,5,107,0,0,127,124,36,40,37,41,0,0,7,42,50,43,106,108,120,121,51,0,52,109,0,0,0,0,53,0,0,0,0,0,0,0,54,0,56,0,0,48,55,0,57,0,0,49,0,0,116,0,0,0,0,0,0,0,117,0,0,0,0,0,0,0,0,0,0,0,0,0,118,0,119,0,0,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

alex_check :: Array Int Int
alex_check = listArray (0,1075) [-1,39,65,65,-1,100,103,103,46,104,73,73,100,100,103,-1,104,104,115,115,-1,116,85,85,-1,-1,115,-1,116,116,39,97,95,95,97,97,-1,46,-1,105,-1,-1,105,105,-1,97,-1,-1,-1,-1,-1,117,-1,105,117,117,94,95,96,-1,98,39,100,-1,102,117,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,-1,-1,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,-1,-1,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,-1,-1,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,-1,-1,94,95,96,-1,98,39,100,-1,102,-1,104,-1,46,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,94,95,96,-1,98,-1,100,-1,102,-1,104,-1,-1,107,108,109,110,-1,-1,113,114,115,116,-1,-1,119,-1,121,122,-1,-1,94,95,96,65,98,-1,100,-1,102,65,104,73,-1,107,108,109,110,73,65,113,114,115,116,85,65,119,73,121,122,85,-1,-1,73,95,-1,97,-1,65,85,95,-1,97,-1,105,85,73,-1,-1,95,105,97,65,65,-1,95,117,97,85,105,73,73,117,-1,-1,105,65,65,95,-1,97,117,85,85,73,73,-1,117,105,-1,65,65,95,95,97,97,85,85,73,73,117,-1,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,65,95,95,97,97,85,85,73,73,117,117,105,105,65,-1,95,95,97,97,85,85,73,-1,117,117,105,105,-1,-1,95,95,97,97,85,-1,65,66,117,117,105,105,65,66,95,100,97,100,103,104,103,104,117,117,105,100,-1,-1,103,104,115,116,115,116,-1,-1,117,122,97,122,115,116,65,66,97,-1,105,122,-1,-1,-1,-1,105,-1,-1,-1,-1,-1,-1,-1,119,-1,121,-1,-1,124,119,-1,121,-1,-1,124,-1,-1,97,-1,-1,-1,-1,-1,-1,-1,105,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,119,-1,121,-1,-1,124,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]

alex_deflt :: Array Int Int
alex_deflt = listArray (0,135) [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]

alex_accept = listArray (0::Int,135) [[],[],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[(AlexAcc (alex_action_0))],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[(AlexAcc (alex_action_1))],[],[],[],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[(AlexAcc (alex_action_2))],[]]
{-# LINE 34 "Mappy.x" #-}
-- Each action has type :: String -> Token

-- The token type:
data Token =
    Let         |
    In          |
    Sym Char    |
    Var String  |
    Int Int
    deriving (Eq,Show)

main = do
  s <- getContents
  print (alexScanTokens s)

alex_action_0 = \s -> Var "two"
alex_action_1 = \s -> Var "three sunny"
alex_action_2 = \s -> Var "three moony"
{-# LINE 1 "GenericTemplate.hs" #-}
-- -----------------------------------------------------------------------------
-- ALEX TEMPLATE
--
-- This code is in the PUBLIC DOMAIN; you may copy it freely and use
-- it for any purpose whatsoever.

-- -----------------------------------------------------------------------------
-- INTERNALS and main scanner engine

{-# LINE 22 "GenericTemplate.hs" #-}














{-# LINE 44 "GenericTemplate.hs" #-}


{-# LINE 65 "GenericTemplate.hs" #-}

alexIndexInt16OffAddr arr off = arr ! off


{-# LINE 86 "GenericTemplate.hs" #-}

alexIndexInt32OffAddr arr off = arr ! off










quickIndex arr i = arr ! i


-- -----------------------------------------------------------------------------
-- Main lexing routines

data AlexReturn a
  = AlexEOF
  | AlexError  !AlexInput
  | AlexSkip   !AlexInput !Int
  | AlexToken  !AlexInput !Int a

-- alexScan :: AlexInput -> StartCode -> Maybe (AlexInput,Int,act)
alexScan input (sc)
  = alexScanUser undefined input (sc)

alexScanUser user input (sc)
  = case alex_scan_tkn user input (0) input sc AlexNone of
    (AlexNone, input') ->
        case alexGetChar input of
            Nothing ->



                   AlexEOF
            Just _ ->



                   AlexError input'

    (AlexLastSkip input len, _) ->



        AlexSkip input len

    (AlexLastAcc k input len, _) ->



        AlexToken input len k


-- Push the input through the DFA, remembering the most recent accepting
-- state it encountered.

alex_scan_tkn user orig_input len input s last_acc =
  input `seq` -- strict in the input
  case s of
    (-1) -> (last_acc, input)
    _ -> alex_scan_tkn' user orig_input len input s last_acc

alex_scan_tkn' user orig_input len input s last_acc =
  let
    new_acc = check_accs (alex_accept `quickIndex` (s))
  in
  new_acc `seq`
  case alexGetChar input of
     Nothing -> (new_acc, input)
     Just (c, new_input) ->



      let
        base   = alexIndexInt32OffAddr alex_base s
        (ord_c) = ord c
        offset = (base + ord_c)
        check  = alexIndexInt16OffAddr alex_check offset

        new_s = if (offset >= (0)) && (check == ord_c)
                then alexIndexInt16OffAddr alex_table offset
                else alexIndexInt16OffAddr alex_deflt s
      in
       alex_scan_tkn user orig_input (len + (1)) new_input new_s new_acc

   where
    check_accs [] = last_acc
    check_accs (AlexAcc a : _) = AlexLastAcc a input (len)
    check_accs (AlexAccSkip : _)  = AlexLastSkip  input (len)
    check_accs (AlexAccPred a pred : rest)
       | pred user orig_input (len) input
       = AlexLastAcc a input (len)
    check_accs (AlexAccSkipPred pred : rest)
       | pred user orig_input (len) input
       = AlexLastSkip input (len)
    check_accs (_ : rest) = check_accs rest

data AlexLastAcc a
  = AlexNone
  | AlexLastAcc a !AlexInput !Int
  | AlexLastSkip  !AlexInput !Int

data AlexAcc a user
  = AlexAcc a
  | AlexAccSkip
  | AlexAccPred a (AlexAccPred user)
  | AlexAccSkipPred (AlexAccPred user)

type AlexAccPred user = user -> AlexInput -> Int -> AlexInput -> Bool

-- -----------------------------------------------------------------------------
-- Predicates on a rule

alexAndPred p1 p2 user in1 len in2
  = p1 user in1 len in2 && p2 user in1 len in2

--alexPrevCharIsPred :: Char -> AlexAccPred _
alexPrevCharIs c _ input _ _ = c == alexInputPrevChar input

--alexPrevCharIsOneOfPred :: Array Char Bool -> AlexAccPred _
alexPrevCharIsOneOf arr _ input _ _ = arr ! alexInputPrevChar input

--alexRightContext :: Int -> AlexAccPred _
alexRightContext (sc) user _ _ input =
     case alex_scan_tkn user input (0) input sc AlexNone of
      (AlexNone, _) -> False
      _ -> True
    -- TODO: there's no need to find the longest
    -- match when checking the right context, just
    -- the first match will do.

-- used by wrappers
iUnbox (i) = i
{-# LINE 1 "wrappers.hs" #-}
-- -----------------------------------------------------------------------------
-- Alex wrapper code.
--
-- This code is in the PUBLIC DOMAIN; you may copy it freely and use
-- it for any purpose whatsoever.

-- -----------------------------------------------------------------------------
-- The input type

{-# LINE 43 "wrappers.hs" #-}


-- -----------------------------------------------------------------------------
-- Default monad

{-# LINE 125 "wrappers.hs" #-}


-- -----------------------------------------------------------------------------
-- Basic wrapper


type AlexInput = (Char,String)

alexGetChar (_, [])   = Nothing
alexGetChar (_, c:cs) = Just (c, (c,cs))

alexInputPrevChar (c,_) = c

-- alexScanTokens :: String -> [token]
alexScanTokens str = go ('\n',str)
  where go inp@(_,str) = case alexScan inp 0 of
         AlexEOF -> []
         AlexError _ -> error "lexical error"
         AlexSkip  inp' len     -> go inp'
         AlexToken inp' len act -> act (take len str) : go inp'


-- -----------------------------------------------------------------------------
-- Posn wrapper

-- Adds text positions to the basic model.

{-# LINE 162 "wrappers.hs" #-}


-- -----------------------------------------------------------------------------
-- GScan wrapper

-- For compatibility with previous versions of Alex, and because we can.

{-# LINE 180 "wrappers.hs" #-}

