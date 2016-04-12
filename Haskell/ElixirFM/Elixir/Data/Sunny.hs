-- |
--
-- Module      :  Elixir.Data.Sunny
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Data.Sunny (booklet) where


import qualified Elixir.Data.Sunny.Complex
import qualified Elixir.Data.Sunny.Foreign
import qualified Elixir.Data.Sunny.Regular


import Elixir.Lexicon


lexicon :: Lexicon

lexicon = (concat . concat . concat) booklet


booklet =   [   Elixir.Data.Sunny.Complex.chapter,
                Elixir.Data.Sunny.Foreign.chapter,
                Elixir.Data.Sunny.Regular.chapter   ]
