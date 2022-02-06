-- |
--
-- Module      :  Elixir.Resolve
-- Copyright   :  Otakar Smrz 2005-2013
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Resolve where


import Elixir.Data

import Elixir.Lexicon

import Elixir.Inflect

import Elixir.Derive

import Elixir.Compose

import Elixir.Pretty

import Encode.Arabic

import Data.Char

import Data.List

import qualified Data.Map as Map


newtype MorphoTrees a = MorphoTrees a   deriving (Show, Eq)

newtype MorphoLists a = MorphoLists a   deriving (Show, Eq)


instance Pretty [[[[Wrap Token]]]] => Pretty [[[[[Wrap Token]]]]] where

    pretty = vcat . map pretty


instance Pretty (MorphoTrees a) => Pretty [MorphoTrees a] where

    pretty = vcat . map pretty


instance Pretty (MorphoLists a) => Pretty [MorphoLists a] where

    pretty = vcat . map pretty


instance Pretty (String, [[[[Wrap Token]]]]) => Pretty [(String, [[[[Wrap Token]]]])] where

    pretty = vcat . map pretty


instance Pretty (String, MorphoTrees a) => Pretty [(String, MorphoTrees a)] where

    pretty = vcat . map pretty


instance Pretty (String, MorphoLists a) => Pretty [(String, MorphoLists a)] where

    pretty = vcat . map pretty


concise :: Show a => Entity a -> String

concise (Verb _ p i c _ _ _) = unwords ["Verb", show p, show i, show c]
concise (Noun l _ _)         = unwords ["Noun" , show l]
concise (Adj  l f)           = unwords ["Adj", show l, show f]
concise x                    = show x


instance (Eq a, Morphing a a, Forming a, Show a, Template a) => Pretty (Token a) where

    pretty x =  pretty t <> align (

                joinText [merge d m, show d, show m]

                <$$> joinText [merge r (morphs e), show r, show (morphs e)]
                <$$> (text . ('\t' :) . show) (reflex e)
                <$$> joinText [concise (entity e), show (lookupForm r e)]
                <$$> (text . ('\t' :) . show) i )

        where Token (Lexeme r e, i) (d, m) t = x


