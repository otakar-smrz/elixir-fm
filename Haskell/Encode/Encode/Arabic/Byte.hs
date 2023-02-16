-- |
--
-- Module      :  Encode.Arabic.Byte
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- /Encode::Byte/ in Perl:
-- <http://search.cpan.org/dist/Encode/Byte/Byte.pm>
--
-- <http://search.cpan.org/dist/Encode/lib/Encode/Supported.pod>
--
-- <http://129.69.218.213/arabtex/doc/arabdoc.pdf>


module Encode.Arabic.Byte (

        -- * Types

        WinArabic (..),

        ISOArabic (..),

        MacArabic (..), MacFarsi (..),

        DOSArabic (..), DOSFarsi (..),

        ASMO449 (..),

        ISIRI3342 (..)

    ) where


import Encode

import PureFP.OrdMap


data WinArabic = WinArabic | CP1256 | Windows_1256

    deriving (Enum, Show)

instance Encoding WinArabic where

    encode _ = recode (recoder winArabic nonUPoint)
    decode _ = recode (recoder nonUPoint winArabic)


data ISOArabic = ISOArabic | ISO_8859_6

    deriving (Enum, Show)

instance Encoding ISOArabic where

    encode _ = recode (recoder isoArabic nonUPoint)
    decode _ = recode (recoder nonUPoint isoArabic)


data MacArabic = MacArabic

    deriving (Enum, Show)

instance Encoding MacArabic where

    encode _ = recode (recoder macArabic nonUPoint)
    decode _ = recode (recoder nonUPoint macArabic)


data MacFarsi = MacFarsi

    deriving (Enum, Show)

instance Encoding MacFarsi where

    encode _ = recode (recoder macFarsi nonUPoint)
    decode _ = recode (recoder nonUPoint macFarsi)


data DOSArabic = DOSArabic | CP864

    deriving (Enum, Show)

instance Encoding DOSArabic where

    encode _ = recode (recoder dosArabic nonUPoint)
    decode _ = recode (recoder nonUPoint dosArabic)


data DOSFarsi = DOSFarsi | CP1006

    deriving (Enum, Show)

instance Encoding DOSFarsi where

    encode _ = recode (recoder dosFarsi nonUPoint)
    decode _ = recode (recoder nonUPoint dosFarsi)


data ASMO449 = ASMO449

    deriving (Enum, Show)

instance Encoding ASMO449 where

    encode _ = foldr shadda []

        where shadda x (y:ys) | fromEnum x == 0x0651 && f > 0x6A && f < 0x71

                              = toEnum (f + 0x08) : ys

                                where f = fromEnum y

              shadda x ys = recode (recoder asmo449 lowerCode) [x] ++ ys

    decode _ = foldr shadda []

        where shadda x ys | f > 0x72 && f < 0x79

                          = recode (recoder lowerCode asmo449)
                                     (map toEnum [0x71, f - 0x08]) ++ ys

                            where f = fromEnum x

              shadda x ys = recode (recoder lowerCode asmo449) [x] ++ ys


data ISIRI3342 = ISIRI3342

    deriving (Enum, Show)

instance Encoding ISIRI3342 where

    encode _ = recode (recoder isiri3342 upperCode)
    decode _ = recode (recoder upperCode isiri3342)


recode :: (Eq a, Enum a, Enum b, Ord a, OrdMap m) => m a b -> [a] -> [b]

recode xry xs = [ lookupWith ((toEnum . fromEnum) x) xry x | x <- xs ]


recoder :: Ord a => [a] -> [b] -> Map a b

recoder xs ys = makeMapWith const (zip xs ys)


nonUPoint :: [Char]

nonUPoint = map toEnum [0x20 .. 0xFF]


lowerCode :: [Char]

lowerCode = map toEnum [0x20 .. 0x7F]


upperCode :: [Char]

upperCode = map toEnum [0xA0 .. 0xFF]


winArabic :: [UPoint]

