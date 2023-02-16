module Encode.Arabic.ArabTeX.Happy where

import Char

-- parser produced by Happy Version 1.15

data HappyAbsSyn t4 t5 t6 t7
    = HappyTerminal Token
    | HappyErrorToken Int
    | HappyAbsSyn4 t4
    | HappyAbsSyn5 t5
    | HappyAbsSyn6 t6
    | HappyAbsSyn7 t7

action_0 (8) = happyShift action_2
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (17) = happyShift action_9
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 _ = happyFail

action_1 (8) = happyShift action_2
action_1 _ = happyFail

action_2 (11) = happyShift action_15
action_2 _ = happyFail

action_3 (19) = happyAccept
action_3 _ = happyFail

action_4 (13) = happyShift action_13
action_4 (14) = happyShift action_14
action_4 _ = happyReduce_2

action_5 (15) = happyShift action_11
action_5 (16) = happyShift action_12
action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 _ = happyReduce_9

action_8 _ = happyReduce_10

action_9 (8) = happyShift action_2
action_9 (10) = happyShift action_7
action_9 (11) = happyShift action_8
action_9 (17) = happyShift action_9
action_9 (4) = happyGoto action_10
action_9 (5) = happyGoto action_4
action_9 (6) = happyGoto action_5
action_9 (7) = happyGoto action_6
action_9 _ = happyFail

action_10 (18) = happyShift action_21
action_10 _ = happyFail

action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (17) = happyShift action_9
action_11 (7) = happyGoto action_20
action_11 _ = happyFail

action_12 (10) = happyShift action_7
action_12 (11) = happyShift action_8
action_12 (17) = happyShift action_9
action_12 (7) = happyGoto action_19
action_12 _ = happyFail

action_13 (10) = happyShift action_7
action_13 (11) = happyShift action_8
action_13 (17) = happyShift action_9
action_13 (6) = happyGoto action_18
action_13 (7) = happyGoto action_6
action_13 _ = happyFail

action_14 (10) = happyShift action_7
action_14 (11) = happyShift action_8
action_14 (17) = happyShift action_9
action_14 (6) = happyGoto action_17
action_14 (7) = happyGoto action_6
action_14 _ = happyFail

action_15 (12) = happyShift action_16
action_15 _ = happyFail

action_16 (8) = happyShift action_2
action_16 (10) = happyShift action_7
action_16 (11) = happyShift action_8
action_16 (17) = happyShift action_9
action_16 (4) = happyGoto action_22
action_16 (5) = happyGoto action_4
action_16 (6) = happyGoto action_5
action_16 (7) = happyGoto action_6
action_16 _ = happyFail

action_17 (15) = happyShift action_11
action_17 (16) = happyShift action_12
action_17 _ = happyReduce_4

action_18 (15) = happyShift action_11
action_18 (16) = happyShift action_12
action_18 _ = happyReduce_3

action_19 _ = happyReduce_7

action_20 _ = happyReduce_6

action_21 _ = happyReduce_11

action_22 (9) = happyShift action_23
action_22 _ = happyFail

action_23 (8) = happyShift action_2
action_23 (10) = happyShift action_7
action_23 (11) = happyShift action_8
action_23 (17) = happyShift action_9
action_23 (4) = happyGoto action_24
action_23 (5) = happyGoto action_4
action_23 (6) = happyGoto action_5
action_23 (7) = happyGoto action_6
action_23 _ = happyFail

action_24 _ = happyReduce_1

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
    _ `HappyStk`
    (HappyAbsSyn4  happy_var_4) `HappyStk`
    _ `HappyStk`
    (HappyTerminal (TokenVar happy_var_2)) `HappyStk`
    _ `HappyStk`
    happyRest)
     = HappyAbsSyn4
         (Let happy_var_2 happy_var_4 happy_var_6
    ) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_1 4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
     =  HappyAbsSyn4
         (Exp1 happy_var_1
    )
happyReduction_2 _  = notHappyAtAll

happyReduce_3 = happySpecReduce_3 5 happyReduction_3
happyReduction_3 (HappyAbsSyn6  happy_var_3)
    _
    (HappyAbsSyn5  happy_var_1)
     =  HappyAbsSyn5
         (Plus happy_var_1 happy_var_3
    )
happyReduction_3 _ _ _  = notHappyAtAll

happyReduce_4 = happySpecReduce_3 5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_3)
    _
    (HappyAbsSyn5  happy_var_1)
     =  HappyAbsSyn5
         (Minus happy_var_1 happy_var_3
    )
happyReduction_4 _ _ _  = notHappyAtAll

happyReduce_5 = happySpecReduce_1 5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
     =  HappyAbsSyn5
         (Term happy_var_1
    )