instance Pretty [Wrap Token] where

    pretty [] = empty

    pretty xs = text "\t" <> width (text (compose xs)) ( \ c' ->

                    hcat ( punctuate ( line <>
                           text "\t" <> fill c' empty )

                    [ unwraps (\ (Token (Lexeme r e, i) (d, m) t) ->

                      text "\t" <> pretty t <>
                      joinText [merge d m, show m, show d, show (morphs e), merge r (morphs e),
                                   show i, show (reflex e)]

                      ) y | y <- xs ] ) )


instance Pretty (MorphoTrees [Wrap Token]) where

    pretty (MorphoTrees [])       = text ":"

    pretty (MorphoTrees xs@(x:_)) = text ": " <> nest 2 ( align (

            ( unwraps (\ (Token (Lexeme r e, i) _ _) -> (fill 10 . text . show) i <> nest 10 (

                        (text . ('\t' :) . show) (reflex e)

                        <$$> joinText [concise (entity e), show (lookupForm r e)]
                        <$$> joinText [merge r (morphs e), show r, show (morphs e)] )) x )

            <$$> vcat [ unwraps (\ (Token _ (d, m) t) -> pretty t <>

                        joinText [merge d m, show d, show m]) y | y <- xs ] ) )


instance Pretty (MorphoLists [Wrap Token]) where

    pretty (MorphoLists x) = text ": " <> nest 2 ( align (

            text ("<" ++ compose x ++ ">")

            <$$> vcat [ pretty t <> joinText x | (x, t) <- y ] ) )

        where y = [ unwraps (\ (Token _ (d, m) t) -> ([merge d m, show d, show m], t)) y | y <- x ]


instance Pretty [Wrap Token] => Pretty [[Wrap Token]] where

    pretty = vcat . map pretty


instance Pretty (MorphoTrees [Wrap Token]) => Pretty (MorphoTrees [[Wrap Token]]) where

    pretty (MorphoTrees x) = text (":: <" ++ unwords z ++ ">") <> nest 1 (foldr ((<>) . (<>) line . pretty . MorphoTrees) empty x)

        where y = nub [ unwraps (uncurry merge . struct) z | y <- x, z <- y ]

              z = if length y > 3 then [head y] ++ [".."] ++ [last y] else y


instance Pretty (MorphoLists [Wrap Token]) => Pretty (MorphoLists [[Wrap Token]]) where

    pretty (MorphoLists [])       = nest 1 (text "::" <> line)

    pretty (MorphoLists xs@(x:_)) = nest 1 (text ":: " <> align ( vcat [

                unwraps (\ (Token (Lexeme r e, i) _ _) -> (fill 10 . text . show) i <> nest 10 (

                        (text . ('\t' :) . show) (reflex e)

                        <$$> joinText [concise (entity e), show (lookupForm r e)]
                        <$$> joinText [merge r (morphs e), show r, show (morphs e)] ) ) y | y <- x ] )

                <$$> vcat (map (pretty . MorphoLists) xs) )


instance Pretty [[Wrap Token]] => Pretty [[[Wrap Token]]] where

    pretty = vcat . map pretty


instance Pretty (MorphoTrees [[Wrap Token]]) => Pretty (MorphoTrees [[[Wrap Token]]]) where

    pretty (MorphoTrees x) = text ("::: " ++ unwords s) <> nest 1 (foldr ((<>) . (<>) (line <> line)) empty p)

        where p = map (pretty . MorphoTrees) x
              s = map (drop 3 . concat . take 1 . lines . show) p


instance Pretty (MorphoLists [[Wrap Token]]) => Pretty (MorphoLists [[[Wrap Token]]]) where

    pretty (MorphoLists x) = text ("::: " ++ unwords z) <> nest 1 (foldr ((<>) . (<>) (line <> line)) empty p)

        where p = map (pretty . MorphoLists) x
              s = (nub . concat) (map (map (drop 3) . filter (isPrefixOf " : <") . lines . show) p)
              z = if length s > 3 then [head s] ++ [".."] ++ [last s] else s


instance Pretty [[[Wrap Token]]] => Pretty [[[[Wrap Token]]]] where

    pretty [] = text "::::" <> line

    pretty x = text ("::" ++ unwords s) <> nest 1 (foldr (<>) empty p) <> line

        where p = map pretty x
              s = map (drop 1 . concat . take 1 . lines . show) p


instance Pretty (MorphoTrees [[[Wrap Token]]]) => Pretty (MorphoTrees [[[[Wrap Token]]]]) where

    pretty (MorphoTrees []) = text "::::" <> line

    pretty (MorphoTrees x) = text ("::" ++ unwords s) <> nest 1 (foldr ((<>) . (<>) (line <> line)) empty p) <> line

        where p = map (pretty . MorphoTrees) x
              s = map (drop 1 . concat . take 1 . lines . show) p


instance Pretty (MorphoLists [[[Wrap Token]]]) => Pretty (MorphoLists [[[[Wrap Token]]]]) where

    pretty (MorphoLists []) = text "::::" <> line

    pretty (MorphoLists x) = text ("::" ++ unwords s) <> nest 1 (foldr ((<>) . (<>) (line <> line)) empty p) <> line

        where p = map (pretty . MorphoLists) x
              s = map (drop 1 . concat . take 1 . lines . show) p


instance Pretty [[[Wrap Token]]] => Pretty (String, [[[[Wrap Token]]]]) where

    pretty (w, x) = text w <> align (vcat (map pretty x)) <> line


instance Pretty (MorphoTrees [[[Wrap Token]]]) => Pretty (String, MorphoTrees [[[[Wrap Token]]]]) where

    pretty (w, MorphoTrees x) = text (":::: " ++ w) <> nest 1 (foldr ((<>) . (<>) (line <> line)) empty p) <> line

        where p = map (pretty . MorphoTrees) x


instance Pretty (MorphoLists [[[Wrap Token]]]) => Pretty (String, MorphoLists [[[[Wrap Token]]]]) where

    pretty (w, MorphoLists x) = text (":::: " ++ w) <> nest 1 (foldr ((<>) . (<>) (line <> line)) empty p) <> line

        where p = map (pretty . MorphoLists) x


prune :: [[[a]]] -> [[[a]]]

prune = filter (not . any null)


clear :: [[[a]]] -> [[[a]]]

clear = filter (not . null) . map (filter (not . null))


morphotrees :: [[[[Wrap Token]]]] -> MorphoTrees [[[[Wrap Token]]]]

morphotrees = MorphoTrees . map (

                        map (   map (\ (_, x) -> let n = nub x in case n of

                                        [_] ->  n

                                        _   ->  unwraps (\ (Token (l@(Lexeme r e), i) _ _) -> [ w |

                                                        (t, y) <- inflect l ((expand . domain) e), z <- y,
                                                        let w = wrap (Token (l, i) z t), any (w ==) n ]

                                                ) (head x)) .

                                Map.toList . Map.fromListWith (++) .

                                map (\ x -> (unwraps (snd . lexeme) (head x), x))   ) .

                        (\ x -> if null x then [] else foldr (zipWith (:)) (repeat []) x) .

                        map (   map nub .

                                (\ x -> if null x then [] else foldr (zipWith (:)) (repeat []) x)   )   )


morpholists :: [[[[Wrap Token]]]] -> MorphoLists [[[[Wrap Token]]]]

morpholists = MorphoLists


harmonize :: [[[[Wrap Token]]]] -> [[[[Wrap Token]]]]

harmonize = filter (not . null) . map (map (map snd) . filter (not . null) .                            -- clear . map (map (map snd) .

            foldr (\ x y -> [ z | x' <- x, y' <- y,

                let z = [ z | x <- x',

                        let (t, m) = unwraps (\ x -> (tag x, uncurry merge (struct x))) x
                            f = map (fmap (\ (x, y) -> (convert x, y))) (harmony t m)
                            q = revert t,

                        (q', y) <- y',

                        z <- if null y then if null [ () | Nothing <- f ] then [] else [(Just ([q], m), [x])]

                                       else if null [ () | Just (x, p) <- f, Just ([x'], m') <- [q'], x' `elem` restrict x' x, p m' ]

                                                                          then [] else [(Just ([q], m), x : y)]
                                ] ]

            ) [[(Nothing, [])]])


class Fuzzy a => Resolve a where

    resolve :: a -> [(String, [[[[Wrap Token]]]])]

    resolveBy :: (String -> String -> Bool) -> ([a] -> [a] -> Bool) -> [[[a]]] -> [[[[[Wrap Token]]]]]

    tokenize :: a -> [[a]]

    normalize :: a -> a

    resolve = map ((,) "") . resolveBy (==) (==) . (\ x -> [[[x]]])


instance Resolve String where

 -- resolve = map harmonize . resolveBy alike (omitting alike omits) . map tokenize . words

    resolve x = [ (e, Map.findWithDefault (defaults e) e r) | e <- w ]

            where w = words x

                  z = (nub . filter (any isLetter)) w

                  r = (Map.fromList . zip z . map harmonize . resolveBy alike (omitting alike omits) . map tokenize) z


    resolveBy b q z = [ [ [ Map.findWithDefault [] x resolves | x <- p ] | p <- w ] | w <- z ]

            where u = (map units . nub . concat . concat) z

                  resolves = (Map.map reverse . Map.fromListWith (++)) [ s | (x, n) <- zip lexicon [1 ..],

                                        let r = unwraps (reduce . root) x,

                                        let i = [ v | v <- u, isSubsumed b assims r v ],

                                        not (null i), s <- unwraps (inflects i n) x ]

                  inflects y n (Nest r z) = [ z | (e, m) <- zip z [1 ..],

                                let x = (expand . domain) e,
                                let l = Lexeme r e,

                                z <- (Map.foldrWithKey (\ k x y -> (k, [foldl (flip ((:) . wrap)) [] x]) : y) []

                                  -- (Map.foldWithKey (\ k x y -> (k, [wrap (Tokens (reverse x))]) : y) []

                                    . Map.fromListWith (++))

                                    [ (concat d, [Token (l, (n, m)) i t]) | (t, h) <- inflect l x, i <- h,

                                       let u = (units . uncurry merge) i, d <- y, u `q` d ] ]


    tokenize = nub . tokens''' . normalize

        where tokens x = tokens'''' x ++ case reverse x of

{-
                    'a' : 't' : y               ->  [[reverse y ++ "Ta"]]
                    'u' : 't' : y               ->  [[reverse y ++ "Tu"]]

                    'i' : 't' : y               ->  tokens''''' y "i"
                    't' : y                     ->  tokens''''' y ""

                    'A' : y                     ->  [[reverse y ++ "Y"]]
-}

                    'U' : 'm' : 'u' : 't' : y   ->  [[reverse y ++ "tum"]]
                    'U' : 'm' : 't' : y         ->  [[reverse y ++ "tm"]]

{-
                    'U' : y                     ->  [[reverse y ++ "UW"]]
                    '"' : 'w' : y               ->  [[reverse y ++ "W"]]
                    'w' : y                     ->  [[reverse y ++ "W"]]
-}

                    _                           ->  []

              tokens''''' y z = case y of

                    'a' : '\'' : 'i' : 'm' : n       | not (null n) ->  [[reverse y ++ "T" ++ z], [reverse n, "mi'aT" ++ z]]
                    '\'' : 'i' : 'm' : n             | not (null n) ->  [[reverse y ++ "T" ++ z], [reverse n, "mi'T" ++ z]]

                    'a' : '\'' : 'I' : '_' : 'm' : n | not (null n) ->  [[reverse y ++ "T" ++ z], [reverse n, "m_I'aT" ++ z]]
                    '\'' : 'I' : '_' : 'm' : n       | not (null n) ->  [[reverse y ++ "T" ++ z], [reverse n, "m_I'T" ++ z]]

                    'a' : '\'' : 'm' : n             | not (null n) ->  [[reverse y ++ "T" ++ z], [reverse n, "m'aT" ++ z]]
                    '\'' : 'm' : n                   | not (null n) ->  [[reverse y ++ "T" ++ z], [reverse n, "m'T" ++ z]]

                    _                                               ->  [[reverse y ++ "T" ++ z]]

              tokens'''' x = case reverse x of

                    []                              ->  []

                    'N' : 'i' : 'T' : y             ->  tokens''''' y "iN"
                    'i' : 'T' : y                   ->  tokens''''' y "i"
                    'T' : y                         ->  tokens''''' y ""

                    _                               ->  [[x]]

              tokens''' x = tokens'' x ++ case x of

                    'w' : 'a' : '-' : y     ->  [ "wa" : y' | y' <- tokens'' y ]
                    'w' : 'a' : y           ->  [ "wa" : y' | y' <- tokens'' y ]
                    'w' : '-' : y           ->  [ "w"  : y' | y' <- tokens'' y ]
                    'w' : y                 ->  [ "w"  : y' | y' <- tokens'' y ]

                    'f' : 'a' : 'l' : '"' : '-' : y ->  [ "fa" : "li" : y' | y' <- tokens' y ]
                    'f' : 'a' : 'l' : '"' : y       ->  [ "fa" : "li" : y' | y' <- tokens' y ]
                    'f' : 'l' : '"' : '-' : y       ->  [ "f"  : "li" : y' | y' <- tokens' y ]
                    'f' : 'l' : '"' : y             ->  [ "f"  : "li" : y' | y' <- tokens' y ]

                    'f' : 'a' : '-' : y     ->  [ "fa" : y' | y' <- tokens'' y ]
                    'f' : 'a' : y           ->  [ "fa" : y' | y' <- tokens'' y ]
                    'f' : '-' : y           ->  [ "f"  : y' | y' <- tokens'' y ]
                    'f' : y                 ->  [ "f"  : y' | y' <- tokens'' y ]

                    '\'' : 'a' : '-' : y    ->  [ "'a" : y' | y' <- tokens'' y ]
                    '\'' : 'a' : y          ->  [ "'a" : y' | y' <- tokens'' y ]
                    '\'' : '-' : y          ->  [ "'a" : y' | y' <- tokens'' y ]
                    '\'' : y                ->  [ "'a" : y' | y' <- tokens'' y ]

                    _                       ->  []

              tokens'' x = tokens' x ++ case x of

                    'b' : 'i' : '-' : y     ->  [ "bi" : y' | y' <- tokens' y ]
                    'b' : 'i' : y           ->  [ "bi" : y' | y' <- tokens' y ]
                    'b' : '-' : y           ->  [ "b"  : y' | y' <- tokens' y ]
                    'b' : y                 ->  [ "b"  : y' | y' <- tokens' y ]

                    'l' : 'a' : 'w' : '-' : y   ->  [ "law" : y' | y' <- tokens' y ]
                    'l' : 'a' : 'w' : y         ->  [ "law" : y' | y' <- tokens' y ] ++
                                                    [ "la"  : y' | y' <- tokens' ('w' : y) ]
                    'l' : 'w' : '-' : y         ->  [ "lw"  : y' | y' <- tokens' y ]
                    'l' : 'w' : y               ->  [ "lw"  : y' | y' <- tokens' y ] ++
                                                    [ "l"   : y' | y' <- tokens' ('w' : y) ]

                    'l' : 'i' : '-' : y     ->  [ "li" : y' | y' <- tokens' y ]
                    'l' : 'i' : y           ->  [ "li" : y' | y' <- tokens' y ]
                    'l' : 'A' : '-' : y     ->  [ "lA" : y' | y' <- tokens' y ]
                    'l' : 'A' : y           ->  [ "lA" : y' | y' <- tokens' y ]
                    'l' : 'a' : '-' : y     ->  [ "la" : y' | y' <- tokens' y ]
                    'l' : 'a' : y           ->  [ "la" : y' | y' <- tokens' y ]
                    'l' : '-' : y           ->  [ "l"  : y' | y' <- tokens' y ]
                    'l' : y                 ->  [ "l"  : y' | y' <- tokens' y ]

                    's' : 'a' : '-' : y     ->  [ "sa" : y' | y' <- tokens' y ]
                    's' : 'a' : y           ->  [ "sa" : y' | y' <- tokens' y ]
                    's' : '-' : y           ->  [ "s"  : y' | y' <- tokens' y ]
                    's' : y                 ->  [ "s"  : y' | y' <- tokens' y ]

                    'k' : 'a' : '-' : y     ->  [ "ka" : y' | y' <- tokens' y ]
                    'k' : 'a' : y           ->  [ "ka" : y' | y' <- tokens' y ]
                    'k' : '-' : y           ->  [ "k"  : y' | y' <- tokens' y ]
                    'k' : y                 ->  [ "k"  : y' | y' <- tokens' y ]

                    't' : 'a' : '-' : y     ->  [ "ta" : y' | y' <- tokens' y ]
                    't' : 'a' : y           ->  [ "ta" : y' | y' <- tokens' y ]
                    't' : '-' : y           ->  [ "t"  : y' | y' <- tokens' y ]
                    't' : y                 ->  [ "t"  : y' | y' <- tokens' y ]

                    'm' : 'A' : '-' : y     ->  [ "mA" : y' | y' <- tokens' y ]
                    'm' : 'A' : y           ->  [ "mA" : y' | y' <- tokens' y ]

                    _                       ->  []

              tokens' x = tokens'''' x ++ case reverse x of

                    'u' : 'h' : y           ->  [ y' ++ ["hu"] | y' <- tokens (reverse y) ]
                    'i' : 'h' : y           ->  [ y' ++ ["hi"] | y' <- tokens (reverse y) ]
                    'A' : 'h' : y           ->  [ y' ++ ["hA"] | y' <- tokens (reverse y) ]
                    'h' : y                 ->  [ y' ++ ["h"]  | y' <- tokens (reverse y) ]

                    'm' : 'u' : 'h' : y         ->  [ y' ++ ["hum"]  | y' <- tokens (reverse y) ]
                    'm' : 'i' : 'h' : y         ->  [ y' ++ ["him"]  | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'u' : 'h' : y   ->  [ y' ++ ["humA"] | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'i' : 'h' : y   ->  [ y' ++ ["himA"] | y' <- tokens (reverse y) ]

                    'A' : 'm' : 'h' : y | y' `elem` ["ma", "m"]

                                            ->  [ [y', "hmA"] ] ++ [ [y' ++ "h", "mA"] ] ++ [ ["mA", "mA"] ]

                                        where y' = reverse y

                    'A' : 'm' : 'h' : y         ->  [ y' ++ ["hmA"]  | y' <- tokens (reverse y) ]
                    'm' : 'h' : y               ->  [ y' ++ ["hm"]   | y' <- tokens (reverse y) ]

                    'a' : 'n' : 'n' : 'u' : 'h' : y     ->  [ y' ++ ["hunna"] | y' <- tokens (reverse y) ]
                    'a' : 'n' : 'n' : 'i' : 'h' : y     ->  [ y' ++ ["hinna"] | y' <- tokens (reverse y) ]
                    'a' : 'n' : 'n' : 'h' : y           ->  [ y' ++ ["hnna"]  | y' <- tokens (reverse y) ]
                    'n' : 'n' : 'u' : 'h' : y           ->  [ y' ++ ["hunn"]  | y' <- tokens (reverse y) ]
                    'n' : 'n' : 'i' : 'h' : y           ->  [ y' ++ ["hinn"]  | y' <- tokens (reverse y) ]
                    'n' : 'n' : 'h' : y                 ->  [ y' ++ ["hnn"]   | y' <- tokens (reverse y) ]

                    'a' : 'k' : y           ->  [ y' ++ ["ka"] | y' <- tokens (reverse y) ]
                    'i' : 'k' : y           ->  [ y' ++ ["ki"] | y' <- tokens (reverse y) ]
                    'k' : y                 ->  [ y' ++ ["k"]  | y' <- tokens (reverse y) ]

                    'm' : 'u' : 'k' : y         ->  [ y' ++ ["kum"]  | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'u' : 'k' : y   ->  [ y' ++ ["kumA"] | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'k' : y         ->  [ y' ++ ["kmA"]  | y' <- tokens (reverse y) ]
                    'm' : 'k' : y               ->  [ y' ++ ["km"]   | y' <- tokens (reverse y) ]

                    'a' : 'n' : 'n' : 'u' : 'k' : y     ->  [ y' ++ ["kunna"] | y' <- tokens (reverse y) ]
                    'a' : 'n' : 'n' : 'k' : y           ->  [ y' ++ ["knna"]  | y' <- tokens (reverse y) ]
                    'n' : 'n' : 'u' : 'k' : y           ->  [ y' ++ ["kunn"]  | y' <- tokens (reverse y) ]
                    'n' : 'n' : 'k' : y                 ->  [ y' ++ ["knn"]   | y' <- tokens (reverse y) ]

                    'a' : 'y' : 'I' : y     ->  [ y' ++ ["ya"] | y' <- tokens (reverse ('U' : y)) ++
                                                                       tokens (reverse ('I' : y)) ]
                    'y' : 'I' : y           ->  [ y' ++ ["y"]  | y' <- tokens (reverse ('U' : y)) ++
                                                                       tokens (reverse ('I' : y)) ]
                    'a' : 'y' : y           ->  [ y' ++ ["ya"] | y' <- tokens (reverse y) ]
                    'y' : y                 ->  [ y' ++ ["y"]  | y' <- tokens (reverse y) ]

                    'I' : y | [ z | z <- y', z /= 'a' ] `elem` ["'b", "'_h", ".hm", "f"]

                                                ->  [ [y', "|I"] ] ++
                                                    [ [y' ++ w, "ya"] | w <- ["U", "I", "A"] ]

                                        where y' = reverse y

                    'I' : 'n' : y           ->  [ y' ++ ["|I"] | y' <- tokens (reverse ('n' : y)) ] ++
                                                [ y' ++ ["nI"] | y' <- tokens (reverse y) ]
                    'I' : y                 ->  [ y' ++ ["|I"] | y' <- tokens (reverse y) ]

                    'A' : 'l' : 'l' : y     ->  [ y' ++ ["lA"] | y' <- tokens (reverse ('l' : y)) ++
                                                                       tokens (reverse ('n' : y)) ]

                    'A' : 'l' : y           ->  [ y' ++ ["lA"] | y' <- tokens (reverse y) ]

                    'A' : 'm' : 'm' : y     ->  [ y' ++ ["mA"] | y' <- tokens (reverse ('m' : y)) ++
                                                                       tokens (reverse ('n' : y)) ]

                    'A' : 'm' : y           ->  [ y' ++ ["mA"] | y' <- tokens (reverse y) ]

                    'n' : 'a' : 'm' : 'm' : y   ->  [ y' ++ ["man"] | y' <- tokens (reverse ('m' : y)) ++
                                                                            tokens (reverse ('n' : y)) ]
                    'n' : 'm' : 'm' : y         ->  [ y' ++ ["mn"]  | y' <- tokens (reverse ('m' : y)) ++
                                                                            tokens (reverse ('n' : y)) ]

                    'n' : 'a' : 'm' : y     ->  [ y' ++ ["man"] | y' <- tokens (reverse y) ]
                    'n' : 'm' : y           ->  [ y' ++ ["mn"]  | y' <- tokens (reverse y) ]

                    'A' : 'n' : y           ->  [ y' ++ ["nA"] | y' <- tokens (reverse y) ]
                    'n' : y                 ->  [ y' ++ ["n"]  | y' <- tokens (reverse y) ]

                    _                       ->  []


    normalize x = case x of

                    'a' : 'a' : y       ->  'A' : normalize y
                    'i' : 'i' : y       ->  'I' : normalize y
                    'u' : 'u' : y       ->  'U' : normalize y

                    'j' : y             ->  '^' : 'g' : normalize y
                    'x' : y             ->  '_' : 'h' : normalize y

                    z : y               ->  z : normalize y
                    _                   ->  []


defaults :: String -> [[[[Wrap Token]]]]

defaults x@(c : _) | all ('\x0640' ==) x ||

                     isPunctuation c ||

                     isSymbol c       = [[[[wrap (Token (Lexeme "" ("" `grph` []), (0,1)) ("", morph x) (ParaGrph GrphG))]]]]

                   | isNumber c       = [[[[wrap (Token (Lexeme "" ("" `num` []),  (0,2)) ("", morph x) (ParaNum NumQ))]]]]

                   | otherwise        = []

defaults []                           = []


instance Resolve [UPoint] where

 -- resolve = map harmonize . resolveBy alike (omitting alike omits) . map (tokenize . decode UCS) . words . encode UCS

    resolve x = [ (e, Map.findWithDefault (defaults e) e r) | e <- w ]

            where w = (concat . map (groupBy category) . words . encode UCS) x

                  z = (nub . filter (any ('\x0640' /=)) . filter (any isArabic)) w

                  r = (Map.fromList . zip z . map harmonize . resolveBy alike (omitting alike omits) . map (tokenize . decode UCS)) z


    resolveBy b q z = [ [ [ Map.findWithDefault [] x resolves | x <- p ] | p <- w ] | w <- z ]

            where u = (map (\ x -> (units x, recode x)) . nub . concat . concat) z

                  c = decode TeX

                  resolves = (Map.map reverse . Map.fromListWith (++)) [ s | (x, n) <- zip lexicon [1 ..],

                                        let r = unwraps (reduce . root) x,

                                        let i = [ (v, w) | (v, w) <- u, isSubsumed b assims r w ],

                                        not (null i), s <- unwraps (inflects i n) x ]

                  inflects y n (Nest r z) = [ z | (e, m) <- zip z [1 ..],

                                let x = (expand . domain) e,
                                let l = Lexeme r e,

                                z <- (Map.foldrWithKey (\ k x y -> (k, [foldl (flip ((:) . wrap)) [] x]) : y) []

                                  -- (Map.foldWithKey (\ k x y -> (k, [wrap (Tokens (reverse x))]) : y) []

                                    . Map.fromListWith (++))

                                    [ (concat d, [Token (l, (n, m)) i t]) | (t, h) <- inflect l x, i <- h,

                                        let f = uncurry merge i, let v = units f, let u = (units . c) f,

                                        (d, w) <- y, isSubsumed (flip b) approx w v, u `q` d ] ]


    tokenize = map (map (decode Tim)) . nub . tokens''' . normalize' . encode Tim

        where tokens x = tokens'''' x ++ case reverse x of

                    'a' : 't' : y                       ->  [[reverse y ++ "pa"]]
                    'u' : 't' : y                       ->  [[reverse y ++ "pu"]]

                    'i' : 't' : y                       ->  tokens''''' y "i"
                    't' : y                             ->  tokens''''' y ""

                    'A' : y                             ->  [[reverse y ++ "OY"], [reverse y ++ "Y"]]
                    '|' : y                             ->  [[reverse y ++ "OY"]]

                    'w' : 'u' : 'm' : 'u' : 't' : y     ->  [[reverse y ++ "tum"]]
                    'w' : 'm' : 'u' : 't' : y           ->  [[reverse y ++ "tum"]]
                    'w' : 'u' : 'm' : 't' : y           ->  [[reverse y ++ "tm"]]
                    'w' : 'm' : 't' : y                 ->  [[reverse y ++ "tm"]]

                    'o' : 'w' : y                       ->  [[reverse y ++ "woA"]]
                    'w' : y                             ->  [[reverse y ++ "wA"]]

                    _                                   ->  []

              tokens''''' y z = case y of

                    'a' : '}' : 'i' : 'm' : n       | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "mi}ap" ++ z]]
                    'a' : '}' : 'm' : n             | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "m}ap" ++ z]]
                    '}' : 'i' : 'm' : n             | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "mi}p" ++ z]]
                    '}' : 'm' : n                   | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "m}p" ++ z]]

                    'a' : '}' : 'A' : 'i' : 'm' : n | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "miA}ap" ++ z]]
                    'a' : '}' : 'A' : 'm' : n       | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "mA}ap" ++ z]]
                    '}' : 'A' : 'i' : 'm' : n       | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "miA}p" ++ z]]
                    '}' : 'A' : 'm' : n             | not (null n)  ->  [[reverse y ++ "p" ++ z], [reverse n, "mA}p" ++ z]]

                    _                                               ->  [[reverse y ++ "p" ++ z]]

              tokens'''' x = case reverse x of

                    []                              ->  []

                    '-' : 'y' : []                  ->  []
                    '-' : 'w' : []                  ->  []

                    '-' : 'w' : y | length [ z | z <- y, z `notElem` "aiuo~" ] < 2  ->  []

                    'K' : 'p' : y                   ->  tokens''''' y "K"
                    'i' : 'p' : y                   ->  tokens''''' y "i"
                    'p' : y                         ->  tokens''''' y ""

                    '\'' : 'Y' : y                  ->  [[reverse y ++ "y'"], [reverse y ++ "}"]]

                    -- extend this rule to diacritized cases

                    _                               ->  [[x]]

              tokens''' x = tokens'' x ++ case x of

                    'w' : 'a' : y           ->  [ "wa" : y' | y' <- tokens'' y ]
                    'w' : y                 ->  [ "w"  : y' | y' <- tokens'' y ]

                    'f' : 'a' : 'l' : 'o' : y   ->  [ "fa" : "li" : y' | y' <- tokens' y ]
                    'f' : 'l' : 'o' : y         ->  [ "f"  : "li" : y' | y' <- tokens' y ]

                    'f' : 'a' : y           ->  [ "fa" : y' | y' <- tokens'' y ]
                    'f' : y                 ->  [ "f"  : y' | y' <- tokens'' y ]

                    'O' : 'a' : y           ->  [ "Oa" : y' | y' <- tokens'' y ]
                    'O' : y                 ->  [ "O"  : y' | y' <- tokens'' y ]

                    'A' : 'a' : y           ->  [ "Aa" : y' | y' <- tokens'' y ]
                    'A' : y                 ->  [ "A"  : y' | y' <- tokens'' y ]

                    _                       ->  []

              tokens'' x = tokens' x ++ case x of

                    'b' : 'i' : y           ->  [ "bi" : y' | y' <- tokens' y ]
                    'b' : y                 ->  [ "b"  : y' | y' <- tokens' y ]

                    'l' : 'a' : 'w' : 'o' : y   ->  [ "lawo" : y' | y' <- tokens' y ]
                    'l' : 'a' : 'w' : y         ->  [ "law"  : y' | y' <- tokens' y ] ++
                                                    [ "la"   : y' | y' <- tokens' ('w' : y) ]
                    'l' : 'w' : 'o' : y         ->  [ "lwo"  : y' | y' <- tokens' y ]
                    'l' : 'w' : y               ->  [ "lw"   : y' | y' <- tokens' y ] ++
                                                    [ "l"    : y' | y' <- tokens' ('w' : y) ]

                    'l' : 'a' : 'A' : y     ->  [ "laA" : y' | y' <- tokens' y ] ++
                                                [ "la"  : y' | y' <- tokens' ('A' : y) ]
                    'l' : 'A' : y           ->  [ "lA"  : y' | y' <- tokens' y ] ++
                                                [ "l"   : y' | y' <- tokens' ('A' : y) ]

                    'l' : 'i' : 'l' : y     ->  [ "li" : y' | y' <- tokens' ("l" ++ y) ++
                                                                    tokens' ("Al" ++ y) ++
                                                                    tokens' ("All" ++ y) ]
                    'l' : 'a' : 'l' : y     ->  [ "la" : y' | y' <- tokens' ("l" ++ y) ++
                                                                    tokens' ("Al" ++ y) ++
                                                                    tokens' ("All" ++ y) ]
                    'l' : 'l' : y           ->  [ "l"  : y' | y' <- tokens' ("l" ++ y) ++
                                                                    tokens' ("Al" ++ y) ++
                                                                    tokens' ("All" ++ y) ]

                    'l' : 'a' : y           ->  [ "la"  : y' | y' <- tokens' y ]
                    'l' : 'i' : y           ->  [ "li"  : y' | y' <- tokens' y ]
                    'l' : y                 ->  [ "l"   : y' | y' <- tokens' y ]

                    's' : 'a' : y           ->  [ "sa" : y' | y' <- tokens' y ]
                    's' : y                 ->  [ "s"  : y' | y' <- tokens' y ]

                    'k' : 'a' : y           ->  [ "ka" : y' | y' <- tokens' y ]
                    'k' : y                 ->  [ "k"  : y' | y' <- tokens' y ]

                    't' : 'a' : y           ->  [ "ta" : y' | y' <- tokens' y ]
                    't' : y                 ->  [ "t"  : y' | y' <- tokens' y ]

                    'm' : 'a' : 'A' : y     ->  [ "maA" : y' | y' <- tokens' y ]
                    'm' : 'A' : y           ->  [ "mA"  : y' | y' <- tokens' y ]

                    _                       ->  []

              tokens' x = tokens'''''' x ++ case reverse x of

                    'Y' : y                         ->  tokens'''''' (reverse y ++ "y")

                    -- extend this rule to diacritized cases

                    'y' : y                         ->  [[reverse y ++ "Y"]]

                    'h' : y                         ->  tokens''''' y ""

                    _                               ->  []

              tokens'''''' x = tokens'''' x ++ case reverse x of

                    'u' : 'h' : y           ->  [ y' ++ ["hu"]  | y' <- tokens (reverse y) ]
                    'i' : 'h' : y           ->  [ y' ++ ["hi"]  | y' <- tokens (reverse y) ]
                    'A' : 'a' : 'h' : y     ->  [ y' ++ ["haA"] | y' <- tokens (reverse y) ]
                    'A' : 'h' : y           ->  [ y' ++ ["hA"]  | y' <- tokens (reverse y) ++
                                                                        tokens (reverse y ++ "h-") ]
                    'h' : y                 ->  [ y' ++ ["h"]   | y' <- tokens (reverse y) ++
                                                                        tokens (reverse y ++ "h-") ]

                    'u' : '~' : 'h' : y         ->  [ y' ++ ["hu"]  | y' <- tokens (reverse y ++ "h-") ]
                    'i' : '~' : 'h' : y         ->  [ y' ++ ["hi"]  | y' <- tokens (reverse y ++ "h-") ]
                    'A' : 'a' : '~' : 'h' : y   ->  [ y' ++ ["haA"] | y' <- tokens (reverse y ++ "h-") ]
                    'A' : '~' : 'h' : y         ->  [ y' ++ ["hA"]  | y' <- tokens (reverse y ++ "h-") ]
                    '~' : 'h' : y               ->  [ y' ++ ["h"]   | y' <- tokens (reverse y ++ "h-") ]

                    'o' : 'm' : 'u' : 'h' : y           ->  [ y' ++ ["humo"]  | y' <- tokens (reverse y) ]
                    'o' : 'm' : 'i' : 'h' : y           ->  [ y' ++ ["himo"]  | y' <- tokens (reverse y) ]
                    'm' : 'u' : 'h' : y                 ->  [ y' ++ ["hum"]   | y' <- tokens (reverse y) ]
                    'm' : 'i' : 'h' : y                 ->  [ y' ++ ["him"]   | y' <- tokens (reverse y) ]
                    'A' : 'a' : 'm' : 'u' : 'h' : y     ->  [ y' ++ ["humaA"] | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'u' : 'h' : y           ->  [ y' ++ ["humA"]  | y' <- tokens (reverse y) ]
                    'A' : 'a' : 'm' : 'i' : 'h' : y     ->  [ y' ++ ["himaA"] | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'i' : 'h' : y           ->  [ y' ++ ["himA"]  | y' <- tokens (reverse y) ]

                    'o' : 'm' : 'u' : '~' : 'h' : y         ->  [ y' ++ ["humo"]  | y' <- tokens (reverse y ++ "h-") ]
                    'o' : 'm' : 'i' : '~' : 'h' : y         ->  [ y' ++ ["himo"]  | y' <- tokens (reverse y ++ "h-") ]
                    'm' : 'u' : '~' : 'h' : y               ->  [ y' ++ ["hum"]   | y' <- tokens (reverse y ++ "h-") ]
                    'm' : 'i' : '~' : 'h' : y               ->  [ y' ++ ["him"]   | y' <- tokens (reverse y ++ "h-") ]
                    'A' : 'a' : 'm' : 'u' : '~' : 'h' : y   ->  [ y' ++ ["humaA"] | y' <- tokens (reverse y ++ "h-") ]
                    'A' : 'm' : 'u' : '~' : 'h' : y         ->  [ y' ++ ["humA"]  | y' <- tokens (reverse y ++ "h-") ]
                    'A' : 'a' : 'm' : 'i' : '~' : 'h' : y   ->  [ y' ++ ["himaA"] | y' <- tokens (reverse y ++ "h-") ]
                    'A' : 'm' : 'i' : '~' : 'h' : y         ->  [ y' ++ ["himA"]  | y' <- tokens (reverse y ++ "h-") ]

                    'A' : 'a' : 'm' : 'o' : 'h' : y | y' `elem` ["ma", "m"]

                                                ->  [ [y' ++ w, "maA"] | w <- ["h-", "A-"] ]

                                        where y' = reverse y

                    'A' : 'm' : 'o' : 'h' : y | y' `elem` ["ma", "m"]

                                                ->  [ [y' ++ w, "mA"] | w <- ["h-", "A-"] ]

                                        where y' = reverse y

                    'A' : 'a' : 'm' : 'h' : y | y' `elem` ["ma", "m"]

                                                ->  [ [y', "hmaA"] ] ++ [ [y' ++ "h-", "hmaA"] ] ++
                                                    [ [y' ++ w, "maA"] | w <- ["h-", "A-"] ]

                                        where y' = reverse y

                    'A' : 'm' : 'h' : y | y' `elem` ["ma", "m"]

                                                ->  [ [y', "hmA"] ] ++ [ [y' ++ "h-", "hmA"] ] ++
                                                    [ [y' ++ w, "mA"] | w <- ["h-", "A-"] ]

                                        where y' = reverse y

                    -- review and fix hyphens in <h-> and <A-> above
                    -- tokenize <hmA> and <kmA> with respect to <mA>

                    'A' : 'a' : 'm' : 'h' : y           ->  [ y' ++ ["hmaA"]  | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]
                    'A' : 'm' : 'h' : y                 ->  [ y' ++ ["hmA"]   | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]
                    'o' : 'm' : 'h' : y                 ->  [ y' ++ ["hmo"]   | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]
                    'm' : 'h' : y                       ->  [ y' ++ ["hm"]    | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]

                    'A' : 'a' : 'm' : '~' : 'h' : y     ->  [ y' ++ ["hmaA"]  | y' <- tokens (reverse y ++ "h-") ]
                    'A' : 'm' : '~' : 'h' : y           ->  [ y' ++ ["hmA"]   | y' <- tokens (reverse y ++ "h-") ]
                    'o' : 'm' : '~' : 'h' : y           ->  [ y' ++ ["hmo"]   | y' <- tokens (reverse y ++ "h-") ]
                    'm' : '~' : 'h' : y                 ->  [ y' ++ ["hm"]    | y' <- tokens (reverse y ++ "h-") ]

                    'a' : '~' : 'n' : 'u' : 'h' : y     ->  [ y' ++ ["hun~a"] | y' <- tokens (reverse y) ]
                    'a' : '~' : 'n' : 'i' : 'h' : y     ->  [ y' ++ ["hin~a"] | y' <- tokens (reverse y) ]
                    'a' : '~' : 'n' : 'h' : y           ->  [ y' ++ ["hn~a"]  | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]
                    '~' : 'n' : 'u' : 'h' : y           ->  [ y' ++ ["hun~"]  | y' <- tokens (reverse y) ]
                    '~' : 'n' : 'i' : 'h' : y           ->  [ y' ++ ["hin~"]  | y' <- tokens (reverse y) ]
                    '~' : 'n' : 'h' : y                 ->  [ y' ++ ["hn~"]   | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]
                    'n' : 'h' : y                       ->  [ y' ++ ["hn"]    | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "h-") ]

                    'a' : '~' : 'n' : 'u' : '~' : 'h' : y   ->  [ y' ++ ["hun~a"] | y' <- tokens (reverse y ++ "h-") ]
                    'a' : '~' : 'n' : 'i' : '~' : 'h' : y   ->  [ y' ++ ["hin~a"] | y' <- tokens (reverse y ++ "h-") ]
                    'a' : '~' : 'n' : '~' : 'h' : y         ->  [ y' ++ ["hn~a"]  | y' <- tokens (reverse y ++ "h-") ]
                    '~' : 'n' : 'u' : '~' : 'h' : y         ->  [ y' ++ ["hun~"]  | y' <- tokens (reverse y ++ "h-") ]
                    '~' : 'n' : 'i' : '~' : 'h' : y         ->  [ y' ++ ["hin~"]  | y' <- tokens (reverse y ++ "h-") ]
                    '~' : 'n' : '~' : 'h' : y               ->  [ y' ++ ["hn~"]   | y' <- tokens (reverse y ++ "h-") ]
                    'n' : '~' : 'h' : y                     ->  [ y' ++ ["hn"]    | y' <- tokens (reverse y ++ "h-") ]

                    'a' : 'k' : y           ->  [ y' ++ ["ka"] | y' <- tokens (reverse y) ]
                    'i' : 'k' : y           ->  [ y' ++ ["ki"] | y' <- tokens (reverse y) ]
                    'k' : y                 ->  [ y' ++ ["k"]  | y' <- tokens (reverse y) ++
                                                                       tokens (reverse y ++ "k-") ]

                    'a' : '~' : 'k' : y     ->  [ y' ++ ["ka"] | y' <- tokens (reverse y ++ "k-") ]
                    'i' : '~' : 'k' : y     ->  [ y' ++ ["ki"] | y' <- tokens (reverse y ++ "k-") ]
                    '~' : 'k' : y           ->  [ y' ++ ["k"]  | y' <- tokens (reverse y ++ "k-") ]

                    'o' : 'm' : 'u' : 'k' : y           ->  [ y' ++ ["kumo"]  | y' <- tokens (reverse y) ]
                    'm' : 'u' : 'k' : y                 ->  [ y' ++ ["kum"]   | y' <- tokens (reverse y) ]
                    'A' : 'a' : 'm' : 'u' : 'k' : y     ->  [ y' ++ ["kumaA"] | y' <- tokens (reverse y) ]
                    'A' : 'm' : 'u' : 'k' : y           ->  [ y' ++ ["kumA"]  | y' <- tokens (reverse y) ]
                    'A' : 'a' : 'm' : 'k' : y           ->  [ y' ++ ["kmaA"]  | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]
                    'A' : 'm' : 'k' : y                 ->  [ y' ++ ["kmA"]   | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]
                    'o' : 'm' : 'k' : y                 ->  [ y' ++ ["kmo"]   | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]
                    'm' : 'k' : y                       ->  [ y' ++ ["km"]    | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]

                    'o' : 'm' : 'u' : '~' : 'k' : y         ->  [ y' ++ ["kumo"]  | y' <- tokens (reverse y ++ "k-") ]
                    'm' : 'u' : '~' : 'k' : y               ->  [ y' ++ ["kum"]   | y' <- tokens (reverse y ++ "k-") ]
                    'A' : 'a' : 'm' : 'u' : '~' : 'k' : y   ->  [ y' ++ ["kumaA"] | y' <- tokens (reverse y ++ "k-") ]
                    'A' : 'm' : 'u' : '~' : 'k' : y         ->  [ y' ++ ["kumA"]  | y' <- tokens (reverse y ++ "k-") ]
                    'A' : 'a' : 'm' : '~' : 'k' : y         ->  [ y' ++ ["kmaA"]  | y' <- tokens (reverse y ++ "k-") ]
                    'A' : 'm' : '~' : 'k' : y               ->  [ y' ++ ["kmA"]   | y' <- tokens (reverse y ++ "k-") ]
                    'o' : 'm' : '~' : 'k' : y               ->  [ y' ++ ["kmo"]   | y' <- tokens (reverse y ++ "k-") ]
                    'm' : '~' : 'k' : y                     ->  [ y' ++ ["km"]    | y' <- tokens (reverse y ++ "k-") ]

                    'a' : '~' : 'n' : 'u' : 'k' : y     ->  [ y' ++ ["kun~a"] | y' <- tokens (reverse y) ]
                    'a' : '~' : 'n' : 'k' : y           ->  [ y' ++ ["kn~a"]  | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]
                    '~' : 'n' : 'u' : 'k' : y           ->  [ y' ++ ["kun~"]  | y' <- tokens (reverse y) ]
                    '~' : 'n' : 'k' : y                 ->  [ y' ++ ["kn~"]   | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]
                    'n' : 'k' : y                       ->  [ y' ++ ["kn"]    | y' <- tokens (reverse y) ++
                                                                                      tokens (reverse y ++ "k-") ]

                    'a' : '~' : 'n' : 'u' : '~' : 'k' : y   ->  [ y' ++ ["kun~a"] | y' <- tokens (reverse y ++ "k-") ]
                    'a' : '~' : 'n' : '~' : 'k' : y         ->  [ y' ++ ["kn~a"]  | y' <- tokens (reverse y ++ "k-") ]
                    '~' : 'n' : 'u' : '~' : 'k' : y         ->  [ y' ++ ["kun~"]  | y' <- tokens (reverse y ++ "k-") ]
                    '~' : 'n' : '~' : 'k' : y               ->  [ y' ++ ["kn~"]   | y' <- tokens (reverse y ++ "k-") ]
                    'n' : '~' : 'k' : y                     ->  [ y' ++ ["kn"]    | y' <- tokens (reverse y ++ "k-") ]

                    'a' : '~' : 'y' : 'i' : y   ->  [ y' ++ ["ya"]  | y' <- tokens (reverse y ++ "uw-") ++
                                                                            tokens (reverse y ++ "iy-") ]
                    'a' : '~' : 'y' : y         ->  [ y' ++ ["ya"]  | y' <- tokens (reverse y ++ "w-") ++
                                                                            tokens (reverse y ++ "y-") ]
                    '~' : 'y' : 'i' : y         ->  [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "uw-") ++
                                                                            tokens (reverse y ++ "iy-") ]
                    '~' : 'y' : y               ->  [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "w-") ++
                                                                            tokens (reverse y ++ "y-") ]
                    'a' : 'y' : y               ->  [ y' ++ ["ya"]  | y' <- tokens (reverse y) ]

                    'y' : 'i' : '~' : 'n' : y   ->  [ y' ++ ["iy"]  | y' <- tokens (reverse y ++ "n~") ] ++
                                                    [ y' ++ ["niy"] | y' <- tokens (reverse y ++ "n-") ] ++
                                                    [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "n~uw-") ++
                                                                            tokens (reverse y ++ "n~iy-") ]
                    'y' : '~' : 'n' : y         ->  [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "n~") ] ++
                                                    [ y' ++ ["ny"]  | y' <- tokens (reverse y ++ "n-") ] ++
                                                    [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "n~w-") ++
                                                                            tokens (reverse y ++ "n~y-") ]
                    'y' : 'i' : 'n' : y         ->  [ y' ++ ["iy"]  | y' <- tokens (reverse y ++ "n") ] ++
                                                    [ y' ++ ["niy"] | y' <- tokens (reverse y) ++
                                                                            tokens (reverse y ++ "n-") ] ++
                                                    [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "nuw-") ++
                                                                            tokens (reverse y ++ "niy-") ]
                    'y' : 'n' : y               ->  [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "n") ] ++
                                                    [ y' ++ ["ny"]  | y' <- tokens (reverse y) ++
                                                                            tokens (reverse y ++ "n-") ] ++
                                                    [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "nw-") ++
                                                                            tokens (reverse y ++ "ny-") ]

                    'y' : 'i' : y | [ z | z <- y', z /= 'a' ] `elem` ["Ob", "Ab", "Ox", "Ax", "Hm", "f"]

                                                ->  [ [y', "iy"] ] ++
                                                    [ [y' ++ w, "ya"] | w <- ["uw-", "iy-", "aA"] ]

                                        where y' = reverse y

                    'y' : y       | [ z | z <- y', z /= 'a' ] `elem` ["Ob", "Ab", "Ox", "Ax", "Hm", "f"]

                                                ->  [ [y', "iy"] ] ++
                                                    [ [y' ++ w, "ya"] | w <- ["w-", "y-", "aA"] ]

                                        where y' = reverse y

                    'y' : 'i' : y               ->  [ y' ++ ["iy"]  | y' <- tokens (reverse y) ] ++
                                                    [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "uw-") ++
                                                                            tokens (reverse y ++ "iy-") ]
                    'y' : y                     ->  [ y' ++ ["y"]   | y' <- tokens (reverse y) ] ++
                                                    [ y' ++ ["y"]   | y' <- tokens (reverse y ++ "w-") ++
                                                                            tokens (reverse y ++ "y-") ]

                    'A' : 'a' : '~' : 'n' : y   ->  [ y' ++ ["naA"] | y' <- tokens (reverse y ++ "n-") ]
                    'A' : '~' : 'n' : y         ->  [ y' ++ ["nA"]  | y' <- tokens (reverse y ++ "n-") ]
                    'A' : 'a' : 'n' : y         ->  [ y' ++ ["naA"] | y' <- tokens (reverse y) ]
                    'A' : 'n' : y               ->  [ y' ++ ["nA"]  | y' <- tokens (reverse y) ++
                                                                            tokens (reverse y ++ "n-") ]

                    'A' : 'a' : '~' : 'l' : y   ->  [ y' ++ ["laA"] | y' <- tokens (reverse y ++ "l-") ++
                                                                            tokens (reverse y ++ "n-") ]
                    'A' : '~' : 'l' : y         ->  [ y' ++ ["lA"]  | y' <- tokens (reverse y ++ "l-") ++
                                                                            tokens (reverse y ++ "n-") ]
                    'A' : 'a' : 'l' : y         ->  [ y' ++ ["laA"] | y' <- tokens (reverse y) ]
                    'A' : 'l' : y               ->  [ y' ++ ["lA"]  | y' <- tokens (reverse y) ++
                                                                            tokens (reverse y ++ "l-") ++
                                                                            tokens (reverse y ++ "n-") ]

                    'A' : 'a' : '~' : 'm' : y   ->  [ y' ++ ["maA"] | y' <- tokens (reverse y ++ "m-") ++
                                                                            tokens (reverse y ++ "n-") ]
                    'A' : '~' : 'm' : y         ->  [ y' ++ ["mA"]  | y' <- tokens (reverse y ++ "m-") ++
                                                                            tokens (reverse y ++ "n-") ]
                    'A' : 'a' : 'm' : y         ->  [ y' ++ ["maA"] | y' <- tokens (reverse y) ]
                    'A' : 'm' : y               ->  [ y' ++ ["mA"]  | y' <- tokens (reverse y) ++
                                                                            tokens (reverse y ++ "m-") ++
                                                                            tokens (reverse y ++ "n-") ]

                    'n' : 'a' : '~' : 'm' : y   ->  [ y' ++ ["man"] | y' <- tokens (reverse y ++ "m-") ++
                                                                            tokens (reverse y ++ "n-") ]
                    'n' : '~' : 'm' : y         ->  [ y' ++ ["mn"]  | y' <- tokens (reverse y ++ "m-") ++
                                                                            tokens (reverse y ++ "n-") ]
                    'n' : 'a' : 'm' : y         ->  [ y' ++ ["man"] | y' <- tokens (reverse y) ]
                    'n' : 'm' : y               ->  [ y' ++ ["mn"]  | y' <- tokens (reverse y) ++
                                                                            tokens (reverse y ++ "m-") ++
                                                                            tokens (reverse y ++ "n-") ]

                    'o' : 'n' : 'a' : '~' : 'm' : y   ->  [ y' ++ ["mano"] | y' <- tokens (reverse y ++ "m-") ++
                                                                                   tokens (reverse y ++ "n-") ]
                    'o' : 'n' : '~' : 'm' : y         ->  [ y' ++ ["mno"]  | y' <- tokens (reverse y ++ "m-") ++
                                                                                   tokens (reverse y ++ "n-") ]
                    'o' : 'n' : 'a' : 'm' : y         ->  [ y' ++ ["mano"] | y' <- tokens (reverse y) ]
                    'o' : 'n' : 'm' : y               ->  [ y' ++ ["mno"]  | y' <- tokens (reverse y) ++
                                                                                   tokens (reverse y ++ "m-") ++
                                                                                   tokens (reverse y ++ "n-") ]

                    _                       ->  []


    normalize = decode Tim . normalize' . encode Tim


normalize' :: String -> String

normalize' x = case x of

                '_' : y                             ->  normalize' y

                'A' : z : '~' : y | z `elem` "Fa"   ->  '~' : z : 'A' : normalize' y
                'A' : '~' : z : y | z `elem` "Fa"   ->  '~' : z : 'A' : normalize' y
                'A' : '~' : y                       ->  '~' : 'A' : normalize' y

                'A' : 'F' : y                       ->  'F' : 'A' : normalize' y
                'Y' : 'F' : y                       ->  'F' : 'Y' : normalize' y

                'A' : 'a' : z : y | z /= 'l'        ->  'a' : 'A' : z : normalize' y

                'l' : 'A' : z : '~' : y | z `elem` "Fa"   ->  'l' : '~' : z : 'A' : normalize' y
                'l' : 'A' : 'a' : y                       ->  'l' : 'a' : 'A' : normalize' y

                z : '~' : y | z `elem` "FNKaui`"    ->  '~' : z : normalize' y

                z : y                               ->  z : normalize' y
                _                                   ->  []


resolveSub x = resolveBy (==) (\ x y -> any (isPrefixOf x) (tails y)) x


test = unlines ["wa-fI milaffi al-'adabi .tara.hat al-ma^gallaTu qa.dIyaTa al-lu.gaTi al-`arabIyaTi wa-al-'a_h.tAri allatI tuhaddiduhA.",
                "wa-yarY al-qA'imUna `alY al-milaffi 'anna mA tata`arra.du lahu al-lu.gaTu al-`arabIyaTu lahu 'ahdAfuN mu.haddadaTuN",
                "minhA 'ib`Adu al-`arabi `an lu.gatihim wa-muzA.hamaTu al-lu.gAti al-.garbIyaTi lahA wa-huwa mA ya`nI .du`fa a.s-.silaTi bihA",
                "wa-mu.hAwalaTu 'izA.haTi al-lu.gaTi al-fu.s.hY bi-kulli al-wasA'ili",
                "wa-'i.hlAli al-laha^gAti al-mu_htalifaTi fI al-bilAdi al-`arabIyaTi ma.hallahA."]