winArabic = map toEnum

       [0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D, 0x002E, 0x002F,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039, 0x003A, 0x003B, 0x003C, 0x003D, 0x003E, 0x003F,
        0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
        0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
        0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
        0x0058, 0x0059, 0x005A, 0x005B, 0x005C, 0x005D, 0x005E, 0x005F,
        0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
        0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F,
        0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
        0x0078, 0x0079, 0x007A, 0x007B, 0x007C, 0x007D, 0x007E, 0x007F,
        0x20AC, 0x067E, 0x201A, 0x0192, 0x201E, 0x2026, 0x2020, 0x2021,
        0x02C6, 0x2030, 0x0679, 0x2039, 0x0152, 0x0686, 0x0698, 0x0688,
        0x06AF, 0x2018, 0x2019, 0x201C, 0x201D, 0x2022, 0x2013, 0x2014,
        0x06A9, 0x2122, 0x0691, 0x203A, 0x0153, 0x200C, 0x200D, 0x06BA,
        0x00A0, 0x060C, 0x00A2, 0x00A3, 0x00A4, 0x00A5, 0x00A6, 0x00A7,
        0x00A8, 0x00A9, 0x06BE, 0x00AB, 0x00AC, 0x00AD, 0x00AE, 0x00AF,
        0x00B0, 0x00B1, 0x00B2, 0x00B3, 0x00B4, 0x00B5, 0x00B6, 0x00B7,
        0x00B8, 0x00B9, 0x061B, 0x00BB, 0x00BC, 0x00BD, 0x00BE, 0x061F,
        0x06C1, 0x0621, 0x0622, 0x0623, 0x0624, 0x0625, 0x0626, 0x0627,
        0x0628, 0x0629, 0x062A, 0x062B, 0x062C, 0x062D, 0x062E, 0x062F,
        0x0630, 0x0631, 0x0632, 0x0633, 0x0634, 0x0635, 0x0636, 0x00D7,
        0x0637, 0x0638, 0x0639, 0x063A, 0x0640, 0x0641, 0x0642, 0x0643,
        0x00E0, 0x0644, 0x00E2, 0x0645, 0x0646, 0x0647, 0x0648, 0x00E7,
        0x00E8, 0x00E9, 0x00EA, 0x00EB, 0x0649, 0x064A, 0x00EE, 0x00EF,
        0x064B, 0x064C, 0x064D, 0x064E, 0x00F4, 0x064F, 0x0650, 0x00F7,
        0x0651, 0x00F9, 0x0652, 0x00FB, 0x00FC, 0x200E, 0x200F, 0x06D2]


isoArabic :: [UPoint]

isoArabic = map toEnum

       [0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D, 0x002E, 0x002F,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039, 0x003A, 0x003B, 0x003C, 0x003D, 0x003E, 0x003F,
        0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
        0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
        0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
        0x0058, 0x0059, 0x005A, 0x005B, 0x005C, 0x005D, 0x005E, 0x005F,
        0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
        0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F,
        0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
        0x0078, 0x0079, 0x007A, 0x007B, 0x007C, 0x007D, 0x007E, 0x007F,
        0x0080, 0x0081, 0x0082, 0x0083, 0x0084, 0x0085, 0x0086, 0x0087,
        0x0088, 0x0089, 0x008A, 0x008B, 0x008C, 0x008D, 0x008E, 0x008F,
        0x0090, 0x0091, 0x0092, 0x0093, 0x0094, 0x0095, 0x0096, 0x0097,
        0x0098, 0x0099, 0x009A, 0x009B, 0x009C, 0x009D, 0x009E, 0x009F,
        0x00A0, 0xFFFD, 0xFFFD, 0xFFFD, 0x00A4, 0xFFFD, 0xFFFD, 0xFFFD,
        0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0x060C, 0x00AD, 0xFFFD, 0xFFFD,
        0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD,
        0xFFFD, 0xFFFD, 0xFFFD, 0x061B, 0xFFFD, 0xFFFD, 0xFFFD, 0x061F,
        0xFFFD, 0x0621, 0x0622, 0x0623, 0x0624, 0x0625, 0x0626, 0x0627,
        0x0628, 0x0629, 0x062A, 0x062B, 0x062C, 0x062D, 0x062E, 0x062F,
        0x0630, 0x0631, 0x0632, 0x0633, 0x0634, 0x0635, 0x0636, 0x0637,
        0x0638, 0x0639, 0x063A, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD,
        0x0640, 0x0641, 0x0642, 0x0643, 0x0644, 0x0645, 0x0646, 0x0647,
        0x0648, 0x0649, 0x064A, 0x064B, 0x064C, 0x064D, 0x064E, 0x064F,
        0x0650, 0x0651, 0x0652, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD,
        0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD]


macArabic :: [UPoint]

