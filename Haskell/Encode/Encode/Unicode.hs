-- |
--
-- Module      :  Encode.Unicode
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- The Haskell analogy to the /Encode::Unicode/ module in Perl:
-- <http://search.cpan.org/dist/Encode/>
--
-- "Encode.Unicode.UTF8"


module Encode.Unicode (

        -- * Modules

        module Encode.Unicode.UTF8,

        module Encode,

        -- * Types

        Unicode (..)

    ) where


import Encode

import Encode.Unicode.UTF8

import Encode.Version


data Unicode = Unicode | UCS

    deriving (Enum, Show)


instance Encoding Unicode
