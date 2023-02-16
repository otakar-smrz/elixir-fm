-- |
--
-- Module      :  Encode
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- The Haskell analogy to the /Encode/ module in Perl:
-- <http://search.cpan.org/dist/Encode/>
--
-- "Encode.Arabic" "Encode.Mapper" "Encode.Unicode"


module Encode (

        -- * Classes

        Encoding,

        -- * Types

        UPoint, CSpace,

        -- * Methods

        encode, decode

    ) where


import Data.Word

import Encode.Version


-- | The datatype introduced for the internal representation of Unicode code
--   points is currently defined as @newtype 'UPoint' = UPoint CSpace@. The
--   shift to code points @UPoint@ from characters @Char@ is intentional, as
--   Unicode support in Haskell is not yet fully implemented, and code points
--   are, anyway, different entities. Since the 'UPoint' type is an instance
--   of the @Enum@ class, the type's constructor and destructor functions are
--   available as 'toEnum' and 'fromEnum', respectively.
--
--   The 'UPoint' datatype should be the transfer point on the way from one
--   encoding into another. It should not be the terminal stop, though. The
--   'encode' method should be used systematically, and not @show@, even if
--   it might temporarily produce somehow appealing results.

newtype UPoint = UPoint CSpace

    deriving (Eq, Ord)


-- | The 'CSpace' type denotes the code space, and it is a synonym to 'Word'.

type CSpace = Word


-- | Encodings are represented as distinct datatypes of the 'Encoding' class,
--   which defines two essential methods:
--
-- ['encode'] turning a list of 'internal code points' into a @String@, and
--
-- ['decode'] converting the lists in the opposite direction.
--
--   Developing a new encoding means to write a new module with a structure
--   similar to this:
--
-- @
--    module /MyEncModule/ (/MyEncType/ (..)) where
-- /  /
--    import "Encode"
-- /  /
--    data /MyEncType/ = /MyEncName | MyEncAlias deriving (Enum, Show)/
-- /  /
--    instance 'Encoding' /MyEncType/ where
-- /  /
--        'encode' /enc data/ = /show data/         /-- your choices .../
-- /  /
--        'decode' /enc data/ = /map (toEnum . fromEnum) data/
-- @
--
--   "Encode.Unicode.UTF8" is one concrete implementation that realizes
--   and illustrates this template. "Encode.Arabic.Buckwalter" implements
--   symmetric recoding using finite maps, and "Encode.Arabic.ArabTeX"
--   makes use of monadic parsing and the "PureFP" library.

class Encoding e where

    encode :: e -> [UPoint] -> [Char]
    decode :: e -> [Char] -> [UPoint]

    encode _ = map (toEnum . fromEnum)
    decode _ = map (toEnum . fromEnum)


instance Show UPoint where

    showsPrec p (UPoint x) = showsPrec p (toEnum (fromIntegral x) :: Char)


instance Enum UPoint where

    fromEnum (UPoint x) = fromIntegral x

    toEnum x = UPoint (fromIntegral x)
