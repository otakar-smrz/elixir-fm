-- |
--
-- Module      :  Elixir.Data
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Data (lexicon) where


import qualified Elixir.Data.Moony
import qualified Elixir.Data.Sunny
import qualified Elixir.Data.Extra


import Elixir.Lexicon


lexicon :: Lexicon

lexicon =   Elixir.Data.Extra.lexicon ++

            (concat . concat . concat . concat)

            [   Elixir.Data.Moony.booklet,
                Elixir.Data.Sunny.booklet   ]
