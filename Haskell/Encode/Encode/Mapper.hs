-- |
--
-- Module      :  Encode.Mapper
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- The Haskell version of /Encode::Mapper/ originally written in Perl:
-- <http://search.cpan.org/dist/Encode-Mapper/>
--
-- "Encode.Arabic.ArabTeX"
-- "Encode.Arabic.ArabTeX.ZDMG"


module Encode.Mapper (

        -- * Modules

        module PureFP.Parsers.Parser,

        -- * Types

        Mapper, Quit,

        -- * Functions

        parseLongest, parseLongestWith,

        parseLongestCheck, parseLongestCheckWith,

        parseLongestWide, parseLongestWideWith,
        parseWide, unParseWide, initPW, lastPW,

        parseLongestDeep, parseLongestDeepWith,
        parseDeep, unParseDeep, initPD, lastPD,

        -- * Operators

        (|:|), (|-|), (|.|), (|+|),

        others,

        -- * Extensions

        some, anySymbol, (<->), (<.>)

    ) where


import PureFP.OrdMap

import PureFP.Parsers.Parser

import Control.Applicative hiding (many, some)

import Control.Monad


data Next m s a = Only (m s a)
                | Else (m s a) (s -> Maybe a)


perhaps :: Maybe a -> Maybe a -> Maybe a
perhaps x y = case x of Nothing -> y
                        _       -> x

infixr 2 `perhaps`


others :: Ord s => Mapper s a -> (s -> Maybe (Mapper s a)) -> Mapper s a