macArabic = map toEnum

       [0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0x0025, 0xFFFD, 0xFFFD,
        0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0x002C, 0xFFFD, 0xFFFD, 0xFFFD,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039, 0xFFFD, 0x003B, 0xFFFD, 0xFFFD, 0xFFFD, 0x003F,
        0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
        0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
        0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
        0x0058, 0x0059, 0x005A, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD,
        0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
        0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F,
        0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
        0x0078, 0x0079, 0x007A, 0xFFFD, 0xFFFD, 0xFFFD, 0x007E, 0xFFFD,
        0x00C4, 0x00A0, 0x00C7, 0x00C9, 0x00D1, 0x00D6, 0x00DC, 0x00E1,
        0x00E0, 0x00E2, 0x00E4, 0x06BA, 0x00AB, 0x00E7, 0x00E9, 0x00E8,
        0x00EA, 0x00EB, 0x00ED, 0x2026, 0x00EE, 0x00EF, 0x00F1, 0x00F3,
        0x00BB, 0x00F4, 0x00F6, 0x00F7, 0x00FA, 0x00F9, 0x00FB, 0x00FC,
        0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x066A, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x060C, 0x002D, 0x002E, 0x002F,
        0x0660, 0x0661, 0x0662, 0x0663, 0x0664, 0x0665, 0x0666, 0x0667,
        0x0668, 0x0669, 0x003A, 0x061B, 0x003C, 0x003D, 0x003E, 0x061F,
        0x274A, 0x0621, 0x0622, 0x0623, 0x0624, 0x0625, 0x0626, 0x0627,
        0x0628, 0x0629, 0x062A, 0x062B, 0x062C, 0x062D, 0x062E, 0x062F,
        0x0630, 0x0631, 0x0632, 0x0633, 0x0634, 0x0635, 0x0636, 0x0637,
        0x0638, 0x0639, 0x063A, 0x005B, 0x005C, 0x005D, 0x005E, 0x005F,
        0x0640, 0x0641, 0x0642, 0x0643, 0x0644, 0x0645, 0x0646, 0x0647,
        0x0648, 0x0649, 0x064A, 0x064B, 0x064C, 0x064D, 0x064E, 0x064F,
        0x0650, 0x0651, 0x0652, 0x067E, 0x0679, 0x0686, 0x06D5, 0x06A4,
        0x06AF, 0x0688, 0x0691, 0x007B, 0x007C, 0x007D, 0x0698, 0x06D2]


macFarsi :: [UPoint]

macFarsi = map toEnum

       [0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0x0025, 0xFFFD, 0xFFFD,
        0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0x002C, 0xFFFD, 0xFFFD, 0xFFFD,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039, 0xFFFD, 0x003B, 0xFFFD, 0xFFFD, 0xFFFD, 0x003F,
        0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
        0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
        0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
        0x0058, 0x0059, 0x005A, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD,
        0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
        0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F,
        0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
        0x0078, 0x0079, 0x007A, 0xFFFD, 0xFFFD, 0xFFFD, 0x007E, 0xFFFD,
        0x00C4, 0x00A0, 0x00C7, 0x00C9, 0x00D1, 0x00D6, 0x00DC, 0x00E1,
        0x00E0, 0x00E2, 0x00E4, 0x06BA, 0x00AB, 0x00E7, 0x00E9, 0x00E8,
        0x00EA, 0x00EB, 0x00ED, 0x2026, 0x00EE, 0x00EF, 0x00F1, 0x00F3,
        0x00BB, 0x00F4, 0x00F6, 0x00F7, 0x00FA, 0x00F9, 0x00FB, 0x00FC,
        0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x066A, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x060C, 0x002D, 0x002E, 0x002F,
        0x06F0, 0x06F1, 0x06F2, 0x06F3, 0x06F4, 0x06F5, 0x06F6, 0x06F7,
        0x06F8, 0x06F9, 0x003A, 0x061B, 0x003C, 0x003D, 0x003E, 0x061F,
        0x274A, 0x0621, 0x0622, 0x0623, 0x0624, 0x0625, 0x0626, 0x0627,
        0x0628, 0x0629, 0x062A, 0x062B, 0x062C, 0x062D, 0x062E, 0x062F,
        0x0630, 0x0631, 0x0632, 0x0633, 0x0634, 0x0635, 0x0636, 0x0637,
        0x0638, 0x0639, 0x063A, 0x005B, 0x005C, 0x005D, 0x005E, 0x005F,
        0x0640, 0x0641, 0x0642, 0x0643, 0x0644, 0x0645, 0x0646, 0x0647,
        0x0648, 0x0649, 0x064A, 0x064B, 0x064C, 0x064D, 0x064E, 0x064F,
        0x0650, 0x0651, 0x0652, 0x067E, 0x0679, 0x0686, 0x06D5, 0x06A4,
        0x06AF, 0x0688, 0x0691, 0x007B, 0x007C, 0x007D, 0x0698, 0x06D2]


