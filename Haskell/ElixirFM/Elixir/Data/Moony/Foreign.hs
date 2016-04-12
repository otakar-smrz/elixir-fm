
module Elixir.Data.Moony.Foreign (chapter) where

import Elixir.Lexicon


import qualified Elixir.Data.Moony.Foreign.A as A
import qualified Elixir.Data.Moony.Foreign.B as B
import qualified Elixir.Data.Moony.Foreign.C as C
import qualified Elixir.Data.Moony.Foreign.D as D
import qualified Elixir.Data.Moony.Foreign.E as E
import qualified Elixir.Data.Moony.Foreign.F as F
import qualified Elixir.Data.Moony.Foreign.G as G
import qualified Elixir.Data.Moony.Foreign.H as H
import qualified Elixir.Data.Moony.Foreign.I as I
import qualified Elixir.Data.Moony.Foreign.J as J
import qualified Elixir.Data.Moony.Foreign.K as K
import qualified Elixir.Data.Moony.Foreign.L as L
import qualified Elixir.Data.Moony.Foreign.M as M
import qualified Elixir.Data.Moony.Foreign.N as N
import qualified Elixir.Data.Moony.Foreign.O as O


lexicon = (concat . concat) chapter


chapter = [ A.section,
            B.section,
            C.section,
            D.section,
            E.section,
            F.section,
            G.section,
            H.section,
            I.section,
            J.section,
            K.section,
            L.section,
            M.section,
            N.section,
            O.section ]