others (FMap p m) f = others (unfoldWith p m) f
others (Node q n) f = Node q (others' n f)
    where
        others' (Only m)   f = Else (mapMapWithKey othersPerhaps m) f
        others' (Else m e) f = Else (mapMapWithKey othersPerhaps m)
                                    (\ s -> e s `perhaps` f s)

        othersPerhaps k q = let r = unfoldTrie q in case r of

                        Node [] _ -> let s = f k in case s of

                                Just t  -> r <+> t
                                Nothing -> r

                        _         -> r
    {-
        others' (Only m)   f = Else m f
        others' (Else m e) f = Else m (\ s -> e s `perhaps` f s)
    -}

infixl 2 `others`


instance OrdMap m => OrdMap (Next m) where

    emptyMap = Only emptyMap

    (|->) s a = Only (s |-> a)

    isEmptyMap (Only m)   = isEmptyMap m
    isEmptyMap (Else _ _) = False

    (?) (Only m)   s = (?) m s
    (?) (Else m f) s = (?) m s `perhaps` f s

    mergeWith f (Only x)   (Only y)   = Only (mergeWith f x y)
    mergeWith f (Only x)   (Else y r) = Else (mergeWith f x y) r
    mergeWith f (Else x l) (Only y)   = Else (mergeWith f x y) l
    mergeWith f (Else x l) (Else y r) = Else (mergeWith f x y) (\ s ->

                case l s of Nothing -> r s
                            Just p  -> case r s of Nothing -> Just p
                                                   Just q  -> Just (f p q))

    assocs (Only m)   = assocs m
    assocs (Else m _) = assocs m

    ordMap xs = Only (ordMap xs)

    mapMap f (Only m)   = Only (mapMap f m)
    mapMap f (Else m e) = Else (mapMap f m) (fmap f . e)


{-
  mergeWith join (Map xss _) (Map yss _) = Map xyss (makeTree xyss)
    where xyss          = merge xss yss
          merge []  yss = yss
          merge xss []  = xss
          merge xss@(x@(s,x'):xss') yss@(y@(t,y'):yss')
                = case compare s t of
                    LT -> x : merge xss' yss
                    GT -> y : merge xss  yss'
                    EQ -> (s, join x' y') : merge xss' yss'
-}


data Mapper s a = Node [a] (Next Map s (Mapper s a))
                             -- (Map s (Mapper s a))
                | forall b .
                  FMap (b -> a) (Mapper s b)


type Quit s a = ([s], a)

returnQuit :: [s] -> a -> Quit s a
returnQuit s a = (s, a)

justQuit :: Quit s a -> a
justQuit (s, a) = a

skipQuit :: Quit s a -> [s]
skipQuit (s, a) = s


infix  4 |-|
infix  3 |:|, |.|
infixl 2 |+|

(|:|) :: InputSymbol s => (a -> Mapper s (Quit s a)) -> a -> Mapper s (Quit s a)
(|:|) x y = x y

(|-|) :: InputSymbol s => [s] -> [s] -> a -> Mapper s (Quit s a)
(|-|) x y z = syms x >> Node [returnQuit y z] emptyMap
        {-
              if length x > length y || length y == 0
                then syms x >> Node [returnQuit y z] emptyMap
                else error "Length requirement violated"
        -}

(|.|) :: InputSymbol s => [s] -> a -> Mapper s (Quit s a)
(|.|) x y = x |-| [] |:| y

(|+|) :: InputSymbol s => Mapper s a -> Mapper s a -> Mapper s a
(|+|) = (<+>)


anySymbol :: (Monoid' m, Symbol m a) => [a] -> m a
anySymbol = anyof . map sym

some :: (Monoid' m, Sequence m) => m a -> m [a]
some p = p <:> many p


infixl 5 <->, <.>

(<->) :: (Monoid' m, Sequence m) => m a -> b -> m ([c], b)
(<->) x y = x <.> return ([], y)

(<.>) :: (Monoid' m, Sequence m) => m a -> m b -> m b
(<.>) = (/>)

--------------------------------------------------
-- the ambiguous extended trie from section 4.3.4


unfoldWith :: Ord s => (a -> b) -> Mapper s a -> Mapper s b
unfoldWith f (FMap g p)     = unfoldWith (f . g) p
unfoldWith f (Node as pmap) = Node (map f as) (mapMap (FMap f) pmap)


unfoldTrie :: Ord s => Mapper s a -> Mapper s a
unfoldTrie (FMap g p) = unfoldWith g p
unfoldTrie node       = node


instance Ord s => Monoid' (Mapper s) where
  zero                          = Node [] emptyMap

  FMap f p     <+> q            = unfoldWith f p <+> q
  p            <+> FMap f q     = p <+> unfoldWith f q
  Node as pmap <+> Node bs qmap = Node (as ++ bs) (mergeWith (<+>) pmap qmap)

{-
  (<+>) p q = Node (as ++ bs) (mergeWith (<+>) pmap qmap)
    where Node as pmap = unfoldTrie p
          Node bs qmap = unfoldTrie q
-}


instance Ord s => Applicative (Mapper s) where
  pure a = Node [a] emptyMap
  (<*>)  = ap


instance Ord s => Monad (Mapper s) where
  return             = pure

  FMap f p     >>= k = unfoldWith f p >>= k
  Node as pmap >>= k = foldr (<+>) (Node [] (mapMap (>>= k) pmap)) (map k as)

{-
  t >>= k            = foldr (<+>) (Node [] (mapMap (>>= k) pmap)) (map k as)
    where Node as pmap = unfoldTrie t
-}


instance Ord s => Functor (Mapper s) where
  fmap = FMap


instance Ord s => Sequence (Mapper s)


instance InputSymbol s => Symbol (Mapper s) s where
  sym s = Node [] (s |-> return s)
  sat p = anyof (map sym (filter p symbols))


instance Ord s => Parser (Mapper s) s where

  -- parse = error "Mapper: parse is not implemented"
  --
  -- parse   implemented by Otakar Smrz

  parse     p inp = parse'     p inp id
  parseFull p inp = parseFull' p inp id

parse' :: Ord s => Mapper s a -> [s] -> (a -> b) -> [([s], b)]
parse' (FMap f p)    inp      k = parse' p inp (k . f)
parse' (Node [] pmap) []      k = []
parse' (Node [] pmap) (s:inp) k = case pmap ? s of
                                   Just p  -> parse' p inp k
                                   Nothing -> []
parse' (Node xs pmap) inp     k = foldr ( (:) . (,) inp . k )
                                       (parse' (Node [] pmap) inp k) xs

parseFull' :: Ord s => Mapper s a -> [s] -> (a -> b) -> [b]
parseFull' (FMap f p)    inp     k = parseFull' p inp (k . f)
parseFull' (Node xs _)   []      k = map k xs
parseFull' (Node _ pmap) (s:inp) k = case pmap ? s of
                                       Just p  -> parseFull' p inp k
                                       Nothing -> []


data ParseWide s a = PW Int
                        ([a] -> [a])
                        (Mapper s (Quit s a))
                        [ParseWide s a]


initPW :: Ord s => Mapper s (Quit s a) -> ([a] -> [a]) -> ParseWide s a

initPW m h = PW 0 h m []


lastPW :: Ord s => [ParseWide s a] -> ParseWide s a -> [ParseWide s a]

lastPW [] p = [p]
lastPW w  _ = w

--lastPW  w  p = [ PW l h f c (lastPW' s p) | (PW l h f c s) <- w ]
--lastPW' [] p = [error "Try w or what?"]
--lastPW' w  p = [ PW l h f c (lastPW' s p) | (PW l h f c s) <- w ]


parseWide :: Ord s => Mapper s (Quit s a) -> [ParseWide s a] -> [s]
             -> [ParseWide s a]

parseWide m = foldl (\ w y -> concat [ parsePW m p y | p <- w ])


parsePW :: Ord s => Mapper s (Quit s a) -> ParseWide s a -> s
           -> [ParseWide s a]

parsePW m (PW l h c s) y = let Node r k = unfoldTrie c
                               n = l + 1

    in case k ? y of

        Just q  -> let qc = unfoldTrie q

            in case qc of

            Node [] _ -> case r of

                []      -> case s of

                    []  -> [ PW n h qc [] ]
                    zs  -> [ PW n h qc
                                ( concat [ parsePW m z y | z <- zs ] ) ]

                xs      -> case l of

                    0   -> [ PW n h qc
                                [ initPW m (justQuit x :) | x <- xs ] ]
                    _   -> [ PW n h qc
                                ( concat [ parseWide m
                                                [initPW m (justQuit x :)]
                                                (skipQuit x ++ [y]) |
                                           x <- xs ] ) ]

            _          -> [ PW n h qc [] ]

        Nothing -> case l of

            0   -> case r of

                []      -> [ PW l h c s ]
                xs      -> [ initPW m (h . (justQuit x :)) | x <- xs ]

            _   -> case r of

                []      -> [ PW rn (h . rh) rc rs |
                             PW rn rh rc rs <- parseWide m
                                                    (lastPW s (initPW m id))
                                                    [y] ]
                xs      -> concat [ parseWide m
                                         [initPW m (h . (justQuit x :))]
                                         (skipQuit x ++ [y]) |
                                    x <- xs ]


unParseWide :: Ord s => Mapper s (Quit s a) -> [ParseWide s a] -> [[[a]]]

unParseWide m = concat . map (unParsePW m)


unParsePW :: Ord s => Mapper s (Quit s a) -> ParseWide s a -> [[[a]]]

unParsePW m (PW l h c s) = let Node r k = unfoldTrie c

    in case r of

                []      -> case s of

                    []      -> [[ h [] ]]
                    zs      -> [ h u : v | (u : v) <- unParseWide m zs ]
--                  zs      -> [ h u : v | z <- zs, (u:v) <- unParsePW m z ]

                xs      -> case l of

                    0   -> [[ h [] ]]

                    _   -> concat [ case skipQuit x of

                        []  -> [[ h [justQuit x] ]]
                        is  -> [ h [justQuit x] : u |
                                        u <- unParseWide m
                                             (parseWide m [initPW m id] is) ]

                           | x <- xs ]


parseLongestWide :: Ord s => Mapper s (Quit s a) -> [s] -> [a]

parseLongestWide = parseLongestWideWith (head . map concat)


parseLongestWideWith :: Ord s => ([[[a]]] -> [b]) -> Mapper s (Quit s a) -> [s] -> [b]

parseLongestWideWith f m i = f (unParseWide m (parseWide m [initPW m id] i))


data ParseDeep s a = PD Int
                        ([a] -> [a])
                        (Mapper s (Quit s a))
                        [s]
                        [ParseDeep s a]


initPD :: Ord s => Mapper s (Quit s a) -> ([a] -> [a]) -> ParseDeep s a

initPD m h = PD 0 h m [] []


lastPD :: Ord s => [ParseDeep s a] -> ParseDeep s a -> [ParseDeep s a]

lastPD [] p = [p]
lastPD w  _ = w
 -- [ PD l h f c i (lastPD s p) | (PD l h f c i s) <- w ]


parseDeep :: Ord s => Mapper s (Quit s a) -> [ParseDeep s a] -> [s] -> [ParseDeep s a]

parseDeep m = foldl (\ w y -> concat [ parsePD m p y | p <- w ])


parsePD :: Ord s => Mapper s (Quit s a) -> ParseDeep s a -> s -> [ParseDeep s a]

parsePD m (PD l h c i s) y = let Node r k = unfoldTrie c
                                 n = l + 1
    in case k ? y of

        Just q  -> let qc = unfoldTrie q

            in case qc of

            Node [] _ -> case r of

                []      -> case s of

                    []  -> [ PD n h qc [] [] ]
                    zs  -> [ PD n h qc (y : i) zs ]

                xs      -> case l of

                    0   -> [ PD n h qc []
                                [ initPD m (justQuit x :) | x <- xs ] ]
                    _   -> [ PD n h qc [y]
                                ( concat [ parseDeep m
                                                [initPD m (justQuit x :)]
                                                (skipQuit x) |
                                           x <- xs ] ) ]

            _          -> [ PD n h qc [] [] ]

        Nothing -> case l of

            0   -> case r of

                []      -> [ PD l h c i s ]
                xs      -> [ initPD m (h . (justQuit x :)) | x <- xs ]

            _   -> case r of

                []      -> [ PD rn (h . rh) rc ri rs |
                             PD rn rh rc ri rs <- parseDeep m
                                                    (lastPD s (initPD m id))
                                                    (reverse (y : i)) ]
                xs      -> concat [ parseDeep m
                                         [initPD m (h . (justQuit x :))]
                                         (skipQuit x ++ [y]) |
                                    x <- xs ]


unParseDeep :: Ord s => Mapper s (Quit s a) -> [ParseDeep s a] -> [[[a]]]

unParseDeep m = concat . map (unParsePD m)


unParsePD :: Ord s => Mapper s (Quit s a) -> ParseDeep s a -> [[[a]]]

unParsePD m (PD l h c i s) = let Node r k = unfoldTrie c

    in case r of

                []      -> case s of

                    []      -> [[ h [] ]]
                    zs      -> [ h u : v | (u : v) <- unParseDeep m
                                               (parseDeep m zs (reverse i)) ]

                xs      -> case l of

                    0   -> [[ h [] ]]

                    _   -> concat [ case skipQuit x of

                        []  -> [[ h [justQuit x] ]]
                        is  -> [ h [justQuit x] : u |
                                        u <- unParseDeep m
                                             (parseDeep m [initPD m id] is) ]

                           | x <- xs ]


parseLongestDeep :: Ord s => Mapper s (Quit s a) -> [s] -> [a]

parseLongestDeep = parseLongestDeepWith (head . map concat)


parseLongestDeepWith :: Ord s => ([[[a]]] -> [b]) -> Mapper s (Quit s a) -> [s] -> [b]

parseLongestDeepWith f m i = f (unParseDeep m (parseDeep m [initPD m id] i))



--parseLongest :: Ord s => Mapper s a -> [s] -> [a]
parseLongest :: (Ord s, Eq a, Show a) => Mapper s (Quit s a) -> [s] -> [a]

parseLongest = parseLongestWide
            -- parseLongestCheck


--parseLongestWith :: Ord s => ([[[a]]] -> [a]) -> Mapper s a -> [s] -> [a]
parseLongestWith :: (Ord s, Eq b, Show b) => ([[[a]]] -> [b]) -> Mapper s (Quit s a) -> [s] -> [b]

parseLongestWith = parseLongestWideWith
                -- parseLongestCheckWith


parseLongestCheck :: (Ord s, Eq a, Show a) => Mapper s (Quit s a) -> [s] -> [a]

parseLongestCheck = parseLongestCheckWith (head . map concat)


parseLongestCheckWith :: (Ord s, Eq b, Show b) => ([[[a]]] -> [b]) -> Mapper s (Quit s a) -> [s] -> [b]

parseLongestCheckWith f m i = let wide = parseLongestWideWith f m i
                                  deep = parseLongestDeepWith f m i
                              in if wide == deep
                                 then wide
                                 else error ("\n\t" ++ show wide ++
                                             "\n\t" ++ show deep)
