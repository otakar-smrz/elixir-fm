{
    module Encode.Arabic.ArabTeX.Mappy where
}

%wrapper "basic"

$digit = 0-9            -- digits
$alpha = [a-zA-Z]       -- alphabetic characters

@sunny = "t" | "_t" | "d" | "_d" | "r" | "z" | "s" | "^s" |
         ".s" | ".d" | ".t" | ".z" | "l" | "n"


@moony = "'|" | "'a" | "'i" | "'w" | "'y" | "'A" | "'B" |
         "b" | "^g" | ".h" | "_h" | "`" | ".g" | "f" | "q" |
         "k" | "m" | "h" | "w" | "y"

@vowel = "a" | "i" | "u" | "A" | "I" | "U" | "_a" | "_i" | "_u"

tokens :-

--  $white+                           ;
--  "--".*                            ;
--  let                               { \s -> Let }
--  in                                { \s -> In }
--  $digit+                           { \s -> Int (read s) }
--  [\=\+\-\*\/\(\)]                  { \s -> Sym (head s) }
--  $alpha [$alpha $digit \_ \']*     { \s -> Var s }

    (@sunny | @moony) @vowel            { \s -> Var "two" }
    (@sunny | @moony) @vowel @sunny     { \s -> Var "three sunny" }
    (@sunny | @moony) @vowel @moony     { \s -> Var "three moony" }

{
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
}
