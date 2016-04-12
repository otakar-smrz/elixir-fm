-- |
--
-- Module      :  FM.Generic.General
-- Copyright   :  Markus Forsberg 2004
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM" "Encode"

{-
    FM.Generic.General -- Excerpt from the Functional Morphology library
    Copyright (C) 2004 Markus Forsberg

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


module FM.Generic.General where


class (Eq a, Show a) => Param a where
  values  :: [a]
  value   :: Int -> a
  value n  = values !! n

type Table a = [(a, [String])]

table :: Param a => (a -> [String]) -> Table a
table f = [ (v, f v) | v <- values ]

enum :: Enum a => [a]
enum = [toEnum 0 ..]
