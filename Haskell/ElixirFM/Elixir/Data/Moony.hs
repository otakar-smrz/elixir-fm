-- |
--
-- Module      :  Elixir.Data.Moony
-- Copyright   :  Otakar Smrz 2005-2011
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Data.Moony (booklet) where


import qualified Elixir.Data.Moony.Complex
import qualified Elixir.Data.Moony.Foreign
import qualified Elixir.Data.Moony.Regular


import Elixir.Lexicon


lexicon :: Lexicon

lexicon = (concat . concat . concat) booklet


booklet =   [   Elixir.Data.Moony.Complex.chapter,
                Elixir.Data.Moony.Foreign.chapter,
                Elixir.Data.Moony.Regular.chapter   ]