happyReduction_5 _  = notHappyAtAll

happyReduce_6 = happySpecReduce_3 6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_3)
    _
    (HappyAbsSyn6  happy_var_1)
     =  HappyAbsSyn6
         (Times happy_var_1 happy_var_3
    )
happyReduction_6 _ _ _  = notHappyAtAll

happyReduce_7 = happySpecReduce_3 6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_3)
    _
    (HappyAbsSyn6  happy_var_1)
     =  HappyAbsSyn6
         (Div happy_var_1 happy_var_3
    )
happyReduction_7 _ _ _  = notHappyAtAll

happyReduce_8 = happySpecReduce_1 6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_1)
     =  HappyAbsSyn6
         (Factor happy_var_1
    )
happyReduction_8 _  = notHappyAtAll

happyReduce_9 = happySpecReduce_1 7 happyReduction_9
happyReduction_9 (HappyTerminal (TokenInt happy_var_1))
     =  HappyAbsSyn7
         (Int happy_var_1
    )
happyReduction_9 _  = notHappyAtAll

happyReduce_10 = happySpecReduce_1 7 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar happy_var_1))
     =  HappyAbsSyn7
         (Var happy_var_1
    )
happyReduction_10 _  = notHappyAtAll

happyReduce_11 = happySpecReduce_3 7 happyReduction_11
happyReduction_11 _
    (HappyAbsSyn4  happy_var_2)
    _
     =  HappyAbsSyn7
         (Brack happy_var_2
    )
happyReduction_11 _ _ _  = notHappyAtAll

happyNewToken action sts stk [] =
    action 19 19 (error "reading EOF!") (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
    let cont i = action i i tk (HappyState action) sts stk tks in
    case tk of {
    TokenLet -> cont 8;
    TokenIn -> cont 9;
    TokenInt happy_dollar_dollar -> cont 10;
    TokenVar happy_dollar_dollar -> cont 11;
    TokenEq -> cont 12;
    TokenPlus -> cont 13;
    TokenMinus -> cont 14;
    TokenTimes -> cont 15;
    TokenDiv -> cont 16;
    TokenOB -> cont 17;
    TokenCB -> cont 18;
    _ -> happyError' (tk:tks)
    }

happyError_ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [Token] -> HappyIdentity a
happyError' = HappyIdentity . happyError

calc tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq

happyError :: [Token] -> a
happyError _ = error "Parse error"

data Exp
    = Let String Exp Exp
    | Exp1 Exp1

data Exp1
    = Plus Exp1 Term
    | Minus Exp1 Term
    | Term Term

data Term
    = Times Term Factor
    | Div Term Factor
    | Factor Factor

data Factor
    = Int Int
    | Var String
    | Brack Exp


data Token
    = TokenLet
    | TokenIn
    | TokenInt Int
    | TokenVar String
    | TokenEq
    | TokenPlus
    | TokenMinus
    | TokenTimes
    | TokenDiv
    | TokenOB
    | TokenCB
    deriving Show

lexer :: String -> [Token]
lexer [] = []
lexer (c:cs)
    | isSpace c = lexer cs
    | isAlpha c = lexVar (c:cs)
    | isDigit c = lexNum (c:cs)
lexer ('=':cs) = TokenEq : lexer cs
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('-':cs) = TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs
lexer ('(':cs) = TokenOB : lexer cs
lexer (')':cs) = TokenCB : lexer cs

lexNum cs = TokenInt (read num) : lexer rest
    where (num,rest) = span isDigit cs

lexVar cs =
   case span isAlpha cs of
      ("let",rest) -> TokenLet : lexer rest
      ("in",rest)  -> TokenIn : lexer rest
      (var,rest)   -> TokenVar var : lexer rest

--main = getContents >>= print . calc . lexer


--stmts : stmts ';' stmt      { $3 : $1 }
--    | stmts ';'             { $1 }
--    | stmt                  { [$1] }
--    | {- empty -}           { [] }
{-# LINE 1 "GenericTemplate.hs" #-}
-- $Id$

{-# LINE 15 "GenericTemplate.hs" #-}





















































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
    happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) =
     (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 154 "GenericTemplate.hs" #-}


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
     sts1@(((st1@(HappyState (action))):(_))) ->
            let r = fn stk in  -- it doesn't hurt to always seq here...
            happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@(((st1@(HappyState (action))):(_))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail  (1) tk old_st _ stk =
--  trace "failing" $
        happyError_ tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts))
                        (saved_tok `HappyStk` _ `HappyStk` stk) =
--  trace ("discarding state, depth " ++ show (length stk))  $
    action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
    action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits
--  happySeq = happyDoSeq
-- otherwise it emits
--  happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
