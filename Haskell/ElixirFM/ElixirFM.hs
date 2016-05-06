-- |
--
-- Module      :  ElixirFM
-- Copyright   :  Otakar Smrz 2005-2016
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"

{-
    ElixirFM -- Implementation of Functional Arabic Morphology
    Copyright (C) 2005-2016 Otakar Smrz

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
-}


module ElixirFM (

        -- * Modules

        module Elixir.Lexicon,

        module Elixir.Data,

        module Elixir.Pretty,

        module Elixir.Resolve,
        module Elixir.Inflect,

        module Elixir.Derive,
        module Elixir.Lookup,

        module Elixir.Compose,

        module FM.Generic.General

    ) where


import Elixir.Lexicon

import Elixir.Data

import Elixir.Pretty

import Elixir.Resolve
import Elixir.Inflect

import Elixir.Derive
import Elixir.Lookup

import Elixir.Compose

import FM.Generic.General

import Encode.Arabic

import Data.Char

import Data.List hiding (lookup)

import qualified Data.Map as Map

import Prelude hiding (lookup)

import Elixir.Version
