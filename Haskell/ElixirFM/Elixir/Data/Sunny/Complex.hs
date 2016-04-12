
module Elixir.Data.Sunny.Complex (chapter) where

import Elixir.Lexicon


import qualified Elixir.Data.Sunny.Complex.A as A
import qualified Elixir.Data.Sunny.Complex.B as B
import qualified Elixir.Data.Sunny.Complex.C as C
import qualified Elixir.Data.Sunny.Complex.D as D
import qualified Elixir.Data.Sunny.Complex.E as E
import qualified Elixir.Data.Sunny.Complex.F as F
import qualified Elixir.Data.Sunny.Complex.G as G
import qualified Elixir.Data.Sunny.Complex.H as H


lexicon = (concat . concat) chapter


chapter = [ A.section,
            B.section,
            C.section,
            D.section,
            E.section,
            F.section,
            G.section,
            H.section ]
