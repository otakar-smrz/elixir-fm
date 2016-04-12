
module Elixir.Data.Sunny.Regular.K (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> "^s r .t" <| [

    FaCaL                     `verb`    {- <^sara.t> -}        [ ['s','t','i','p','u','l','a','t','e'], unwords [ ['m','a','k','e'], ['c','o','n','d','i','t','i','o','n','a','l'] ] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <^sarra.t> -}       [ unwords [ ['t','e','a','r'], ['t','o'], ['s','h','r','e','d','s'] ] ],

    FACaL                     `verb`    {- <^sAra.t> -}        [ unwords [ ['i','m','p','o','s','e'], ['c','o','n','d','i','t','i','o','n','s'] ], ['s','t','i','p','u','l','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <ta^sarra.t> -}     [ unwords [ ['i','m','p','o','s','e'], ['c','o','n','d','i','t','i','o','n','s'], "/", ['t','e','r','m','s'] ] ],

    IFtaCaL                   `verb`    {- <i^stara.t> -}      [ unwords [ ['m','a','k','e'], ['c','o','n','d','i','t','i','o','n','a','l'] ], ['s','t','i','p','u','l','a','t','e'], unwords [ ['b','e'], ['p','r','e','r','e','q','u','i','s','i','t','e'] ] ],

    FaCL                      `noun`    {- <^sar.t> -}         [ ['p','r','e','c','o','n','d','i','t','i','o','n'], ['s','t','i','p','u','l','a','t','i','o','n'] ]
                              `plural`     FuCUL,

    FaCL |<< "a"              `prep`    {- <^sar.ta> -}        [ unwords [ ['o','n'], ['t','h','e'], ['c','o','n','d','i','t','i','o','n'] ], ['p','r','o','v','i','d','e','d'] ],

    FaCL |<< "aN"             `noun`    {- <^sar.taN> -}       [ unwords [ ['o','n'], ['t','h','e'], ['c','o','n','d','i','t','i','o','n'] ], ['p','r','o','v','i','d','e','d'] ],

    FaCaL                     `noun`    {- <^sara.t> -}        [ ['p','o','r','t','e','n','t'] ]
                              `plural`     HaFCAL,

    FaCL |< Iy                `adj`     {- <^sar.tIy> -}       [ ['c','o','n','d','i','t','i','o','n','a','l'] ],

    FaCL |< aT                `noun`    {- <^sar.taT> -}       [ ['l','i','n','e'], ['d','a','s','h'] ]
                              `plural`     FuCaL,

    FuCL |< aT                `noun`    {- <^sur.taT> -}       [ ['p','o','l','i','c','e'] ],

    FuCL |< Iy                `noun`    {- <^sur.tIy> -}       [ unwords [ ['p','o','l','i','c','e'], ['o','f','f','i','c','e','r'] ] ]
                              `plural`     FuCL |< Iy |< Un
                              `femini`     FuCL |< Iy |< aT,

    FaCIL                     `noun`    {- <^sarI.t> -}        [ ['t','a','p','e'], ['s','t','r','i','p'], ['r','i','b','b','o','n'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     FaCA'iL,

    FaCIL |< aT               `noun`    {- <^sarI.taT> -}      [ ['c','o','n','d','i','t','i','o','n'] ],

    MaFCaL                    `noun`    {- <ma^sra.t> -}       [ ['p','r','o','g','r','a','m'] ],

    MiFCaL                    `noun`    {- <mi^sra.t> -}       [ ['l','a','n','c','e'], ['s','c','a','l','p','e','l'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta^srI.t> -}       [ ['i','n','c','i','s','i','o','n'], ['s','c','a','r','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu^sAra.taT> -}    [ ['a','g','r','e','e','m','e','n','t'], ['s','t','i','p','u','l','a','t','i','o','n'] ],

    IFtiCAL                   `noun`    {- <i^stirA.t> -}      [ ['c','o','n','d','i','t','i','o','n'], ['p','r','o','v','i','s','o'], ['s','t','i','p','u','l','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy |< aT       `noun`    {- <i^stirA.tIyaT> -}  [ ['c','l','a','u','s','e'], ['c','o','n','d','i','t','i','o','n'] ],

    MaFCUL                    `adj`     {- <ma^srU.t> -}       [ ['c','o','n','d','i','t','i','o','n','a','l'], ['c','o','n','t','i','n','g','e','n','t'] ] ]


cluster_2   = cluster

 |> "^s r .t n" <| [

    KaRDaS                    `verb`    {- <^sar.tan> -}       [ ['c','o','n','s','e','c','r','a','t','e'], ['o','r','d','a','i','n'] ],

    TaKaRDaS                  `verb`    {- <ta^sar.tan> -}     [ unwords [ ['b','e'], ['c','o','n','s','e','c','r','a','t','e','d'] ], unwords [ ['b','e'], ['o','r','d','a','i','n','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <^sar.tanaT> -}     [ ['c','o','n','s','e','c','r','a','t','i','o','n'], ['o','r','d','i','n','a','t','i','o','n'], ['s','i','m','o','n','y'] ],

    KaRDUS |< Iy |< aT        `noun`    {- <^sar.tUnIyaT> -}   [ ['c','o','n','s','e','c','r','a','t','i','o','n'], ['o','r','d','i','n','a','t','i','o','n'], ['s','i','m','o','n','y'] ],

    KaRDUS |< Iy              `noun`    {- <^sar.tUnIy> -}     [ ['S','h','a','r','t','o','u','n','i'] ] ]


cluster_3   = cluster

 |> "^s r `" <| [

    FaCaL                     `verb`    {- <^sara`> -}         [ ['s','t','a','r','t'], ['u','n','d','e','r','t','a','k','e'] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <^sara`> -}         [ ['e','n','a','c','t'], ['p','r','e','s','c','r','i','b','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^sarra`> -}        [ ['l','e','g','i','s','l','a','t','e'] ],

    HaFCaL                    `verb`    {- <'a^sra`> -}        [ ['u','n','s','h','e','a','t','h','e'] ],

    IFtaCaL                   `verb`    {- <i^stara`> -}       [ ['e','n','a','c','t'], ['p','r','e','s','c','r','i','b','e'] ],

    FaCaL                     `noun`    {- <^sara`> -}         [ ['S','h','a','r','a','a'] ],

    FaCL                      `noun`    {- <^sar`> -}          [ ['l','a','w'] ],

    FaCL |< Iy                `adj`     {- <^sar`Iy> -}        [ ['l','e','g','i','t','i','m','a','t','e'], ['l','e','g','a','l'], ['l','a','w','f','u','l'] ],

    FaCL |< Iy |< aT          `noun`    {- <^sar`IyaT> -}      [ ['l','e','g','i','t','i','m','a','c','y'], ['l','e','g','a','l','i','t','y'] ],

    lA >| FaCL |< Iy |< aT    `noun`    {- <lA-^sar`IyaT> -}   [ ['i','l','l','e','g','i','t','i','m','a','c','y'], ['i','l','l','e','g','a','l','i','t','y'] ],

    FiCL |< aT                `noun`    {- <^sir`aT> -}        [ ['l','a','w'] ],

    FiCAL                     `noun`    {- <^sirA`> -}         [ ['s','a','i','l'], ['t','e','n','t'] ]
                              `plural`     HaFCiL |< aT,

    FiCAL |< Iy               `adj`     {- <^sirA`Iy> -}       [ ['s','a','i','l','i','n','g'] ],

    FaCCAL |< aT              `noun`    {- <^sarrA`aT> -}      [ unwords [ ['p','e','e','p'], ['h','o','l','e'] ] ],

    FuCUL                     `noun`    {- <^surU`> -}         [ ['a','t','t','e','m','p','t'], unwords [ ['e','m','b','a','r','k','i','n','g'], ['o','n'] ], unwords [ ['e','n','g','a','g','i','n','g'], ['i','n'] ] ],

    FaCIL |< aT               `noun`    {- <^sarI`aT> -}       [ ['S','h','a','r','i','a'], unwords [ ['I','s','l','a','m','i','c'], ['l','a','w'] ], unwords [ ['p','r','e','s','c','r','i','p','t','i','o','n','s'], ['o','f'], ['r','e','l','i','g','i','o','u','s'], ['l','a','w'] ] ]
                              `plural`     FaCA'iL,

    MaFCaL |< aT              `noun`    {- <ma^sra`aT> -}      [ unwords [ ['w','a','t','e','r'], ['h','o','l','e'] ] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta^srI`> -}        [ ['l','e','g','i','s','l','a','t','i','o','n'], ['l','e','g','i','s','l','a','t','u','r','e'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta^srI`Iy> -}      [ ['l','e','g','i','s','l','a','t','i','v','e'] ],

    IFtiCAL                   `noun`    {- <i^stirA`> -}       [ ['l','e','g','i','s','l','a','t','i','o','n'], unwords [ ['l','a','w'], ['m','a','k','i','n','g'] ] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <i^stirA`Iy> -}     [ ['l','e','g','i','s','l','a','t','i','v','e'] ],

    FACiL                     `noun`    {- <^sAri`> -}         [ ['s','t','r','e','e','t'] ]
                              `plural`     FawACiL,

    FACiL                     `noun`    {- <^sAri`> -}         [ ['l','e','g','i','s','l','a','t','o','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MaFCUL                    `noun`    {- <ma^srU`> -}        [ ['p','r','o','j','e','c','t'], ['e','n','t','e','r','p','r','i','s','e'] ]
                              `plural`     MaFCUL |< At
                              `plural`     MaFACIL,

    MaFCUL                    `adj`     {- <ma^srU`> -}        [ ['l','a','w','f','u','l'], ['l','e','g','a','l'] ],

    MaFCUL |< Iy |< aT        `noun`    {- <ma^srU`IyaT> -}    [ ['l','e','g','i','t','i','m','a','c','y'], ['l','e','g','a','l','i','t','y'] ],

    MuFaCCiL                  `noun`    {- <mu^sarri`> -}      [ ['l','e','g','i','s','l','a','t','o','r'], unwords [ ['l','a','w'], "-", ['m','a','k','e','r'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MutaFaCCiL                `noun`    {- <muta^sarri`> -}    [ ['l','e','g','i','s','l','a','t','o','r'], unwords [ ['l','a','w'], "-", ['m','a','k','e','r'] ] ]
                              `plural`     MutaFaCCiL |< Un
                              `femini`     MutaFaCCiL |< aT,

    MuFtaCiL                  `noun`    {- <mu^stari`> -}      [ ['l','e','g','i','s','l','a','t','o','r'], unwords [ ['l','a','w'], "-", ['m','a','k','e','r'] ] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT ]


cluster_4   = cluster

 |> ['^','s','a','r','I','`','A','t','I'] <| [

    _____                     `noun`    {- <^sarI`AtI> -}      [ ['S','h','a','r','i','a','t','i'] ] ]


cluster_5   = cluster

 |> "^s r f" <| [

    FaCuL                     `verb`    {- <^saruf> -}         [ unwords [ ['b','e'], ['n','o','b','l','e'] ], unwords [ ['b','e'], ['d','i','s','t','i','n','g','u','i','s','h','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <^sarraf> -}        [ ['h','o','n','o','r'] ],

    FACaL                     `verb`    {- <^sAraf> -}         [ ['o','v','e','r','l','o','o','k'], ['s','u','p','e','r','v','i','s','e'] ],

    HaFCaL                    `verb`    {- <'a^sraf> -}        [ ['o','v','e','r','s','e','e'], ['s','u','p','e','r','v','i','s','e'], ['m','a','n','a','g','e'] ],

    TaFaCCaL                  `verb`    {- <ta^sarraf> -}      [ unwords [ ['b','e'], ['h','o','n','o','r','e','d'] ] ],

    IstaFCaL                  `verb`    {- <ista^sraf> -}      [ ['o','b','s','e','r','v','e'], ['s','c','a','n'] ],

    FaCaL                     `noun`    {- <^saraf> -}         [ ['h','o','n','o','r'], ['d','i','s','t','i','n','c','t','i','o','n'] ],

    FaCaL                     `noun`    {- <^saraf> -}         [ ['S','h','a','r','a','f'] ],

    FaCaL |< Iy               `adj`     {- <^sarafIy> -}       [ ['h','o','n','o','r','a','r','y'] ],

    FaCaL |< Iy               `noun`    {- <^sarafIy> -}       [ ['S','h','a','r','a','f','i'] ],

    FuCL |< aT                `noun`    {- <^surfaT> -}        [ ['b','a','l','c','o','n','y'] ]
                              `plural`     FuCaL |< At
                              `plural`     FuCaL,

    FiCAL |< aT               `noun`    {- <^sirAfaT> -}       [ unwords [ ['o','f','f','i','c','e'], ['o','f'], ['s','h','e','r','i','f'] ] ],

    FiCAL |< Iy               `noun`    {- <^sirAfIy> -}       [ ['S','h','i','r','a','f','i'] ],

    FuCCAL |< aT              `noun`    {- <^surrAfaT> -}      [ ['b','a','l','c','o','n','y'], ['g','a','l','l','e','r','y'] ]
                              `plural`     FuCCAL |< At,

    FaCIL                     `noun`    {- <^sarIf> -}         [ ['S','h','a','r','i','f'] ],

    FaCIL                     `adj`     {- <^sarIf> -}         [ ['n','o','b','l','e'], ['h','o','n','o','r','a','b','l','e'], ['r','e','s','p','e','c','t','a','b','l','e'] ]
                              `plural`     FuCaLA'
                              `plural`     HaFCAL,

    FaCIL |< Iy               `adj`     {- <^sarIfIy> -}       [ ['s','h','e','r','i','f'] ],

    FaCIL |< Iy               `noun`    {- <^sarIfIy> -}       [ ['S','h','a','r','i','f','i'] ],

    HaFCaL                    `noun`    {- <'a^sraf> -}        [ ['A','s','h','r','a','f'] ],

    HaFCaL                    `adj`     {- <'a^sraf> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['n','o','b','l','e'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['h','o','n','o','r','a','b','l','e'] ] ],

    MaFCaL                    `noun`    {- <ma^sraf> -}        [ ['h','e','i','g','h','t'], ['e','l','e','v','a','t','i','o','n'], ['v','i','e','w'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta^srIf> -}        [ ['h','o','n','o','r','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< aT              `noun`    {- <ta^srIfaT> -}      [ unwords [ ['b','e','s','t','o','w','a','l'], ['o','f'], ['h','o','n','o','r','s'] ], ['h','o','n','o','r','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< At              `noun`    {- <ta^srIfAt> -}      [ ['h','o','n','o','r','s'], ['c','e','r','e','m','o','n','i','e','s'], ['p','r','o','t','o','c','o','l'] ]
                              `plural`     TaFCIL |< At
                           
    `limited` "-------P--",

    TaFCIL |< At |< Iy        `adj`     {- <ta^srIfAtIy> -}    [ ['c','e','r','e','m','o','n','i','a','l'] ],

    MuFACaL |< aT             `noun`    {- <mu^sArafaT> -}     [ ['s','u','p','e','r','v','i','s','i','o','n'], ['o','v','e','r','v','i','e','w'] ],

    HiFCAL                    `noun`    {- <'i^srAf> -}        [ ['s','u','p','e','r','v','i','s','i','o','n'], ['d','i','r','e','c','t','i','o','n'], ['p','a','t','r','o','n','a','g','e'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'i^srAfIy> -}      [ ['s','u','p','e','r','v','i','s','o','r','y'], ['d','i','r','e','c','t','i','n','g'] ],

    IstiFCAL                  `noun`    {- <isti^srAf> -}      [ ['o','b','s','e','r','v','a','t','i','o','n'], ['s','u','p','e','r','v','i','s','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `noun`    {- <^sArif> -}         [ unwords [ ['o','l','d'], ['c','a','m','e','l'], ['m','a','r','e'] ] ]
                              `plural`     FawACiL,

    MuFaCCiL                  `adj`     {- <mu^sarrif> -}      [ ['h','o','n','o','r','a','b','l','e'], ['h','o','n','o','r','a','r','y'] ],

    MuFaCCaL                  `noun`    {- <mu^sarraf> -}      [ ['M','u','s','h','a','r','r','a','f'] ],

    MuFCiL                    `noun`    {- <mu^srif> -}        [ ['s','u','p','e','r','v','i','s','o','r'], ['d','i','r','e','c','t','o','r'] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT,

    MustaFCaL                 `noun`    {- <musta^sraf> -}     [ ['e','s','p','l','a','n','a','d','e'], ['t','e','r','r','a','c','e'] ]
                              `plural`     MustaFCaL |< At ]


cluster_6   = cluster

 |> "^s r q" <| [

    FaCaL                     `verb`    {- <^saraq> -}         [ ['r','i','s','e'], ['s','h','i','n','e'] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <^sariq> -}         [ ['c','h','o','k','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a^sraq> -}        [ ['r','i','s','e'], ['s','h','i','n','e'] ],

    TaFaCCaL                  `verb`    {- <ta^sarraq> -}      [ unwords [ ['b','e','c','o','m','e'], ['O','r','i','e','n','t','a','l'] ] ],

    IstaFCaL                  `verb`    {- <ista^sraq> -}      [ unwords [ ['s','t','u','d','y'], ['t','h','e'], ['E','a','s','t'] ], unwords [ ['b','e'], ['a','n'], ['O','r','i','e','n','t','a','l','i','s','t'] ] ],

    FaCL                      `noun`    {- <^sarq> -}          [ ['e','a','s','t'], ['E','a','s','t'], ['O','r','i','e','n','t'] ],

    FaCL |<< "aN"             `noun`    {- <^sarqaN> -}        [ ['e','a','s','t','w','a','r','d'], unwords [ ['i','n'], ['t','h','e'], ['e','a','s','t'] ] ],

    FaCL |< Iy                `adj`     {- <^sarqIy> -}        [ ['e','a','s','t','e','r','n'], ['O','r','i','e','n','t','a','l'], ['e','a','s','t'] ],

    FaCL |<< "Aw" |< Iy       `noun`    {- <^sarqAwIy> -}      [ ['S','h','a','r','q','a','w','i'] ],

    FuCUL                     `noun`    {- <^surUq> -}         [ ['s','u','n','r','i','s','e'] ],

    FaCAL |< Iy               `noun`    {- <^sarAqIy> -}       [ unwords [ ['u','n','i','r','r','i','g','a','t','e','d'], ['l','a','n','d'] ] ],

    FaCCAL                    `noun`    {- <^sarrAq> -}        [ unwords [ ['s','u','c','t','i','o','n'], ['r','o','s','e'] ], unwords [ ['s','u','c','t','i','o','n'], ['b','a','s','k','e','t'] ] ]
                              `plural`     FaCCAL |< At,

    FaCCAL |< aT              `noun`    {- <^sarrAqaT> -}      [ unwords [ ['i','n','t','a','k','e'], ['p','o','r','t'] ], unwords [ ['i','n','t','a','k','e'], ['p','i','p','e'] ] ],

    MaFCiL                    `noun`    {- <ma^sriq> -}        [ ['E','a','s','t'], ['L','e','v','a','n','t'] ]
                              `plural`     MaFACiL,

    MaFCiL |< Iy              `adj`     {- <ma^sriqIy> -}      [ ['E','a','s','t','e','r','n'], ['L','e','v','a','n','t','i','n','e'] ]
                              `plural`     MaFCiL |< Iy |< Un
                              `plural`     MaFACiL |< aT,

    TaFCIL                    `noun`    {- <ta^srIq> -}        [ ['O','r','i','e','n','t','a','l','i','z','a','t','i','o','n'], ['E','a','s','t','e','r','n','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'i^srAq> -}        [ ['s','u','n','r','i','s','e'], ['s','p','l','e','n','d','o','r'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< aT              `noun`    {- <'i^srAqaT> -}      [ ['f','l','a','s','h'] ],

    HiFCAL |< Iy              `adj`     {- <'i^srAqIy> -}      [ ['I','l','l','u','m','i','n','i','s','t'] ],

    IstiFCAL                  `noun`    {- <isti^srAq> -}      [ ['O','r','i','e','n','t','a','l','i','s','m'] ]
                              `plural`     IstiFCAL |< At,

    IstiFCAL |< Iy            `adj`     {- <isti^srAqIy> -}    [ ['O','r','i','e','n','t','a','l','i','s','t'] ],

    FACiL |< aT               `noun`    {- <^sAriqaT> -}       [ ['S','h','a','r','j','a','h'] ],

    MuFCiL                    `adj`     {- <mu^sriq> -}        [ ['s','p','l','e','n','d','i','d'], ['s','h','i','n','i','n','g'], ['b','r','i','g','h','t'], unwords [ ['a','u','s','p','i','c','i','o','u','s'], "(", ['f','u','t','u','r','e'], ")" ] ],

    MustaFCiL                 `noun`    {- <musta^sriq> -}     [ ['O','r','i','e','n','t','a','l','i','s','t'] ]
                              `plural`     MustaFCiL |< Un
                              `femini`     MustaFCiL |< aT ]


cluster_7   = cluster

 |> "^s r k" <| [

    FaCiL                     `verb`    {- <^sarik> -}         [ ['a','s','s','o','c','i','a','t','e'], ['p','a','r','t','i','c','i','p','a','t','e'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <^sArak> -}         [ ['p','a','r','t','i','c','i','p','a','t','e'], ['s','h','a','r','e'] ],

    HaFCaL                    `verb`    {- <'a^srak> -}        [ ['a','s','s','o','c','i','a','t','e'], ['i','m','p','l','i','c','a','t','e'], unwords [ ['b','e'], ['i','d','o','l','a','t','r','o','u','s'] ] ],

    TaFACaL                   `verb`    {- <ta^sArak> -}       [ unwords [ ['b','e'], ['p','a','r','t','n','e','r','s'] ] ],

    IFtaCaL                   `verb`    {- <i^starak> -}       [ ['p','a','r','t','i','c','i','p','a','t','e'] ],

    FiCL                      `noun`    {- <^sirk> -}          [ ['i','d','o','l','a','t','r','y'] ],

    FaCaL                     `noun`    {- <^sarak> -}         [ ['t','r','a','p'], ['n','e','t'] ]
                              `plural`     FuCuL
                              `plural`     HaFCAL,

    FaCiL |< aT               `noun`    {- <^sarikaT> -}       [ ['c','o','m','p','a','n','y'], ['c','o','r','p','o','r','a','t','i','o','n'] ]
                              `plural`     FaCiL |< At,

    FiCAL |< aT               `noun`    {- <^sirAkaT> -}       [ ['p','a','r','t','n','e','r','s','h','i','p'] ],

    FaCIL                     `noun`    {- <^sarIk> -}         [ ['p','a','r','t','n','e','r'], ['a','s','s','o','c','i','a','t','e'] ]
                              `plural`     FaCA'iL
                              `plural`     FuCaLA'
                              `femini`     FaCIL |< aT,

    TaFCIL                    `noun`    {- <ta^srIk> -}        [ ['s','o','c','i','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu^sArakaT> -}     [ ['p','a','r','t','i','c','i','p','a','t','i','o','n'], ['a','s','s','o','c','i','a','t','i','o','n'] ],

    HiFCAL                    `noun`    {- <'i^srAk> -}        [ ['p','a','r','t','i','c','i','p','a','t','i','o','n'], ['i','m','p','l','i','c','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    TaFACuL                   `noun`    {- <ta^sAruk> -}       [ unwords [ ['j','o','i','n','t'], ['p','a','r','t','i','c','i','p','a','t','i','o','n'] ] ]
                              `plural`     TaFACuL |< At,

    IFtiCAL                   `noun`    {- <i^stirAk> -}       [ ['p','a','r','t','n','e','r','s','h','i','p'], ['p','a','r','t','i','c','i','p','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL                   `noun`    {- <i^stirAk> -}       [ ['s','u','b','s','c','r','i','p','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <i^stirAkIy> -}     [ ['s','o','c','i','a','l','i','s','t'] ],

    IFtiCAL |< Iy |< aT       `noun`    {- <i^stirAkIyaT> -}   [ ['s','o','c','i','a','l','i','s','m'] ],

    MuFACiL                   `noun`    {- <mu^sArik> -}       [ ['p','a','r','t','i','c','i','p','a','n','t'], ['a','s','s','o','c','i','a','t','e'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFCiL                    `noun`    {- <mu^srik> -}        [ ['p','o','l','y','t','h','e','i','s','t'] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT,

    MuFtaCiL                  `noun`    {- <mu^starik> -}      [ ['p','a','r','t','i','c','i','p','a','n','t'], ['s','u','b','s','c','r','i','b','e','r'] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT,

    MuFtaCaL                  `adj`     {- <mu^starak> -}      [ ['c','o','m','m','o','n'], ['j','o','i','n','t'], ['c','o','l','l','e','c','t','i','v','e'] ] ]


cluster_8   = cluster

 |> "^s r k s" <| [

    KaRDaS |< Iy              `adj`     {- <^sarkasIy> -}      [ ['C','i','r','c','a','s','s','i','a','n'] ]
                              `plural`     KaRADiS |< aT
                              `plural`     KaRDaS |< Iy |< Un ]


cluster_9   = cluster

 |> "^s r m" <| [

    FaCaL                     `verb`    {- <^saram> -}         [ ['s','p','l','i','t'], ['s','l','a','s','h'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <^sarm> -}          [ ['c','r','a','c','k'], ['b','a','y'] ]
                              `plural`     FuCUL,

    FaCL                      `noun`    {- <^sarm> -}          [ ['S','h','a','r','m'] ],

    HaFCaL                    `adj`     {- <'a^sram> -}        [ ['h','a','r','e','l','i','p','p','e','d'] ]
                              `femini`     FaCLA' ]


cluster_10  = cluster

 |> "^s r m .t" <| [

    KaRDaS                    `verb`    {- <^sarma.t> -}       [ unwords [ ['t','e','a','r'], ['t','o'], ['s','h','r','e','d','s'] ] ],

    KaRDUS                    `noun`    {- <^sarmU.t> -}       [ ['r','a','g'], unwords [ ['m','a','l','e'], ['w','h','o','r','e'] ] ],

    KaRDUS |< aT              `noun`    {- <^sarmU.taT> -}     [ ['r','a','g'] ]
                              `plural`     KaRADIS,

    KaRDUS |< aT              `noun`    {- <^sarmU.taT> -}     [ ['w','h','o','r','e'] ]
                              `plural`     KaRADIS ]


cluster_11  = cluster

 |> "^s r n q" <| [

    KaRDaS |< aT              `noun`    {- <^sarnaqaT> -}      [ ['c','o','c','o','o','n'], ['s','l','o','u','g','h'], ['h','e','m','p'] ]
                              `plural`     KaRADiS ]


cluster_12  = cluster

 |> "^s r h" <| [

    FaCiL                     `verb`    {- <^sarih> -}         [ unwords [ ['b','e'], ['g','r','e','e','d','y'] ], unwords [ ['b','e'], ['g','l','u','t','t','o','n','o','u','s'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCaL                     `noun`    {- <^sarah> -}         [ ['g','r','e','e','d'], ['g','l','u','t','t','o','n','y'] ],

    FaCiL                     `adj`     {- <^sarih> -}         [ ['g','r','e','e','d','y'], ['g','l','u','t','t','o','n','o','u','s'] ],

    FaCAL |< aT               `noun`    {- <^sarAhaT> -}       [ ['g','r','e','e','d'], ['g','l','u','t','t','o','n','y'] ] ]


cluster_13  = cluster

 |> "^s z r" <| [

    FaCaL                     `verb`    {- <^sazar> -}         [ unwords [ ['l','o','o','k'], ['a','s','k','a','n','c','e'], "(", ['a','t'], ")" ] ]
                              `imperf`     FCiL,

    TaFACaL                   `verb`    {- <ta^sAzar> -}       [ unwords [ ['l','o','o','k'], ['a','s','k','a','n','c','e'], ['a','t'], ['e','a','c','h'], ['o','t','h','e','r'] ] ],

    HaFCaL                    `adj`     {- <'a^szar> -}        [ unwords [ ['a','s','k','a','n','c','e'], ['l','o','o','k','i','n','g'] ], ['d','i','s','t','r','u','s','t','f','u','l'] ]
                              `femini`     FaCLA' ]


cluster_14  = cluster

 |> ['^','s','I','z','U','f','r','A','n'] <| [

    _____ |< Iy               `adj`     {- <^sIzUfrAnIy> -}    [ ['s','c','h','i','z','o','p','h','r','e','n','i','c'] ],

    _____ |< iyA              `noun`    {- <^sIzUfrAniyA> -}   [ ['s','c','h','i','z','o','p','h','r','e','n','i','a'] ] ]


cluster_15  = cluster

 |> ['^','s','A','s','I'] <| [

    _____                     `noun`    {- <^sAsI> -}          [ ['c','h','a','s','s','i','s'] ] ]


cluster_16  = cluster

 |> "^s s t" <| [

    FiCL                      `noun`    {- <^sist> -}          [ ['s','l','a','t','e'] ] ]


cluster_17  = cluster

 |> "^s s `" <| [

    FuCUL                     `noun`    {- <^susU`> -}         [ ['i','m','m','e','n','s','i','t','y'], ['e','x','t','e','n','s','i','v','e','n','e','s','s'] ],

    FACiL                     `adj`     {- <^sAsi`> -}         [ ['w','i','d','e'], ['v','a','s','t'], ['e','x','t','e','n','s','i','v','e'], ['h','u','g','e'] ] ]


cluster_18  = cluster

 |> ['^','s','a','^','s','a','_','h','A','n'] <| [

    _____                     `noun`    {- <^sa^sa_hAn> -}     [ unwords [ ['g','u','n'], ['b','a','r','r','e','l'] ] ],

    _____ |< aT               `noun`    {- <^sa^sa_hAnaT> -}   [ ['f','i','r','e','a','r','m','s'] ] ]


cluster_19  = cluster

 |> ['^','s','I','^','s','A','n'] <| [

    _____ |< Iy               `adj`     {- <^sI^sAnIy> -}      [ ['C','h','e','c','h','e','n'] ],

    _____                     `noun`    {- <^sI^sAn> -}        [ ['C','h','e','c','h','e','n','y','a'], ['C','h','e','c','h','e','n'] ] ]


cluster_20  = cluster

 |> ['^','s','i','^','s','m'] <| [

    _____                     `noun`    {- <^si^sm> -}         [ unwords [ ['e','y','e'], ['p','o','w','d','e','r'] ] ],

    _____ |< aT               `noun`    {- <^si^smaT> -}       [ ['t','o','i','l','e','t'], ['l','a','v','a','t','o','r','y'] ] ]

 |> ['^','s','a','^','s','m'] <| [

    _____ |< aT               `noun`    {- <^sa^smaT> -}       [ ['t','o','i','l','e','t'], ['l','a','v','a','t','o','r','y'] ] ]


cluster_21  = cluster

 |> ['^','s','i','^','s','n'] <| [

    _____ |< Iy               `noun`    {- <^si^snIy> -}       [ ['s','p','e','c','i','m','e','n'], ['s','a','m','p','l','e'], ['s','a','m','p','l','i','n','g'] ],

    _____ |<< "a" |<< "^g" |< Iy `noun`    {- <^si^sna^gIy> -}    [ ['a','s','s','a','y','e','r'] ]
                              `plural`     _____ |<< "a" |<< "^g" |< Iy |< aT
                              `femini`     _____ |<< "a" |<< "^g" |< Iy |< aT ]


cluster_22  = cluster

 |> "^s .s r" <| [

    FaCaL |< aT               `noun`    {- <^sa.saraT> -}      [ ['g','a','z','e','l','l','e'] ] ]


cluster_23  = cluster

 |> "^s .t b" <| [

    FaCaL                     `verb`    {- <^sa.tab> -}        [ unwords [ ['c','r','o','s','s'], ['o','u','t'] ], ['e','f','f','a','c','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^sa.t.tab> -}      [ unwords [ ['c','r','o','s','s'], ['o','u','t'] ], ['e','f','f','a','c','e'] ],

    FaCL                      `noun`    {- <^sa.tb> -}         [ unwords [ ['c','r','o','s','s','i','n','g'], ['o','u','t'] ], ['e','f','f','a','c','e','m','e','n','t'], ['c','a','n','c','e','l','l','a','t','i','o','n'] ],

    FaCL                      `noun`    {- <^sa.tb> -}         [ ['r','o','b','u','s','t'], ['t','a','l','l'] ]
                              `plural`     FuCUL,

    TaFCIL                    `noun`    {- <ta^s.tIb> -}       [ unwords [ ['f','i','n','i','s','h','i','n','g'], ['t','o','u','c','h','e','s'] ], ['c','o','m','p','l','e','t','i','o','n'], ['r','e','f','u','r','b','i','s','h','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_24  = cluster

 |> "^s .t .h" <| [

    FaCaL                     `verb`    {- <^sa.ta.h> -}       [ ['r','o','a','m'], ['r','o','v','e'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <^sa.t.h> -}        [ ['r','o','a','m','i','n','g'], ['r','o','v','i','n','g'] ],

    FaCL |< aT                `noun`    {- <^sa.t.haT> -}      [ ['e','s','c','a','p','a','d','e'] ]
                              `plural`     FaCaL |< At ]


cluster_25  = cluster

 |> "^s .t r" <| [

    FaCaL                     `verb`    {- <^sa.tar> -}        [ ['b','i','s','e','c','t'], unwords [ ['c','u','t'], ['i','n'], ['h','a','l','f'] ] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <^sa.tur> -}        [ unwords [ ['b','e'], ['s','l','y'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FACaL                     `verb`    {- <^sA.tar> -}        [ ['p','a','r','t','i','c','i','p','a','t','e'], ['s','h','a','r','e'] ],

    InFaCaL                   `verb`    {- <in^sa.tar> -}      [ unwords [ ['b','e'], ['b','i','s','e','c','t','e','d'] ], unwords [ ['b','e'], ['s','p','l','i','t'] ], ['d','i','s','i','n','t','e','g','r','a','t','e'] ],

    FaCL                      `noun`    {- <^sa.tr> -}         [ ['b','i','s','e','c','t','i','n','g'] ],

    FaCL                      `noun`    {- <^sa.tr> -}         [ ['p','o','r','t','i','o','n'] ]
                              `plural`     FuCUL
                              `plural`     HaFCuL,

    FaCL |<< "a"              `prep`    {- <^sa.tra> -}        [ ['t','o','w','a','r','d','s'] ],

    FiCL |< aT                `noun`    {- <^si.traT> -}       [ ['s','i','d','e'], ['h','a','l','f'] ],

    FaCAL |< aT               `noun`    {- <^sa.tAraT> -}      [ ['c','l','e','v','e','r','n','e','s','s'] ],

    FaCIL |< aT               `noun`    {- <^sa.tIraT> -}      [ ['s','a','n','d','w','i','c','h'] ]
                              `plural`     FaCA'iL,

    MuFACaL |< aT             `noun`    {- <mu^sA.taraT> -}    [ ['p','a','r','t','i','c','i','p','a','t','i','o','n'], ['s','h','a','r','i','n','g'] ],

    IFtiCAL                   `noun`    {- <i^sti.tAr> -}      [ ['f','i','s','s','i','o','n'], ['s','e','p','a','r','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <^sA.tir> -}        [ ['c','l','e','v','e','r'], ['s','m','a','r','t'], ['c','u','t','e'] ]
                              `plural`     FuCCAL ]


cluster_26  = cluster

 |> "^s .t f" <| [

    FaCaL                     `verb`    {- <^sa.taf> -}        [ ['r','i','n','s','e'], ['w','a','s','h'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCL                      `noun`    {- <^sa.tf> -}         [ ['r','i','n','s','i','n','g'], ['w','a','s','h','i','n','g'] ],

    FuCL |< aT                `noun`    {- <^su.tfaT> -}       [ ['p','i','e','c','e'], ['c','h','u','n','k'] ]
                              `plural`     FuCaL ]


cluster_27  = cluster

 |> "^s .t n" <| [

    FaCaL                     `verb`    {- <^sa.tan> -}        [ ['f','a','s','t','e','n'], ['a','t','t','a','c','h'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <^sa.tn> -}         [ ['f','a','s','t','e','n','i','n','g'], ['a','t','t','a','c','h','i','n','g'] ],

    FaCL                      `noun`    {- <^sa.tn> -}         [ ['r','o','p','e'] ]
                              `plural`     HaFCAL ]


cluster_28  = cluster

 |> ['^','s','a','.','t','r','a','n','^','g'] <| [

    _____                     `noun`    {- <^sa.tran^g> -}     [ ['c','h','e','s','s'] ],

    _____ |< Iy               `adj`     {- <^sa.tran^gIy> -}   [ ['c','h','e','s','s'] ] ]


cluster_29  = cluster

 |> "^s .z f" <| [

    FaCaL                     `verb`    {- <^sa.zaf> -}        [ ['c','a','s','t','r','a','t','e'] ]
                              `imperf`     FCuL,

    FaCaL                     `noun`    {- <^sa.zaf> -}        [ ['h','a','r','d','s','h','i','p'], ['p','r','i','v','a','t','i','o','n'] ]
                              `plural`     FiCAL,

    FaCiL                     `adj`     {- <^sa.zif> -}        [ ['a','u','s','t','e','r','e'], ['h','a','r','s','h'] ] ]


cluster_30  = cluster

 |> "^s ` b" <| [

    FaCCaL                    `verb`    {- <^sa``ab> -}        [ ['s','u','b','d','i','v','i','d','e'], ['r','a','m','i','f','y'] ],

    TaFaCCaL                  `verb`    {- <ta^sa``ab> -}      [ ['d','i','v','e','r','g','e'], unwords [ ['b','r','a','n','c','h'], ['o','u','t'] ] ],

    InFaCaL                   `verb`    {- <in^sa`ab> -}       [ ['d','i','v','e','r','g','e'], unwords [ ['b','r','a','n','c','h'], ['o','u','t'] ] ],

    IFtaCaL                   `verb`    {- <i^sta`ab> -}       [ ['d','i','v','e','r','g','e'], unwords [ ['b','r','a','n','c','h'], ['o','u','t'] ] ],

    FaCL                      `noun`    {- <^sa`b> -}          [ ['p','e','o','p','l','e'], ['n','a','t','i','o','n'] ]
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <^sa`bIy> -}        [ ['p','o','p','u','l','a','r'], ['n','a','t','i','o','n','a','l'], ['p','e','o','p','l','e','\'','s'] ],

    FaCL |< Iy |< aT          `noun`    {- <^sa`bIyaT> -}      [ ['p','o','p','u','l','a','r','i','t','y'] ],

    FuCUL |< Iy               `adj`     {- <^su`UbIy> -}       [ ['S','h','u','\'','u','b','i'], ['c','o','s','m','o','p','o','l','i','t','a','n'], ['g','l','o','b','a','l','i','s','t'] ],

    FuCUL |< Iy |< aT         `noun`    {- <^su`UbIyaT> -}     [ ['S','h','u','\'','u','b','i','s','m'] ],

    FiCL                      `noun`    {- <^si`b> -}          [ ['r','e','e','f'], ['r','i','f','t'] ]
                              `plural`     FiCAL,

    FiCL                      `noun`    {- <^si`b> -}          [ unwords [ ['m','o','u','n','t','a','i','n'], ['p','a','t','h'] ] ]
                              `plural`     FiCAL,

    FuCL |< aT                `noun`    {- <^su`baT> -}        [ ['b','r','a','n','c','h'], ['s','u','b','d','i','v','i','s','i','o','n'] ]
                              `plural`     FuCaL,

    FuCaL |< Iy               `adj`     {- <^su`abIy> -}       [ ['b','r','o','n','c','h','i','a','l'] ],

    FuCayL                    `noun`    {- <^su`ayb> -}        [ ['S','h','u','a','i','b'] ],

    FuCayL |< Iy              `noun`    {- <^su`aybIy> -}      [ ['S','h','u','a','i','b','i'] ],

    FaCIL                     `adj`     {- <^sa`Ib> -}         [ ['d','i','s','o','r','g','a','n','i','z','e','d'], ['d','i','s','p','e','r','s','e','d'] ],

    FaCLAn                    `noun`    {- <^sa`bAn> -}        [ ['S','h','a','\'','b','a','n'] ],

    HaFCaL                    `noun`    {- <'a^s`ab> -}        [ unwords [ ['A','s','h','\'','a','b'], "(", ['l','e','g','e','n','d','a','r','y'], ['m','i','s','e','r'], ")" ] ],

    HaFCaL |< Iy              `adj`     {- <'a^s`abIy> -}      [ ['m','i','s','e','r'], ['g','r','e','e','d','y'] ],

    MiFCAL                    `noun`    {- <mi^s`Ab> -}        [ ['r','o','d'], ['s','t','i','c','k'] ],

    TaFaCCuL                  `noun`    {- <ta^sa``ub> -}      [ ['r','a','m','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    InFiCAL                   `noun`    {- <in^si`Ab> -}       [ ['r','a','m','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     InFiCAL |< At,

    MutaFaCCiL                `adj`     {- <muta^sa``ib> -}    [ ['r','a','m','i','f','i','e','d'], ['v','e','r','s','a','t','i','l','e'] ],

    MunFaCiL                  `adj`     {- <mun^sa`ib> -}      [ ['b','r','a','n','c','h','i','n','g'] ] ]


cluster_31  = cluster

 |> "^s ` b _d" <| [

    KaRDaS                    `verb`    {- <^sa`ba_d> -}       [ ['j','u','g','g','l','e'], unwords [ ['u','s','e'], ['s','l','e','i','g','h','t'], ['o','f'], ['h','a','n','d'] ] ],

    KaRDaS |< aT              `noun`    {- <^sa`ba_daT> -}     [ unwords [ ['s','l','e','i','g','h','t'], ['o','f'], ['h','a','n','d'] ], ['j','u','g','g','l','e','r','y'] ],

    MuKaRDiS                  `noun`    {- <mu^sa`bi_d> -}     [ ['t','r','i','c','k','s','t','e','r'], ['q','u','a','c','k'] ]
                              `plural`     MuKaRDiS |< Un
                              `femini`     MuKaRDiS |< aT ]


cluster_32  = cluster

 |> "^s ` _t" <| [

    FaCiL                     `verb`    {- <^sa`i_t> -}        [ unwords [ ['b','e'], ['u','n','k','e','m','p','t'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <^sa``a_t> -}       [ ['r','u','f','f','l','e'] ],

    TaFaCCaL                  `verb`    {- <ta^sa``a_t> -}     [ unwords [ ['b','e'], ['u','n','k','e','m','p','t'] ], ['d','e','c','a','y'] ],

    FaCL                      `noun`    {- <^sa`_t> -}         [ ['S','h','a','a','t','h'] ],

    FaCL                      `noun`    {- <^sa`_t> -}         [ ['d','i','s','o','r','d','e','r'] ],

    FaCiL                     `adj`     {- <^sa`i_t> -}        [ ['u','n','k','e','m','p','t'] ],

    HaFCaL                    `adj`     {- <'a^s`a_t> -}       [ ['u','n','k','e','m','p','t'] ]
                              `femini`     FaCLA',

    MuFaCCaL                  `adj`     {- <mu^sa``a_t> -}     [ ['u','n','k','e','m','p','t'] ] ]


cluster_33  = cluster

 |> "^s ` r" <| [

    FaCaL                     `verb`    {- <^sa`ar> -}         [ ['f','e','e','l'], unwords [ ['b','e'], ['a','w','a','r','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    HaFCaL                    `verb`    {- <'a^s`ar> -}        [ ['n','o','t','i','f','y'], ['a','d','v','e','r','t'] ],

    IstaFCaL                  `verb`    {- <ista^s`ar> -}      [ unwords [ ['b','e'], ['c','o','n','s','c','i','o','u','s'], ['o','f'] ], ['r','e','a','l','i','z','e'], unwords [ ['h','a','v','e'], "a", ['p','r','e','m','o','n','i','t','i','o','n'], ['o','f'] ] ],

    FuCUL                     `noun`    {- <^su`Ur> -}         [ ['f','e','e','l','i','n','g'], ['s','e','n','t','i','m','e','n','t'], ['a','w','a','r','e','n','e','s','s'] ],

    lA >| FuCUL               `noun`    {- <lA-^su`Ur> -}      [ ['u','n','c','o','n','s','c','i','o','u','s'] ],

    FuCUL |< Iy               `adj`     {- <^su`UrIy> -}       [ ['c','o','n','s','c','i','o','u','s'] ],

    lA >| FuCUL |< Iy         `adj`     {- <lA-^su`UrIy> -}    [ ['s','u','b','c','o','n','s','c','i','o','u','s'], ['u','n','c','o','n','s','c','i','o','u','s'] ],

    FiCL                      `noun`    {- <^si`r> -}          [ ['p','o','e','t','r','y'], ['p','o','e','m','s'] ]
                              `plural`     HaFCAL,

    FiCL |< Iy                `adj`     {- <^si`rIy> -}        [ ['p','o','e','t','i','c'] ],

    FiCAL                     `noun`    {- <^si`Ar> -}         [ ['s','l','o','g','a','n'], ['m','o','t','t','o'] ]
                              `plural`     FiCAL |< At,

    FiCAL                     `noun`    {- <^si`Ar> -}         [ ['e','m','b','l','e','m'], ['s','y','m','b','o','l'] ]
                              `plural`     FiCAL |< At,

    FiCAL |< Iy               `adj`     {- <^si`ArIy> -}       [ ['e','m','b','l','e','m','a','t','i','c'], ['s','y','m','b','o','l','i','c'] ],

    FACiL                     `noun`    {- <^sA`ir> -}         [ ['p','o','e','t'] ]
                              `plural`     FuCaLA'
                              `femini`     FACiL |< aT,

    FaCIL |< aT               `noun`    {- <^sa`IraT> -}       [ unwords [ ['r','e','l','i','g','i','o','u','s'], ['c','e','r','e','m','o','n','y'] ], unwords [ ['c','u','l','t'], ['r','i','t','u','a','l'] ] ]
                              `plural`     FaCA'iL,

    FaCA'iL |< Iy             `adj`     {- <^sa`A'irIy> -}     [ ['r','i','t','u','a','l','i','s','t','i','c'], ['c','e','r','e','m','o','n','i','a','l'] ],

    MaFCaL                    `noun`    {- <ma^s`ar> -}        [ ['f','e','e','l','i','n','g'], ['s','e','n','s','e'], ['e','m','o','t','i','o','n','s'] ]
                              `plural`     MaFACiL,

    MaFACiL                   `noun`    {- <ma^sA`ir> -}       [ ['c','u','s','t','o','m','s'], ['r','i','t','e','s'] ]
                              `plural`     MaFACiL
                           
    `limited` "-------P--",

    HiFCAL                    `noun`    {- <'i^s`Ar> -}        [ ['n','o','t','i','c','e'], ['n','o','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    IstiFCAL                  `noun`    {- <isti^s`Ar> -}      [ ['p','r','e','m','o','n','i','t','i','o','n'], ['f','e','e','l','i','n','g'] ]
                              `plural`     IstiFCAL |< At,

    FaCL                      `noun`    {- <^sa`r> -}          [ ['h','a','i','r'] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy                `adj`     {- <^sa`rIy> -}        [ ['h','a','i','r'], ['c','a','p','i','l','l','a','r','y'] ],

    FaCIL                     `noun`    {- <^sa`Ir> -}         [ ['b','a','r','l','e','y'] ],

    FaCIL |< aT               `noun`    {- <^sa`IraT> -}       [ unwords [ ['b','e','a','d'], "(", ['g','u','n'], ['s','i','g','h','t'], ")" ] ],

    MaFCUL                    `adj`     {- <ma^s`Ur> -}        [ ['s','p','l','i','t'], ['c','r','a','c','k','e','d'] ],

    HaFCaL                    `adj`     {- <'a^s`ar> -}        [ ['h','i','r','s','u','t','e'] ]
                              `femini`     FaCLA',

    FaCLA' |< Iy              `noun`    {- <^sa`rAwIy> -}      [ ['S','h','a','\'','r','a','w','i'] ],

    FaCLAn |< Iy              `adj`     {- <^sa`rAnIy> -}      [ ['h','i','r','s','u','t','e'] ],

    FaCLAn |< Iy              `noun`    {- <^sa`rAnIy> -}      [ ['S','h','a','r','a','n','i'] ] ]


cluster_34  = cluster

 |> "^s ` ^s `" <| [

    KaRDaS                    `verb`    {- <^sa`^sa`> -}       [ ['d','i','l','u','t','e'] ],

    MuKaRDaS                  `adj`     {- <mu^sa`^sa`> -}     [ ['t','i','p','s','y'] ],

    KaRDAS                    `noun`    {- <^sa`^sA`> -}       [ ['d','a','r','k','n','e','s','s'] ] ]


cluster_35  = cluster

 |> "^s ` .t" <| [

    FaCaL                     `verb`    {- <^sa`a.t> -}        [ ['s','c','o','r','c','h'] ]
                              `imperf`     FCaL ]


cluster_36  = cluster

 |> "^s ` f" <| [

    FaCL |< aT                `noun`    {- <^sa`faT> -}        [ ['s','u','m','m','i','t'] ]
                              `plural`     FiCAL ]


cluster_37  = cluster

 |> "^s ` f r" <| [

    KaRDAS                    `noun`    {- <^sa`fAr> -}        [ ['S','h','a','f','a','r'] ] ]


cluster_38  = cluster

 |> "^s ` l" <| [

    FaCCaL                    `verb`    {- <^sa``al> -}        [ ['i','g','n','i','t','e'], ['i','n','f','l','a','m','e'] ],

    HaFCaL                    `verb`    {- <'a^s`al> -}        [ ['i','g','n','i','t','e'], ['i','n','f','l','a','m','e'] ],

    IFtaCaL                   `verb`    {- <i^sta`al> -}       [ unwords [ ['f','l','a','r','e'], ['u','p'] ], unwords [ ['c','a','t','c','h'], ['f','i','r','e'] ] ],

    FuCL |< aT                `noun`    {- <^su`laT> -}        [ ['f','i','r','e'], ['f','l','a','m','e'], ['t','o','r','c','h','e','s'] ]
                              `plural`     FuCaL,

    FaCAL |< Iy               `noun`    {- <^sa`AlIy> -}       [ ['S','h','a','a','l','i'] ],

    FaCIL |< aT               `noun`    {- <^sa`IlaT> -}       [ ['p','r','i','m','e','r'], ['w','i','c','k'] ]
                              `plural`     FaCA'iL,

    MaFCaL                    `noun`    {- <ma^s`al> -}        [ ['M','a','s','h','\'','a','l'] ],

    MaFCaL                    `noun`    {- <ma^s`al> -}        [ ['t','o','r','c','h'] ]
                              `plural`     MaFACiL,

    MiFCAL                    `noun`    {- <mi^s`Al> -}        [ ['t','o','r','c','h'] ],

    MiFCaL                    `noun`    {- <mi^s`al> -}        [ ['M','i','s','h','\'','a','l'] ],

    HiFCAL                    `noun`    {- <'i^s`Al> -}        [ ['i','g','n','i','t','i','n','g'], ['l','i','g','h','t','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    IFtiCAL                   `noun`    {- <i^sti`Al> -}       [ ['b','u','r','n','i','n','g'], ['i','g','n','i','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <i^sti`AlIy> -}     [ ['c','o','m','b','u','s','t','i','b','l','e'], ['f','l','a','m','m','a','b','l','e'] ],

    MuFtaCiL                  `adj`     {- <mu^sta`il> -}      [ ['b','u','r','n','i','n','g'], ['a','b','l','a','z','e'] ] ]


cluster_39  = cluster

 |> "^s ` n" <| [

    FaCaL                     `verb`    {- <^sa`an> -}         [ ['s','c','a','t','t','e','r'], ['t','o','u','s','l','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a^s`an> -}        [ unwords [ ['g','r','a','s','p'], ['b','y'], ['t','h','e'], ['h','a','i','r'] ] ],

    FaCLIL |< aT              `noun`    {- <^sa`nInaT> -}      [ unwords [ ['p','a','l','m'], ['b','r','a','n','c','h'] ] ]
                              `plural`     FaCALIL ]


cluster_40  = cluster

 |> "^s .g b" <| [

    FaCaL                     `verb`    {- <^sa.gab> -}        [ unwords [ ['p','r','o','v','o','k','e'], ['d','i','s','s','e','n','t'] ], unwords [ ['s','t','i','r'], ['u','p'], ['t','r','o','u','b','l','e'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <^sA.gab> -}        [ unwords [ ['c','a','u','s','e'], ['d','i','s','t','u','r','b','a','n','c','e','s'] ], unwords [ ['p','r','o','v','o','k','e'], ['d','i','s','o','r','d','e','r'] ] ],

    FaCaL                     `noun`    {- <^sa.gab> -}        [ ['u','n','r','e','s','t'], ['d','i','s','t','u','r','b','a','n','c','e'] ],

    FaCiL                     `noun`    {- <^sa.gib> -}        [ ['t','r','o','u','b','l','e','m','a','k','e','r'], ['a','g','i','t','a','t','o','r'] ]
                              `plural`     FaCiL |< Un
                              `femini`     FaCiL |< aT,

    FaCCAL                    `noun`    {- <^sa.g.gAb> -}      [ ['t','r','o','u','b','l','e','m','a','k','e','r'], ['a','g','i','t','a','t','o','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCUL                     `noun`    {- <^sa.gUb> -}        [ ['t','r','o','u','b','l','e','m','a','k','e','r'], ['a','g','i','t','a','t','o','r'] ],

    MuFACaL |< aT             `noun`    {- <mu^sA.gabaT> -}    [ ['d','i','s','t','u','r','b','a','n','c','e'], ['d','i','s','o','r','d','e','r'], ['a','g','i','t','a','t','i','o','n'] ]
                              `plural`     MuFACaL |< At,

    MaFACiL                   `noun`    {- <ma^sA.gib> -}      [ ['d','i','s','t','u','r','b','a','n','c','e'], ['d','i','s','o','r','d','e','r'], ['a','g','i','t','a','t','i','o','n'] ]
                              `plural`     MaFACiL
                           
    `limited` "-------P--",

    MuFACiL                   `noun`    {- <mu^sA.gib> -}      [ ['a','g','i','t','a','t','o','r'], ['s','u','b','v','e','r','t','e','r'], ['r','i','o','t','e','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT ]


cluster_41  = cluster

 |> "^s .g r" <| [

    FaCaL                     `verb`    {- <^sa.gar> -}        [ unwords [ ['b','e'], ['v','a','c','a','n','t'] ], unwords [ ['b','e'], ['u','n','p','r','o','t','e','c','t','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FuCUL                     `noun`    {- <^su.gUr> -}        [ ['v','a','c','a','n','c','y'] ],

    FACiL                     `adj`     {- <^sA.gir> -}        [ ['v','a','c','a','n','t'], ['u','n','p','r','o','t','e','c','t','e','d'], ['v','a','c','a','n','c','i','e','s'] ]
                              `plural`     FawACiL ]


cluster_42  = cluster

 |> "^s .g f" <| [

    FaCaL                     `verb`    {- <^sa.gaf> -}        [ ['i','n','f','a','t','u','a','t','e'], unwords [ ['f','a','l','l'], ['i','n'], ['l','o','v','e'] ] ]
                              `imperf`     FCaL,

    InFaCaL                   `verb`    {- <in^sa.gaf> -}      [ unwords [ ['b','e'], ['i','n','f','a','t','u','a','t','e','d'] ], unwords [ ['f','a','l','l'], ['i','n'], ['l','o','v','e'] ] ],

    FaCaL                     `noun`    {- <^sa.gaf> -}        [ ['p','a','s','s','i','o','n'], ['z','e','a','l'], ['i','n','f','a','t','u','a','t','i','o','n'] ],

    FaCaL |< Iy               `adj`     {- <^sa.gafIy> -}      [ ['i','n','t','e','r','e','s','t','i','n','g'] ],

    FaCiL                     `adj`     {- <^sa.gif> -}        [ ['p','a','s','s','i','o','n','a','t','e'], ['z','e','a','l','o','u','s'], ['i','n','f','a','t','u','a','t','e','d'] ],

    FaCAL                     `noun`    {- <^sa.gAf> -}        [ ['p','e','r','i','c','a','r','d','i','u','m'] ],

    FaCUL                     `adj`     {- <^sa.gUf> -}        [ ['e','n','a','m','o','r','e','d'], ['f','a','s','c','i','n','a','t','e','d'], ['i','n','f','a','t','u','a','t','e','d'] ],

    MaFCUL                    `adj`     {- <ma^s.gUf> -}       [ unwords [ ['f','o','n','d'], ['o','f'] ], ['e','n','a','m','o','r','e','d'], ['i','n','f','a','t','u','a','t','e','d'] ] ]


cluster_43  = cluster

 |> "^s .g l" <| [

    FaCaL                     `verb`    {- <^sa.gal> -}        [ ['o','c','c','u','p','y'], ['p','r','e','o','c','c','u','p','y'], ['e','m','p','l','o','y'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^sa.g.gal> -}      [ ['e','m','p','l','o','y'], ['o','p','e','r','a','t','e'] ],

    FACaL                     `verb`    {- <^sA.gal> -}        [ ['d','i','s','t','r','a','c','t'] ],

    HaFCaL                    `verb`    {- <'a^s.gal> -}       [ ['o','c','c','u','p','y'], ['d','i','s','t','r','a','c','t'] ],

    TaFACaL                   `verb`    {- <ta^sA.gal> -}      [ unwords [ ['k','e','e','p'], ['b','u','s','y'] ], unwords [ ['b','e'], ['o','c','c','u','p','i','e','d'] ] ],

    InFaCaL                   `verb`    {- <in^sa.gal> -}      [ unwords [ ['k','e','e','p'], ['b','u','s','y'] ], unwords [ ['b','e'], ['o','c','c','u','p','i','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i^sta.gal> -}      [ ['w','o','r','k'], ['o','p','e','r','a','t','e'] ],

    FuCL                      `noun`    {- <^su.gl> -}         [ ['w','o','r','k'], ['a','c','t','i','v','i','t','y'], ['o','c','c','u','p','a','t','i','o','n'], ['l','a','b','o','r'], ['b','u','s','i','n','e','s','s'] ]
                              `plural`     HaFCAL,

    FaCCAL                    `noun`    {- <^sa.g.gAl> -}      [ ['l','a','b','o','r','e','r'], ['w','o','r','k','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `adj`     {- <^sa.g.gAl> -}      [ ['b','u','s','y'], ['o','c','c','u','p','i','e','d'] ],

    FaCCAL                    `adj`     {- <^sa.g.gAl> -}      [ unwords [ ['i','n'], ['o','p','e','r','a','t','i','o','n'] ], ['r','u','n','n','i','n','g'], ['f','u','n','c','t','i','o','n','i','n','g'] ],

    FaCCIL                    `adj`     {- <^sa.g.gIl> -}      [ unwords [ ['h','a','r','d'], "-", ['w','o','r','k','i','n','g'] ], ['l','a','b','o','r','i','n','g'] ],

    FACUL                     `noun`    {- <^sA.gUl> -}        [ ['m','a','i','n','s','h','e','e','t'] ],

    MaFCaL                    `noun`    {- <ma^s.gal> -}       [ ['w','o','r','k','s','h','o','p'], ['w','o','r','k','h','o','u','s','e'] ]
                              `plural`     MaFACiL,

    MaFCaL |< aT              `noun`    {- <ma^s.galaT> -}     [ ['w','o','r','k'], ['a','c','t','i','v','i','t','y'], ['o','c','c','u','p','a','t','i','o','n'] ],

    TaFCIL                    `noun`    {- <ta^s.gIl> -}       [ ['o','p','e','r','a','t','i','o','n'], ['a','c','t','i','v','a','t','i','o','n'], ['e','m','p','l','o','y','m','e','n','t'], ['h','i','r','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta^s.gIlIy> -}     [ ['o','p','e','r','a','t','i','o','n','a','l'], ['e','m','p','l','o','y','m','e','n','t'], ['h','i','r','i','n','g'] ],

    InFiCAL                   `noun`    {- <in^si.gAl> -}      [ ['p','r','e','o','c','c','u','p','i','e','d'], ['b','u','s','y'], ['o','c','c','u','p','a','t','i','o','n'] ]
                              `plural`     InFiCAL |< At,

    IFtiCAL                   `noun`    {- <i^sti.gAl> -}      [ ['p','r','e','o','c','c','u','p','i','e','d'], ['f','u','n','c','t','i','o','n','i','n','g'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <^sA.gil> -}        [ ['w','o','r','k','i','n','g'], ['f','u','n','c','t','i','o','n','i','n','g'] ],

    FawACiL                   `noun`    {- <^sawA.gil> -}      [ ['p','r','e','o','c','c','u','p','a','t','i','o','n','s'], ['d','i','s','t','r','a','c','t','i','o','n','s'] ]
                              `plural`     FawACiL
                           
    `limited` "-------P--",

    MaFCUL                    `adj`     {- <ma^s.gUl> -}       [ ['b','u','s','y'], ['o','c','c','u','p','i','e','d'] ],

    MaFCUL |< Iy |< aT        `noun`    {- <ma^s.gUlIyaT> -}   [ ['a','n','x','i','e','t','y'], ['a','p','p','r','e','h','e','n','s','i','o','n'] ],

    MuFaCCaL                  `noun`    {- <mu^sa.g.gal> -}    [ ['e','m','p','l','o','y','e','e'] ]
                              `plural`     MuFaCCaL |< Un
                              `femini`     MuFaCCaL |< aT,

    MuFaCCiL                  `noun`    {- <mu^sa.g.gil> -}    [ ['s','t','a','r','t','e','r'] ],

    MuFtaCiL                  `adj`     {- <mu^sta.gil> -}     [ ['b','u','s','y'], ['o','c','c','u','p','i','e','d'], ['f','u','n','c','t','i','o','n','i','n','g'], unwords [ ['i','n'], ['o','p','e','r','a','t','i','o','n'] ] ],

    MunFaCiL                  `adj`     {- <mun^sa.gil> -}     [ ['b','u','s','y'], ['o','c','c','u','p','i','e','d'] ] ]


cluster_44  = cluster

 |> "^s f t" <| [

    FiCL                      `noun`    {- <^sift> -}          [ ['c','l','a','m','p','s'], ['t','w','e','e','z','e','r','s'] ]
                              `plural`     FuCUL ]


cluster_45  = cluster

 |> "^s f t r" <| [

    KaRDaS                    `verb`    {- <^saftar> -}        [ ['p','o','u','t'], ['s','u','l','k'] ],

    KaRDUS |< aT              `noun`    {- <^saftUraT> -}      [ unwords [ ['t','h','i','c','k'], ['l','i','p'] ] ]
                              `plural`     KaRADIS ]


cluster_46  = cluster

 |> "^s f r" <| [

    FaCL                      `noun`    {- <^safr> -}          [ ['e','d','g','e'], ['b','o','r','d','e','r'], ['l','i','d','s'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <^safraT> -}        [ ['b','l','a','d','e'], ['e','d','g','e'] ]
                              `plural`     FiCAL
                              `plural`     FaCaL |< At,

    FaCIL                     `noun`    {- <^safIr> -}         [ ['e','y','e','l','i','d'], ['f','r','i','n','g','e'], ['e','d','g','e'] ],

    MiFCaL                    `noun`    {- <mi^sfar> -}        [ ['s','n','o','u','t'], ['l','i','p'] ]
                              `plural`     MaFACiL ]

 |> "^s f r" <| [

    FaCCaL                    `verb`    {- <^saffar> -}        [ ['c','o','d','e'], ['e','n','c','o','d','e'], ['e','c','y','p','h','e','r'] ],

    FiCL                      `noun`    {- <^sifr> -}          [ ['c','i','p','h','e','r'], ['c','o','d','e'] ],

    FiCL |< Iy                `adj`     {- <^sifrIy> -}        [ ['c','i','p','h','e','r','e','d'], unwords [ ['i','n'], ['c','o','d','e'] ] ],

    FiCL |< aT                `noun`    {- <^sifraT> -}        [ ['c','i','p','h','e','r'], ['c','o','d','e'] ]
                              `plural`     FiCAL
                              `plural`     FiCaL,

    TaFCIL                    `noun`    {- <ta^sfIr> -}        [ ['e','n','c','o','d','i','n','g'], ['c','o','d','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <mu^saffar> -}      [ ['c','i','p','h','e','r','e','d'], unwords [ ['i','n'], ['c','o','d','e'] ], ['e','n','c','o','d','e','d'] ] ]


cluster_47  = cluster

 |> "^s f ^s f" <| [

    KaRDaS                    `verb`    {- <^saf^saf> -}       [ unwords [ ['d','r','y'], ['o','u','t'] ] ] ]


cluster_48  = cluster

 |> "^s f ^s q" <| [

    KaRDaS                    `noun`    {- <^saf^saq> -}       [ ['j','u','g'], ['c','a','r','a','f','e'] ] ]


cluster_49  = cluster

 |> "^s f .t" <| [

    FaCaL                     `verb`    {- <^safa.t> -}        [ ['s','i','p'], unwords [ ['s','i','p','h','o','n'], ['o','u','t'] ], ['v','a','c','u','u','m'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <^saf.t> -}         [ unwords [ ['s','i','p','h','o','n','i','n','g'], ['o','u','t'] ], ['v','a','c','u','u','m','i','n','g'] ],

    FaCL |< Iy                `adj`     {- <^saf.tIy> -}       [ unwords [ ['s','i','p','h','o','n','i','n','g'], ['o','u','t'] ], ['v','a','c','u','u','m','i','n','g'] ],

    FaCL |< aT                `noun`    {- <^saf.taT> -}       [ ['s','i','p'] ]
                              `plural`     FaCaL |< At,

    FaCCAL |< aT              `noun`    {- <^saffA.taT> -}     [ ['s','i','p','h','o','n'], ['v','a','c','u','u','m'] ]
                              `plural`     FaCCAL |< At,

    MaFCUL                    `adj`     {- <ma^sfU.t> -}       [ unwords [ ['s','i','p','h','o','n','e','d'], ['o','u','t'] ], ['v','a','c','u','u','m','e','d'] ] ]


cluster_50  = cluster

 |> "^s f `" <| [

    FaCaL                     `verb`    {- <^safa`> -}         [ ['a','c','c','o','m','p','a','n','y'], ['a','t','t','a','c','h'] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <^safa`> -}         [ ['i','n','t','e','r','c','e','d','e'], ['m','e','d','i','a','t','e'] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <^safa`> -}         [ unwords [ ['s','e','e'], ['d','o','u','b','l','e'] ] ],

    TaFaCCaL                  `verb`    {- <ta^saffa`> -}      [ ['i','n','t','e','r','c','e','d','e'], ['m','e','d','i','a','t','e'] ],

    FaCL                      `noun`    {- <^saf`> -}          [ unwords [ ['e','v','e','n'], ['n','u','m','b','e','r'] ] ]
                              `plural`     FiCAL
                              `plural`     HaFCAL,

    FaCL                      `noun`    {- <^saf`> -}          [ unwords [ ['d','o','u','b','l','e'], ['v','i','s','i','o','n'] ] ],

    FaCL |< Iy                `adj`     {- <^saf`Iy> -}        [ unwords [ ['e','v','e','n'], ['n','u','m','b','e','r','s'] ] ],

    FuCL |< aT                `noun`    {- <^suf`aT> -}        [ ['p','r','e','e','m','p','t','i','o','n'] ],

    FaCIL                     `noun`    {- <^safI`> -}         [ ['m','e','d','i','a','t','o','r'], ['i','n','t','e','r','c','e','s','s','o','r'] ]
                              `plural`     FuCaLA',

    FaCIL |< Iy               `adj`     {- <^safI`Iy> -}       [ ['p','a','t','r','o','n','a','l'] ],

    FaCAL |< aT               `noun`    {- <^safA`aT> -}       [ ['m','e','d','i','a','t','i','o','n'], ['i','n','t','e','r','c','e','s','s','i','o','n'] ],

    TaFaCCuL                  `noun`    {- <ta^saffu`> -}      [ ['m','e','d','i','a','t','i','o','n'], ['i','n','t','e','r','c','e','s','s','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <ta^saffu`Iy> -}    [ ['p','r','o','p','i','t','i','a','t','o','r','y'] ],

    FACiL                     `noun`    {- <^sAfi`> -}         [ ['m','e','d','i','a','t','o','r'], ['i','n','t','e','r','c','e','s','s','o','r'] ]
                              `plural`     FawACiL,

    FACiL |< Iy               `noun`    {- <^sAfi`Iy> -}       [ ['S','h','a','f','i','\'','i'] ],

    MaFCUL                    `adj`     {- <ma^sfU`> -}        [ ['a','c','c','o','m','p','a','n','i','e','d'], ['c','o','m','b','i','n','e','d'] ] ]


cluster_51  = cluster

 |> "^s f q" <| [

    FaCiL                     `verb`    {- <^safiq> -}         [ unwords [ ['h','a','v','e'], ['p','i','t','y'] ], ['s','y','m','p','a','t','h','i','z','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a^sfaq> -}        [ ['p','i','t','y'], ['c','o','m','m','i','s','e','r','a','t','e'] ],

    FaCaL                     `noun`    {- <^safaq> -}         [ ['d','u','s','k'], ['t','w','i','l','i','g','h','t'] ]
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <^safaqIy> -}       [ ['d','u','s','k'], ['t','w','i','l','i','g','h','t'] ],

    FaCaL |< aT               `noun`    {- <^safaqaT> -}       [ ['p','i','t','y'], ['s','y','m','p','a','t','h','y'] ],

    FaCIL                     `noun`    {- <^safIq> -}         [ ['S','h','a','f','i','q'] ],

    FaCIL                     `adj`     {- <^safIq> -}         [ ['c','o','m','p','a','s','s','i','o','n','a','t','e'], ['s','y','m','p','a','t','h','e','t','i','c'] ],

    FaCUL                     `adj`     {- <^safUq> -}         [ ['c','o','m','p','a','s','s','i','o','n','a','t','e'], ['s','y','m','p','a','t','h','e','t','i','c'] ],

    HiFCAL                    `noun`    {- <'i^sfAq> -}        [ ['p','i','t','y'], ['s','y','m','p','a','t','h','y'] ]
                              `plural`     HiFCAL |< At,

    MuFCiL                    `adj`     {- <mu^sfiq> -}        [ ['c','o','m','p','a','s','s','i','o','n','a','t','e'], ['s','y','m','p','a','t','h','e','t','i','c'] ] ]


cluster_52  = cluster

 |> "^s f n" <| [

    FiCLIL                    `noun`    {- <^sifnIn> -}        [ ['s','k','a','t','e'], ['r','a','y'] ] ]


cluster_53  = cluster

 |> ['^','s','U','f','I','n'] <| [

    _____ |< Iy               `adj`     {- <^sUfInIy> -}       [ ['c','h','a','u','v','i','n','i','s','t'] ],

    _____ |< Iy |< aT         `noun`    {- <^sUfInIyaT> -}     [ ['c','h','a','u','v','i','n','i','s','m'] ] ]


cluster_54  = cluster

 |> "^s f n" <| [

    FACiL                     `adj`     {- <^sAfin> -}         [ ['p','r','o','u','d'] ] ]


cluster_55  = cluster

 |> "^s f h" <| [

    FACaL                     `verb`    {- <^sAfah> -}         [ unwords [ ['c','o','m','m','u','n','i','c','a','t','e'], ['v','e','r','b','a','l','l','y'] ] ],

    FaC |< aT                 `noun`    {- <^safaT> -}         [ ['l','i','p'], ['r','i','m'], ['e','d','g','e'] ]
                              `plural`     FiCAL
                              `plural`     FaCA |< At,

    FaCA |< Iy                `adj`     {- <^safawIy> -}       [ ['o','r','a','l'], ['v','e','r','b','a','l'] ],

    FaCaL |< Iy               `adj`     {- <^safahIy> -}       [ ['o','r','a','l'], ['v','e','r','b','a','l'] ],

    FiCAL |<< "aN"            `noun`    {- <^sifAhaN> -}       [ ['o','r','a','l','l','y'], ['v','e','r','b','a','l','l','y'] ],

    FiCAL |< Iy               `adj`     {- <^sifAhIy> -}       [ ['o','r','a','l'], ['v','e','r','b','a','l'] ],

    MuFACaL |< aT             `noun`    {- <mu^sAfahaT> -}     [ ['s','p','e','e','c','h'] ],

    MuFACaL |< aT |<< "aN"    `noun`    {- <mu^sAfahaTaN> -}   [ ['o','r','a','l','l','y'], ['v','e','r','b','a','l','l','y'] ] ]


cluster_56  = cluster

 |> ['^','s','i','f','t','i','^','s','I'] <| [

    _____                     `noun`    {- <^sifti^sI> -}      [ ['f','i','l','i','g','r','e','e'] ] ]


cluster_57  = cluster

 |> "^s q .h" <| [

    HaFCaL                    `verb`    {- <'a^sqa.h> -}       [ ['r','e','m','o','v','e'], ['d','i','s','t','a','n','c','e'] ],

    HiFCAL                    `noun`    {- <'i^sqA.h> -}       [ ['r','e','m','o','v','a','l'], ['d','i','s','t','a','n','c','i','n','g'] ]
                              `plural`     HiFCAL |< At ]


cluster_58  = cluster

 |> "^s q _d f" <| [

    KuRDuS                    `noun`    {- <^suq_duf> -}       [ ['s','e','d','a','n'] ]
                              `plural`     KaRADiS ]


cluster_59  = cluster

 |> "^s q r" <| [

    FaCiL                     `verb`    {- <^saqir> -}         [ unwords [ ['b','e'], ['o','f'], ['f','a','i','r'], ['c','o','m','p','l','e','x','i','o','n'] ], unwords [ ['b','e'], ['b','l','o','n','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    IFCaLL                    `verb`    {- <i^sqarr> -}        [ unwords [ ['b','e'], ['o','f'], ['f','a','i','r'], ['c','o','m','p','l','e','x','i','o','n'] ], unwords [ ['b','e'], ['b','l','o','n','d'] ] ],

    FaCaL                     `noun`    {- <^saqar> -}         [ ['b','l','o','n','d'], unwords [ ['f','a','i','r'], "-", ['s','k','i','n','n','e','d'] ] ],

    FuCL |< aT                `noun`    {- <^suqraT> -}        [ ['b','l','o','n','d'], unwords [ ['f','a','i','r'], "-", ['s','k','i','n','n','e','d'] ] ],

    HaFCaL                    `adj`     {- <'a^sqar> -}        [ ['b','l','o','n','d'], unwords [ ['f','a','i','r'], "-", ['s','k','i','n','n','e','d'] ] ]
                              `plural`     FuCuL
                              `femini`     FaCLA',

    FuCayL                    `noun`    {- <^suqayr> -}        [ ['S','h','u','q','a','i','r'] ],

    FuCayL |< Iy              `noun`    {- <^suqayrIy> -}      [ ['S','h','u','q','a','i','r','i'] ] ]


cluster_60  = cluster

 |> "^s q r q" <| [

    KaRDaS                    `verb`    {- <^saqraq> -}        [ unwords [ ['b','e'], ['c','h','e','e','r','f','u','l'] ] ],

    KaRDaS |< aT              `noun`    {- <^saqraqaT> -}      [ ['c','h','e','e','r','f','u','l','n','e','s','s'] ] ]


cluster_61  = cluster

 |> "^s q ^s q" <| [

    KaRDaS                    `verb`    {- <^saq^saq> -}       [ ['c','h','i','r','p'], ['t','w','i','t','t','e','r'] ],

    KaRDaS |< aT              `noun`    {- <^saq^saqaT> -}     [ ['c','h','i','r','p','i','n','g'], ['t','w','i','t','t','e','r','i','n','g'] ],

    KaRADiS                   `noun`    {- <^saqA^siq> -}      [ ['p','r','a','t','t','l','e'] ]
                              `plural`     KaRADiS
                           
    `limited` "-------P--" ]


cluster_62  = cluster

 |> "^s q f" <| [

    FaCaL                     `noun`    {- <^saqaf> -}         [ ['p','o','t','s','h','e','r','d','s'] ],

    FuCAL |< aT               `noun`    {- <^suqAfaT> -}       [ ['p','o','t','s','h','e','r','d','s'] ] ]


cluster_63  = cluster

 |> ['^','s','I','q','i','l'] <| [

    _____                     `noun`    {- <^sIqil> -}         [ ['s','h','e','k','e','l'] ] ]


cluster_64  = cluster

 |> "^s q l" <| [

    FACUL                     `noun`    {- <^sAqUl> -}         [ unwords [ ['p','l','u','m','b'], ['l','i','n','e'] ] ] ]


cluster_65  = cluster

 |> "^s q l b" <| [

    KaRDaS                    `verb`    {- <^saqlab> -}        [ unwords [ ['t','u','r','n'], ['u','p','s','i','d','e'], ['d','o','w','n'] ], ['u','p','s','e','t'] ],

    TaKaRDaS                  `verb`    {- <ta^saqlab> -}      [ unwords [ ['b','e'], ['t','u','r','n','e','d'], ['u','p','s','i','d','e'], ['d','o','w','n'] ], unwords [ ['b','e'], ['u','p','s','e','t'] ] ],

    KaRDaS |< aT              `noun`    {- <^saqlabaT> -}      [ ['s','o','m','e','r','s','a','u','l','t'] ],

    MutaKaRDiS                `noun`    {- <muta^saqlib> -}    [ ['a','c','r','o','b','a','t'], ['s','t','u','n','t','m','a','n'] ]
                              `plural`     MutaKaRDiS |< Un
                              `femini`     MutaKaRDiS |< aT,

    KaRDUS                    `noun`    {- <^saqlUb> -}        [ unwords [ ['i','n','s','i','d','e'], "-", ['o','u','t'] ] ] ]


cluster_66  = cluster

 |> ['^','s','I','k'] <| [

    _____                     `noun`    {- <^sIk> -}           [ ['c','h','e','c','k'], ['c','h','e','q','u','e'] ]
                              `plural`     _____ |< At ]


cluster_67  = cluster

 |> "^s k b" <| [

    FaCIL                     `noun`    {- <^sakIb> -}         [ ['S','h','a','k','i','b'], ['C','h','a','k','i','b'] ] ]


cluster_68  = cluster

 |> "^s k d" <| [

    FuCL                      `noun`    {- <^sukd> -}          [ ['r','a','t','i','o','n'] ]
                              `plural`     HaFCAL ]


cluster_69  = cluster

 |> "^s k r" <| [

    FaCaL                     `verb`    {- <^sakar> -}         [ ['t','h','a','n','k'], unwords [ ['g','i','v','e'], ['t','h','a','n','k','s'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCL
                              `masdar`     FuCLAn,

    FACaL                     `verb`    {- <^sAkar> -}         [ unwords [ ['e','x','c','h','a','n','g','e'], ['t','h','a','n','k','s'] ], unwords [ ['c','o','n','g','r','a','t','u','l','a','t','e'], ['m','u','t','u','a','l','l','y'] ] ],

    TaFaCCaL                  `verb`    {- <ta^sakkar> -}      [ unwords [ ['b','e'], ['t','h','a','n','k','f','u','l'] ], unwords [ ['b','e'], ['g','r','a','t','e','f','u','l'] ] ],

    FuCL                      `noun`    {- <^sukr> -}          [ ['t','h','a','n','k','f','u','l','n','e','s','s'], ['t','h','a','n','k','s'] ]
                              `plural`     FuCUL,

    FuCL |<< "aN"             `noun`    {- <^sukraN> -}        [ unwords [ ['t','h','a','n','k'], ['y','o','u'] ], ['t','h','a','n','k','s'] ],

    FuCL |< Iy                `adj`     {- <^sukrIy> -}        [ unwords [ ['o','f'], ['t','h','a','n','k','s'] ] ],

    FuCL |< Iy                `noun`    {- <^sukrIy> -}        [ ['S','h','o','u','k','r','i'] ],

    FuCLAn                    `noun`    {- <^sukrAn> -}        [ ['g','r','a','t','i','t','u','d','e'], ['t','h','a','n','k','s'] ],

    FaCUL                     `adj`     {- <^sakUr> -}         [ ['g','r','a','t','e','f','u','l'], ['t','h','a','n','k','f','u','l'] ],

    FaCUL                     `noun`    {- <^sakUr> -}         [ ['S','h','a','k','o','u','r'] ],

    TaFaCCuL                  `noun`    {- <ta^sakkur> -}      [ ['g','r','a','t','i','t','u','d','e'], ['t','h','a','n','k','s'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `adj`     {- <^sAkir> -}         [ ['t','h','a','n','k','f','u','l'], ['g','r','a','t','e','f','u','l'] ],

    FACiL                     `noun`    {- <^sAkir> -}         [ ['S','h','a','k','i','r'] ],

    MaFCUL                    `adj`     {- <ma^skUr> -}        [ ['p','r','a','i','s','e','w','o','r','t','h','y'], unwords [ ['d','e','s','e','r','v','i','n','g'], ['t','h','a','n','k','s'] ] ],

    FiCAL |< aT               `noun`    {- <^sikAraT> -}       [ unwords [ ['g','u','n','n','y'], ['s','a','c','k'] ] ]
                              `plural`     FaCA'iL,

    FawCaLAn                  `noun`    {- <^sawkarAn> -}      [ ['h','e','m','l','o','c','k'] ] ]


cluster_70  = cluster

 |> "^s k s" <| [

    FaCuL                     `verb`    {- <^sakus> -}         [ unwords [ ['b','e'], ['m','a','l','i','c','i','o','u','s'] ], unwords [ ['b','e'], ['a','g','g','r','e','s','s','i','v','e'] ], unwords [ ['b','e'], ['u','n','f','r','i','e','n','d','l','y'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FACaL                     `verb`    {- <^sAkas> -}         [ unwords [ ['q','u','a','r','r','e','l'], ['w','i','t','h'] ], unwords [ ['b','e'], ['a','n','t','a','g','o','n','i','s','t','i','c'], ['t','o','w','a','r','d','s'] ] ],

    TaFACaL                   `verb`    {- <ta^sAkas> -}       [ unwords [ ['b','e'], ['o','n'], ['b','a','d'], ['t','e','r','m','s'] ], ['q','u','a','r','r','e','l'] ],

    FaCiL                     `adj`     {- <^sakis> -}         [ ['m','a','l','i','c','i','o','u','s'], ['q','u','a','r','r','e','l','s','o','m','e'] ]
                              `plural`     FuCL,

    FaCAL |< aT               `noun`    {- <^sakAsaT> -}       [ ['m','a','l','i','c','e'], ['u','n','f','r','i','e','n','d','l','i','n','e','s','s'] ],

    MuFACaL |< aT             `noun`    {- <mu^sAkasaT> -}     [ ['q','u','a','r','r','e','l'], ['d','i','s','p','u','t','e'] ],

    TaFACuL                   `noun`    {- <ta^sAkus> -}       [ ['i','n','c','o','n','g','r','u','i','t','y'], ['q','u','a','r','r','e','l'] ]
                              `plural`     TaFACuL |< At,

    MuFACiL                   `adj`     {- <mu^sAkis> -}       [ ['q','u','a','r','r','e','l','s','o','m','e'] ] ]


cluster_71  = cluster

 |> "^s k ^s" <| [

    FACUL                     `noun`    {- <^sAkU^s> -}        [ ['h','a','m','m','e','r'] ]
                              `plural`     FawACIL,

    FaCUL                     `noun`    {- <^sakU^s> -}        [ ['h','a','m','m','e','r'] ]
                              `plural`     FawACIL ]


cluster_72  = cluster

 |> "^s k l" <| [

    FaCaL                     `verb`    {- <^sakal> -}         [ ['h','o','b','b','l','e'], unwords [ ['b','e'], ['a','m','b','i','g','u','o','u','s'] ], ['v','o','c','a','l','i','z','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <^sakkal> -}        [ ['c','o','n','s','t','i','t','u','t','e'], ['f','o','r','m'], ['c','o','m','p','o','s','e'] ],

    FACaL                     `verb`    {- <^sAkal> -}         [ ['r','e','s','e','m','b','l','e'] ],

    HaFCaL                    `verb`    {- <'a^skal> -}        [ unwords [ ['b','e'], ['a','m','b','i','g','u','o','u','s'] ], unwords [ ['b','e'], ['c','o','m','p','l','i','c','a','t','e','d'] ] ],

    TaFaCCaL                  `verb`    {- <ta^sakkal> -}      [ unwords [ ['b','e'], ['f','o','r','m','e','d'] ], unwords [ ['b','e'], ['c','o','m','p','o','s','e','d'] ] ],

    TaFACaL                   `verb`    {- <ta^sAkal> -}       [ unwords [ ['b','e'], ['u','n','i','f','o','r','m'] ], unwords [ ['r','e','s','e','m','b','l','e'], ['e','a','c','h'], ['o','t','h','e','r'] ] ],

    IstaFCaL                  `verb`    {- <ista^skal> -}      [ unwords [ ['r','e','g','a','r','d'], ['a','s'], ['d','u','b','i','o','u','s'] ] ],

    FaCL                      `noun`    {- <^sakl> -}          [ ['m','a','n','n','e','r'], ['f','o','r','m'], ['c','o','n','f','i','g','u','r','a','t','i','o','n'], ['t','y','p','e'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <^saklaT> -}        [ ['d','i','a','c','r','i','t','i','c'], unwords [ ['d','i','a','c','r','i','t','i','c','a','l'], ['m','a','r','k'] ] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy                `adj`     {- <^saklIy> -}        [ ['f','o','r','m','a','l'], ['f','i','g','u','r','a','t','i','v','e'] ],

    lA >| FaCL |< Iy          `adj`     {- <lA-^saklIy> -}     [ ['a','m','o','r','p','h','o','u','s'] ],

    FaCL |< Iy |< aT          `noun`    {- <^saklIyaT> -}      [ ['f','o','r','m','a','l','i','s','m'], ['f','o','r','m','a','l','i','t','y'] ]
                              `plural`     FaCL |< Iy |< At,

    FiCAL                     `noun`    {- <^sikAl> -}         [ ['a','t','t','a','c','h','m','e','n','t'], ['f','e','t','t','e','r'] ]
                              `plural`     FiCAL |< At,

    TaFCIL                    `noun`    {- <ta^skIl> -}        [ ['f','o','r','m','a','t','i','o','n'], ['c','o','m','p','o','s','i','t','i','o','n'], ['c','o','n','s','t','i','t','u','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< aT              `noun`    {- <ta^skIlaT> -}      [ ['a','s','s','o','r','t','m','e','n','t'], ['g','r','o','u','p'] ],

    TaFCIL |< aT              `noun`    {- <ta^skIlaT> -}      [ unwords [ ['v','o','c','a','l','i','z','a','t','i','o','n'], "(", ['s','h','o','r','t'], ['v','o','w','e','l','s'], ['a','n','d'], ['d','i','a','c','r','i','t','i','c','s'], ")" ] ],

    TaFCIL |< Iy              `adj`     {- <ta^skIlIy> -}      [ ['v','i','s','u','a','l'] ],

    MuFACaL |< aT             `noun`    {- <mu^sAkalaT> -}     [ ['r','e','s','e','m','b','l','a','n','c','e'], ['s','i','m','i','l','a','r','i','t','y'] ],

    HiFCAL                    `noun`    {- <'i^skAl> -}        [ ['a','m','b','i','g','u','i','t','y'], ['p','r','o','b','l','e','m'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <ta^sakkul> -}      [ ['d','i','f','f','e','r','e','n','t','i','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <ta^sAkul> -}       [ ['r','e','s','e','m','b','l','a','n','c','e'], ['s','i','m','i','l','a','r','i','t','y'] ]
                              `plural`     TaFACuL |< At,

    FACiL |< aT               `noun`    {- <^sAkilaT> -}       [ ['m','a','n','n','e','r'], ['m','o','d','e'], ['f','o','r','m'] ]
                              `plural`     FawACiL,

    MuFaCCaL                  `adj`     {- <mu^sakkal> -}      [ ['c','o','m','p','o','s','e','d'], ['f','o','r','m','e','d'] ],

    MuFaCCaL                  `adj`     {- <mu^sakkal> -}      [ ['v','a','r','i','e','g','a','t','e','d'] ],

    MuFaCCaL                  `adj`     {- <mu^sakkal> -}      [ unwords [ ['d','i','a','c','r','i','t','i','c','i','z','e','d'], "(", ['w','i','t','h'], ['s','h','o','r','t'], ['v','o','w','e','l','s'], ['a','n','d'], ['d','i','a','c','r','i','t','i','c','s'], ")" ] ],

    HiFCAL |< Iy              `adj`     {- <'i^skAlIy> -}      [ ['p','r','o','b','l','e','m','a','t','i','c'] ],

    MuFCiL                    `noun`    {- <mu^skil> -}        [ ['p','r','o','b','l','e','m'], ['d','i','f','f','i','c','u','l','t','y'] ]
                              `plural`     MuFCiL |< At
                              `plural`     MaFACiL,

    MuFCiL |< aT              `noun`    {- <mu^skilaT> -}      [ ['p','r','o','b','l','e','m'], ['i','s','s','u','e'], ['i','n','c','o','n','v','e','n','i','e','n','c','e'] ]
                              `plural`     MaFACiL
                              `plural`     MuFCiL |< At,

    MutaFACiL                 `adj`     {- <muta^sAkil> -}     [ ['s','i','m','i','l','a','r'], ['u','n','i','f','o','r','m'], ['i','s','o','m','o','r','p','h','i','c'] ] ]


cluster_73  = cluster

 |> ['^','s','U','k','U','l','A','t'] <| [

    _____ |< aT               `noun`    {- <^sUkUlAtaT> -}     [ ['c','h','o','c','o','l','a','t','e'] ],

    _____ |< Iy               `adj`     {- <^sUkUlAtIy> -}     [ ['c','h','o','c','o','l','a','t','e'] ] ]

 |> ['^','s','u','k','U','l','A','t'] <| [

    _____ |< aT               `noun`    {- <^sukUlAtaT> -}     [ ['c','h','o','c','o','l','a','t','e'] ],

    _____ |< Iy               `adj`     {- <^sukUlAtIy> -}     [ ['c','h','o','c','o','l','a','t','e'] ] ]

 |> ['^','s','I','k','U','l','A','t'] <| [

    _____ |< aT               `noun`    {- <^sIkUlAtaT> -}     [ ['c','h','o','c','o','l','a','t','e'] ],

    _____ |< Iy               `adj`     {- <^sIkUlAtIy> -}     [ ['c','h','o','c','o','l','a','t','e'] ] ]


cluster_74  = cluster

 |> "^s k m" <| [

    FaCaL                     `verb`    {- <^sakam> -}         [ ['b','r','i','d','l','e'], ['m','u','z','z','l','e'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <^sakm> -}          [ ['b','r','i','d','l','i','n','g'], ['m','u','z','z','l','i','n','g'] ],

    FaCIL                     `noun`    {- <^sakIm> -}         [ ['b','r','i','d','l','e'], ['b','r','a','k','e'] ]
                              `plural`     FuCuL
                              `plural`     FaCA'iL,

    FaCIL |< aT               `noun`    {- <^sakImaT> -}       [ ['o','b','s','t','i','n','a','c','y'] ] ]


cluster_75  = cluster

 |> "^s k h" <| [

    FACaL                     `verb`    {- <^sAkah> -}         [ ['r','e','s','e','m','b','l','e'] ],

    MuFACaL |< aT             `noun`    {- <mu^sAkahaT> -}     [ ['r','e','s','e','m','b','l','i','n','g'], ['r','e','s','e','m','b','l','a','n','c','e'] ] ]


cluster_76  = cluster

 |> ['^','s','I','l'] <| [

    _____ |<< "I"             `xtra`    {- <^sIlI> -}          [ ['C','h','i','l','e'] ],

    _____ |< Iy               `adj`     {- <^sIlIy> -}         [ ['C','h','i','l','e','a','n'] ] ]


cluster_77  = cluster

 |> "^s l b" <| [

    FaCaL |< Iy               `noun`    {- <^salabIy> -}       [ ['S','h','a','l','a','b','i'], ['C','h','a','l','a','b','i'] ],

    FiCLAy |< aT              `noun`    {- <^silbAyaT> -}      [ ['S','h','e','l','b','a','y','a'], ['S','h','i','l','b','a','y','a'] ],

    FaCaL |< Iy               `adj`     {- <^salabIy> -}       [ ['h','a','n','d','s','o','m','e'], ['d','a','n','d','y'] ] ]


cluster_78  = cluster

 |> "^s l t" <| [

    FaCCaL                    `verb`    {- <^sallat> -}        [ ['k','i','c','k'] ],

    FaCL |< aT                `noun`    {- <^saltaT> -}        [ ['m','a','t','t','r','e','s','s'] ]
                              `plural`     FaCaL |< At
                              `plural`     FiCaL ]


cluster_79  = cluster

 |> "^s l .h" <| [

    FaCaL                     `verb`    {- <^sala.h> -}        [ ['d','i','s','r','o','b','e'], ['s','h','e','d'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^salla.h> -}       [ ['d','i','v','e','s','t'], ['d','i','s','r','o','b','e'] ],

    FaCaL                     `noun`    {- <^sala.h> -}        [ ['S','h','a','l','a','h'] ],

    MaFCaL                    `noun`    {- <ma^sla.h> -}       [ ['c','l','o','a','k'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta^slI.h> -}       [ ['d','i','v','e','s','t','m','e','n','t'], ['p','l','u','n','d','e','r','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `noun`    {- <mu^salla.h> -}     [ unwords [ ['d','r','e','s','s','i','n','g'], ['r','o','o','m'] ] ],

    MuFaCCiL                  `noun`    {- <mu^salli.h> -}     [ ['b','r','i','g','a','n','d'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_80  = cluster

 |> "^s l ^s l" <| [

    KaRDaS                    `verb`    {- <^sal^sal> -}       [ ['d','r','i','p'], ['t','r','i','c','k','l','e'] ],

    KaRDaS |< aT              `noun`    {- <^sal^salaT> -}     [ ['d','r','i','p','p','i','n','g'], ['t','r','i','c','k','l','i','n','g'] ] ]


cluster_81  = cluster

 |> "^s l f" <| [

    FiCL |< aT                `noun`    {- <^silfaT> -}        [ unwords [ ['r','a','z','o','r'], ['b','l','a','d','e'] ] ],

    FaCaL                     `noun`    {- <^salaf> -}         [ ['S','h','a','l','a','f'] ] ]


cluster_82  = cluster

 |> "^s l q" <| [

    FaCaL                     `verb`    {- <^salaq> -}         [ ['s','p','l','i','t'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <^salq> -}          [ ['s','p','l','i','t','t','i','n','g'] ],

    FiCL                      `noun`    {- <^silq> -}          [ ['l','a','m','p','r','e','y'] ],

    FaCaL                     `noun`    {- <^salaq> -}         [ unwords [ ['b','a','l','e'], "(", ['h','a','y'], ")" ] ],

    FawCaL |< Iy              `adj`     {- <^sawlaqIy> -}      [ unwords [ ['s','w','e','e','t'], "-", ['t','o','o','t','h','e','d'] ] ] ]


cluster_83  = cluster

 |> "^s l m" <| [

    FayCaL                    `noun`    {- <^saylam> -}        [ ['d','a','r','n','e','l'] ] ]


cluster_84  = cluster

 |> ['^','s','i','l','i','n'] <| [

    _____                     `noun`    {- <^silin> -}         [ ['s','h','i','l','l','i','n','g'] ]
                              `plural`     _____ |< At ]


cluster_85  = cluster

 |> ['^','s','A','l','I','h'] <| [

    _____                     `noun`    {- <^sAlIh> -}         [ ['c','h','a','l','e','t'], ['l','o','d','g','e'] ]
                              `plural`     _____ |< At ]


cluster_86  = cluster

 |> "^s l h b" <| [

    KaRDUS                    `noun`    {- <^salhUb> -}        [ ['S','h','a','l','h','o','u','b'] ] ]


cluster_87  = cluster

 |> ['^','s','I','l','m','A','n'] <| [

    _____                     `noun`    {- <^sIlmAn> -}        [ unwords [ ['s','t','e','e','l'], ['g','i','r','d','e','r'] ] ] ]


cluster_88  = cluster

 |> "^s m t" <| [

    FaCiL                     `verb`    {- <^samit> -}         [ ['g','l','o','a','t'], unwords [ ['r','e','j','o','i','c','e'], ['m','a','l','i','c','i','o','u','s','l','y'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^sammat> -}        [ ['d','i','s','a','p','p','o','i','n','t'] ],

    HaFCaL                    `verb`    {- <'a^smat> -}        [ ['g','l','o','a','t'], unwords [ ['r','e','j','o','i','c','e'], ['m','a','l','i','c','i','o','u','s','l','y'] ] ],

    FaCAL                     `noun`    {- <^samAt> -}         [ ['g','l','o','a','t','i','n','g'], unwords [ ['m','a','l','i','c','i','o','u','s'], ['j','o','y'] ] ],

    FaCAL |< aT               `noun`    {- <^samAtaT> -}       [ ['g','l','o','a','t','i','n','g'], unwords [ ['m','a','l','i','c','i','o','u','s'], ['j','o','y'] ] ],

    FACiL                     `adj`     {- <^sAmit> -}         [ ['m','a','l','i','c','i','o','u','s'], ['g','l','o','a','t','i','n','g'] ]
                              `plural`     FuCCAL
                              `plural`     FawACiL ]


cluster_89  = cluster

 |> "^s m _h" <| [

    FaCaL                     `verb`    {- <^sama_h> -}        [ unwords [ ['b','e'], ['l','o','f','t','y'] ], ['d','i','s','d','a','i','n'], unwords [ ['b','e'], ['a','r','r','o','g','a','n','t'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FuCUL,

    TaFACaL                   `verb`    {- <ta^sAma_h> -}      [ unwords [ ['b','e'], ['l','o','f','t','y'] ], unwords [ ['b','e'], ['p','r','o','u','d'] ] ],

    FuCUL                     `noun`    {- <^sumU_h> -}        [ ['l','o','f','t','i','n','e','s','s'], ['s','u','p','e','r','i','o','r','i','t','y'], ['h','a','u','g','h','t','i','n','e','s','s'] ],

    FACiL                     `adj`     {- <^sAmi_h> -}        [ ['l','o','f','t','y'], ['s','u','p','e','r','i','o','r'], ['h','a','u','g','h','t','y'] ],

    TaFACuL                   `noun`    {- <ta^sAmu_h> -}      [ ['p','r','i','d','e'], ['h','a','u','g','h','t','i','n','e','s','s'] ]
                              `plural`     TaFACuL |< At,

    MutaFACiL                 `adj`     {- <muta^sAmi_h> -}    [ ['h','a','u','g','h','t','y'], ['l','o','f','t','y'] ] ]


cluster_90  = cluster

 |> "^s m _h r" <| [

    KaRDaS                    `verb`    {- <^sam_har> -}       [ unwords [ ['b','e'], ['l','o','f','t','y'] ], unwords [ ['b','e'], ['p','r','o','u','d'] ] ],

    IKRaDaSS                  `verb`    {- <i^sma_harr> -}     [ unwords [ ['b','e'], ['l','o','f','t','y'] ], unwords [ ['b','e'], ['p','r','o','u','d'] ], unwords [ ['b','e'], ['a','r','r','o','g','a','n','t'] ], unwords [ ['b','e'], ['g','i','g','a','n','t','i','c'] ] ],

    IKRiDSAS                  `noun`    {- <i^smi_hrAr> -}     [ ['l','o','f','t','i','n','e','s','s'], ['p','r','i','d','e'] ]
                              `plural`     IKRiDSAS |< At,

    MuKRaDiSS                 `adj`     {- <mu^sma_hirr> -}    [ ['l','o','f','t','y'], ['t','o','w','e','r','i','n','g'] ] ]


cluster_91  = cluster

 |> "^s m r" <| [

    FaCCaL                    `verb`    {- <^sammar> -}        [ unwords [ ['g','a','t','h','e','r'], ['u','p'] ], ['p','r','e','p','a','r','e'] ],

    TaFaCCaL                  `verb`    {- <ta^sammar> -}      [ unwords [ ['w','o','r','k'], ['b','u','s','i','l','y'] ] ],

    FaCaL                     `noun`    {- <^samar> -}         [ ['f','e','n','n','e','l'] ],

    FuCL |< aT                `noun`    {- <^sumraT> -}        [ ['f','e','n','n','e','l'] ],

    FaCAL                     `noun`    {- <^samAr> -}         [ ['f','e','n','n','e','l'] ],

    FaCL |< Iy                `noun`    {- <^samrIy> -}        [ ['S','h','a','m','r','i'] ],

    FaCLAn |< Iy              `noun`    {- <^samrAnIy> -}      [ ['S','h','a','m','r','a','n','i'] ],

    MuFaCCiL                  `adj`     {- <mu^sammir> -}      [ ['i','n','d','u','s','t','r','i','o','u','s'], unwords [ ['b','u','s','i','l','y'], ['a','t'], ['w','o','r','k'] ] ],

    MuFaCCaL                  `adj`     {- <mu^sammar> -}      [ unwords [ ['g','a','t','h','e','r','e','d'], ['u','p'] ], ['t','u','c','k','e','d'] ] ]


cluster_92  = cluster

 |> "^s m r _h" <| [

    KuRDUS                    `noun`    {- <^sumrU_h> -}       [ ['p','e','t','a','r','d'], ['d','e','t','o','n','a','t','o','r'] ]
                              `plural`     KaRADIS,

    KiRDAS                    `noun`    {- <^simrA_h> -}       [ ['s','t','a','l','k'], ['p','a','n','i','c','l','e'] ] ]


cluster_93  = cluster

 |> "^s m s" <| [

    FaCaL                     `verb`    {- <^samas> -}         [ unwords [ ['b','e'], ['h','e','a','d','s','t','r','o','n','g'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL
                              `masdar`     FiCAL,

    FaCiL                     `verb`    {- <^samis> -}         [ unwords [ ['b','e'], ['s','u','n','n','y'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <^sammas> -}        [ unwords [ ['e','x','p','o','s','e'], ['t','o'], ['t','h','e'], ['s','u','n'] ] ],

    HaFCaL                    `verb`    {- <'a^smas> -}        [ unwords [ ['b','e'], ['s','u','n','n','y'] ] ],

    TaFaCCaL                  `verb`    {- <ta^sammas> -}      [ unwords [ ['b','e'], ['i','n'], ['t','h','e'], ['s','u','n'] ], ['s','u','n','b','a','t','h','e'] ],

    FaCL                      `noun`    {- <^sams> -}          [ ['s','u','n'] ]
                              `plural`     FuCUL,

    FaCL                      `noun`    {- <^sams> -}          [ ['S','h','a','m','s'] ],

    FaCL |< Iy                `adj`     {- <^samsIy> -}        [ ['s','o','l','a','r'] ],

    FaCL |< Iy |< aT          `noun`    {- <^samsIyaT> -}      [ ['s','u','n','s','h','a','d','e'], ['u','m','b','r','e','l','l','a'], ['p','a','r','a','s','o','l'] ]
                              `plural`     FaCALI,

    FACiL                     `adj`     {- <^sAmis> -}         [ ['s','u','n','n','y'] ],

    FACiL                     `adj`     {- <^sAmis> -}         [ ['r','e','b','e','l','l','i','o','u','s'], ['d','i','s','o','b','e','d','i','e','n','t'] ]
                              `plural`     FawACiL,

    FACiL |< Iy               `noun`    {- <^sAmisIy> -}       [ ['S','h','a','m','i','s','i'] ],

    FaCUL                     `adj`     {- <^samUs> -}         [ ['r','e','b','e','l','l','i','o','u','s'], ['d','i','s','o','b','e','d','i','e','n','t'] ],

    MuFCiL                    `adj`     {- <mu^smis> -}        [ ['s','u','n','n','y'] ],

    FaCCAL                    `noun`    {- <^sammAs> -}        [ ['d','e','a','c','o','n'], ['a','c','o','l','y','t','e'] ]
                              `plural`     FaCACiL |< aT,

    FaCCAL                    `noun`    {- <^sammAs> -}        [ ['S','h','a','m','m','a','s'] ] ]


cluster_94  = cluster

 |> "^s m ^s m" <| [

    KaRDaS                    `verb`    {- <^sam^sam> -}       [ ['s','n','i','f','f'] ],

    KaRDaS |< aT              `noun`    {- <^sam^samaT> -}     [ ['s','n','i','f','f','i','n','g'] ] ]


cluster_95  = cluster

 |> "^s m .t" <| [

    FaCiL                     `verb`    {- <^sami.t> -}        [ unwords [ ['t','u','r','n'], ['g','r','a','y'] ] ]
                              `imperf`     FCaL,

    IFCaLL                    `verb`    {- <i^sma.t.t> -}      [ unwords [ ['t','u','r','n'], ['g','r','a','y'] ] ],

    FaCaL                     `adj`     {- <^sama.t> -}        [ unwords [ ['t','u','r','n','i','n','g'], ['g','r','a','y'] ] ],

    HaFCaL                    `adj`     {- <'a^sma.t> -}       [ unwords [ ['g','r','a','y'], "-", ['h','a','i','r','e','d'] ] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    IFCiLAL                   `noun`    {- <i^smi.tA.t> -}     [ ['g','r','a','y','i','n','g'] ]
                              `plural`     IFCiLAL |< At ]


cluster_96  = cluster

 |> "^s m `" <| [

    FiCLUn                    `noun`    {- <^sim`Un> -}        [ ['S','h','i','m','o','n'] ],

    FaCLUn                    `noun`    {- <^sam`Un> -}        [ ['S','h','a','m','o','u','n'] ] ]

 |> "^s m `" <| [

    FaCCaL                    `verb`    {- <^samma`> -}        [ unwords [ ['p','u','t'], ['w','a','x'], ['o','n'] ], unwords [ ['s','m','e','a','r'], ['w','i','t','h'], ['w','a','x'] ], unwords [ ['m','a','k','e'], ['i','m','p','e','r','m','e','a','b','l','e'] ] ],

    TaFCIL                    `noun`    {- <ta^smI`> -}        [ ['w','a','x','i','n','g'], unwords [ ['s','m','e','a','r','i','n','g'], ['w','i','t','h'], ['w','a','x'] ], unwords [ ['m','a','k','i','n','g'], ['i','m','p','e','r','m','e','a','b','l','e'] ] ]
                              `plural`     TaFCIL |< At,

    FaCL                      `noun`    {- <^sam`> -}          [ ['w','a','x'], ['c','a','n','d','l','e'] ]
                              `plural`     FuCUL,

    FaCL |<< "a" |<< "dAn"    `noun`    {- <^sam`adAn> -}      [ ['c','a','n','d','e','l','a','b','r','u','m'], ['c','a','n','d','l','e','h','o','l','d','e','r'] ]
                              `plural`     FaCL |<< "a" |<< "dAn" |< At,

    FaCL |< aT                `noun`    {- <^sam`aT> -}        [ ['c','a','n','d','l','e'] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy                `adj`     {- <^sam`Iy> -}        [ ['w','a','x'], unwords [ ['m','a','d','e'], ['o','f'], ['w','a','x'] ] ],

    FaCCAL                    `noun`    {- <^sammA`> -}        [ unwords [ ['c','h','a','n','d','l','e','r'], "(", ['c','a','n','d','l','e'], ['m','a','k','e','r'], "/", ['s','e','l','l','e','r'], ")" ] ]
                              `plural`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <^sammA`> -}        [ ['S','h','a','m','m','a'] ],

    FaCCAL |< aT              `noun`    {- <^sammA`aT> -}      [ unwords [ ['c','l','o','t','h','e','s'], ['r','a','c','k'] ] ]
                              `plural`     FaCCAL |< At,

    MuFaCCaL                  `adj`     {- <mu^samma`> -}      [ ['i','m','p','e','r','m','e','a','b','l','e'], ['w','a','t','e','r','p','r','o','o','f'] ] ]


cluster_97  = cluster

 |> "^s m l" <| [

    FaCiL                     `verb`    {- <^samil> -}         [ ['c','o','m','p','r','i','s','e'], ['i','n','c','l','u','d','e'], ['c','o','n','t','a','i','n'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FuCUL,

    FaCaL                     `verb`    {- <^samal> -}         [ ['c','o','m','p','r','i','s','e'], ['i','n','c','l','u','d','e'], ['c','o','n','t','a','i','n'] ]
                              `imperf`     FCuL,

    IFtaCaL                   `verb`    {- <i^stamal> -}       [ ['i','n','c','l','u','d','e'], ['c','o','n','t','a','i','n'], ['c','o','m','p','r','i','s','e'] ],

    FaCL                      `noun`    {- <^saml> -}          [ ['m','e','m','b','e','r','s'], ['u','n','i','o','n'], ['i','n','c','l','u','s','i','o','n'] ],

    FaCL |< aT                `noun`    {- <^samlaT> -}        [ ['c','l','o','a','k'] ]
                              `plural`     FaCaL |< At,

    FaCAL                     `noun`    {- <^samAl> -}         [ ['n','o','r','t','h'], ['n','o','r','t','h','e','r','n'] ],

    FaCAL |< Iy               `adj`     {- <^samAlIy> -}       [ ['n','o','r','t','h'], ['n','o','r','t','h','e','r','n'] ],

    FiCAL                     `noun`    {- <^simAl> -}         [ ['l','e','f','t'] ],

    FiCAL |< Iy               `adj`     {- <^simAlIy> -}       [ ['l','e','f','t','i','s','t'] ],

    FuCUL                     `noun`    {- <^sumUl> -}         [ ['c','o','m','p','r','i','s','i','n','g'], ['i','n','c','l','u','s','i','o','n'], ['c','o','n','t','a','i','n','i','n','g'] ],

    FuCUL |< Iy               `adj`     {- <^sumUlIy> -}       [ ['u','n','i','v','e','r','s','a','l'], ['t','o','t','a','l'], ['t','o','t','a','l','i','t','a','r','y'], ['c','o','m','p','r','e','h','e','n','s','i','v','e'] ],

    FuCUL |< Iy |< aT         `noun`    {- <^sumUlIyaT> -}     [ ['u','n','i','v','e','r','s','a','l','i','t','y'], ['t','o','t','a','l','i','t','y'] ],

    FuCLUL                    `noun`    {- <^sumlUl> -}        [ unwords [ ['s','m','a','l','l'], ['a','m','o','u','n','t'] ] ]
                              `plural`     FaCALIL,

    FaCL |< Iy |< aT          `noun`    {- <^samlIyaT> -}      [ unwords [ ['g','o','o','d'], ['q','u','a','l','i','t','y'] ], unwords [ ['g','o','o','d'], ['t','r','a','i','t'] ] ]
                              `plural`     FaCA'iL,

    HaFCaL                    `adj`     {- <'a^smal> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['c','o','m','p','r','e','h','e','n','s','i','v','e'] ] ],

    FACiL                     `adj`     {- <^sAmil> -}         [ ['c','o','m','p','r','e','h','e','n','s','i','v','e'], ['g','e','n','e','r','a','l'], ['c','o','m','p','l','e','t','e'], ['m','a','s','s'] ],

    MaFCUL                    `adj`     {- <ma^smUl> -}        [ ['i','n','c','l','u','d','e','d'], ['c','o','n','t','a','i','n','e','d'], ['i','m','p','l','i','e','d'], unwords [ ['i','n','h','e','r','e','n','t'], ['f','u','n','c','t','i','o','n','s'] ] ],

    MuFtaCiL                  `adj`     {- <mu^stamil> -}      [ ['i','n','c','l','u','d','i','n','g'], ['c','o','m','p','r','i','s','i','n','g'], ['c','o','n','t','a','i','n','i','n','g'] ],

    MuFtaCaL                  `noun`    {- <mu^stamal> -}      [ ['c','o','n','t','e','n','t','s'] ]
                              `plural`     MuFtaCaL |< At ]


cluster_98  = cluster

 |> ['^','s','a','m','A','n'] <| [

    _____ |< Iy |< aT         `noun`    {- <^samAnIyaT> -}     [ ['s','h','a','m','a','n','i','s','m'] ] ]


cluster_99  = cluster

 |> ['^','s','a','m','a','n','d','a','r'] <| [

    _____                     `noun`    {- <^samandar> -}      [ ['b','e','e','t'], ['c','h','a','r','d'] ] ]


cluster_100 = cluster

 |> ['^','s','a','m','a','n','d','U','r'] <| [

    _____ |< aT               `noun`    {- <^samandUraT> -}    [ ['b','u','o','y'] ]
                              `plural`     _____ |< At ]


section = [ cluster_1,
            cluster_2,
            cluster_3,
            cluster_4,
            cluster_5,
            cluster_6,
            cluster_7,
            cluster_8,
            cluster_9,
            cluster_10,
            cluster_11,
            cluster_12,
            cluster_13,
            cluster_14,
            cluster_15,
            cluster_16,
            cluster_17,
            cluster_18,
            cluster_19,
            cluster_20,
            cluster_21,
            cluster_22,
            cluster_23,
            cluster_24,
            cluster_25,
            cluster_26,
            cluster_27,
            cluster_28,
            cluster_29,
            cluster_30,
            cluster_31,
            cluster_32,
            cluster_33,
            cluster_34,
            cluster_35,
            cluster_36,
            cluster_37,
            cluster_38,
            cluster_39,
            cluster_40,
            cluster_41,
            cluster_42,
            cluster_43,
            cluster_44,
            cluster_45,
            cluster_46,
            cluster_47,
            cluster_48,
            cluster_49,
            cluster_50,
            cluster_51,
            cluster_52,
            cluster_53,
            cluster_54,
            cluster_55,
            cluster_56,
            cluster_57,
            cluster_58,
            cluster_59,
            cluster_60,
            cluster_61,
            cluster_62,
            cluster_63,
            cluster_64,
            cluster_65,
            cluster_66,
            cluster_67,
            cluster_68,
            cluster_69,
            cluster_70,
            cluster_71,
            cluster_72,
            cluster_73,
            cluster_74,
            cluster_75,
            cluster_76,
            cluster_77,
            cluster_78,
            cluster_79,
            cluster_80,
            cluster_81,
            cluster_82,
            cluster_83,
            cluster_84,
            cluster_85,
            cluster_86,
            cluster_87,
            cluster_88,
            cluster_89,
            cluster_90,
            cluster_91,
            cluster_92,
            cluster_93,
            cluster_94,
            cluster_95,
            cluster_96,
            cluster_97,
            cluster_98,
            cluster_99,
            cluster_100 ]
