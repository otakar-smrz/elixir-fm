-- |
--
-- Module      :  Encode.Version
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- Exports the 'version' of the "Encode" library and provides support
-- for working with the SVN\/CVS revision keyword. The 'revised' method
-- parses the '$Revision ... $' string supplied to it. Results have the
-- type 'Version' of the "Data.Version" module, which is exported, too.


module Encode.Version (

        -- * Module

        module Data.Version,

        -- * Functions

        showPretty, revised, version

    ) where


import Data.Version

import Data.List

import Text.ParserCombinators.ReadP


showPretty :: Version -> String

showPretty (Version x y) = unwords ((concat . intersperse "." . map show) x : y)


revised :: String -> Version

revised revision = fst . last . readP_to_S parseVersion $ words revision !! 1


version = Version [1, 3, 9] ["June 2016"]
