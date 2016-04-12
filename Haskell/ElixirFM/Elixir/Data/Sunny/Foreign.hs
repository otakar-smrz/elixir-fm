
module Elixir.Data.Sunny.Foreign (chapter) where

import Elixir.Lexicon


import qualified Elixir.Data.Sunny.Foreign.A as A
import qualified Elixir.Data.Sunny.Foreign.B as B
import qualified Elixir.Data.Sunny.Foreign.C as C
import qualified Elixir.Data.Sunny.Foreign.D as D
import qualified Elixir.Data.Sunny.Foreign.E as E
import qualified Elixir.Data.Sunny.Foreign.F as F


lexicon = (concat . concat) chapter


chapter = [ A.section,
            B.section,
            C.section,
            D.section,
            E.section,
            F.section ]