dosArabic :: [UPoint]

dosArabic = map toEnum

       [0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x066A, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D, 0x002E, 0x002F,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039, 0x003A, 0x003B, 0x003C, 0x003D, 0x003E, 0x003F,
        0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
        0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
        0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
        0x0058, 0x0059, 0x005A, 0x005B, 0x005C, 0x005D, 0x005E, 0x005F,
        0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
        0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F,
        0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
        0x0078, 0x0079, 0x007A, 0x007B, 0x007C, 0x007D, 0x007E, 0x007F,
        0x00B0, 0x00B7, 0x2219, 0x221A, 0x2592, 0x2500, 0x2502, 0x253C,
        0x2524, 0x252C, 0x251C, 0x2534, 0x2510, 0x250C, 0x2514, 0x2518,
        0x03B2, 0x221E, 0x03C6, 0x00B1, 0x00BD, 0x00BC, 0x2248, 0x00AB,
        0x00BB, 0xFEF7, 0xFEF8, 0xFFFD, 0xFFFD, 0xFEFB, 0xFEFC, 0xFFFD,
        0x00A0, 0x00AD, 0xFE82, 0x00A3, 0x00A4, 0xFE84, 0xFFFD, 0xFFFD,
        0xFE8E, 0xFE8F, 0xFE95, 0xFE99, 0x060C, 0xFE9D, 0xFEA1, 0xFEA5,
        0x0660, 0x0661, 0x0662, 0x0663, 0x0664, 0x0665, 0x0666, 0x0667,
        0x0668, 0x0669, 0xFED1, 0x061B, 0xFEB1, 0xFEB5, 0xFEB9, 0x061F,
        0x00A2, 0xFE80, 0xFE81, 0xFE83, 0xFE85, 0xFECA, 0xFE8B, 0xFE8D,
        0xFE91, 0xFE93, 0xFE97, 0xFE9B, 0xFE9F, 0xFEA3, 0xFEA7, 0xFEA9,
        0xFEAB, 0xFEAD, 0xFEAF, 0xFEB3, 0xFEB7, 0xFEBB, 0xFEBF, 0xFEC1,
        0xFEC5, 0xFECB, 0xFECF, 0x00A6, 0x00AC, 0x00F7, 0x00D7, 0xFEC9,
        0x0640, 0xFED3, 0xFED7, 0xFEDB, 0xFEDF, 0xFEE3, 0xFEE7, 0xFEEB,
        0xFEED, 0xFEEF, 0xFEF3, 0xFEBD, 0xFECC, 0xFECE, 0xFECD, 0xFEE1,
        0xFE7D, 0x0651, 0xFEE5, 0xFEE9, 0xFEEC, 0xFEF0, 0xFEF2, 0xFED0,
        0xFED5, 0xFEF5, 0xFEF6, 0xFEDD, 0xFED9, 0xFEF1, 0x25A0, 0xFFFD]


dosFarsi :: [UPoint]

