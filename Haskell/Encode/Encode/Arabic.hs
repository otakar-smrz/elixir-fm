-- |
--
-- Module      :  Encode.Arabic
-- Copyright   :  Otakar Smrz 2005-2014
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- The Haskell version of /Encode::Arabic/ originally written in Perl:
-- <http://search.cpan.org/dist/Encode-Arabic/>
--
-- "Encode.Arabic.ArabTeX"
-- "Encode.Arabic.ArabTeX.ZDMG"
-- "Encode.Arabic.Buckwalter"
-- "Encode.Arabic.Parkinson"
-- "Encode.Arabic.Habash"
-- "Encode.Arabic.Byte"


module Encode.Arabic (

        -- * Modules

        module Encode.Arabic.ArabTeX,
        module Encode.Arabic.ArabTeX.ZDMG,
        module Encode.Arabic.Buckwalter,
        module Encode.Arabic.Parkinson,
        module Encode.Arabic.Habash,
        module Encode.Arabic.Byte,

        module Encode.Unicode

    ) where


import Encode

import Encode.Arabic.ArabTeX
import Encode.Arabic.ArabTeX.ZDMG
import Encode.Arabic.Buckwalter
import Encode.Arabic.Parkinson
import Encode.Arabic.Habash
import Encode.Arabic.Byte

import Encode.Unicode

import Encode.Version
