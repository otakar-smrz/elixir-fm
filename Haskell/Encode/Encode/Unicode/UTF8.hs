-- |
--
-- Module      :  Encode.Unicode.UTF8
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- Modified version of John Meacham's <http://repetae.net/repos/jhc/UTF8.hs>


module Encode.Unicode.UTF8 (

        -- * Types

        UTF8 (..)

    ) where


import Encode

import Data.Bits


data UTF8 = UTF8 | UTF

    deriving (Enum, Show)


instance Encoding UTF8 where

    encode _ = map (toEnum . fromIntegral) . codespaceUTF . 
               map (fromIntegral . fromEnum)

    decode _ = map (toEnum . fromIntegral) . codespaceUCS .
               map (fromIntegral . fromEnum)


-- http://repetae.net/john/repos/jhc/UTF8.hs
-- rewritten by Otakar Smrz
--
-- toUTF :: String -> [Word8]
-- toUTF = map fromIntegral . codespaceUTF . map fromEnum
--
-- fromUTF :: [Word8] -> String
-- fromUTF = map toEnum . codespaceUCS . map fromIntegral


codespaceUTF :: [CSpace] -> [CSpace]
codespaceUTF [] = []
codespaceUTF (x:xs)
    | x <= 0x007F = x : codespaceUTF xs
    | x <= 0x07FF = (0xC0 .|. ((x `shift` (-6)) .&. 0x1F))
                    : (0x80 .|. (x .&. 0x3F))
                    : codespaceUTF xs
    | otherwise   = (0xE0 .|. ((x `shift` (-12)) .&. 0x0F))
                    : (0x80 .|. ((x `shift` (-6)) .&. 0x3F))
                    : (0x80 .|. (x .&. 0x3F))
                    : codespaceUTF xs


codespaceUCS :: [CSpace] -> [CSpace]
codespaceUCS [] = []
codespaceUCS (x:xs)
    | x <= 0x7F = x : codespaceUCS xs
    | x <= 0xBF = error ("codespaceUCS: illegal character byte " ++ show x)
    | x <= 0xDF = doubleByte x xs
    | x <= 0xEF = tripleByte x xs
    | otherwise = error ("codespaceUCS: illegal character byte " ++ show x)

doubleByte x1 (x2:xs) = (((x1 .&. 0x1F) `shift` 6)
                      .|. (x2 .&. 0x3F))
                      : codespaceUCS xs
doubleByte x _ = error ("codespaceUCS: illegal 2-byte sequence " ++ show x)

tripleByte x1 (x2:x3:xs) = (((x1 .&. 0x0F) `shift` 12)
                           .|. ((x2 .&. 0x3F) `shift` 6)
                           .|. (x3 .&. 0x3F))
                           : codespaceUCS xs
tripleByte x _ = error ("codespaceUCS: illegal 3-byte sequence " ++ show x)
