
module Elixir.Data.Moony.Regular.T (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['k','l','I','^','s','I','h'] <| [

    _____                     `noun`    {- <klI^sIh> -}        [ ['c','l','i','c','h','e'] ]
                              `plural`     _____ |< At ]


cluster_2   = cluster

 |> ['k','l','A','k','I','t'] <| [

    _____                     `noun`    {- <klAkIt> -}         [ ['c','l','a','p','p','e','r'], unwords [ ['c','l','a','p'], ['s','t','i','c','k'] ] ] ]


cluster_3   = cluster

 |> ['k','l','A','k','s'] <| [

    _____                     `noun`    {- <klAks> -}          [ ['k','l','a','x','o','n'], ['h','o','r','n'] ] ]


cluster_4   = cluster

 |> ['m','A'] <| [

    _____                     `pron`    {- <mA> -}             [ ['w','h','a','t'], ['w','h','i','c','h'] ],

    _____                     `pron`    {- <mA> -}             [ ['w','h','i','c','h','e','v','e','r'], unwords [ "-", ['e','v','e','r'] ] ],

    _____ |<< "_dA"           `pron`    {- <mA_dA> -}          [ ['w','h','a','t'] ],

    _____ |<< "mA"            `conj`    {- <mahmA> -}          [ ['w','h','a','t','e','v','e','r'] ],

    _____                     `part`    {- <mA> -}             [ ['n','o','t'] ],

    _____                     `intj`    {- <mA> -}             [ unwords [ ['h','o','w'], ['.','.','.'], "!" ] ] ]


cluster_5   = cluster

 |> ['m','U','b','I','l'] <| [

    _____ |< iyA              `noun`    {- <mUbIliyA> -}       [ ['f','u','r','n','i','t','u','r','e'], ['f','u','r','n','i','s','h','i','n','g','s'] ] ]


cluster_6   = cluster

 |> "m t .h" <| [

    FaCaL                     `verb`    {- <mata.h> -}         [ unwords [ ['d','r','a','w'], ['f','r','o','m'], "a", ['w','e','l','l'] ] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <mat.h> -}          [ unwords [ ['d','r','a','w','i','n','g'], ['f','r','o','m'], "a", ['w','e','l','l'] ] ] ]


cluster_7   = cluster

 |> ['m','I','t','a','d','U','r'] <| [

    _____                     `noun`    {- <mItadUr> -}        [ ['m','a','t','a','d','o','r'] ] ]


cluster_8   = cluster

 |> "m t r" <| [

    FiCL                      `noun`    {- <mitr> -}           [ ['m','e','t','e','r'] ]
                              `plural`     HaFCAL
                              `plural`     FiCL |< At,

    FiCL |< Iy                `adj`     {- <mitrIy> -}         [ ['m','e','t','r','i','c'], ['m','e','t','r','i','c','a','l'] ] ]


cluster_9   = cluster

 |> ['m','U','t','U','r'] <| [

    _____                     `noun`    {- <mUtUr> -}          [ ['m','o','t','o','r'] ]
                              `plural`     _____ |< At ]


cluster_10  = cluster

 |> ['m','I','t','U','r','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <mItUrUlU^giyA> -}  [ ['m','e','t','e','o','r','o','l','o','g','y'] ] ]


cluster_11  = cluster

 |> ['m','U','t','U','s','I','k','l'] <| [

    _____                     `noun`    {- <mUtUsIkl> -}       [ ['m','o','t','o','r','c','y','c','l','e'] ]
                              `plural`     _____ |< At ]


cluster_12  = cluster

 |> "m t `" <| [

    FaCaL                     `verb`    {- <mata`> -}          [ unwords [ ['c','a','r','r','y'], ['a','w','a','y'] ], unwords [ ['b','e'], ['s','t','r','o','n','g'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <matta`> -}         [ unwords [ ['m','a','k','e'], ['e','n','j','o','y'] ], ['f','u','r','n','i','s','h'] ],

    HaFCaL                    `verb`    {- <'amta`> -}         [ unwords [ ['m','a','k','e'], ['e','n','j','o','y'] ], ['f','u','r','n','i','s','h'] ],

    TaFaCCaL                  `verb`    {- <tamatta`> -}       [ ['e','n','j','o','y'] ],

    IstaFCaL                  `verb`    {- <istamta`> -}       [ ['e','n','j','o','y'], ['r','e','l','i','s','h'] ],

    FuCL |< aT                `noun`    {- <mut`aT> -}         [ ['p','l','e','a','s','u','r','e'], ['e','n','j','o','y','m','e','n','t'] ]
                              `plural`     FuCaL,

    FaCAL                     `noun`    {- <matA`> -}          [ ['p','r','o','p','e','r','t','y'], ['c','o','m','m','o','d','i','t','i','e','s'], ['g','o','o','d','s'] ]
                              `plural`     HaFCiL |< aT,

    HaFCaL                    `adj`     {- <'amta`> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['e','n','j','o','y','a','b','l','e'] ], ['r','e','c','r','e','a','t','i','o','n','a','l'] ],

    HiFCAL                    `noun`    {- <'imtA`> -}         [ ['p','l','e','a','s','u','r','e'], ['g','r','a','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <tamattu`> -}       [ ['e','n','j','o','y','m','e','n','t'] ]
                              `plural`     TaFaCCuL |< At,

    IstiFCAL                  `noun`    {- <istimtA`> -}       [ ['e','n','j','o','y','m','e','n','t'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `adj`     {- <mAti`> -}          [ ['l','o','n','g'] ],

    MuFaCCiL                  `adj`     {- <mumatti`> -}       [ ['p','l','e','a','s','i','n','g'], ['g','r','a','t','i','f','y','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <mumatta`> -}       [ ['p','l','e','a','s','e','d'] ],

    MuFCiL                    `adj`     {- <mumti`> -}         [ ['p','l','e','a','s','i','n','g'], ['g','r','a','t','i','f','y','i','n','g'] ] ]


cluster_13  = cluster

 |> ['m','I','t','A','f','I','z','I','q'] <| [

    _____ |<< "A"             `noun`    {- <mItAfIzIqA> -}     [ ['m','e','t','a','p','h','y','s','i','c','s'] ],

    _____ |< Iy               `adj`     {- <mItAfIzIqIy> -}    [ ['m','e','t','a','p','h','y','s','i','c','a','l'] ] ]


cluster_14  = cluster

 |> "m t k" <| [

    FaCL                      `noun`    {- <matk> -}           [ ['p','r','o','b','o','s','c','i','s'], ['t','r','u','n','k'] ],

    FuCL                      `noun`    {- <mutk> -}           [ ['p','r','o','b','o','s','c','i','s'], ['t','r','u','n','k'] ] ]


cluster_15  = cluster

 |> "m t n" <| [

    FaCaL                     `verb`    {- <matan> -}          [ unwords [ ['b','e'], ['f','i','r','m'] ], unwords [ ['b','e'], ['s','t','r','o','n','g'] ], unwords [ ['b','e'], ['r','o','b','u','s','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <mattan> -}         [ ['s','t','r','e','n','g','t','h','e','n'], ['c','o','n','s','o','l','i','d','a','t','e'] ],

    FaCL                      `noun`    {- <matn> -}           [ ['d','e','c','k'], ['b','o','a','r','d'], ['s','u','r','f','a','c','e'] ]
                              `plural`     FuCUL
                              `plural`     FiCAL,

    FaCIL                     `adj`     {- <matIn> -}          [ ['f','i','r','m'], ['s','t','r','o','n','g'] ],

    FaCAL |< aT               `noun`    {- <matAnaT> -}        [ ['f','i','r','m','n','e','s','s'], ['s','t','r','e','n','g','t','h'] ],

    HaFCaL                    `adj`     {- <'amtan> -}         [ unwords [ ['s','t','r','o','n','g','e','r'], "/", ['s','t','r','o','n','g','e','s','t'] ], unwords [ ['f','i','r','m','e','r'], "/", ['f','i','r','m','e','s','t'] ] ],

    TaFCIL                    `noun`    {- <tamtIn> -}         [ ['s','t','r','e','n','g','t','h','e','n','i','n','g'], ['c','o','n','s','o','l','i','d','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At ]


cluster_16  = cluster

 |> ['m','A','t','I','n','I','h'] <| [

    _____                     `noun`    {- <mAtInIh> -}        [ ['m','a','t','i','n','e','e'] ] ]


cluster_17  = cluster

 |> ['m','i','t','r','U'] <| [

    _____                     `noun`    {- <mitrU> -}          [ ['m','e','t','r','o'], ['s','u','b','w','a','y'] ] ]


cluster_18  = cluster

 |> ['m','i','t','n','A','k'] <| [

    _____                     `noun`    {- <mitnAk> -}         [ ['c','a','t','a','m','i','t','e'], unwords [ ['p','a','s','s','i','v','e'], ['h','o','m','o','s','e','x','u','a','l'] ] ],

    _____ |< aT               `noun`    {- <mitnAkaT> -}       [ ['w','h','o','r','e'], ['b','i','t','c','h'] ] ]


cluster_19  = cluster

 |> "m _t l" <| [

    FiCL |<< "a"              `prep`    {- <mi_tla> -}         [ ['l','i','k','e'], unwords [ ['s','u','c','h'], ['a','s'] ] ],

    HaFCAL |<< "a"            `prep`    {- <'am_tAla> -}       [ ['l','i','k','e'], unwords [ ['s','u','c','h'], ['a','s'] ] ],

    FiCL |<< "a" |<< "mA"     `conj`    {- <mi_tlamA> -}       [ ['l','i','k','e'], ['a','s'] ],

    FiCL                      `noun`    {- <mi_tl> -}          [ ['s','i','m','i','l','a','r','i','t','y'], ['l','i','k','e','n','e','s','s'], unwords [ ['s','o','m','e','t','h','i','n','g'], ['s','i','m','i','l','a','r'] ], unwords [ ['o','n','e'], ['l','i','k','e'] ] ]
                              `plural`     HaFCAL,

    FaCaL                     `verb`    {- <ma_tal> -}         [ ['r','e','s','e','m','b','l','e'], ['c','o','m','p','a','r','e'] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <ma_tul> -}         [ ['a','p','p','e','a','r'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <ma_t_tal> -}       [ ['r','e','p','r','e','s','e','n','t'], ['c','o','n','s','t','i','t','u','t','e'], ['a','c','t'] ],

    FACaL                     `verb`    {- <mA_tal> -}         [ ['r','e','s','e','m','b','l','e'], unwords [ ['c','o','r','r','e','s','p','o','n','d'], ['t','o'] ] ],

    TaFaCCaL                  `verb`    {- <tama_t_tal> -}     [ unwords [ ['b','e'], ['r','e','p','r','e','s','e','n','t','e','d'] ] ],

    TaFACaL                   `verb`    {- <tamA_tal> -}       [ unwords [ ['r','e','s','e','m','b','l','e'], ['e','a','c','h'], ['o','t','h','e','r'] ], ['r','e','c','o','v','e','r'] ],

    IFtaCaL                   `verb`    {- <imta_tal> -}       [ ['i','m','i','t','a','t','e'], ['o','b','e','y'] ],

    FiCL |< Iy                `adj`     {- <mi_tlIy> -}        [ ['a','l','i','k','e'], unwords [ ['h','o','m','o'], "-" ] ],

    FiCL |< Iy                `adj`     {- <mi_tlIy> -}        [ ['r','e','p','l','a','c','e','a','b','l','e'] ],

    FaCaL                     `noun`    {- <ma_tal> -}         [ ['e','x','a','m','p','l','e'], ['p','r','o','v','e','r','b'], unwords [ ['f','o','r'], ['e','x','a','m','p','l','e'] ], unwords [ ['t','h','e'], ['l','i','k','e','s'], ['o','f'] ] ]
                              `plural`     HaFCAL,

    FiCAL                     `noun`    {- <mi_tAl> -}         [ ['e','x','a','m','p','l','e'], ['m','o','d','e','l'], ['p','r','o','v','e','r','b','s'] ]
                              `plural`     HaFCiL |< aT,

    FiCAL |< Iy               `adj`     {- <mi_tAlIy> -}       [ ['i','d','e','a','l'], ['e','x','e','m','p','l','a','r','y'], ['m','o','d','e','l'], ['i','d','e','a','l','i','s','m'], ['e','x','e','m','p','l','a','r','i','n','e','s','s'] ],

    FaCCAL                    `noun`    {- <ma_t_tAl> -}       [ ['s','c','u','l','p','t','o','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCAL |< aT               `noun`    {- <ma_tAlaT> -}       [ ['p','e','r','f','e','c','t','i','o','n'], ['e','x','e','m','p','l','a','r','i','n','e','s','s'] ],

    FaCAL |< aT               `noun`    {- <ma_tAlaT> -}       [ ['t','a','s','k'], ['a','s','s','i','g','n','m','e','n','t'] ]
                              `plural`     FaCA'iL,

    FaCIL                     `noun`    {- <ma_tIl> -}         [ ['e','q','u','a','l'], ['m','a','t','c','h'], ['p','e','e','r'] ],

    FuCUL                     `noun`    {- <mu_tUl> -}         [ ['a','p','p','e','a','r','a','n','c','e'], ['p','r','e','s','e','n','t','a','t','i','o','n'], ['a','r','r','a','i','g','n','m','e','n','t'] ],

    HuFCUL |< aT              `noun`    {- <'um_tUlaT> -}      [ ['e','x','a','m','p','l','e'], ['l','e','s','s','o','n'], ['w','a','r','n','i','n','g'] ]
                              `plural`     HaFACIL,

    HaFCaL                    `adj`     {- <'am_tal> -}        [ ['e','x','e','m','p','l','a','r','y'], ['i','d','e','a','l'] ]
                              `plural`     HaFACiL
                              `femini`     FuCLY,

    TiFCAL                    `noun`    {- <tim_tAl> -}        [ ['s','t','a','t','u','e'] ]
                              `plural`     TaFACIL,

    TaFCIL                    `noun`    {- <tam_tIl> -}        [ ['r','e','p','r','e','s','e','n','t','a','t','i','o','n'], ['a','c','t','i','n','g'], ['e','x','e','m','p','l','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <tam_tIlIy> -}      [ ['a','c','t','i','n','g'], ['t','h','e','a','t','r','i','c','a','l'] ],

    TaFCIL |< Iy |< aT        `noun`    {- <tam_tIlIyaT> -}    [ unwords [ ['s','o','a','p'], ['o','p','e','r','a'] ], unwords [ ['f','e','a','t','u','r','e'], ['f','i','l','m'] ] ],

    MuFACaL |< aT             `noun`    {- <mumA_talaT> -}     [ ['r','e','s','e','m','b','l','a','n','c','e'], ['a','n','a','l','o','g','y'] ],

    TaFaCCuL                  `noun`    {- <tama_t_tul> -}     [ ['a','s','s','i','m','i','l','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <tamA_tul> -}       [ ['r','e','s','e','m','b','l','a','n','c','e'], ['s','y','m','m','e','t','r','y'], ['r','e','c','o','v','e','r','y'] ]
                              `plural`     TaFACuL |< At,

    lA >| TaFACuL             `noun`    {- <lA-tamA_tul> -}    [ ['a','s','y','m','m','e','t','r','y'] ],

    IFtiCAL                   `noun`    {- <imti_tAl> -}       [ ['o','b','e','d','i','e','n','c','e'], ['c','o','m','p','l','i','a','n','c','e'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <mA_til> -}         [ ['v','i','s','i','b','l','e'], ['e','v','i','d','e','n','t'] ],

    FACiL |< aT               `noun`    {- <mA_tilaT> -}       [ ['c','h','a','n','d','e','l','i','e','r'] ],

    MuFaCCiL                  `noun`    {- <muma_t_til> -}     [ ['r','e','p','r','e','s','e','n','t','a','t','i','v','e'], ['d','e','l','e','g','a','t','e'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCiL                  `noun`    {- <muma_t_til> -}     [ ['a','c','t','o','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCiL |< Iy |< aT      `noun`    {- <muma_t_tilIyaT> -} [ ['r','e','p','r','e','s','e','n','t','a','t','i','o','n'] ],

    MuFaCCiL                  `adj`     {- <muma_t_til> -}     [ ['r','e','p','r','e','s','e','n','t','i','n','g'], ['a','c','t','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <muma_t_tal> -}     [ ['r','e','p','r','e','s','e','n','t','e','d'], ['d','e','p','i','c','t','e','d'] ],

    MuFACiL                   `adj`     {- <mumA_til> -}       [ ['s','i','m','i','l','a','r'], ['a','n','a','l','o','g','o','u','s'], ['r','e','s','e','m','b','l','i','n','g'] ],

    MutaFACiL                 `adj`     {- <mutamA_til> -}     [ unwords [ ['r','e','s','e','m','b','l','i','n','g'], ['e','a','c','h'], ['o','t','h','e','r'] ], ['h','o','m','o','g','e','n','e','o','u','s'] ],

    MutaFaCCiL                `adj`     {- <mutama_t_til> -}   [ ['r','e','p','r','e','s','e','n','t','e','d'] ],

    MuFtaCiL                  `adj`     {- <mumta_til> -}      [ ['o','b','e','d','i','e','n','t'], ['c','o','m','p','l','i','a','n','t'] ] ]


cluster_20  = cluster

 |> ['m','I','_','t','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <mI_tUlU^giyA> -}   [ ['m','y','t','h','o','l','o','g','y'] ] ]


cluster_21  = cluster

 |> "m _t n" <| [

    FaCAL |< aT               `noun`    {- <ma_tAnaT> -}       [ ['b','l','a','d','d','e','r'] ]
                              `plural`     FaCAL |< At ]


cluster_22  = cluster

 |> "m ^g d" <| [

    FaCaL                     `verb`    {- <ma^gad> -}         [ unwords [ ['b','e'], ['g','l','o','r','i','o','u','s'] ] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <ma^gud> -}         [ unwords [ ['b','e'], ['g','l','o','r','i','o','u','s'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <ma^g^gad> -}       [ ['p','r','a','i','s','e'], ['e','x','t','o','l'] ],

    HaFCaL                    `verb`    {- <'am^gad> -}        [ ['p','r','a','i','s','e'], ['e','x','t','o','l'] ],

    TaFaCCaL                  `verb`    {- <tama^g^gad> -}     [ unwords [ ['b','e'], ['p','r','a','i','s','e','d'] ] ],

    FaCL                      `noun`    {- <ma^gd> -}          [ ['M','a','j','d'] ],

    FaCL                      `noun`    {- <ma^gd> -}          [ ['g','l','o','r','y'], ['g','r','a','n','d','e','u','r'] ]
                              `plural`     HaFCAL,

    FaCL |< Iy                `adj`     {- <ma^gdIy> -}        [ ['g','l','o','r','i','o','u','s'], ['l','a','u','d','a','b','l','e'] ],

    FaCL |< Iy                `noun`    {- <ma^gdIy> -}        [ ['M','a','j','d','i'], ['M','a','g','d','i'] ],

    FaCIL                     `adj`     {- <ma^gId> -}         [ ['g','l','o','r','i','o','u','s'], ['e','x','a','l','t','e','d'], ['d','i','s','t','i','n','g','u','i','s','h','e','d'] ]
                              `plural`     HaFCAL,

    FaCIL                     `noun`    {- <ma^gId> -}         [ ['M','a','j','e','e','d'], ['M','e','g','u','i','d'] ],

    FaCIL |< Iy               `noun`    {- <ma^gIdIy> -}       [ ['M','a','j','e','e','d','i'], ['M','e','g','u','i','d','i'] ],

    FaCIL |< Iy               `noun`    {- <ma^gIdIy> -}       [ unwords [ ['m','e','d','j','i','d','i','e'], "(", ['O','t','t','o','m','a','n'], ['s','i','l','v','e','r'], ['c','o','i','n'], ")" ] ],

    HaFCaL                    `noun`    {- <'am^gad> -}        [ ['A','m','j','a','d'], ['A','m','g','a','d'] ],

    HaFCaL                    `adj`     {- <'am^gad> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['g','l','o','r','i','o','u','s'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['d','i','s','t','i','n','g','u','i','s','h','e','d'] ] ],

    FACiL                     `noun`    {- <mA^gid> -}         [ ['M','a','j','i','d'], ['M','a','j','e','d'] ],

    FACiL |< aT               `noun`    {- <mA^gidaT> -}       [ ['M','a','j','i','d','a'] ],

    TaFCIL                    `noun`    {- <tam^gId> -}        [ ['p','r','a','i','s','e'], ['g','l','o','r','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <tama^g^gud> -}     [ unwords [ ['s','e','l','f'], "-", ['g','l','o','r','i','f','i','c','a','t','i','o','n'] ] ]
                              `plural`     TaFaCCuL |< At ]


cluster_23  = cluster

 |> "m ^g r" <| [

    FaCaL                     `noun`    {- <ma^gar> -}         [ unwords [ ['m','a','g','a','r'], "(", ['s','m','a','l','l'], ['w','e','i','g','h','t'], ")" ] ],

    FACUL                     `noun`    {- <mA^gUr> -}         [ unwords [ ['l','a','r','g','e'], ['b','o','w','l'] ] ]
                              `plural`     FawACIL ]


cluster_24  = cluster

 |> ['m','a','^','g','a','r'] <| [

    _____                     `noun`    {- <ma^gar> -}         [ ['H','u','n','g','a','r','y'] ],

    _____ |< Iy               `adj`     {- <ma^garIy> -}       [ ['H','u','n','g','a','r','i','a','n'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <ma^garIy> -}       [ ['H','u','n','g','a','r','i','a','n'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT ]


cluster_25  = cluster

 |> "m ^g s" <| [

    FaCUL                     `noun`    {- <ma^gUs> -}         [ ['M','a','g','i'] ],

    FaCUL |< Iy               `noun`    {- <ma^gUsIy> -}       [ ['M','a','g','i','a','n'], ['M','a','g','u','s'] ]
                              `plural`     FaCUL |< Iy |< Un
                              `femini`     FaCUL |< Iy |< aT,

    FaCUL |< Iy |< aT         `noun`    {- <ma^gUsIyaT> -}     [ ['M','a','z','d','a','i','s','m'] ] ]


cluster_26  = cluster

 |> ['m','A','^','g','i','s','t','I','r'] <| [

    _____                     `noun`    {- <mA^gistIr> -}      [ unwords [ ['m','a','s','t','e','r','\'','s'], ['d','e','g','r','e','e'] ], ['m','a','s','t','e','r'] ] ]


cluster_27  = cluster

 |> "m ^g l" <| [

    FACiL                     `noun`    {- <mA^gil> -}         [ ['c','i','s','t','e','r','n'] ]
                              `plural`     FawACiL ]


cluster_28  = cluster

 |> "m ^g m ^g" <| [

    KaRDaS                    `verb`    {- <ma^gma^g> -}       [ ['s','c','r','i','b','b','l','e'], ['s','c','r','a','w','l'] ],

    KaRDaS |< aT              `noun`    {- <ma^gma^gaT> -}     [ ['s','c','r','i','b','b','l','i','n','g'], ['s','c','r','a','w','l','i','n','g'] ],

    MuKaRDaS                  `adj`     {- <muma^gma^g> -}     [ ['i','l','l','e','g','i','b','l','e'], ['s','c','r','i','b','b','l','e','d'], ['s','c','r','a','w','l','e','d'] ] ]


cluster_29  = cluster

 |> "m ^g n" <| [

    FaCaL                     `verb`    {- <ma^gan> -}         [ ['j','o','k','e'], ['s','c','o','f','f'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <mA^gan> -}         [ ['j','e','e','r'], ['s','c','o','f','f'], ['j','o','k','e'] ],

    TaFaCCaL                  `verb`    {- <tama^g^gan> -}     [ ['j','e','e','r'], ['s','c','o','f','f'], ['j','o','k','e'] ],

    TaFACaL                   `verb`    {- <tamA^gan> -}       [ unwords [ ['m','o','c','k'], ['e','a','c','h'], ['o','t','h','e','r'] ] ],

    FaCAL |< aT               `noun`    {- <ma^gAnaT> -}       [ ['b','u','f','f','o','o','n','e','r','y'], ['c','l','o','w','n','i','n','g'] ],

    FaCAL |< aT               `noun`    {- <ma^gAnaT> -}       [ ['p','r','a','n','k'], ['a','n','t','i','c'] ],

    FaCCAL                    `adj`     {- <ma^g^gAn> -}       [ ['f','r','e','e'], ['g','r','a','t','i','s'] ],

    FaCCAL |< Iy              `adj`     {- <ma^g^gAnIy> -}     [ ['f','r','e','e'], ['g','r','a','t','i','s'] ],

    FaCCAL |< Iy |< aT        `noun`    {- <ma^g^gAnIyaT> -}   [ ['g','r','a','t','u','i','t','o','u','s','n','e','s','s'] ],

    FuCUL                     `noun`    {- <mu^gUn> -}         [ ['b','u','f','f','o','o','n','e','r','y'], ['i','m','p','u','d','e','n','c','e'] ],

    FuCUL |< Iy               `adj`     {- <mu^gUnIy> -}       [ ['s','a','r','c','a','s','t','i','c'], ['c','y','n','i','c'] ],

    FACiL                     `noun`    {- <mA^gin> -}         [ ['i','m','p','u','d','e','n','t'], ['j','o','k','e','r'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT,

    FACiL                     `noun`    {- <mA^gin> -}         [ ['c','i','s','t','e','r','n'] ]
                              `plural`     FawACiL ]


cluster_30  = cluster

 |> ['m','a','^','g','r','I','.','t'] <| [

    _____                     `noun`    {- <ma^grI.t> -}       [ ['M','a','d','r','i','d'] ] ]


cluster_31  = cluster

 |> "m .h .s" <| [

    FaCaL                     `verb`    {- <ma.ha.s> -}        [ ['c','l','a','r','i','f','y'], ['p','u','r','i','f','y'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <ma.h.ha.s> -}      [ ['c','l','a','r','i','f','y'], ['p','u','r','i','f','y'] ],

    FaCCaL                    `verb`    {- <ma.h.ha.s> -}      [ ['t','e','s','t'], ['e','x','a','m','i','n','e'] ],

    HaFCaL                    `verb`    {- <'am.ha.s> -}       [ ['r','e','a','p','p','e','a','r'], unwords [ ['r','e'], "-", ['e','m','e','r','g','e'] ] ],

    TaFaCCaL                  `verb`    {- <tama.h.ha.s> -}    [ ['r','e','a','p','p','e','a','r'], unwords [ ['r','e'], "-", ['e','m','e','r','g','e'] ], unwords [ ['b','e'], ['c','l','a','r','i','f','i','e','d'] ], unwords [ ['b','e'], ['p','u','r','i','f','i','e','d'] ] ],

    InFaCaL                   `verb`    {- <inma.ha.s> -}      [ unwords [ ['b','e'], ['c','l','a','r','i','f','i','e','d'] ], unwords [ ['b','e'], ['p','u','r','i','f','i','e','d'] ] ],

    FaCIL                     `adj`     {- <ma.hI.s> -}        [ ['s','h','i','n','i','n','g'], ['f','l','a','s','h','i','n','g'] ],

    TaFCIL                    `noun`    {- <tam.hI.s> -}       [ ['c','l','a','r','i','f','i','c','a','t','i','o','n'], ['t','e','s','t','i','n','g'], ['e','x','a','m','i','n','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At ]


cluster_32  = cluster

 |> "m .h .d" <| [

    FaCaL                     `verb`    {- <ma.ha.d> -}        [ unwords [ ['b','e'], ['s','i','n','c','e','r','e'], ['t','o','w','a','r','d'] ] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <ma.hu.d> -}        [ unwords [ ['b','e'], ['o','f'], ['p','u','r','e'], ['d','e','s','c','e','n','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL |< aT,

    HaFCaL                    `verb`    {- <'am.ha.d> -}       [ unwords [ ['b','e'], ['s','i','n','c','e','r','e'], ['t','o','w','a','r','d'] ] ],

    TaFaCCaL                  `verb`    {- <tama.h.ha.d> -}    [ unwords [ ['b','e'], ['d','e','d','i','c','a','t','e','d'] ] ],

    FaCL                      `adj`     {- <ma.h.d> -}         [ ['m','e','r','e'], unwords [ ['n','o','t','h','i','n','g'], ['b','u','t'] ], ['p','u','r','e'], ['s','o','l','e'], ['e','x','c','l','u','s','i','v','e'] ],

    HuFCUL |< aT              `noun`    {- <'um.hU.daT> -}     [ unwords [ ['s','i','n','c','e','r','e'], ['a','d','v','i','c','e'] ] ] ]


cluster_33  = cluster

 |> "m .h q" <| [

    "InFaCaL"                 `verb`    {- <imma.haq> -}       [ unwords [ ['b','e'], ['a','n','n','i','h','i','l','a','t','e','d'] ], ['p','e','r','i','s','h'] ] ]

 |> "m .h q" <| [

    FaCaL                     `verb`    {- <ma.haq> -}         [ ['e','r','a','d','i','c','a','t','e'], ['a','n','n','i','h','i','l','a','t','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'am.haq> -}        [ ['w','a','n','e'], ['v','a','n','i','s','h'] ],

    TaFaCCaL                  `verb`    {- <tama.h.haq> -}     [ unwords [ ['b','e'], ['a','n','n','i','h','i','l','a','t','e','d'] ], ['p','e','r','i','s','h'] ],

    InFaCaL                   `verb`    {- <inma.haq> -}       [ unwords [ ['b','e'], ['a','n','n','i','h','i','l','a','t','e','d'] ], ['p','e','r','i','s','h'] ],

    IFtaCaL                   `verb`    {- <imta.haq> -}       [ unwords [ ['b','e'], ['a','n','n','i','h','i','l','a','t','e','d'] ], ['p','e','r','i','s','h'] ],

    FaCL                      `noun`    {- <ma.hq> -}          [ ['o','b','l','i','t','e','r','a','t','i','o','n'], ['e','r','a','d','i','c','a','t','i','o','n'] ],

    FaCAL                     `noun`    {- <ma.hAq> -}         [ ['w','a','n','i','n','g'], ['m','o','o','n','l','e','s','s'] ],

    FiCAL                     `noun`    {- <mi.hAq> -}         [ ['w','a','n','i','n','g'], ['m','o','o','n','l','e','s','s'] ],

    FuCAL                     `noun`    {- <mu.hAq> -}         [ ['w','a','n','i','n','g'], ['m','o','o','n','l','e','s','s'] ] ]


cluster_34  = cluster

 |> "m .h k" <| [

    FaCaL                     `verb`    {- <ma.hak> -}         [ unwords [ ['b','e'], ['c','o','n','t','e','n','t','i','o','u','s'] ], unwords [ ['b','e'], ['q','u','a','r','r','e','l','s','o','m','e'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <ma.hik> -}         [ unwords [ ['b','e'], ['c','o','n','t','e','n','t','i','o','u','s'] ], unwords [ ['b','e'], ['q','u','a','r','r','e','l','s','o','m','e'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <mA.hak> -}         [ unwords [ ['q','u','a','r','r','e','l'], ['w','i','t','h'] ], unwords [ ['w','r','a','n','g','l','e'], ['w','i','t','h'] ] ],

    HaFCaL                    `verb`    {- <'am.hak> -}        [ unwords [ ['b','e'], ['c','o','n','t','e','n','t','i','o','u','s'] ], unwords [ ['b','e'], ['q','u','a','r','r','e','l','s','o','m','e'] ] ],

    TaFaCCaL                  `verb`    {- <tama.h.hak> -}     [ unwords [ ['b','e'], ['c','o','n','t','e','n','t','i','o','u','s'] ], unwords [ ['b','e'], ['q','u','a','r','r','e','l','s','o','m','e'] ] ],

    FaCiL                     `adj`     {- <ma.hik> -}         [ ['q','u','a','r','r','e','l','s','o','m','e'], ['b','i','c','k','e','r','i','n','g'] ],

    MuFACaL |< aT             `noun`    {- <mumA.hakaT> -}     [ ['w','r','a','n','g','l','e'], ['d','i','s','p','u','t','e'], ['b','i','c','k','e','r','i','n','g'] ],

    FACiL                     `adj`     {- <mA.hik> -}         [ ['q','u','a','r','r','e','l','s','o','m','e'], ['c','o','n','t','e','n','t','i','o','u','s'], ['b','i','c','k','e','r','i','n','g'] ],

    MuFACiL                   `adj`     {- <mumA.hik> -}       [ ['q','u','a','r','r','e','l','s','o','m','e'], ['c','o','n','t','e','n','t','i','o','u','s'], ['b','i','c','k','e','r','i','n','g'] ] ]


cluster_35  = cluster

 |> "m .h l" <| [

    FaCaL                     `verb`    {- <ma.hal> -}         [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['p','l','o','t'], ['a','g','a','i','n','s','t'] ], unwords [ ['i','n','t','r','i','g','u','e'], ['a','g','a','i','n','s','t'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <ma.hil> -}         [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['p','l','o','t'], ['a','g','a','i','n','s','t'] ], unwords [ ['i','n','t','r','i','g','u','e'], ['a','g','a','i','n','s','t'] ] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <ma.hul> -}         [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['p','l','o','t'], ['a','g','a','i','n','s','t'] ], unwords [ ['i','n','t','r','i','g','u','e'], ['a','g','a','i','n','s','t'] ] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'am.hal> -}        [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['b','e'], ['o','v','e','r','d','u','e'] ] ],

    TaFaCCaL                  `verb`    {- <tama.h.hal> -}     [ unwords [ ['s','e','e','k'], ['v','i','a'], ['i','n','t','r','i','g','u','e'] ], unwords [ ['s','e','e','k'], "a", ['p','r','e','t','e','x','t'] ] ],

    FaCL                      `noun`    {- <ma.hl> -}          [ ['d','r','o','u','g','h','t'], ['f','a','m','i','n','e'], ['d','e','c','e','i','t'] ],

    FiCAL                     `noun`    {- <mi.hAl> -}         [ ['c','u','n','n','i','n','g'], ['i','n','t','r','i','g','u','e'] ],

    FACiL                     `adj`     {- <mA.hil> -}         [ ['b','a','r','r','e','n'], ['s','t','e','r','i','l','e'], ['b','l','e','a','k'] ],

    MuFCiL                    `adj`     {- <mum.hil> -}        [ ['b','a','r','r','e','n'], ['s','t','e','r','i','l','e'], ['b','l','e','a','k'] ] ]


cluster_36  = cluster

 |> "m .h n" <| [

    FaCaL                     `verb`    {- <ma.han> -}         [ unwords [ ['p','u','t'], ['t','o'], ['t','e','s','t'] ], ['e','x','a','m','i','n','e'] ]
                              `imperf`     FCaL,

    IFtaCaL                   `verb`    {- <imta.han> -}       [ unwords [ ['p','u','t'], ['t','o'], ['t','e','s','t'] ], ['e','x','a','m','i','n','e'] ],

    FiCL |< aT                `noun`    {- <mi.hnaT> -}        [ ['o','r','d','e','a','l'], ['t','e','s','t'], ['t','r','i','a','l'] ]
                              `plural`     FiCaL,

    IFtiCAL                   `noun`    {- <imti.hAn> -}       [ ['t','e','s','t'], ['t','r','i','a','l'], ['e','x','a','m','i','n','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <imti.hAnIy> -}     [ ['t','e','s','t'], ['t','r','i','a','l'], ['e','x','a','m','i','n','a','t','i','o','n'] ],

    MuFtaCiL                  `noun`    {- <mumta.hin> -}      [ ['e','x','a','m','i','n','e','r'], ['t','e','s','t','e','r'] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT,

    MuFtaCaL                  `adj`     {- <mumta.han> -}      [ ['e','x','a','m','i','n','e','d'], ['t','e','s','t','e','d'], unwords [ ['t','e','s','t'], ['t','a','k','e','r'] ] ],

    FuCayL |< Iy              `noun`    {- <mu.haynIy> -}      [ ['M','u','h','a','i','n','i'], ['M','a','h','a','y','n','i'] ] ]


cluster_37  = cluster

 |> ['m','u','_','h','A'] <| [

    _____                     `noun`    {- <mu_hA> -}          [ ['M','o','c','h','a'] ] ]


cluster_38  = cluster

 |> "m _h r" <| [

    FaCaL                     `verb`    {- <ma_har> -}         [ unwords [ ['p','l','o','w'], ['t','h','r','o','u','g','h'] ], ['t','r','a','v','e','r','s','e'] ]
                              `imperf`     FCaL,

    FACiL                     `adj`     {- <mA_hir> -}         [ unwords [ ['p','l','o','w','i','n','g'], ['t','h','r','o','u','g','h'] ], ['t','r','a','v','e','r','s','i','n','g'] ],

    FACiL |< aT               `noun`    {- <mA_hiraT> -}       [ ['s','h','i','p'] ]
                              `plural`     FawACiL,

    FACUL                     `noun`    {- <mA_hUr> -}         [ ['b','r','o','t','h','e','l'] ]
                              `plural`     FawACiL ]


cluster_39  = cluster

 |> "m _h r q" <| [

    KaRDaS                    `verb`    {- <ma_hraq> -}        [ ['b','r','a','g'], ['c','h','e','a','t'] ],

    KaRDaS |< aT              `noun`    {- <ma_hraqaT> -}      [ ['b','r','a','g','g','i','n','g'], ['c','h','e','a','t','i','n','g'] ] ]


cluster_40  = cluster

 |> "m _h .d" <| [

    FaCaL                     `verb`    {- <ma_ha.d> -}        [ ['c','h','u','r','n'], ['s','h','a','k','e'], unwords [ ['m','u','l','l'], ['o','v','e','r'] ] ]
                              `imperf`     FCiL
                              `imperf`     FCuL
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <ma_hi.d> -}        [ unwords [ ['b','e'], ['p','a','r','t','u','r','i','e','n','t'] ], unwords [ ['b','e'], ['i','n'], ['l','a','b','o','r'] ] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <tama_h_ha.d> -}    [ ['p','r','o','d','u','c','e'], unwords [ ['b','r','i','n','g'], ['f','o','r','t','h'] ] ],

    FaCAL                     `noun`    {- <ma_hA.d> -}        [ unwords [ ['l','a','b','o','r'], ['p','a','i','n','s'] ] ],

    FaCIL                     `noun`    {- <ma_hI.d> -}        [ ['b','u','t','t','e','r','m','i','l','k'] ],

    FaCCAL |< aT              `noun`    {- <ma_h_hA.daT> -}    [ ['c','h','u','r','n'] ],

    MiFCaL |< aT              `noun`    {- <mim_ha.daT> -}     [ ['c','h','u','r','n'] ]
                              `plural`     MaFACiL ]


cluster_41  = cluster

 |> "m _h .t" <| [

    FaCaL                     `verb`    {- <ma_ha.t> -}        [ unwords [ ['b','l','o','w'], ['t','h','e'], ['n','o','s','e'] ] ]
                              `imperf`     FCaL
                              `imperf`     FCuL,

    TaFaCCaL                  `verb`    {- <tama_h_ha.t> -}    [ unwords [ ['b','l','o','w'], ['t','h','e'], ['n','o','s','e'] ] ],

    FuCAL                     `noun`    {- <mu_hA.t> -}        [ ['s','n','o','t'], unwords [ ['n','a','s','a','l'], ['m','u','c','u','s'] ] ],

    FuCAL |< Iy               `adj`     {- <mu_hA.tIy> -}      [ ['s','n','o','t','t','y'], ['m','u','c','o','u','s'] ],

    FuCCayL                   `noun`    {- <mu_h_hay.t> -}     [ ['s','e','b','e','s','t','e','n'] ] ]


cluster_42  = cluster

 |> "m _h .t r" <| [

    TaKaRDaS                  `verb`    {- <tama_h.tar> -}     [ unwords [ ['w','a','l','k'], ['g','r','a','c','e','f','u','l','l','y'] ] ],

    TaKaRDuS                  `noun`    {- <tama_h.tur> -}     [ unwords [ ['w','a','l','k','i','n','g'], ['g','r','a','c','e','f','u','l','l','y'] ] ],

    MutaKaRDiS                `adj`     {- <mutama_h.tir> -}   [ unwords [ ['w','a','l','k','i','n','g'], ['g','r','a','c','e','f','u','l','l','y'] ] ] ]


cluster_43  = cluster

 |> "m _h l" <| [

    FuCL                      `noun`    {- <mu_hl> -}          [ ['l','e','v','e','l'], ['c','r','o','w','b','a','r'] ]
                              `plural`     FuCUL
                              `plural`     HaFCAL,

    FiCL |< aT                `noun`    {- <mi_hlaT> -}        [ ['n','o','s','e','b','a','g'] ]
                              `plural`     FiCaL ]


cluster_44  = cluster

 |> "m _h m .d" <| [

    KaRDaS                    `verb`    {- <ma_hma.d> -}       [ ['g','a','r','g','l','e'], unwords [ ['r','i','n','s','e'], "(", ['m','o','u','t','h'], ")" ] ] ]


cluster_45  = cluster

 |> ['m','U','d'] <| [

    _____ |< aT               `noun`    {- <mUdaT> -}          [ ['f','a','s','h','i','o','n'], ['s','t','y','l','e'] ] ]


cluster_46  = cluster

 |> "m d .h" <| [

    FaCaL                     `verb`    {- <mada.h> -}         [ ['p','r','a','i','s','e'], ['l','a','u','d'], ['c','o','m','m','e','n','d'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <madda.h> -}        [ ['p','r','a','i','s','e'], ['l','a','u','d'], ['c','o','m','m','e','n','d'] ],

    TaFaCCaL                  `verb`    {- <tamadda.h> -}      [ unwords [ ['b','e'], ['c','o','m','m','e','n','d','e','d'] ], unwords [ ['b','e'], ['p','r','a','i','s','e','d'] ] ],

    IFtaCaL                   `verb`    {- <imtada.h> -}       [ ['p','r','a','i','s','e'], ['l','a','u','d'], ['c','o','m','m','e','n','d'] ],

    FaCL                      `noun`    {- <mad.h> -}          [ ['p','r','a','i','s','e'], ['c','o','m','m','e','n','d','a','t','i','o','n'], ['a','c','c','l','a','i','m'] ],

    FaCIL                     `noun`    {- <madI.h> -}         [ ['p','r','a','i','s','e'], ['c','o','m','m','e','n','d','a','t','i','o','n'], ['a','c','c','l','a','i','m'] ]
                              `plural`     FaCA'iL,

    TaFaCCuL                  `noun`    {- <tamaddu.h> -}      [ ['g','l','o','r','i','f','i','c','a','t','i','o','n'], ['o','s','t','e','n','t','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `noun`    {- <mAdi.h> -}         [ ['p','r','a','i','s','i','n','g'], ['e','u','l','o','g','i','s','t'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MaFCUL                    `noun`    {- <mamdU.h> -}        [ ['M','a','m','d','o','u','h'] ],

    FaCCAL                    `noun`    {- <maddA.h> -}        [ ['e','u','l','o','g','i','s','t'], ['p','r','a','i','s','i','n','g'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_47  = cluster

 |> "m d r" <| [

    FaCaL                     `noun`    {- <madar> -}          [ ['m','u','d'], ['c','l','a','y'] ],

    FaCaL |< aT               `noun`    {- <madaraT> -}        [ unwords [ ['c','l','o','d'], ['o','f'], ['e','a','r','t','h'] ], unwords [ ['l','u','m','p'], ['o','f'], ['c','l','a','y'] ] ] ]


cluster_48  = cluster

 |> ['m','U','d','I','l'] <| [

    _____                     `noun`    {- <mUdIl> -}          [ ['m','o','d','e','l'], ['t','y','p','e'] ]
                              `plural`     _____ |< At ]

 |> ['m','u','d','I','l'] <| [

    _____                     `noun`    {- <mudIl> -}          [ ['m','o','d','e','l'], ['t','y','p','e'] ]
                              `plural`     _____ |< At ]


cluster_49  = cluster

 |> "m d l n" <| [

    KiRDiS                    `adj`     {- <midlin> -}         [ ['m','i','d','d','l','i','n','g'], ['m','e','d','i','o','c','r','e'] ] ]


cluster_50  = cluster

 |> ['m','a','d','A','m'] <| [

    _____                     `noun`    {- <madAm> -}          [ ['m','a','d','a','m','e'], ['m','a','d','a','m'] ] ]


cluster_51  = cluster

 |> "m d n" <| [

    FaCCaL                    `verb`    {- <maddan> -}         [ ['u','r','b','a','n','i','z','e'], unwords [ ['b','u','i','l','d'], ['c','i','t','i','e','s'] ] ],

    TaFaCCaL                  `verb`    {- <tamaddan> -}       [ unwords [ ['b','e','c','o','m','e'], ['c','i','v','i','l','i','z','e','d'] ], unwords [ ['b','e'], ['u','r','b','a','n','i','z','e','d'] ] ],

    FaCIL |< aT               `noun`    {- <madInaT> -}        [ ['c','i','t','y'] ]
                              `plural`     FaCA'iL
                              `plural`     FuCuL,

    FaCIL |< aT               `noun`    {- <madInaT> -}        [ ['M','e','d','i','n','a'] ],

    FaCA'iL                   `noun`    {- <madA'in> -}        [ ['M','a','d','a','\'','i','n'] ],

    FaCaL |< Iy               `adj`     {- <madanIy> -}        [ ['c','i','v','i','l','i','a','n'] ],

    FaCaL |< Iy               `noun`    {- <madanIy> -}        [ ['M','a','d','a','n','i'] ],

    FaCIL |< Iy               `noun`    {- <madInIy> -}        [ ['M','a','d','i','n','i'] ],

    TaFCIL                    `noun`    {- <tamdIn> -}         [ ['u','r','b','a','n','i','z','a','t','i','o','n'], ['c','i','v','i','l','i','z','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <tamdInIy> -}       [ ['c','i','v','i','l','i','z','i','n','g'], ['u','r','b','a','n','i','z','i','n','g'] ],

    TaFaCCuL                  `noun`    {- <tamaddun> -}       [ ['c','i','v','i','l','i','z','a','t','i','o','n'], ['r','e','f','i','n','e','m','e','n','t'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <tamaddunIy> -}     [ ['c','i','v','i','l','i','z','e','d'] ],

    MutaFaCCiL                `adj`     {- <mutamaddin> -}     [ ['c','i','v','i','l','i','z','e','d'], ['s','o','p','h','i','s','t','i','c','a','t','e','d'] ] ]


cluster_52  = cluster

 |> ['m','i','d','r'] <| [

    _____ |< aT               `noun`    {- <midraT> -}         [ unwords [ ['p','u','n','t','i','n','g'], ['p','o','l','e'] ] ] ]


cluster_53  = cluster

 |> ['m','a','d','m','A','z','I','l'] <| [

    _____                     `noun`    {- <madmAzIl> -}       [ ['m','a','d','e','m','o','i','s','e','l','l','e'], ['m','i','s','s'] ] ]


cluster_54  = cluster

 |> "m _d r" <| [

    FaCiL                     `verb`    {- <ma_dir> -}         [ unwords [ ['b','e','c','o','m','e'], ['r','o','t','t','e','n'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <ma_d_dar> -}       [ ['s','c','a','t','t','e','r'], ['d','i','s','p','e','r','s','e'] ],

    TaFaCCaL                  `verb`    {- <tama_d_dar> -}     [ unwords [ ['b','e','c','o','m','e'], ['r','o','t','t','e','n'] ] ],

    FaCaL                     `noun`    {- <ma_dar> -}         [ ['s','c','a','t','t','e','r','e','d'] ],

    FaCiL                     `adj`     {- <ma_dir> -}         [ ['s','p','o','i','l','e','d'], ['r','o','t','t','e','n'] ] ]


cluster_55  = cluster

 |> "m _d q" <| [

    FaCaL                     `verb`    {- <ma_daq> -}         [ ['d','i','l','u','t','e'], unwords [ ['m','i','x'], ['w','i','t','h'], ['w','a','t','e','r'] ] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <ma_dq> -}          [ ['d','i','l','u','t','i','n','g'], unwords [ ['m','i','x','i','n','g'], ['w','i','t','h'], ['w','a','t','e','r'] ], unwords [ ['w','a','t','e','r','e','d'], ['w','i','n','e'] ] ],

    FaCIL                     `adj`     {- <ma_dIq> -}         [ ['d','i','l','u','t','e','d'], unwords [ ['m','i','x','e','d'], ['w','i','t','h'], ['w','a','t','e','r'] ] ],

    FaCCAL                    `adj`     {- <ma_d_dAq> -}       [ ['i','n','s','i','n','c','e','r','e'], ['h','y','p','o','c','r','i','t','e'] ],

    MuFACiL                   `adj`     {- <mumA_diq> -}       [ ['i','n','s','i','n','c','e','r','e'], ['h','y','p','o','c','r','i','t','e'] ] ]


cluster_56  = cluster

 |> "m _d l" <| [

    FaCiL                     `verb`    {- <ma_dil> -}         [ ['r','e','v','e','a','l'], ['d','i','s','c','l','o','s','e'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <ma_dl> -}          [ ['r','e','v','e','a','l','i','n','g'], ['d','i','s','c','l','o','s','i','n','g'] ],

    FaCAL                     `noun`    {- <ma_dAl> -}         [ ['r','e','v','e','a','l','i','n','g'], ['d','i','s','c','l','o','s','i','n','g'] ] ]


cluster_57  = cluster

 |> "m _d h b" <| [

    TaKaRDaS                  `verb`    {- <tama_dhab> -}      [ unwords [ ['f','o','l','l','o','w'], "(", ['a','s'], "a", ['d','i','s','c','i','p','l','e'], ")" ] ],

    TaKaRDuS                  `noun`    {- <tama_dhub> -}      [ unwords [ ['f','o','l','l','o','w','i','n','g'], "(", ['a','s'], "a", ['d','i','s','c','i','p','l','e'], ")" ] ],

    MutaKaRDiS                `adj`     {- <mutama_dhib> -}    [ unwords [ ['f','o','l','l','o','w','i','n','g'], "(", ['a','s'], "a", ['d','i','s','c','i','p','l','e'], ")" ] ] ]


cluster_58  = cluster

 |> ['m','I','r'] <| [

    _____ |< Iy               `adj`     {- <mIrIy> -}          [ ['s','t','a','t','e'] ] ]


cluster_59  = cluster

 |> ['m','U','r','A','t','i','z','m'] <| [

    _____                     `noun`    {- <mUrAtizm> -}       [ ['r','h','e','u','m','a','t','i','s','m'] ] ]


cluster_60  = cluster

 |> ['m','U','r','I','t','A','n'] <| [

    _____ |< iyA              `xtra`    {- <mUrItAniyA> -}     [ ['M','a','u','r','i','t','a','n','i','a'] ],

    _____ |< Iy               `adj`     {- <mUrItAnIy> -}      [ ['M','a','u','r','i','t','a','n','i','a','n'] ],

    _____ |< Iy               `noun`    {- <mUrItAnIy> -}      [ ['M','a','u','r','i','t','a','n','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_61  = cluster

 |> "m r _t" <| [

    FaCaL                     `verb`    {- <mara_t> -}         [ ['b','i','t','e'], ['c','r','u','s','h'], ['m','a','c','e','r','a','t','e'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <mar_t> -}          [ ['b','i','t','i','n','g'], ['c','r','u','s','h','i','n','g'], ['m','a','c','e','r','a','t','i','n','g'] ] ]


cluster_62  = cluster

 |> ['m','A','r','A','_','t','U','n'] <| [

    _____                     `xtra`    {- <mArA_tUn> -}       [ ['M','a','r','a','t','h','o','n'] ],

    _____                     `noun`    {- <mArA_tUn> -}       [ ['m','a','r','a','t','h','o','n'] ] ]


cluster_63  = cluster

 |> "m r ^g" <| [

    FaCL                      `noun`    {- <mar^g> -}          [ ['m','e','a','d','o','w'], ['p','a','s','t','u','r','e'] ]
                              `plural`     FuCUL,

    FaCaL                     `noun`    {- <mara^g> -}         [ ['c','o','n','f','u','s','i','o','n'], ['d','i','s','o','r','d','e','r'] ],

    FaCLAn                    `noun`    {- <mar^gAn> -}        [ ['c','o','r','a','l'], ['p','e','a','r','l'] ]
                           
    `excepts` Triptote,

    FaCLAn |< Iy              `adj`     {- <mar^gAnIy> -}      [ ['c','o','r','a','l','l','i','n','e'], unwords [ ['c','o','r','a','l'], "-", ['l','i','k','e'] ] ],

    FaCLAn |< Iy |< At        `noun`    {- <mar^gAnIyAt> -}    [ unwords [ ['c','o','r','a','l'], ['p','o','l','y','p','s'] ], ['a','n','t','h','o','z','o','a','n','s'] ]
                              `plural`     FaCLAn |< Iy |< At
                           
    `limited` "-------P--",

    FaCLUn |< aT              `noun`    {- <mar^gUnaT> -}      [ ['b','a','s','k','e','t'] ]
                              `plural`     FaCALIn ]


cluster_64  = cluster

 |> "m r ^g .h" <| [

    KaRDaS                    `verb`    {- <mar^ga.h> -}       [ ['r','o','c','k'], ['s','h','a','k','e'] ],

    TaKaRDaS                  `verb`    {- <tamar^ga.h> -}     [ unwords [ ['s','w','i','n','g'], ['b','a','c','k'], ['a','n','d'], ['f','o','r','t','h'] ], ['d','a','n','g','l','e'], unwords [ ['b','e'], ['i','n'], ['s','u','s','p','e','n','s','e'] ] ] ]


cluster_65  = cluster

 |> "m r .h" <| [

    FaCiL                     `verb`    {- <mari.h> -}         [ unwords [ ['b','e'], ['c','h','e','e','r','f','u','l'] ], ['r','e','j','o','i','c','e'] ]
                              `imperf`     FCaL,

    FaCaL                     `noun`    {- <mara.h> -}         [ ['h','a','p','p','i','n','e','s','s'], ['g','a','i','e','t','y'] ],

    FaCiL                     `adj`     {- <mari.h> -}         [ ['c','h','e','e','r','f','u','l'], ['m','e','r','r','y'] ]
                              `plural`     FaCALY
                              `plural`     FaCLY,

    FiCAL                     `noun`    {- <mirA.h> -}         [ ['e','x','u','b','e','r','a','n','c','e'] ],

    FiCCIL                    `adj`     {- <mirrI.h> -}        [ ['m','e','r','r','y'], ['c','h','e','e','r','f','u','l'] ],

    MiFCAL                    `noun`    {- <mimrA.h> -}        [ ['c','h','e','e','r','f','u','l'], ['j','o','v','i','a','l'] ] ]


cluster_66  = cluster

 |> "m r _h" <| [

    FaCaL                     `verb`    {- <mara_h> -}         [ ['a','n','o','i','n','t'], ['e','m','b','r','o','c','a','t','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <marra_h> -}        [ ['a','n','o','i','n','t'], ['e','m','b','r','o','c','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <tamarra_h> -}      [ unwords [ ['r','u','b'], ['t','h','e'], ['s','k','i','n'], ['w','i','t','h'], ['l','i','n','i','m','e','n','t'] ] ],

    FaCL                      `noun`    {- <mar_h> -}          [ ['a','n','o','i','n','t','i','n','g'], ['e','m','b','r','o','c','a','t','i','n','g'] ],

    FaCiL                     `adj`     {- <mari_h> -}         [ ['s','o','f','t'], ['f','l','a','b','b','y'] ],

    FaCUL                     `noun`    {- <marU_h> -}         [ ['l','i','n','i','m','e','n','t'], ['o','i','n','t','m','e','n','t'] ],

    FiCCIL                    `noun`    {- <mirrI_h> -}        [ ['M','a','r','s'] ],

    FiCCIL |< Iy              `adj`     {- <mirrI_hIy> -}      [ ['M','a','r','t','i','a','n'] ] ]


cluster_67  = cluster

 |> "m r d" <| [

    FaCaL                     `verb`    {- <marad> -}          [ unwords [ ['b','e'], ['r','e','b','e','l','l','i','o','u','s'] ], ['r','e','v','o','l','t'] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCuL                     `verb`    {- <marud> -}          [ unwords [ ['b','e'], ['r','e','b','e','l','l','i','o','u','s'] ], ['r','e','v','o','l','t'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <marrad> -}         [ unwords [ ['c','o','a','t'], ['w','i','t','h'], ['p','l','a','s','t','e','r'] ] ],

    TaFaCCaL                  `verb`    {- <tamarrad> -}       [ ['r','e','v','o','l','t'], ['r','e','b','e','l'] ],

    FuCL |< Iy                `adj`     {- <murdIy> -}         [ unwords [ ['p','u','n','t','i','n','g'], ['p','o','l','e'] ], unwords [ ['b','o','a','t'], ['h','o','o','k'] ] ],

    FaCAL                     `noun`    {- <marAd> -}          [ ['n','a','p','e'], ['n','e','c','k'] ],

    FaCCAL                    `noun`    {- <marrAd> -}         [ ['n','a','p','e'], ['n','e','c','k'] ]
                              `plural`     FaCACIL,

    FaCIL                     `adj`     {- <marId> -}          [ ['r','e','b','e','l','l','i','o','u','s'], ['r','e','c','a','l','c','i','t','r','a','n','t'] ]
                              `plural`     FuCaLA',

    TiFCAL                    `noun`    {- <timrAd> -}         [ ['d','o','v','e','c','o','t','e'] ]
                              `plural`     TaFACIL,

    HaFCaL                    `adj`     {- <'amrad> -}         [ ['b','e','a','r','d','l','e','s','s'] ]
                              `plural`     FuCL,

    HaFCaL                    `adj`     {- <'amrad> -}         [ ['l','e','a','f','l','e','s','s'], ['w','i','t','h','e','r','e','d'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    TaFaCCuL                  `noun`    {- <tamarrud> -}       [ ['i','n','s','u','r','r','e','c','t','i','o','n'], ['r','e','b','e','l','l','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `noun`    {- <mArid> -}          [ ['i','n','s','u','r','g','e','n','t'], ['r','e','b','e','l'] ]
                              `plural`     FuCCAL
                              `plural`     FaCaL |< aT
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MutaFaCCiL                `noun`    {- <mutamarrid> -}     [ ['r','e','b','e','l'], ['m','u','t','i','n','e','e','r'] ]
                              `plural`     MutaFaCCiL |< Un
                              `femini`     MutaFaCCiL |< aT,

    MutaFaCCiL                `adj`     {- <mutamarrid> -}     [ ['r','e','b','e','l','l','i','o','u','s'], ['m','u','t','i','n','o','u','s'] ] ]


cluster_68  = cluster

 |> ['m','a','r','A','z','i','b'] <| [

    _____ |< aT               `noun`    {- <marAzibaT> -}      [ unwords [ ['p','r','o','v','i','n','c','i','a','l'], ['g','o','v','e','r','n','o','r'] ] ] ]

 |> ['m','a','r','z','u','b','A','n'] <| [

    _____                     `noun`    {- <marzubAn> -}       [ unwords [ ['p','r','o','v','i','n','c','i','a','l'], ['g','o','v','e','r','n','o','r'] ] ] ]


cluster_69  = cluster

 |> "m r s" <| [

    FaCaL                     `verb`    {- <maras> -}          [ ['s','o','a','k'], ['m','a','c','e','r','a','t','e'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <mAras> -}          [ ['p','r','a','c','t','i','c','e'], ['p','u','r','s','u','e'], ['e','x','e','r','c','i','s','e'] ],

    TaFaCCaL                  `verb`    {- <tamarras> -}       [ ['e','x','e','r','c','i','s','e'], ['p','u','r','s','u','e'], ['w','o','r','k'] ],

    TaFACaL                   `verb`    {- <tamAras> -}        [ unwords [ ['c','o','n','t','e','n','d'], ['w','i','t','h'], ['e','a','c','h'], ['o','t','h','e','r'] ] ],

    FaCL                      `noun`    {- <mars> -}           [ unwords [ ['m','a','r','s'], "(", ['g','a','m','e'], ")" ] ],

    FaCiL                     `noun`    {- <maris> -}          [ ['e','x','p','e','r','i','e','n','c','e','d'], ['v','e','t','e','r','a','n'] ]
                              `plural`     HaFCAL,

    FaCaL |< aT               `noun`    {- <marasaT> -}        [ ['r','o','p','e'], ['c','o','r','d'] ]
                              `plural`     HaFCAL,

    FiCAL                     `noun`    {- <mirAs> -}          [ ['s','t','r','e','n','g','t','h'], ['p','o','w','e','r'] ],

    FaCAL |< aT               `noun`    {- <marAsaT> -}        [ ['s','t','r','e','n','g','t','h'], ['p','o','w','e','r'] ],

    FaCIL |< aT               `noun`    {- <marIsaT> -}        [ unwords [ ['m','a','r','i','s','a'], "(", "a", ['k','i','n','d'], ['o','f'], ['b','e','e','r'], ")" ] ],

    FaCIL |< Iy               `noun`    {- <marIsIy> -}        [ unwords [ ['h','o','t'], ['s','o','u','t','h'], ['w','i','n','d'] ] ],

    MuFACiL                   `adj`     {- <mumAris> -}        [ ['p','r','a','c','t','i','c','i','n','g'], ['p','u','r','s','u','i','n','g'], ['i','m','p','l','e','m','e','n','t','i','n','g'], ['e','x','e','r','c','i','s','i','n','g'] ],

    MuFACaL |< aT             `noun`    {- <mumArasaT> -}      [ ['p','r','a','c','t','i','c','e'], ['p','u','r','s','u','i','t'], ['e','x','e','r','c','i','s','e'], ['a','c','t','i','v','i','t','i','e','s'], ['a','c','t','i','o','n','s'] ]
                              `plural`     MuFACaL |< At,

    TaFaCCuL                  `noun`    {- <tamarrus> -}       [ ['p','r','a','c','t','i','c','e'], ['i','m','p','l','e','m','e','n','t','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <mutamarris> -}     [ ['p','r','a','c','t','i','c','i','n','g'], ['e','x','p','e','r','i','e','n','c','e','d'], ['v','e','t','e','r','a','n'] ] ]


cluster_70  = cluster

 |> ['m','A','r','i','s'] <| [

    _____                     `noun`    {- <mAris> -}          [ ['M','a','r','c','h'] ] ]


cluster_71  = cluster

 |> "m r s n" <| [

    KaRDIS                    `noun`    {- <marsIn> -}         [ ['m','y','r','t','l','e'] ] ]


cluster_72  = cluster

 |> ['m','A','r','i','s','t','A','n'] <| [

    _____                     `noun`    {- <mAristAn> -}       [ unwords [ ['l','u','n','a','t','i','c'], ['a','s','y','l','u','m'] ] ] ]


cluster_73  = cluster

 |> ['m','U','r','I','s','k','U'] <| [

    _____                     `xtra`    {- <mUrIskU> -}        [ ['M','o','r','i','s','c','o'] ] ]

 |> ['m','U','r','I','s','k'] <| [

    _____ |< Iy               `adj`     {- <mUrIskIy> -}       [ ['M','o','r','i','s','c','o'] ] ]


cluster_74  = cluster

 |> "m r ^s" <| [

    FaCaL                     `verb`    {- <mara^s> -}         [ ['s','c','r','a','t','c','h'] ]
                              `imperf`     FCuL ]


cluster_75  = cluster

 |> ['m','A','r','i','^','s','A','l'] <| [

    _____                     `noun`    {- <mAri^sAl> -}       [ ['m','a','r','s','h','a','l'], unwords [ ['f','i','e','l','d'], ['m','a','r','s','h','a','l'] ] ]
                              `plural`     _____ |< At,

    _____ |< Iy |< aT         `noun`    {- <mAri^sAlIyaT> -}   [ unwords [ ['r','a','n','k'], ['o','f'], ['m','a','r','s','h','a','l'] ], unwords [ ['p','o','s','i','t','i','o','n'], ['o','f'], ['m','a','r','s','h','a','l'] ] ] ]


cluster_76  = cluster

 |> "m r .d" <| [

    FaCiL                     `verb`    {- <mari.d> -}         [ unwords [ ['b','e','c','o','m','e'], ['i','l','l'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <marra.d> -}        [ unwords [ ['m','a','k','e'], ['i','l','l'] ], ['n','u','r','s','e'], unwords [ ['t','e','n','d'], ['t','o'] ] ],

    HaFCaL                    `verb`    {- <'amra.d> -}        [ unwords [ ['m','a','k','e'], ['s','i','c','k'] ] ],

    TaFaCCaL                  `verb`    {- <tamarra.d> -}      [ unwords [ ['b','e'], ['i','l','l'] ] ],

    TaFACaL                   `verb`    {- <tamAra.d> -}       [ unwords [ ['f','e','i','g','n'], ['i','l','l','n','e','s','s'] ] ],

    FaCaL                     `noun`    {- <mara.d> -}         [ ['d','i','s','e','a','s','e'], ['i','l','l','n','e','s','s'] ]
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <mara.dIy> -}       [ ['d','i','s','e','a','s','e','d'], ['s','i','c','k'], ['p','a','t','h','o','l','o','g','i','c','a','l'] ],

    FaCIL                     `noun`    {- <marI.d> -}         [ ['p','a','t','i','e','n','t'], unwords [ ['s','i','c','k'], ['p','e','r','s','o','n'] ] ]
                              `plural`     FaCLY
                              `plural`     FaCALY
                              `femini`     FaCIL |< aT,

    FaCIL                     `adj`     {- <marI.d> -}         [ ['s','i','c','k'], ['i','l','l'] ]
                              `plural`     FaCLY
                              `plural`     FaCALY,

    MiFCAL                    `adj`     {- <mimrA.d> -}        [ ['s','i','c','k','l','y'], unwords [ ['i','n'], ['p','o','o','r'], ['h','e','a','l','t','h'] ] ],

    TaFCIL                    `noun`    {- <tamrI.d> -}        [ unwords [ ['n','u','r','s','i','n','g'], ['t','h','e'], ['s','i','c','k'] ] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <mumarri.d> -}      [ ['n','u','r','s','e'], unwords [ ['d','o','c','t','o','r','\'','s'], ['a','s','s','i','s','t','a','n','t'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MutaFaCCiL                `adj`     {- <mutamarri.d> -}    [ ['s','i','c','k','l','y'], unwords [ ['i','n'], ['p','o','o','r'], ['h','e','a','l','t','h'] ] ] ]


cluster_77  = cluster

 |> "m r .t" <| [

    FaCaL                     `verb`    {- <mara.t> -}         [ unwords [ ['t','e','a','r'], ['o','u','t'] ], unwords [ ['p','l','u','c','k'], ['o','u','t'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <marra.t> -}        [ unwords [ ['t','e','a','r'], ['o','u','t'] ], unwords [ ['p','l','u','c','k'], ['o','u','t'] ] ],

    TaFaCCaL                  `verb`    {- <tamarra.t> -}      [ unwords [ ['f','a','l','l'], ['o','u','t'] ] ],

    FaCIL                     `adj`     {- <marI.t> -}         [ ['h','a','i','r','l','e','s','s'] ],

    HaFCaL                    `adj`     {- <'amra.t> -}        [ ['h','a','i','r','l','e','s','s'] ]
                              `plural`     FuCL
                              `femini`     FaCLA' ]


cluster_78  = cluster

 |> ['m','U','r','I','.','t','A','n'] <| [

    _____ |< iyA              `xtra`    {- <mUrI.tAniyA> -}    [ ['M','a','u','r','i','t','a','n','i','a'] ],

    _____ |< Iy               `adj`     {- <mUrI.tAnIy> -}     [ ['M','a','u','r','i','t','a','n','i','a','n'] ],

    _____ |< Iy               `noun`    {- <mUrI.tAnIy> -}     [ ['M','a','u','r','i','t','a','n','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_79  = cluster

 |> "m r `" <| [

    FaCaL                     `verb`    {- <mara`> -}          [ unwords [ ['r','u','b'], ['o','v','e','r'] ], ['a','n','o','i','n','t'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <mar`> -}           [ ['p','a','s','t','u','r','e'] ]
                              `plural`     HaFCAL
                              `plural`     HaFCuL,

    FuCL |< aT                `noun`    {- <mur`aT> -}         [ ['g','r','e','a','s','e'], ['o','i','l'] ],

    FaCIL                     `adj`     {- <marI`> -}          [ ['f','e','r','t','i','l','e'], ['p','r','o','d','u','c','t','i','v','e'] ],

    MiFCAL                    `adj`     {- <mimrA`> -}         [ ['f','l','o','u','r','i','s','h','i','n','g'], ['p','r','o','s','p','e','r','o','u','s'] ] ]


cluster_80  = cluster

 |> "m r .g" <| [

    FaCCaL                    `verb`    {- <marra.g> -}        [ unwords [ ['r','u','b'], ['o','v','e','r'] ], unwords [ ['r','o','l','l'], ['i','n'], ['t','h','e'], ['d','u','s','t'] ] ],

    HaFCaL                    `verb`    {- <'amra.g> -}        [ unwords [ ['m','a','k','e'], ['d','i','r','t','y'] ], ['s','u','l','l','y'] ],

    TaFaCCaL                  `verb`    {- <tamarra.g> -}      [ ['w','a','l','l','o','w'], unwords [ ['r','o','l','l'], ['i','n'], ['t','h','e'], ['d','u','s','t'] ] ] ]


cluster_81  = cluster

 |> "m r q" <| [

    FaCaL                     `verb`    {- <maraq> -}          [ ['t','r','a','v','e','r','s','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <marraq> -}         [ ['s','i','n','g'] ],

    FaCaL                     `noun`    {- <maraq> -}          [ ['b','r','o','t','h'], ['g','r','a','v','y'] ],

    FuCUL                     `noun`    {- <murUq> -}          [ ['s','t','r','a','y','i','n','g'], ['d','e','v','i','a','t','i','o','n'] ],

    FuCUL                     `noun`    {- <murUq> -}          [ ['d','e','f','e','c','t','i','o','n'], ['d','e','s','e','r','t','i','o','n'] ],

    FuCUL |< Iy               `noun`    {- <murUqIy> -}        [ unwords [ ['Q','u','r','a','n'], ['r','e','c','i','t','e','r'] ] ]
                              `plural`     FuCUL |< Iy |< Un
                              `femini`     FuCUL |< Iy |< aT,

    FuCUL |< Iy               `noun`    {- <murUqIy> -}        [ ['p','a','l','l','b','e','a','r','e','r'] ]
                              `plural`     FuCUL |< Iy |< Un
                              `femini`     FuCUL |< Iy |< aT,

    FACiL                     `adj`     {- <mAriq> -}          [ ['a','p','o','s','t','a','t','e'], ['h','e','r','e','t','i','c'] ]
                              `plural`     FuCCAL
                              `plural`     FaCaL |< aT,

    FACiL                     `noun`    {- <mAriq> -}          [ ['d','e','s','e','r','t','e','r'], ['d','e','f','e','c','t','o','r'] ]
                              `plural`     FuCCAL
                              `plural`     FaCaL |< aT
                              `femini`     FACiL |< aT,

    MuFACiL                   `adj`     {- <mumAriq> -}        [ ['i','n','s','o','l','e','n','t'], ['i','m','p','u','d','e','n','t'] ] ]


cluster_82  = cluster

 |> "m r q s" <| [

    KuRDuS                    `noun`    {- <murqus> -}         [ ['M','u','r','q','u','s'], ['M','a','r','k'] ],

    KuRDuS |< Iy              `adj`     {- <murqusIy> -}       [ unwords [ ['S','t','.'], ['M','a','r','k','\'','s'] ] ] ]


cluster_83  = cluster

 |> "m r k z" <| [

    TaKaRDaS                  `verb`    {- <tamarkaz> -}       [ unwords [ ['b','e'], ['c','e','n','t','e','r','e','d'] ], unwords [ ['b','e'], ['s','t','a','t','i','o','n','e','d'] ], unwords [ ['b','e'], ['c','o','n','c','e','n','t','r','a','t','e','d'] ] ],

    TaKaRDuS                  `noun`    {- <tamarkuz> -}       [ ['c','o','n','c','e','n','t','r','a','t','i','o','n'], ['c','o','n','s','o','l','i','d','a','t','i','o','n'], ['c','e','n','t','r','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaKaRDuS |< At,

    MutaKaRDiS                `adj`     {- <mutamarkiz> -}     [ ['c','e','n','t','e','r','e','d'], ['s','t','a','t','i','o','n','e','d'], ['c','o','n','c','e','n','t','r','a','t','e','d'] ] ]


cluster_84  = cluster

 |> "m r m r" <| [

    KaRDaS                    `verb`    {- <marmar> -}         [ unwords [ ['b','e','c','o','m','e'], ['b','i','t','t','e','r'] ], unwords [ ['b','e'], ['a','n','g','r','y'] ] ],

    TaKaRDaS                  `verb`    {- <tamarmar> -}       [ ['m','u','r','m','u','r'], ['m','u','m','b','l','e'], ['g','r','u','m','b','l','e'] ],

    TaKaRDuS                  `noun`    {- <tamarmur> -}       [ ['b','i','t','t','e','r','n','e','s','s'], ['e','m','b','i','t','t','e','r','m','e','n','t'] ]
                              `plural`     TaKaRDuS |< At ]

 |> "m r m r" <| [

    KaRDaS                    `noun`    {- <marmar> -}         [ ['m','a','r','b','l','e'] ],

    KaRDaS |< Iy              `adj`     {- <marmarIy> -}       [ ['m','a','r','b','l','e'] ] ]


cluster_85  = cluster

 |> "m r m s" <| [

    KiRDIS                    `noun`    {- <mirmIs> -}         [ ['r','h','i','n','o','c','e','r','o','s'] ] ]


cluster_86  = cluster

 |> "m r m .t" <| [

    KaRDaS                    `verb`    {- <marma.t> -}        [ ['d','a','m','a','g','e'], ['s','p','o','i','l'] ] ]


cluster_87  = cluster

 |> "m r n" <| [

    FaCaL                     `verb`    {- <maran> -}          [ unwords [ ['b','e'], ['f','l','e','x','i','b','l','e'] ], unwords [ ['b','e','c','o','m','e'], ['a','c','c','u','s','t','o','m','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT
                              `masdar`     FuCUL
                              `masdar`     FuCUL |< aT,

    FaCCaL                    `verb`    {- <marran> -}         [ ['t','r','a','i','n'], ['d','r','i','l','l'], ['c','o','n','d','i','t','i','o','n'] ],

    TaFaCCaL                  `verb`    {- <tamarran> -}       [ ['p','r','a','c','t','i','c','e'], unwords [ ['b','e'], ['t','r','a','i','n','e','d'] ], unwords [ ['b','e'], ['d','r','i','l','l','e','d'] ] ],

    FaCiL                     `adj`     {- <marin> -}          [ ['f','l','e','x','i','b','l','e'], ['r','e','a','s','o','n','a','b','l','e'] ],

    FuCUL |< aT               `noun`    {- <murUnaT> -}        [ ['f','l','e','x','i','b','i','l','i','t','y'], ['p','l','i','a','b','i','l','i','t','y'] ],

    TaFCIL                    `noun`    {- <tamrIn> -}         [ ['e','x','e','r','c','i','s','e'], ['p','r','a','c','t','i','c','e'], ['t','r','a','i','n','i','n','g'] ]
                              `plural`     TaFACIL
                              `plural`     TaFCIL |< At,

    TaFCIL                    `noun`    {- <tamrIn> -}         [ ['d','r','i','l','l','s'], ['m','a','n','e','u','v','e','r','s'], ['e','x','e','r','c','i','s','e','s'] ]
                              `plural`     TaFACIL
                              `plural`     TaFCIL |< At,

    FiCAL                     `noun`    {- <mirAn> -}          [ ['p','r','a','c','t','i','c','e'], ['e','x','p','e','r','i','e','n','c','e'], ['s','k','i','l','l'] ],

    FayCUL                    `noun`    {- <mayrUn> -}         [ ['c','h','r','i','s','m'] ],

    TaFaCCuL                  `noun`    {- <tamarrun> -}       [ ['e','x','e','r','c','i','s','e'], ['p','r','a','c','t','i','c','e'], ['t','r','a','i','n','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCiL                  `noun`    {- <mumarrin> -}       [ ['t','r','a','i','n','e','r'], ['c','o','a','c','h'], unwords [ ['d','r','i','l','l'], ['s','e','r','g','e','a','n','t'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <mumarran> -}       [ ['s','k','i','l','l','e','d'], ['t','r','a','i','n','e','d'] ],

    MutaFaCCiL                `adj`     {- <mutamarrin> -}     [ ['s','k','i','l','l','e','d'], ['t','r','a','i','n','e','d'] ] ]

 |> "m r n" <| [

    FACUL                     `noun`    {- <mArUn> -}          [ ['M','a','r','o','n','i','t','e','s'] ],

    FACUL |< Iy               `adj`     {- <mArUnIy> -}        [ ['M','a','r','o','n','i','t','e'] ]
                              `plural`     FawACiL |< aT,

    FACUL |< Iy               `noun`    {- <mArUnIy> -}        [ ['M','a','r','o','n','i','t','e'] ]
                              `plural`     FawACiL |< aT
                              `femini`     FACUL |< Iy |< aT ]

 |> ['m','a','r','I','n'] <| [

    _____ |< Iy               `adj`     {- <marInIy> -}        [ ['M','e','r','i','n','i','d','s'] ] ]


cluster_88  = cluster

 |> ['m','U','r','I','n'] <| [

    _____ |< aT               `noun`    {- <mUrInaT> -}        [ unwords [ ['w','o','o','d','e','n'], ['b','e','a','m'] ] ] ]


cluster_89  = cluster

 |> ['m','A','r','t'] <| [

    _____                     `noun`    {- <mArt> -}           [ ['M','a','r','c','h'] ] ]


cluster_90  = cluster

 |> ['m','a','r','d','a','q','U','^','s'] <| [

    _____                     `noun`    {- <mardaqU^s> -}      [ ['m','a','r','j','o','r','a','m'] ] ]


cluster_91  = cluster

 |> ['m','a','r','r','A','k','i','^','s'] <| [

    _____                     `noun`    {- <marrAki^s> -}      [ ['M','a','r','r','a','k','e','c','h'] ],

    _____ |< Iy               `adj`     {- <marrAki^sIy> -}    [ ['M','o','r','o','c','c','a','n'] ] ]

 |> ['m','a','r','r','A','k','u','^','s'] <| [

    _____                     `noun`    {- <marrAku^s> -}      [ ['M','a','r','r','a','k','e','c','h'] ],

    _____ |< Iy               `adj`     {- <marrAku^sIy> -}    [ ['M','o','r','o','c','c','a','n'] ] ]


cluster_92  = cluster

 |> ['m','I','r','z','A'] <| [

    _____                     `noun`    {- <mIrzA> -}          [ ['M','i','r','z','a'] ] ]


cluster_93  = cluster

 |> ['m','a','r','z','a','_','h','U','^','s'] <| [

    _____                     `noun`    {- <marza_hU^s> -}     [ ['m','a','r','j','o','r','a','m'] ] ]


cluster_94  = cluster

 |> ['m','u','r','.','s'] <| [

    _____                     `xtra`    {- <mur.s> -}          [ ['M','o','r','s','e'] ],

    _____ |< Iy               `adj`     {- <mur.sIy> -}        [ ['M','o','r','s','e'] ] ]


cluster_95  = cluster

 |> ['m','a','r','.','t','a','b','A','n'] <| [

    _____                     `noun`    {- <mar.tabAn> -}      [ unwords [ ['p','r','e','s','e','r','v','e','s'], ['j','a','r'] ] ]
                              `plural`     _____ |< At ]


cluster_96  = cluster

 |> ['m','a','r','.','g','a','r','I','n'] <| [

    _____                     `noun`    {- <mar.garIn> -}      [ ['m','a','r','g','a','r','i','n','e'] ] ]


cluster_97  = cluster

 |> ['m','I','r','.','g','a','n'] <| [

    _____ |< Iy               `noun`    {- <mIr.ganIy> -}      [ ['M','i','r','g','h','a','n','i'] ] ]


cluster_98  = cluster

 |> ['m','U','r','f','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <mUrfUlU^giyA> -}   [ ['m','o','r','p','h','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <mUrfUlU^gIy> -}    [ ['m','o','r','p','h','o','l','o','g','i','c','a','l'] ] ]


cluster_99  = cluster

 |> ['m','U','r','f','I','n'] <| [

    _____                     `noun`    {- <mUrfIn> -}         [ ['m','o','r','p','h','i','n','e'] ] ]


cluster_100 = cluster

 |> ['m','A','r','k'] <| [

    _____                     `noun`    {- <mArk> -}           [ ['m','a','r','k'], ['t','r','a','d','e','m','a','r','k'] ]
                              `plural`     _____ |< At,

    _____ |< aT               `noun`    {- <mArkaT> -}         [ ['t','r','a','d','e','m','a','r','k'] ]
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