dosFarsi = map toEnum

       [0x0020, 0x0021, 0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D, 0x002E, 0x002F,
        0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037,
        0x0038, 0x0039, 0x003A, 0x003B, 0x003C, 0x003D, 0x003E, 0x003F,
        0x0040, 0x0041, 0x0042, 0x0043, 0x0044, 0x0045, 0x0046, 0x0047,
        0x0048, 0x0049, 0x004A, 0x004B, 0x004C, 0x004D, 0x004E, 0x004F,
        0x0050, 0x0051, 0x0052, 0x0053, 0x0054, 0x0055, 0x0056, 0x0057,
        0x0058, 0x0059, 0x005A, 0x005B, 0x005C, 0x005D, 0x005E, 0x005F,
        0x0060, 0x0061, 0x0062, 0x0063, 0x0064, 0x0065, 0x0066, 0x0067,
        0x0068, 0x0069, 0x006A, 0x006B, 0x006C, 0x006D, 0x006E, 0x006F,
        0x0070, 0x0071, 0x0072, 0x0073, 0x0074, 0x0075, 0x0076, 0x0077,
        0x0078, 0x0079, 0x007A, 0x007B, 0x007C, 0x007D, 0x007E, 0x007F,
        0x0080, 0x0081, 0x0082, 0x0083, 0x0084, 0x0085, 0x0086, 0x0087,
        0x0088, 0x0089, 0x008A, 0x008B, 0x008C, 0x008D, 0x008E, 0x008F,
        0x0090, 0x0091, 0x0092, 0x0093, 0x0094, 0x0095, 0x0096, 0x0097,
        0x0098, 0x0099, 0x009A, 0x009B, 0x009C, 0x009D, 0x009E, 0x009F,
        0x00A0, 0x06F0, 0x06F1, 0x06F2, 0x06F3, 0x06F4, 0x06F5, 0x06F6,
        0x06F7, 0x06F8, 0x06F9, 0x060C, 0x061B, 0x00AD, 0x061F, 0xFE81,
        0xFE8D, 0xFFFD, 0xFE8E, 0xFE8F, 0xFE91, 0xFB56, 0xFB58, 0xFE93,
        0xFE95, 0xFE97, 0xFB66, 0xFB68, 0xFE99, 0xFE9B, 0xFE9D, 0xFE9F,
        0xFB7A, 0xFB7C, 0xFEA1, 0xFEA3, 0xFEA5, 0xFEA7, 0xFEA9, 0xFB84,
        0xFEAB, 0xFEAD, 0xFB8C, 0xFEAF, 0xFB8A, 0xFEB1, 0xFEB3, 0xFEB5,
        0xFEB7, 0xFEB9, 0xFEBB, 0xFEBD, 0xFEBF, 0xFEC1, 0xFEC5, 0xFEC9,
        0xFECA, 0xFECB, 0xFECC, 0xFECD, 0xFECE, 0xFECF, 0xFED0, 0xFED1,
        0xFED3, 0xFED5, 0xFED7, 0xFED9, 0xFEDB, 0xFB92, 0xFB94, 0xFEDD,
        0xFEDF, 0xFEE0, 0xFEE1, 0xFEE3, 0xFB9E, 0xFEE5, 0xFEE7, 0xFE85,
        0xFEED, 0xFBA6, 0xFBA8, 0xFBA9, 0xFBAA, 0xFE80, 0xFE89, 0xFE8A,
        0xFE8B, 0xFEF1, 0xFEF2, 0xFEF3, 0xFBB0, 0xFBAE, 0xFE7C, 0xFE7D]


asmo449 :: [UPoint]

asmo449 = map toEnum $

       [0x0020 .. 0x002B] ++ [0x060C] ++ [0x002D .. 0x002F] ++

       [0x0660 .. 0x0669] ++ [0x003A] ++ [0x061B] ++ [0x009C .. 0x009E] ++

       [0x061F] ++ [0x0627] ++ [0x0621 .. 0x063A] ++ [0x005B .. 0x005F] ++

       [0x0640 .. 0x0652] ++ [0xFFFD] {- NOT UCS -} ++ [0xFC5E, 0xFC5F] ++

       [0xFCF2 .. 0xFCF4] ++ [0xFFFD, 0xFFFD] ++ [0x007B .. 0x007F]


isiri3342 :: [UPoint]

isiri3342 = map toEnum

       [0x0020, 0xFFFD, 0xFFFD, 0x0021, 0x0024, 0x066A, 0x0026, 0x0027,
        0x0028, 0x0029, 0x002A, 0x002B, 0x060C, 0x002D, 0x002E, 0x002F,
        0x06F0, 0x06F1, 0x06F2, 0x06F3, 0x06F4, 0x06F5, 0x06F6, 0x06F7,
        0x06F8, 0x06F9, 0x003A, 0x061B, 0x003C, 0x003D, 0x003E, 0x061F,
        0x0622, 0x0627, 0x0621, 0x0628, 0x067E, 0x062A, 0x062B, 0x062C,
        0x0686, 0x062D, 0x062E, 0x062F, 0x0630, 0x0631, 0x0632, 0x0698,
        0x0633, 0x0634, 0x0635, 0x0636, 0x0637, 0x0638, 0x0639, 0x063A,
        0x0641, 0x0642, 0x06A9, 0x06AF, 0x0644, 0x0645, 0x0646, 0x0648,
        0x0647, 0x06CC, 0x005B, 0x005D, 0x007B, 0x007D, 0xFFFD, 0xFFFD,
        0xFFFD, 0x0640, 0x007C, 0x005C, 0xFFFD, 0xFFFD, 0xFFFD, 0xFFFD,
        0x064E, 0x0650, 0x064F, 0x064B, 0x064D, 0x064C, 0x0651, 0x0652,
        0x0623, 0x0625, 0x0624, 0x0626, 0x0629, 0x0643, 0x064A, 0x0649]
