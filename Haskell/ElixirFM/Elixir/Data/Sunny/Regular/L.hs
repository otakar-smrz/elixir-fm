
module Elixir.Data.Sunny.Regular.L (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['^','s','I','m','b','A','n','z'] <| [

    _____ |< Iy               `noun`    {- <^sImbAnzIy> -}     [ ['c','h','i','m','p','a','n','z','e','e'], ['m','o','n','k','e','y'] ] ]


cluster_2   = cluster

 |> ['^','s','A','m','_','h','A','n','I'] <| [

    _____                     `noun`    {- <^sAm_hAnI> -}      [ ['S','h','a','m','k','h','a','n','i'] ] ]


cluster_3   = cluster

 |> ['^','s','I','n'] <| [

    _____                     `noun`    {- <^sIn> -}           [ unwords [ ['s','h','i','n'], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_4   = cluster

 |> "^s n b" <| [

    FaCaL                     `noun`    {- <^sanab> -}         [ ['S','h','a','n','a','b'] ],

    FaCaL                     `noun`    {- <^sanab> -}         [ ['m','u','s','t','a','c','h','e'] ]
                              `plural`     HaFCAL ]


cluster_5   = cluster

 |> "^s n ^g" <| [

    FaCiL                     `verb`    {- <^sani^g> -}        [ ['c','o','n','v','u','l','s','e'], unwords [ ['h','a','v','e'], ['s','p','a','s','m','s'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <^sanna^g> -}       [ ['s','h','r','i','n','k'], ['c','o','n','t','r','a','c','t'] ],

    TaFaCCaL                  `verb`    {- <ta^sanna^g> -}     [ ['c','o','n','v','u','l','s','e'], unwords [ ['h','a','v','e'], ['s','p','a','s','m','s'] ] ],

    TaFaCCuL                  `noun`    {- <ta^sannu^g> -}     [ ['t','u','r','m','o','i','l'], ['u','p','h','e','a','v','a','l'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL                  `noun`    {- <ta^sannu^g> -}     [ ['c','o','n','v','u','l','s','i','o','n'], ['s','p','a','s','m'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <ta^sannu^gIy> -}   [ ['s','p','a','s','m','o','d','i','c'], ['s','p','a','s','t','i','c'] ] ]


cluster_6   = cluster

 |> "^s n _h" <| [

    FiCAL                     `noun`    {- <^sinA_h> -}        [ ['p','r','o','m','o','n','t','o','r','y'] ] ]


cluster_7   = cluster

 |> "^s n _h b" <| [

    KuRDUS |< aT              `noun`    {- <^sun_hUbaT> -}     [ ['b','o','u','l','d','e','r'] ]
                              `plural`     KaRADIS ]


cluster_8   = cluster

 |> ['^','s','i','n','U','d'] <| [

    _____ |< aT               `noun`    {- <^sinUdaT> -}       [ ['S','h','e','n','o','u','d','a'] ] ]


cluster_9   = cluster

 |> "^s n r" <| [

    FaCCaL                    `verb`    {- <^sannar> -}        [ ['s','l','a','n','d','e','r'], ['d','i','s','h','o','n','o','r'] ],

    FaCAL                     `noun`    {- <^sanAr> -}         [ ['d','i','s','g','r','a','c','e'], ['s','l','a','n','d','e','r'] ] ]


cluster_10  = cluster

 |> "^s n r q" <| [

    KaRADiS                   `noun`    {- <^sanAriq> -}       [ ['c','o','c','o','o','n','s'], ['h','e','m','p'] ]
                              `plural`     KaRADiS
                           
    `limited` "-------P--" ]


cluster_11  = cluster

 |> "^s n ^s n" <| [

    KaRDaS                    `verb`    {- <^san^san> -}       [ ['r','u','s','t','l','e'], ['c','r','a','c','k','l','e'] ],

    KaRDaS |< aT              `noun`    {- <^san^sanaT> -}     [ ['r','u','s','t','l','i','n','g'], ['c','r','a','c','k','l','i','n','g'] ] ]


cluster_12  = cluster

 |> "^s n .t" <| [

    FaCL |< aT                `noun`    {- <^san.taT> -}       [ ['s','u','i','t','c','a','s','e'] ]
                              `plural`     FuCaL,

    FiCAL |< aT               `noun`    {- <^sinA.taT> -}      [ ['p','o','l','y','m','e','r','i','z','a','t','i','o','n'] ] ]


cluster_13  = cluster

 |> "^s n `" <| [

    FaCuL                     `verb`    {- <^sanu`> -}         [ unwords [ ['b','e'], ['h','i','d','e','o','u','s'] ], unwords [ ['b','e'], ['r','e','p','u','l','s','i','v','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCaL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <^sanna`> -}        [ ['s','l','a','n','d','e','r'], ['d','e','f','a','m','e'], ['p','i','l','l','o','r','y'] ],

    FaCAL |< aT               `noun`    {- <^sanA`aT> -}       [ ['h','i','d','e','o','u','s','n','e','s','s'], ['r','e','p','u','l','s','i','v','e','n','e','s','s'] ],

    FuCL |< aT                `noun`    {- <^sun`aT> -}        [ ['h','i','d','e','o','u','s','n','e','s','s'], ['r','e','p','u','l','s','i','v','e','n','e','s','s'] ],

    FaCiL                     `adj`     {- <^sani`> -}         [ ['h','i','d','e','o','u','s'], ['r','e','p','u','l','s','i','v','e'] ],

    FaCIL                     `adj`     {- <^sanI`> -}         [ ['h','i','d','e','o','u','s'], ['r','e','p','u','l','s','i','v','e'] ],

    HaFCaL                    `adj`     {- <'a^sna`> -}        [ ['h','i','d','e','o','u','s'], ['r','e','p','u','l','s','i','v','e'] ]
                              `femini`     FaCLA',

    TaFCIL                    `noun`    {- <ta^snI`> -}        [ ['d','e','f','a','m','a','t','i','o','n'], ['s','l','a','n','d','e','r'] ]
                              `plural`     TaFCIL |< At ]


cluster_14  = cluster

 |> "^s n .g b" <| [

    KuRDUS                    `noun`    {- <^sun.gUb> -}       [ unwords [ ['s','p','i','k','e'], "/", ['t','h','o','r','n'] ], ['r','o','o','t'], unwords [ ['s','p','i','k','e','s'], "/", ['t','h','o','r','n','s'] ] ]
                              `plural`     KaRADIS ]


cluster_15  = cluster

 |> "^s n f" <| [

    FaCCaL                    `verb`    {- <^sannaf> -}        [ ['d','e','l','i','g','h','t'] ],

    FaCL                      `noun`    {- <^sanf> -}          [ ['e','a','r','r','i','n','g'] ]
                              `plural`     FuCUL,

    TaFCIL                    `noun`    {- <ta^snIf> -}        [ ['d','e','l','i','g','h','t','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_16  = cluster

 |> "^s n q" <| [

    FaCaL                     `verb`    {- <^sanaq> -}         [ unwords [ ['h','a','n','g'], "(", ['e','x','e','c','u','t','e'], ")" ] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCL                      `noun`    {- <^sanq> -}          [ unwords [ ['h','a','n','g','i','n','g'], "(", ['e','x','e','c','u','t','i','o','n'], ")" ] ],

    FaCaL                     `noun`    {- <^sanaq> -}         [ ['r','o','p','e'], ['n','o','o','s','e'] ],

    MiFCaL |< aT              `noun`    {- <mi^snaqaT> -}      [ ['g','a','l','l','o','w','s'] ]
                              `plural`     MaFACiL,

    MaFCUL                    `adj`     {- <ma^snUq> -}        [ ['h','a','n','g','e','d'] ],

    MiFCaL |< Iy              `adj`     {- <mi^snaqIy> -}      [ ['s','i','n','i','s','t','e','r'] ] ]


cluster_17  = cluster

 |> "^s n k r" <| [

    KiRDAS                    `noun`    {- <^sinkAr> -}        [ unwords [ ['m','a','r','k','i','n','g'], ['g','a','u','g','e'] ] ] ]


cluster_18  = cluster

 |> "^s n k l" <| [

    KaRDaS                    `verb`    {- <^sankal> -}        [ unwords [ ['t','r','i','p'], ['u','p'] ], unwords [ ['h','o','o','k'], ['u','p'] ] ],

    KaRDaS                    `noun`    {- <^sankal> -}        [ unwords [ ['c','l','o','t','h','e','s'], ['p','e','g'] ], ['h','o','o','k'] ]
                              `plural`     KaRADiS ]


cluster_19  = cluster

 |> "^s n h q" <| [

    KaRDaS                    `verb`    {- <^sanhaq> -}        [ ['b','r','a','y'] ],

    KaRDaS |< aT              `noun`    {- <^sanhaqaT> -}      [ ['b','r','a','y','i','n','g'] ] ]


cluster_20  = cluster

 |> ['^','s','A','n','t','A','^','g'] <| [

    _____                     `noun`    {- <^sAntA^g> -}       [ ['b','l','a','c','k','m','a','i','l'] ] ]


cluster_21  = cluster

 |> ['^','s','A','h'] <| [

    _____                     `noun`    {- <^sAh> -}           [ ['S','h','a','h'] ],

    _____ |<< "An" |< Iy      `adj`     {- <^sAhAnIy> -}       [ unwords [ ['S','h','a','h'], "-", ['r','e','l','a','t','e','d'] ], ['i','m','p','e','r','i','a','l'] ] ]


cluster_22  = cluster

 |> "^s h b" <| [

    FaCaL                     `noun`    {- <^sahab> -}         [ ['g','r','a','y'] ],

    FuCL |< aT                `noun`    {- <^suhbaT> -}        [ ['g','r','a','y'] ],

    FiCAL                     `noun`    {- <^sihAb> -}         [ ['S','h','i','h','a','b'], ['C','h','i','h','a','b'] ],

    FiCAL                     `noun`    {- <^sihAb> -}         [ unwords [ ['s','h','o','o','t','i','n','g'], ['s','t','a','r'] ], ['m','e','t','e','o','r','i','t','e'] ]
                              `plural`     FuCuL
                              `plural`     FuCLAn,

    FiCAL |< Iy               `adj`     {- <^sihAbIy> -}       [ ['m','e','t','e','o','r','i','t','e'] ],

    FuCayL                    `noun`    {- <^suhayb> -}        [ ['S','h','u','h','a','i','b'] ],

    HaFCaL                    `adj`     {- <'a^shab> -}        [ ['g','r','a','y'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FaCLA'                    `noun`    {- <^sahbA'> -}        [ ['A','l','e','p','p','o'] ] ]


cluster_23  = cluster

 |> "^s h d" <| [

    FaCiL                     `verb`    {- <^sahid> -}         [ ['w','i','t','n','e','s','s'], ['o','b','s','e','r','v','e'] ]
                              `imperf`     FCaL
                              `masdar`     FuCUL,

    FACaL                     `verb`    {- <^sAhad> -}         [ ['w','a','t','c','h'], ['o','b','s','e','r','v','e'], ['w','i','t','n','e','s','s'] ],

    HaFCaL                    `verb`    {- <'a^shad> -}        [ ['q','u','o','t','e'] ],

    IstaFCaL                  `verb`    {- <ista^shad> -}      [ ['q','u','o','t','e'], ['c','i','t','e'] ],

    UstuFCiL                  `verb`    {- <ustu^shid> -}      [ unwords [ ['b','e'], ['m','a','r','t','y','r','e','d'] ], unwords [ ['d','i','e'], ['i','n'], ['b','a','t','t','l','e'] ] ],

    FaCAL |< aT               `noun`    {- <^sahAdaT> -}       [ ['c','e','r','t','i','f','i','c','a','t','e'], ['w','i','t','n','e','s','s'], ['t','e','s','t','i','m','o','n','y'] ]
                              `plural`     FaCAL |< At,

    FuCUL                     `noun`    {- <^suhUd> -}         [ ['w','i','t','n','e','s','s','i','n','g'] ],

    FaCAL |< aT               `noun`    {- <^sahAdaT> -}       [ ['m','a','r','t','y','r','d','o','m'] ],

    FaCIL                     `noun`    {- <^sahId> -}         [ ['m','a','r','t','y','r'] ]
                              `plural`     FuCaLA',

    FACiL                     `noun`    {- <^sAhid> -}         [ ['w','i','t','n','e','s','s'], ['s','p','e','c','t','a','t','o','r'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL
                              `femini`     FACiL |< aT,

    FACiL |< aT               `noun`    {- <^sAhidaT> -}       [ ['p','r','o','o','f'], ['e','x','a','m','p','l','e'], ['c','i','t','a','t','i','o','n','s'] ]
                              `plural`     FawACiL,

    FACiL |< aT               `noun`    {- <^sAhidaT> -}       [ unwords [ ['i','n','d','e','x'], ['f','i','n','g','e','r'] ] ],

    MaFCUL                    `adj`     {- <ma^shUd> -}        [ ['a','t','t','e','s','t','e','d'], ['o','b','s','e','r','v','e','d'], unwords [ ['f','l','a','g','r','a','n','t','e'], ['d','e','l','i','c','t','o'] ] ],

    MaFCaL                    `noun`    {- <ma^shad> -}        [ ['v','i','e','w'], ['p','a','n','o','r','a','m','a'], ['s','p','e','c','t','a','c','l','e'] ]
                              `plural`     MaFACiL,

    MaFCaL                    `noun`    {- <ma^shad> -}        [ ['M','e','s','h','e','d'] ],

    MuFACaL |< aT             `noun`    {- <mu^sAhadaT> -}     [ ['o','b','s','e','r','v','a','t','i','o','n'], ['v','i','e','w','i','n','g'], ['i','n','s','p','e','c','t','i','o','n'] ],

    MuFACiL                   `noun`    {- <mu^sAhid> -}       [ ['v','i','e','w','e','r'], ['s','p','e','c','t','a','t','o','r'], ['w','i','t','n','e','s','s'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFACaL                   `adj`     {- <mu^sAhad> -}       [ ['v','i','s','i','b','l','e'], ['p','e','r','c','e','p','t','i','b','l','e'] ],

    MuFACaL |< At             `noun`    {- <mu^sAhadAt> -}     [ ['s','i','g','h','t','s'], unwords [ ['v','i','s','i','b','l','e'], ['t','h','i','n','g','s'] ] ]
                              `plural`     MuFACaL |< At
                           
    `limited` "-------P--",

    HiFCAL                    `noun`    {- <'i^shAd> -}        [ unwords [ ['w','r','i','t','t','e','n'], ['c','e','r','t','i','f','i','c','a','t','i','o','n'] ] ]
                              `plural`     HiFCAL |< At,

    IstiFCAL                  `noun`    {- <isti^shAd> -}      [ ['m','a','r','t','y','r','d','o','m'] ]
                              `plural`     IstiFCAL |< At,

    IstiFCAL |< Iy            `adj`     {- <isti^shAdIy> -}    [ ['m','a','r','t','y','r'] ],

    IstiFCAL                  `noun`    {- <isti^shAd> -}      [ ['q','u','o','t','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    MustaFCiL                 `noun`    {- <musta^shid> -}     [ ['m','a','r','t','y','r'] ]
                              `plural`     MustaFCiL |< Un
                              `femini`     MustaFCiL |< aT,

    MustaFCiL                 `adj`     {- <musta^shid> -}     [ ['q','u','o','t','i','n','g'], ['c','i','t','i','n','g'] ] ]


cluster_24  = cluster

 |> "^s h r" <| [

    FaCaL                     `verb`    {- <^sahar> -}         [ ['d','e','c','l','a','r','e'], unwords [ ['m','a','k','e'], ['p','u','b','l','i','c'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^sahhar> -}        [ unwords [ ['m','a','k','e'], ['p','u','b','l','i','c'] ] ],

    FACaL                     `verb`    {- <^sAhar> -}         [ unwords [ ['c','o','n','t','r','a','c','t'], ['m','o','n','t','h','l','y'] ] ],

    HaFCaL                    `verb`    {- <'a^shar> -}        [ unwords [ ['m','a','k','e'], ['p','u','b','l','i','c'] ], ['d','e','c','l','a','r','e'] ],

    IFtaCaL                   `verb`    {- <i^stahar> -}       [ unwords [ ['b','e','c','o','m','e'], ['f','a','m','o','u','s'] ] ],

    FaCL                      `noun`    {- <^sahr> -}          [ ['m','o','n','t','h'] ]
                              `plural`     FuCUL
                              `plural`     HaFCuL,

    FaCL |< Iy                `adj`     {- <^sahrIy> -}        [ ['m','o','n','t','h','l','y'] ],

    FaCLAn |< Iy              `noun`    {- <^sahrAnIy> -}      [ ['S','h','a','h','r','a','n','i'] ],

    MuFACaL |< aT             `noun`    {- <mu^sAharaT> -}     [ unwords [ ['m','o','n','t','h','l','y'], ['s','a','l','a','r','y'] ], unwords [ ['m','o','n','t','h','l','y'], ['p','a','y','m','e','n','t'] ] ],

    FuCL |< aT                `noun`    {- <^suhraT> -}        [ ['r','e','p','u','t','a','t','i','o','n'], ['f','a','m','e'] ],

    FaCIL                     `adj`     {- <^sahIr> -}         [ ['f','a','m','o','u','s'], unwords [ ['w','e','l','l'], "-", ['k','n','o','w','n'] ] ],

    FaCIL                     `noun`    {- <^sahIr> -}         [ ['S','h','a','h','e','e','r'] ],

    HaFCaL                    `adj`     {- <'a^shar> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['f','a','m','o','u','s'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['w','e','l','l'], "-", ['k','n','o','w','n'] ] ],

    MaFCUL                    `adj`     {- <ma^shUr> -}        [ ['f','a','m','o','u','s'], unwords [ ['w','e','l','l'], "-", ['k','n','o','w','n'] ], ['c','e','l','e','b','r','i','t','i','e','s'], ['l','u','m','i','n','a','r','i','e','s'] ]
                              `plural`     MaFACIL,

    TaFCIL                    `noun`    {- <ta^shIr> -}        [ unwords [ ['p','u','b','l','i','c'], ['e','x','p','o','s','u','r','e'] ], ['d','e','f','a','m','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'i^shAr> -}        [ ['d','e','c','l','a','r','a','t','i','o','n'], ['p','r','o','c','l','a','m','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    IFtiCAL                   `noun`    {- <i^stihAr> -}       [ ['f','a','m','e'], ['r','e','n','o','w','n'] ]
                              `plural`     IFtiCAL |< At,

    MuFaCCaL                  `adj`     {- <mu^sahhar> -}      [ ['f','a','m','o','u','s'], ['n','o','t','o','r','i','o','u','s'] ] ]


cluster_25  = cluster

 |> "^s h q" <| [

    FaCaL                     `verb`    {- <^sahaq> -}         [ ['b','r','a','y'] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <^sahiq> -}         [ ['i','n','h','a','l','e'], ['s','i','g','h'] ]
                              `imperf`     FCaL,

    FaCL |< aT                `noun`    {- <^sahqaT> -}        [ ['g','a','s','p'], ['s','i','g','h'] ],

    FaCIL                     `noun`    {- <^sahIq> -}         [ ['b','r','a','y','i','n','g'], ['s','i','g','h','i','n','g'], ['i','n','h','a','l','i','n','g'] ]
                              `plural`     FuCAL,

    FACiL                     `adj`     {- <^sAhiq> -}         [ ['l','o','f','t','y'], ['t','o','w','e','r','i','n','g'], ['h','e','i','g','h','t','s'] ]
                              `plural`     FawACiL ]


cluster_26  = cluster

 |> "^s h l" <| [

    FaCCaL                    `verb`    {- <^sahhal> -}        [ ['a','c','c','e','l','e','r','a','t','e'], ['e','x','p','e','d','i','t','e'] ],

    FaCiL                     `adj`     {- <^sahil> -}         [ ['n','i','m','b','l','e'], ['q','u','i','c','k'] ],

    FuCL |< aT                `noun`    {- <^suhlaT> -}        [ unwords [ ['d','e','e','p'], "-", ['b','l','u','e'] ], unwords [ ['n','a','v','y'], ['b','l','u','e'] ] ],

    HaFCaL                    `adj`     {- <'a^shal> -}        [ unwords [ ['d','e','e','p'], "-", ['b','l','u','e'] ], unwords [ ['n','a','v','y'], ['b','l','u','e'] ] ]
                              `femini`     FaCLA',

    TaFCIL                    `noun`    {- <ta^shIl> -}        [ ['a','c','c','e','l','e','r','a','t','i','o','n'], ['e','x','p','e','d','i','t','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_27  = cluster

 |> "^s h m" <| [

    FaCL                      `adj`     {- <^sahm> -}          [ ['a','u','d','a','c','i','o','u','s'], ['g','a','l','l','a','n','t'] ]
                              `plural`     FiCAL,

    FaCAL |< aT               `noun`    {- <^sahAmaT> -}       [ ['a','u','d','a','c','i','t','y'], ['g','a','l','l','a','n','t','r','y'] ],

    FayCaL                    `noun`    {- <^sayham> -}        [ ['p','o','r','c','u','p','i','n','e'] ] ]


cluster_28  = cluster

 |> "^s h n" <| [

    FACIL                     `noun`    {- <^sAhIn> -}         [ ['S','h','a','h','e','e','n'], ['C','h','a','h','i','n','e'] ],

    FACIL                     `noun`    {- <^sAhIn> -}         [ unwords [ ['s','h','a','h','i','n'], "(", ['I','n','d','i','a','n'], ['f','a','l','c','o','n'], ")" ] ]
                              `plural`     FawACIL ]


cluster_29  = cluster

 |> ".s b .h" <| [

    FaCCaL                    `verb`    {- <.sabba.h> -}       [ ['g','r','e','e','t'] ],

    HaFCaL                    `verb`    {- <'a.sba.h> -}       [ ['b','e','c','o','m','e'], ['b','e','g','i','n'], ['s','t','a','r','t'] ],

    IstaFCaL                  `verb`    {- <ista.sba.h> -}     [ ['l','i','g','h','t'], ['i','l','l','u','m','i','n','a','t','e'] ],

    FuCL                      `noun`    {- <.sub.h> -}         [ ['m','o','r','n','i','n','g'], ['d','a','y','b','r','e','a','k'] ]
                              `plural`     HaFCAL,

    FaCAL                     `noun`    {- <.sabA.h> -}        [ ['m','o','r','n','i','n','g'], unwords [ ['i','n'], ['t','h','e'], ['m','o','r','n','i','n','g'] ] ],

    FaCAL |< Iy               `adj`     {- <.sabA.hIy> -}      [ ['m','o','r','n','i','n','g'], ['m','a','t','i','n','a','l'] ],

    FaCAL                     `noun`    {- <.sabA.h> -}        [ ['S','a','b','a','h'] ],

    FuCAL                     `noun`    {- <.subA.h> -}        [ ['S','u','b','a','h'] ],

    FaCLAn                    `adj`     {- <.sab.hAn> -}       [ ['c','u','t','e'], ['c','o','m','e','l','y'], ['a','t','t','r','a','c','t','i','v','e'] ]
                              `plural`     FuCAL
                              `femini`     FaCLY,

    FaCIL                     `adj`     {- <.sabI.h> -}        [ ['c','u','t','e'], ['c','o','m','e','l','y'], ['a','t','t','r','a','c','t','i','v','e'] ]
                              `plural`     FiCAL
                              `plural`     FaCA'iL,

    FaCAL |< aT               `noun`    {- <.sabA.haT> -}      [ ['b','e','a','u','t','y'] ],

    FaCIL |< aT               `noun`    {- <.sabI.haT> -}      [ ['m','o','r','n','i','n','g'] ],

    FaCUL                     `adj`     {- <.sabU.h> -}        [ ['r','a','d','i','a','n','t'] ],

    MiFCAL                    `noun`    {- <mi.sbA.h> -}       [ ['l','a','m','p'], ['l','i','g','h','t'] ]
                              `plural`     MaFACIL,

    MiFCAL                    `noun`    {- <mi.sbA.h> -}       [ ['M','i','s','b','a','h'] ],

    IstiFCAL                  `noun`    {- <isti.sbA.h> -}     [ ['i','l','l','u','m','i','n','a','t','i','o','n'], ['i','l','l','u','m','i','n','a','t','i','n','g'] ]
                              `plural`     IstiFCAL |< At,

    TaFCIL                    `noun`    {- <ta.sbI.h> -}       [ ['g','r','e','e','t','i','n','g'], ['h','e','l','l','o','s'] ]
                              `plural`     TaFCIL |< At ]


cluster_30  = cluster

 |> ".s b r" <| [

    FaCaL                     `verb`    {- <.sabar> -}         [ unwords [ ['b','e'], ['p','a','t','i','e','n','t'] ], ['e','n','d','u','r','e'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <.sabbar> -}        [ ['p','r','e','s','e','r','v','e'], ['c','o','m','f','o','r','t'], ['s','t','a','b','i','l','i','z','e'] ],

    FACaL                     `verb`    {- <.sAbar> -}         [ unwords [ ['e','n','d','u','r','e'], ['p','a','t','i','e','n','t','l','y'] ] ],

    TaFaCCaL                  `verb`    {- <ta.sabbar> -}      [ unwords [ ['b','e'], ['p','a','t','i','e','n','t'] ], ['e','n','d','u','r','e'] ],

    IFtaCaL                   `verb`    {- <i.s.tabar> -}      [ unwords [ ['b','e'], ['p','a','t','i','e','n','t'] ], ['e','n','d','u','r','e'] ],

    FaCL                      `noun`    {- <.sabr> -}          [ ['p','a','t','i','e','n','c','e'], ['e','n','d','u','r','a','n','c','e'] ],

    FaCL |< aT                `noun`    {- <.sabraT> -}        [ unwords [ ['s','e','v','e','r','e'], ['c','o','l','d'] ] ],

    FuCL |< aT                `noun`    {- <.subraT> -}        [ ['p','i','l','e'], ['h','e','a','p'] ],

    FuCL |< aT |<< "aN"       `noun`    {- <.subraTaN> -}      [ unwords [ ['o','n'], ['t','h','e'], ['w','h','o','l','e'] ], ['s','u','m','m','a','r','i','l','y'] ],

    FaCUL                     `adj`     {- <.sabUr> -}         [ ['p','a','t','i','e','n','t'], ['e','n','d','u','r','i','n','g'] ]
                              `plural`     FuCuL,

    FaCUL                     `noun`    {- <.sabUr> -}         [ ['S','a','b','o','u','r'] ],

    FaCAL |< aT               `noun`    {- <.sabAraT> -}       [ unwords [ ['s','e','v','e','r','e'], ['c','o','l','d'] ] ],

    HaFCaL                    `adj`     {- <'a.sbar> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','a','t','i','e','n','t'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','e','r','s','i','s','t','e','n','t'] ] ],

    TaFCIL                    `noun`    {- <ta.sbIr> -}        [ ['p','r','e','s','e','r','v','a','t','i','o','n'], ['c','o','m','f','o','r','t','i','n','g'], ['s','t','a','b','i','l','i','z','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu.sAbaraT> -}     [ ['p','e','r','s','e','v','e','r','a','n','c','e'], ['p','a','t','i','e','n','c','e'] ],

    IFtiCAL                   `noun`    {- <i.s.tibAr> -}      [ ['p','e','r','s','e','v','e','r','a','n','c','e'], ['p','a','t','i','e','n','c','e'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `noun`    {- <.sAbir> -}         [ ['S','a','b','i','r'], ['S','a','b','e','r'] ],

    FACiL                     `adj`     {- <.sAbir> -}         [ ['p','a','t','i','e','n','t'], ['s','t','e','a','d','f','a','s','t'], ['e','n','d','u','r','i','n','g'] ],

    MuFaCCaL |< At            `noun`    {- <mu.sabbarAt> -}    [ unwords [ ['c','a','n','n','e','d'], ['g','o','o','d','s'] ] ]
                              `plural`     MuFaCCaL |< At
                           
    `limited` "-------P--",

    FaCCAL                    `noun`    {- <.sabbAr> -}        [ ['c','a','c','t','u','s'] ],

    FuCCayL                   `noun`    {- <.subbayr> -}       [ unwords [ ['I','n','d','i','a','n'], ['f','i','g'] ] ] ]

 |> ".s b r" <| [

    FaCCaL                    `verb`    {- <.sabbar> -}        [ unwords [ ['b','a','l','l','a','s','t'], "(", "a", ['s','h','i','p'], ")" ] ],

    FACUL |< aT               `noun`    {- <.sAbUraT> -}       [ unwords [ ['b','a','l','l','a','s','t'], "(", ['o','f'], "a", ['s','h','i','p'], ")" ] ] ]

 |> ['.','s','a','b','r','A'] <| [

    _____                     `noun`    {- <.sabrA> -}         [ ['S','a','b','r','a'] ] ]


cluster_31  = cluster

 |> ".s b `" <| [

    FaCaL                     `verb`    {- <.saba`> -}         [ unwords [ ['p','o','i','n','t'], ['t','h','e'], ['f','i','n','g','e','r'], ['a','t'] ] ]
                              `imperf`     FCaL,

    HiFCaL                    `noun`    {- <'i.sba`> -}        [ ['f','i','n','g','e','r'] ]
                              `plural`     HaFACiL,

    HiFCaL |< Iy              `adj`     {- <'i.sba`Iy> -}      [ unwords [ ['f','i','n','g','e','r'], "-", ['r','e','l','a','t','e','d'] ], ['d','i','g','i','t','a','l'] ],

    HiFCaL |< Iy |< At        `noun`    {- <'i.sba`IyAt> -}    [ unwords [ ['d','i','g','i','t','i','g','r','a','d','e','s'], "(", ['w','a','l','k','i','n','g'], ['o','n'], ['t','h','e'], ['t','o','e','s'], ")" ] ]
                              `plural`     HiFCaL |< Iy |< At
                           
    `limited` "-------P--",

    FuCAL                     `noun`    {- <.subA`> -}         [ ['f','i','n','g','e','r'], ['t','o','e'] ]
                              `plural`     FawACiL,

    HuFCUL                    `noun`    {- <'u.sbU`> -}        [ ['f','i','n','g','e','r'], ['t','o','e'] ]
                              `plural`     HaFACIL,

    MuFaCCaL                  `noun`    {- <mu.sabba`> -}      [ ['g','r','i','l','l'], ['g','r','i','d','i','r','o','n'] ]
                              `plural`     MuFaCCaL |< At ]


cluster_32  = cluster

 |> ".s b .g" <| [

    FaCaL                     `verb`    {- <.saba.g> -}        [ ['c','o','l','o','r'], ['t','i','n','t'], ['d','y','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL
                              `masdar`     FiCL,

    InFaCaL                   `verb`    {- <in.saba.g> -}      [ unwords [ ['b','e'], ['c','o','l','o','r','e','d'] ], unwords [ ['b','e'], ['t','i','n','t','e','d'] ], unwords [ ['b','e'], ['d','y','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i.s.taba.g> -}     [ unwords [ ['b','e'], ['c','o','l','o','r','e','d'] ], unwords [ ['b','e'], ['t','i','n','t','e','d'] ], unwords [ ['b','e'], ['d','y','e','d'] ] ],

    FiCL                      `noun`    {- <.sib.g> -}         [ ['c','o','l','o','r'], ['d','y','e'] ]
                              `plural`     HaFCAL,

    FiCL |< aT                `noun`    {- <.sib.gaT> -}       [ ['c','o','l','o','r'], ['d','y','e'], ['t','i','n','t'] ],

    FiCL |< aT                `noun`    {- <.sib.gaT> -}       [ unwords [ ['s','i','b','g','h','a','t'], "(", ['i','n'], ['"','s','i','b','g','h','a','t','u','l','l','a','h','"'], ")" ] ],

    FiCL |< Iy |< aT          `noun`    {- <.sib.gIyaT> -}     [ ['c','h','r','o','m','o','s','o','m','e'] ]
                              `plural`     FiCL |< Iy |< At,

    FiCL |< Iy                `adj`     {- <.sib.gIy> -}       [ ['c','h','r','o','m','o','s','o','m','e'] ],

    FiCAL                     `noun`    {- <.sibA.g> -}        [ ['c','o','l','o','r'], ['d','y','e'], ['c','o','n','d','i','m','e','n','t'] ]
                              `plural`     HaFCiL |< aT,

    FaCCAL                    `noun`    {- <.sabbA.g> -}       [ ['d','y','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <.sabbA.g> -}       [ ['S','a','b','b','a','g','h'] ],

    FiCAL |< aT               `noun`    {- <.sibA.gaT> -}      [ ['d','y','e','i','n','g'], ['s','t','a','i','n','i','n','g'] ],

    MaFCaL |< aT              `noun`    {- <ma.sba.gaT> -}     [ unwords [ ['d','y','e'], "-", ['h','o','u','s','e'] ] ]
                              `plural`     MaFACiL,

    FACiL                     `noun`    {- <.sAbi.g> -}        [ ['d','y','e','r'], ['b','a','p','t','i','s','t'] ],

    MaFCUL                    `adj`     {- <ma.sbU.g> -}       [ ['d','y','e','d'], ['t','i','n','t','e','d'], ['c','o','l','o','r','e','d'] ],

    IFtiCAL                   `noun`    {- <i.s.tibA.g> -}     [ ['c','o','l','o','r','a','t','i','o','n'], ['p','i','g','m','e','n','t','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At ]


cluster_33  = cluster

 |> ".s b n" <| [

    FaCCaL                    `verb`    {- <.sabban> -}        [ ['s','o','a','p'], unwords [ ['r','u','b'], ['w','i','t','h'], ['s','o','a','p'] ], ['s','a','p','o','n','i','f','y'] ],

    FACUL                     `noun`    {- <.sAbUn> -}         [ ['s','o','a','p'] ],

    FACUL |< Iy               `adj`     {- <.sAbUnIy> -}       [ ['s','o','a','p','y'] ],

    FaCCAL                    `noun`    {- <.sabbAn> -}        [ unwords [ ['s','o','a','p'], ['b','o','i','l','e','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MaFCaL |< aT              `noun`    {- <ma.sbanaT> -}      [ unwords [ ['s','o','a','p'], ['f','a','c','t','o','r','y'] ] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta.sbIn> -}        [ unwords [ ['s','o','a','p'], "-", ['m','a','k','i','n','g'] ] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta.sabbun> -}      [ unwords [ ['s','o','a','p'], "-", ['m','a','k','i','n','g'] ] ]
                              `plural`     TaFaCCuL |< At ]


cluster_34  = cluster

 |> ".s t m" <| [

    FuCL |< aT                `noun`    {- <.sutmaT> -}        [ unwords [ ['h','a','r','d'], ['r','o','c','k'] ] ]
                              `plural`     FuCaL
                              `plural`     FaCA'iL,

    FiCAL |< aT               `noun`    {- <.sitAmaT> -}       [ ['p','e','t','r','o','g','r','a','p','h','y'], ['l','i','t','h','o','l','o','g','y'] ],

    FiCAL |< Iy               `adj`     {- <.sitAmIy> -}       [ ['p','e','t','r','o','g','r','a','p','h','i','c'], ['l','i','t','h','o','l','o','g','i','c','a','l'] ] ]


cluster_35  = cluster

 |> ".s .h b" <| [

    FaCiL                     `verb`    {- <.sa.hib> -}        [ ['b','e','f','r','i','e','n','d'], ['a','c','c','o','m','p','a','n','y'] ]
                              `imperf`     FCaL
                              `masdar`     FaCAL |< aT
                              `masdar`     FuCuL |< aT,

    FACaL                     `verb`    {- <.sA.hab> -}        [ ['b','e','f','r','i','e','n','d'], ['a','c','c','o','m','p','a','n','y'] ],

    HaFCaL                    `verb`    {- <'a.s.hab> -}       [ ['e','s','c','o','r','t'] ],

    IFtaCaL                   `verb`    {- <i.s.ta.hab> -}     [ ['a','c','c','o','m','p','a','n','y'], ['e','s','c','o','r','t'] ],

    IstaFCaL                  `verb`    {- <ista.s.hab> -}     [ ['a','c','c','o','m','p','a','n','y'], ['e','s','c','o','r','t'] ],

    FuCL |< aT                `noun`    {- <.su.hbaT> -}       [ ['c','o','m','p','a','n','y'], ['a','c','c','o','m','p','a','n','i','e','d'], ['f','r','i','e','n','d','s','h','i','p'] ],

    FaCAL |< aT               `noun`    {- <.sa.hAbaT> -}      [ unwords [ ['c','o','m','p','a','n','i','o','n','s'], ['o','f'], ['t','h','e'], ['P','r','o','p','h','e','t'] ] ],

    FaCAL |< Iy               `adj`     {- <.sa.hAbIy> -}      [ unwords [ ['c','o','m','p','a','n','i','o','n'], ['o','f'], ['t','h','e'], ['P','r','o','p','h','e','t'] ] ],

    MuFACaL |< aT             `noun`    {- <mu.sA.habaT> -}    [ ['e','s','c','o','r','t'], ['a','c','c','o','m','p','a','n','y','i','n','g'] ],

    IFtiCAL                   `noun`    {- <i.s.ti.hAb> -}     [ ['a','c','c','o','m','p','a','n','y','i','n','g'], ['e','s','c','o','r','t'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `noun`    {- <.sA.hib> -}        [ ['o','w','n','e','r'], ['o','r','i','g','i','n','a','t','o','r'] ]
                              `plural`     HaFCAL
                              `plural`     FuCLAn
                              `femini`     FACiL |< aT,

    FACiL                     `noun`    {- <.sA.hib> -}        [ ['f','r','i','e','n','d'], ['c','o','m','p','a','n','i','o','n'] ]
                              `plural`     HaFCAL
                              `plural`     FuCLAn
                              `femini`     FACiL |< aT,

    MaFCUL                    `adj`     {- <ma.s.hUb> -}       [ ['a','c','c','o','m','p','a','n','i','e','d'] ],

    FuwayCiL                  `noun`    {- <.suway.hib> -}     [ unwords [ ['l','i','t','t','l','e'], ['f','r','i','e','n','d'] ] ]
                              `plural`     FuwayCiL |< Un
                              `femini`     FuwayCiL |< aT ]


cluster_36  = cluster

 |> ".s .h r" <| [

    HaFCaL                    `adj`     {- <'a.s.har> -}       [ unwords [ ['d','e','s','e','r','t'], "-", ['l','i','k','e'] ], ['d','e','s','o','l','a','t','e'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FaCLA'                    `noun`    {- <.sa.hrA'> -}       [ ['S','a','h','a','r','a'] ],

    FaCLA'                    `noun`    {- <.sa.hrA'> -}       [ ['d','e','s','e','r','t'] ]
                              `plural`     FaCALY
                              `plural`     FaCALI
                              `plural`     FaCLA' |< At,

    FaCCAL |< aT              `noun`    {- <.sa.h.hAraT> -}    [ ['c','r','a','t','e'], ['b','o','x'] ]
                              `plural`     FaCACIL,

    TaFCIL                    `noun`    {- <ta.s.hIr> -}       [ ['d','e','s','e','r','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta.sa.h.hur> -}    [ ['d','e','s','e','r','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    FaCLA' |< Iy              `adj`     {- <.sa.hrAwIy> -}     [ ['d','e','s','e','r','t'], ['S','a','h','a','r','a','n'] ] ]


cluster_37  = cluster

 |> ".s .h f" <| [

    FaCCaL                    `verb`    {- <.sa.h.haf> -}      [ ['m','i','s','p','r','o','n','o','u','n','c','e'], ['m','i','s','s','p','e','l','l'], ['m','i','s','r','e','p','r','e','s','e','n','t'] ],

    TaFaCCaL                  `verb`    {- <ta.sa.h.haf> -}    [ unwords [ ['b','e'], ['m','i','s','p','r','o','n','o','u','n','c','e','d'] ], unwords [ ['b','e'], ['m','i','s','s','p','e','l','l','e','d'] ], unwords [ ['b','e'], ['m','i','s','r','e','p','r','e','s','e','n','t','e','d'] ] ],

    FaCL |< aT                `noun`    {- <.sa.hfaT> -}       [ ['b','o','w','l'], ['p','l','a','t','t','e','r'] ]
                              `plural`     FiCAL,

    FaCIL |< aT               `noun`    {- <.sa.hIfaT> -}      [ ['n','e','w','s','p','a','p','e','r'], ['s','h','e','e','t'], ['l','e','a','f'] ]
                              `plural`     FuCuL
                              `plural`     FaCA'iL,

    FaCaL |< Iy               `adj`     {- <.sa.hafIy> -}      [ ['j','o','u','r','n','a','l','i','s','t','i','c'], ['p','r','e','s','s'], ['n','e','w','s','p','a','p','e','r'] ],

    FaCaL |< Iy               `noun`    {- <.sa.hafIy> -}      [ ['j','o','u','r','n','a','l','i','s','t'], ['r','e','p','o','r','t','e','r'] ]
                              `plural`     FaCaL |< Iy |< Un
                              `femini`     FaCaL |< Iy |< aT,

    FuCuL |< Iy               `adj`     {- <.su.hufIy> -}      [ ['j','o','u','r','n','a','l','i','s','t','i','c'], ['p','r','e','s','s'], ['n','e','w','s','p','a','p','e','r'] ],

    FuCuL |< Iy               `noun`    {- <.su.hufIy> -}      [ ['j','o','u','r','n','a','l','i','s','t'], ['r','e','p','o','r','t','e','r'] ]
                              `plural`     FuCuL |< Iy |< Un
                              `femini`     FuCuL |< Iy |< aT,

    FaCAL |< aT               `noun`    {- <.sa.hAfaT> -}      [ ['j','o','u','r','n','a','l','i','s','m'], ['p','r','e','s','s'] ],

    FaCAL |< Iy               `adj`     {- <.sa.hAfIy> -}      [ ['j','o','u','r','n','a','l','i','s','t','i','c'], ['p','r','e','s','s'] ],

    FaCAL |< Iy               `noun`    {- <.sa.hAfIy> -}      [ ['j','o','u','r','n','a','l','i','s','t'], ['r','e','p','o','r','t','e','r'] ]
                              `plural`     FaCAL |< Iy |< Un
                              `femini`     FaCAL |< Iy |< aT,

    FaCCAL                    `noun`    {- <.sa.h.hAf> -}      [ ['S','a','h','h','a','f'] ],

    FaCCAL                    `noun`    {- <.sa.h.hAf> -}      [ unwords [ ['n','e','w','s','p','a','p','e','r'], ['s','e','l','l','e','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MuFCaL                    `noun`    {- <mu.s.haf> -}       [ ['Q','u','r','a','n'], unwords [ ['Q','u','r','a','n','i','c'], ['m','a','n','u','s','c','r','i','p','t'] ] ],

    MuFCaL                    `noun`    {- <mu.s.haf> -}       [ ['v','o','l','u','m','e'], ['c','o','p','i','e','s'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta.s.hIf> -}       [ ['m','i','s','p','r','o','n','u','n','c','i','a','t','i','o','n'], ['m','i','s','s','p','e','l','l','i','n','g'], ['m','i','s','r','e','p','r','e','s','e','n','t','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At ]


cluster_38  = cluster

 |> ".s .h l" <| [

    FaCaL                     `adj`     {- <.sa.hal> -}        [ ['r','a','u','c','o','u','s'], ['h','o','a','r','s','e'] ],

    HaFCaL                    `adj`     {- <'a.s.hal> -}       [ ['r','a','u','c','o','u','s'], ['h','o','a','r','s','e'] ]
                              `femini`     FaCLA' ]


cluster_39  = cluster

 |> ".s .h n" <| [

    FaCL                      `noun`    {- <.sa.hn> -}         [ ['b','o','w','l'], ['p','l','a','t','e'] ]
                              `plural`     FuCUL,

    FaCL                      `noun`    {- <.sa.hn> -}         [ unwords [ ['d','i','s','h'], ['a','n','t','e','n','n','a'] ], unwords [ ['c','o','n','c','a','v','e'], ['m','i','r','r','o','r'] ] ]
                              `plural`     FuCUL,

    MaFCUL                    `adj`     {- <ma.s.hUn> -}       [ ['g','r','a','t','e','d'], ['c','r','u','s','h','e','d'], ['g','r','o','u','n','d'] ] ]


cluster_40  = cluster

 |> ".s _h b" <| [

    FaCiL                     `verb`    {- <.sa_hib> -}        [ ['s','h','o','u','t'], ['c','l','a','m','o','r'] ]
                              `imperf`     FCaL,

    IFtaCaL                   `verb`    {- <i.s.ta_hab> -}     [ ['s','h','o','u','t'], ['c','l','a','m','o','r'] ],

    FaCaL                     `noun`    {- <.sa_hab> -}        [ ['s','h','o','u','t','i','n','g'], ['t','u','m','u','l','t'] ],

    FaCiL                     `adj`     {- <.sa_hib> -}        [ ['v','o','c','i','f','e','r','o','u','s'], ['n','o','i','s','y'] ],

    FaCCAL                    `adj`     {- <.sa_h_hAb> -}      [ ['n','o','i','s','y'], ['v','o','c','i','f','e','r','o','u','s'] ],

    IFtiCAL                   `noun`    {- <i.s.ti_hAb> -}     [ ['n','o','i','s','e'], ['t','u','m','u','l','t'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <.sA_hib> -}        [ ['n','o','i','s','y'], ['t','u','m','u','l','t','u','o','u','s'] ],

    MuFtaCaL                  `noun`    {- <mu.s.ta_hab> -}    [ ['n','o','i','s','e'], ['t','u','m','u','l','t'] ] ]


cluster_41  = cluster

 |> ".s _h r" <| [

    FaCCaL                    `verb`    {- <.sa_h_har> -}      [ ['p','e','t','r','i','f','y'] ],

    TaFaCCaL                  `verb`    {- <ta.sa_h_har> -}    [ unwords [ ['b','e'], ['p','e','t','r','i','f','i','e','d'] ] ],

    FaCL                      `noun`    {- <.sa_hr> -}         [ ['r','o','c','k'], ['b','o','u','l','d','e','r'] ]
                              `plural`     FuCUL
                              `plural`     FuCUL |< aT,

    FaCL |< aT                `noun`    {- <.sa_hraT> -}       [ ['r','o','c','k'], ['b','o','u','l','d','e','r'] ]
                              `plural`     FaCaL |< At,

    FaCL                      `noun`    {- <.sa_hr> -}         [ ['S','a','k','h','r'] ],

    FaCL |< Iy                `adj`     {- <.sa_hrIy> -}       [ ['r','o','c','k'], ['r','u','p','e','s','t','r','a','l'] ],

    TaFCIL                    `noun`    {- <ta.s_hIr> -}       [ ['p','e','t','r','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta.sa_h_hur> -}    [ ['p','e','t','r','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At ]


cluster_42  = cluster

 |> ['.','s','A','d'] <| [

    _____                     `noun`    {- <.sAd> -}           [ unwords [ ['S','a','d'], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_43  = cluster

 |> ['.','s','U','d','A'] <| [

    _____                     `noun`    {- <.sUdA> -}          [ ['s','o','d','a'] ] ]


cluster_44  = cluster

 |> ".s d .h" <| [

    FaCaL                     `verb`    {- <.sada.h> -}        [ ['c','h','a','n','t'], ['s','i','n','g'] ]
                              `imperf`     FCaL,

    FuCAL                     `noun`    {- <.sudA.h> -}        [ ['c','h','a','n','t','i','n','g'], ['s','i','n','g','i','n','g'] ],

    FaCaL                     `noun`    {- <.sada.h> -}        [ ['b','a','n','n','e','r'] ],

    FaCaL |< At               `noun`    {- <.sada.hAt> -}      [ unwords [ ['m','u','s','i','c','a','l'], ['s','t','r','a','i','n','s'] ] ]
                              `plural`     FaCaL |< At
                           
    `limited` "-------P--",

    FACiL                     `noun`    {- <.sAdi.h> -}        [ ['s','e','m','i','t','o','n','e'] ],

    FACiL                     `noun`    {- <.sAdi.h> -}        [ ['s','i','n','g','e','r'], ['t','e','n','o','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT ]


cluster_45  = cluster

 |> ".s d r" <| [

    FaCaL                     `verb`    {- <.sadar> -}         [ unwords [ ['b','e'], ['p','u','b','l','i','s','h','e','d'] ], unwords [ ['b','e'], ['i','s','s','u','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <.saddar> -}        [ ['e','x','p','o','r','t'], ['p','u','b','l','i','s','h'], ['d','i','s','p','a','t','c','h'] ],

    FACaL                     `verb`    {- <.sAdar> -}         [ ['c','o','n','f','i','s','c','a','t','e'] ],

    HaFCaL                    `verb`    {- <'a.sdar> -}        [ ['i','s','s','u','e'], ['p','u','b','l','i','s','h'] ],

    TaFaCCaL                  `verb`    {- <ta.saddar> -}      [ ['p','r','e','s','i','d','e'], ['l','e','a','d'], ['h','e','a','d'] ],

    IstaFCaL                  `verb`    {- <ista.sdar> -}      [ ['i','s','s','u','e'] ],

    FaCL                      `noun`    {- <.sadr> -}          [ ['c','h','e','s','t'], ['b','o','s','o','m'] ]
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <.sadrIy> -}        [ ['c','h','e','s','t'], ['p','e','c','t','o','r','a','l'] ],

    FuCL |< aT                `noun`    {- <.sudraT> -}        [ ['v','e','s','t'] ]
                              `plural`     FuCaL,

    FuCayL |< Iy |< aT        `noun`    {- <.sudayrIyaT> -}    [ ['v','e','s','t'] ]
                              `plural`     FuCayL |< Iy |< At,

    FiCAL                     `noun`    {- <.sidAr> -}         [ ['v','e','s','t'] ],

    FaCAL |< aT               `noun`    {- <.sadAraT> -}       [ ['c','h','a','i','r','m','a','n','s','h','i','p'], ['p','r','e','c','e','d','e','n','c','e'] ],

    FuCUL                     `noun`    {- <.sudUr> -}         [ ['a','p','p','e','a','r','a','n','c','e'], ['i','s','s','u','a','n','c','e'] ],

    MaFCaL                    `noun`    {- <ma.sdar> -}        [ ['s','o','u','r','c','e'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta.sdIr> -}        [ ['e','x','p','o','r','t'], ['e','x','p','o','r','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta.sdIrIy> -}      [ ['e','x','p','o','r','t'] ],

    MuFACaL |< aT             `noun`    {- <mu.sAdaraT> -}     [ ['c','o','n','f','i','s','c','a','t','i','o','n'], ['e','m','b','a','r','g','o'] ],

    HiFCAL                    `noun`    {- <'i.sdAr> -}        [ ['e','x','p','o','r','t'], ['i','s','s','u','a','n','c','e'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <ta.saddur> -}      [ ['c','h','a','i','r','m','a','n','s','h','i','p'], ['p','r','e','e','m','i','n','e','n','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <i.s.tidAr> -}      [ ['i','s','s','u','a','n','c','e'] ]
                              `plural`     IFtiCAL |< At,

    IstiFCAL                  `noun`    {- <isti.sdAr> -}      [ ['i','s','s','u','i','n','g'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `adj`     {- <.sAdir> -}         [ ['i','s','s','u','e','d'], ['p','u','b','l','i','s','h','e','d'] ],

    FACiL                     `noun`    {- <.sAdir> -}         [ ['e','x','p','o','r','t'] ]
                              `plural`     FACiL |< At,

    MaFCUL                    `noun`    {- <ma.sdUr> -}        [ ['t','u','b','e','r','c','u','l','a','r'] ],

    MuFaCCiL                  `noun`    {- <mu.saddir> -}      [ ['e','x','p','o','r','t','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCiL                  `adj`     {- <mu.saddir> -}      [ ['e','x','p','o','r','t','i','n','g'] ],

    MuFaCCaL                  `noun`    {- <mu.saddar> -}      [ ['e','x','p','o','r','t','e','d'], ['e','x','p','o','r','t','s'] ]
                              `plural`     MuFaCCaL |< At,

    MuFACaL                   `noun`    {- <mu.sAdar> -}       [ ['c','o','n','f','i','s','c','a','t','e','d'], ['r','e','q','u','i','s','i','t','i','o','n','e','d'] ],

    MutaFaCCiL                `adj`     {- <muta.saddir> -}    [ ['p','r','e','s','i','d','i','n','g'], ['l','e','a','d','i','n','g'], ['h','e','a','d','i','n','g'] ] ]


cluster_46  = cluster

 |> ".s d `" <| [

    FaCaL                     `verb`    {- <.sada`> -}         [ ['b','r','e','a','k'], unwords [ ['e','x','p','o','s','e'], ['c','l','e','a','r','l','y'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <.sadda`> -}        [ ['b','r','e','a','k'], unwords [ ['g','i','v','e'], ['h','e','a','d','a','c','h','e','s'], ['t','o'] ] ],

    TaFaCCaL                  `verb`    {- <ta.sadda`> -}      [ unwords [ ['b','e'], ['c','r','a','c','k','e','d'] ] ],

    InFaCaL                   `verb`    {- <in.sada`> -}       [ unwords [ ['b','e'], ['c','r','a','c','k','e','d'] ] ],

    FaCL                      `noun`    {- <.sad`> -}          [ ['c','r','e','v','i','c','e'], ['b','r','e','a','k'] ]
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <.sad`aT> -}        [ ['s','p','l','i','t'], ['d','i','v','e','r','g','e','n','c','e'] ]
                              `plural`     FaCaL |< At,

    FuCAL                     `noun`    {- <.sudA`> -}         [ ['h','e','a','d','a','c','h','e'], ['m','i','g','r','a','i','n','e'] ],

    FuCAL |< Iy               `adj`     {- <.sudA`Iy> -}       [ ['m','i','g','r','a','i','n','e'] ],

    TaFCIL                    `noun`    {- <ta.sdI`> -}        [ ['r','u','p','t','u','r','e'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta.saddu`> -}      [ ['b','r','e','a','c','h'], ['r','i','f','t'] ]
                              `plural`     TaFaCCuL |< At,

    MaFCUL                    `adj`     {- <ma.sdU`> -}        [ ['c','r','a','c','k','e','d'], ['b','r','o','k','e','n'] ],

    MutaFaCCiL                `adj`     {- <muta.saddi`> -}    [ ['c','r','a','c','k','e','d'], ['b','r','i','t','t','l','e'] ] ]


cluster_47  = cluster

 |> ".s d .g" <| [

    FuCL                      `noun`    {- <.sud.g> -}         [ unwords [ ['t','e','m','p','l','e'], "(", ['a','n','a','t'], ")" ] ]
                              `plural`     HaFCAL,

    FuCL |< Iy                `adj`     {- <.sud.gIy> -}       [ unwords [ ['t','e','m','p','o','r','a','l'], "(", ['a','n','a','t'], ")" ] ] ]


cluster_48  = cluster

 |> ".s d f" <| [

    FaCaL                     `verb`    {- <.sadaf> -}         [ ['a','v','o','i','d'] ]
                              `imperf`     FCiL,

    FACaL                     `verb`    {- <.sAdaf> -}         [ ['c','o','i','n','c','i','d','e'], ['c','o','n','c','u','r'], ['e','n','c','o','u','n','t','e','r'] ],

    TaFACaL                   `verb`    {- <ta.sAdaf> -}       [ unwords [ ['m','e','e','t'], ['u','n','e','x','p','e','c','t','e','d','l','y'] ] ],

    FaCaL                     `noun`    {- <.sadaf> -}         [ ['p','e','a','r','l'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <.sadaf> -}         [ ['p','s','o','r','i','a','s','i','s'] ],

    FaCaL |< Iy               `adj`     {- <.sadafIy> -}       [ ['p','e','a','r','l','y'], unwords [ ['m','o','t','h','e','r'], "-", ['o','f'], "-", ['p','e','a','r','l'] ] ],

    FaCaL |< Iy |< At         `noun`    {- <.sadafIyAt> -}     [ ['m','o','l','l','u','s','k','s'] ]
                              `plural`     FaCaL |< Iy |< At
                           
    `limited` "-------P--",

    FuCL |< aT                `noun`    {- <.sudfaT> -}        [ ['c','h','a','n','c','e'], ['c','o','i','n','c','i','d','e','n','c','e'] ]
                              `plural`     FuCaL,

    FuCL |< Iy                `adj`     {- <.sudfIy> -}        [ ['o','c','c','a','s','i','o','n','a','l'] ],

    MuFACaL |< aT             `noun`    {- <mu.sAdafaT> -}     [ ['c','o','i','n','c','i','d','e','n','c','e'] ],

    MuFACiL                   `adj`     {- <mu.sAdif> -}       [ unwords [ ['c','o','i','n','c','i','d','i','n','g'], ['w','i','t','h'] ], unwords [ ['c','o','r','r','e','s','p','o','n','d','i','n','g'], ['w','i','t','h'] ] ],

    TaFACuL |< Iy             `adj`     {- <ta.sAdufIy> -}     [ ['o','c','c','a','s','i','o','n','a','l'] ] ]


cluster_49  = cluster

 |> ".s d q" <| [

    FaCaL                     `verb`    {- <.sadaq> -}         [ unwords [ ['b','e'], ['s','i','n','c','e','r','e'] ], unwords [ ['t','e','l','l'], ['t','h','e'], ['t','r','u','t','h'] ], unwords [ ['b','e'], ['c','o','r','r','e','c','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FiCL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <.saddaq> -}        [ ['b','e','l','i','e','v','e'], unwords [ ['g','i','v','e'], ['c','r','e','d','e','n','c','e'], ['t','o'] ], ['c','o','n','f','i','r','m'] ],

    FACaL                     `verb`    {- <.sAdaq> -}         [ ['b','e','f','r','i','e','n','d'], ['c','o','n','f','i','r','m'], ['a','p','p','r','o','v','e'] ],

    TaFaCCaL                  `verb`    {- <ta.saddaq> -}      [ unwords [ ['g','i','v','e'], ['a','l','m','s'] ] ],

    TaFACaL                   `verb`    {- <ta.sAdaq> -}       [ ['t','r','u','s','t'], unwords [ ['l','i','v','e'], ['h','a','r','m','o','n','i','o','u','s','l','y'], ['w','i','t','h'] ] ],

    FiCL                      `noun`    {- <.sidq> -}          [ ['s','i','n','c','e','r','i','t','y'], ['c','a','n','d','o','r'] ],

    FiCL |< Iy                `noun`    {- <.sidqIy> -}        [ ['S','i','d','q','i'] ],

    FiCL |< Iy |< aT          `noun`    {- <.sidqIyaT> -}      [ ['h','o','n','e','s','t','y'], ['i','n','t','e','g','r','i','t','y'] ],

    FaCaL |< aT               `noun`    {- <.sadaqaT> -}       [ ['a','l','m','s'], ['c','h','a','r','i','t','y'] ]
                              `plural`     FaCaL |< At,

    FaCAL                     `noun`    {- <.sadAq> -}         [ unwords [ ['m','a','r','r','i','a','g','e'], ['c','o','n','t','r','a','c','t'] ], unwords [ ['b','r','i','d','a','l'], ['d','o','w','e','r'] ] ],

    FaCAL |< aT               `noun`    {- <.sadAqaT> -}       [ ['f','r','i','e','n','d','s','h','i','p'] ],

    FaCIL                     `noun`    {- <.sadIq> -}         [ ['f','r','i','e','n','d'] ]
                              `plural`     HaFCiLA'
                              `plural`     FuCLAn
                              `plural`     FuCaLA'
                              `femini`     FaCIL |< aT,

    FaCUL                     `adj`     {- <.sadUq> -}         [ ['t','r','u','t','h','f','u','l'], ['v','e','r','a','c','i','o','u','s'] ],

    FiCCIL                    `noun`    {- <.siddIq> -}        [ ['S','i','d','d','i','q'] ],

    FiCCIL |< Iy              `noun`    {- <.siddIqIy> -}      [ ['S','i','d','d','i','q','i'] ],

    FiCCIL                    `adj`     {- <.siddIq> -}        [ ['h','o','n','e','s','t'], ['v','e','r','a','c','i','o','u','s'] ],

    HaFCaL                    `adj`     {- <'a.sdaq> -}        [ unwords [ ['t','r','u','e','r'], "/", ['t','r','u','e','s','t'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['r','e','l','i','a','b','l','e'] ] ],

    MiFCAL                    `noun`    {- <mi.sdAq> -}        [ ['c','o','n','f','i','r','m','a','t','i','o','n'], ['s','u','b','s','t','a','n','t','i','a','t','i','o','n'] ],

    MiFCAL |< Iy |< aT        `noun`    {- <mi.sdAqIyaT> -}    [ ['c','r','e','d','i','b','i','l','i','t','y'] ],

    TaFCIL                    `noun`    {- <ta.sdIq> -}        [ ['b','e','l','i','e','f'], ['c','r','e','d','e','n','c','e'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu.sAdaqaT> -}     [ ['a','p','p','r','o','v','a','l'], ['c','e','r','t','i','f','i','c','a','t','i','o','n'] ],

    TaFACuL                   `noun`    {- <ta.sAduq> -}       [ ['l','e','g','a','l','i','z','a','t','i','o','n'], ['a','u','t','h','e','n','t','i','c','a','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    TaFACuL                   `noun`    {- <ta.sAduq> -}       [ ['e','n','t','e','n','t','e'], ['h','a','r','m','o','n','y'] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `adj`     {- <.sAdiq> -}         [ ['v','e','r','a','c','i','o','u','s'], ['t','r','u','t','h','f','u','l'] ],

    FACiL                     `noun`    {- <.sAdiq> -}         [ ['S','a','d','i','q'] ],

    MuFaCCiL |< aT            `noun`    {- <mu.saddiqaT> -}    [ ['c','e','r','t','i','f','i','c','a','t','e'] ],

    MuFaCCaL                  `adj`     {- <mu.saddaq> -}      [ ['c','r','e','d','i','b','l','e'], ['r','e','l','i','a','b','l','e'] ],

    MutaFaCCiL                `adj`     {- <muta.saddiq> -}    [ unwords [ ['g','i','v','i','n','g'], ['a','l','m','s'] ], unwords [ ['a','l','m','s'], "-", ['g','i','v','e','r'] ] ],

    MutaFaCCiL                `noun`    {- <muta.saddiq> -}    [ ['M','u','t','a','s','a','d','d','i','q'], ['M','o','t','a','s','s','a','d','e','k'] ] ]


cluster_50  = cluster

 |> ".s d l" <| [

    FayCaL |< aT              `noun`    {- <.saydalaT> -}      [ ['p','h','a','r','m','a','c','o','l','o','g','y'], ['p','h','a','r','m','a','c','e','u','t','i','c','s'] ],

    FayCaL |< Iy              `noun`    {- <.saydalIy> -}      [ ['p','h','a','r','m','a','c','i','s','t'] ]
                              `plural`     FayCaL |< Iy |< Un
                              `plural`     FayACiL |< aT
                              `femini`     FayCaL |< Iy |< aT,

    FayCaL |< Iy              `adj`     {- <.saydalIy> -}      [ ['p','h','a','r','m','a','c','e','u','t','i','c','a','l'] ],

    FayCaL |< Iy |< aT        `noun`    {- <.saydalIyaT> -}    [ ['p','h','a','r','m','a','c','y'] ] ]


cluster_51  = cluster

 |> ".s d m" <| [

    FaCaL                     `verb`    {- <.sadam> -}         [ unwords [ ['c','o','l','l','i','d','e'], ['w','i','t','h'] ], unwords [ ['c','r','a','s','h'], ['i','n','t','o'] ], ['s','h','o','c','k'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <.saddam> -}        [ ['o','p','p','o','s','e'] ],

    FACaL                     `verb`    {- <.sAdam> -}         [ ['o','p','p','o','s','e'], ['c','l','a','s','h'] ],

    TaFACaL                   `verb`    {- <ta.sAdam> -}       [ ['c','o','l','l','i','d','e'] ],

    IFtaCaL                   `verb`    {- <i.s.tadam> -}      [ ['c','o','l','l','i','d','e'], ['c','r','a','s','h'] ],

    FaCL |< aT                `noun`    {- <.sadmaT> -}        [ ['s','h','o','c','k'], ['b','l','o','w'] ]
                              `plural`     FaCaL |< At,

    FiCAL                     `noun`    {- <.sidAm> -}         [ ['c','o','l','l','i','s','i','o','n'], ['c','o','l','l','a','p','s','e'], ['c','l','a','s','h','e','s'], ['c','o','n','f','r','o','n','t','a','t','i','o','n','s'] ]
                              `plural`     FiCAL |< At,

    FiCAL |< Iy               `adj`     {- <.sidAmIy> -}       [ ['c','o','l','l','i','s','i','o','n'], ['s','h','o','c','k'] ],

    FaCCAL                    `noun`    {- <.saddAm> -}        [ ['S','a','d','d','a','m'] ],

    MuFACaL |< aT             `noun`    {- <mu.sAdamaT> -}     [ unwords [ ['h','o','s','t','i','l','e'], ['e','n','c','o','u','n','t','e','r'] ], ['c','o','l','l','i','s','i','o','n'] ]
                              `plural`     MuFACaL |< At,

    TaFACuL                   `noun`    {- <ta.sAdum> -}       [ ['c','o','l','l','i','s','i','o','n'], ['s','h','o','c','k'] ]
                              `plural`     TaFACuL |< At,

    IFtiCAL                   `noun`    {- <i.s.tidAm> -}      [ ['c','o','l','l','i','s','i','o','n'], ['s','h','o','c','k'], ['i','m','p','a','c','t'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <.sAdim> -}         [ ['s','h','o','c','k','i','n','g'], ['e','x','p','l','o','s','i','v','e'], ['p','e','r','c','u','s','s','i','o','n'] ],

    FuCAL                     `noun`    {- <.sudAm> -}         [ ['i','n','f','l','u','e','n','z','a'] ],

    MuFACiL                   `adj`     {- <mu.sAdim> -}       [ ['p','e','r','c','u','s','s','i','v','e'], ['e','x','p','l','o','s','i','v','e'] ] ]


cluster_52  = cluster

 |> ['.','s','U','r'] <| [

    _____                     `noun`    {- <.sUr> -}           [ ['T','y','r','e'] ] ]


cluster_53  = cluster

 |> ".s r .h" <| [

    FaCuL                     `verb`    {- <.saru.h> -}        [ unwords [ ['b','e'], ['f','r','a','n','k'] ], unwords [ ['b','e'], ['c','a','n','d','i','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT
                              `masdar`     FuCUL |< aT,

    FaCaL                     `verb`    {- <.sara.h> -}        [ ['c','l','a','r','i','f','y'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <.sarra.h> -}       [ ['d','e','c','l','a','r','e'], ['a','n','n','o','u','n','c','e'], ['p','r','e','m','i','t'], ['a','l','l','o','w'] ],

    FACaL                     `verb`    {- <.sAra.h> -}        [ unwords [ ['s','p','e','a','k'], ['f','r','a','n','k','l','y'] ], ['d','e','c','l','a','r','e'] ],

    TaFACaL                   `verb`    {- <ta.sAra.h> -}      [ ['c','l','a','r','i','f','y'] ],

    InFaCaL                   `verb`    {- <in.sara.h> -}      [ ['c','l','a','r','i','f','y'] ],

    FaCL                      `noun`    {- <.sar.h> -}         [ ['s','t','r','u','c','t','u','r','e'], ['e','d','i','f','i','c','e'] ]
                              `plural`     FuCUL,

    FuCAL                     `adj`     {- <.surA.h> -}        [ ['p','u','r','e'], ['d','i','s','t','i','n','c','t'] ],

    FaCIL                     `adj`     {- <.sarI.h> -}        [ ['c','a','n','d','i','d'], ['s','i','n','c','e','r','e'] ]
                              `plural`     FuCaLA'
                              `plural`     FaCA'iL,

    FaCAL |< aT               `noun`    {- <.sarA.haT> -}      [ ['s','i','n','c','e','r','i','t','y'], ['c','a','n','d','o','r'], ['f','r','a','n','k','n','e','s','s'] ],

    TaFCIL                    `noun`    {- <ta.srI.h> -}       [ ['d','e','c','l','a','r','a','t','i','o','n'], ['s','t','a','t','e','m','e','n','t'] ]
                              `plural`     TaFACIL
                              `plural`     TaFCIL |< At,

    TaFCIL                    `noun`    {- <ta.srI.h> -}       [ ['p','e','r','m','i','t'], ['l','i','c','e','n','s','e'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu.sAra.haT> -}    [ ['o','p','e','n','n','e','s','s'], ['s','i','n','c','e','r','i','t','y'], ['d','e','c','l','a','r','a','t','i','o','n'] ],

    MuFaCCaL                  `adj`     {- <mu.sarra.h> -}     [ ['l','i','c','e','n','s','e','d'], ['p','e','r','m','i','t','t','e','d'] ],

    FuCAL |< Iy |< aT         `noun`    {- <.surA.hIyaT> -}    [ ['d','e','m','i','j','o','h','n'] ] ]


cluster_54  = cluster

 |> ".s r _h" <| [

    FaCaL                     `verb`    {- <.sara_h> -}        [ ['s','h','o','u','t'], ['s','c','r','e','a','m'] ]
                              `imperf`     FCuL,

    IstaFCaL                  `verb`    {- <ista.sra_h> -}     [ unwords [ ['c','a','l','l'], ['f','o','r'], ['h','e','l','p'] ] ],

    FaCL |< aT                `noun`    {- <.sar_haT> -}       [ ['s','h','o','u','t'], ['s','c','r','e','a','m'] ]
                              `plural`     FaCaL |< At,

    FuCAL                     `noun`    {- <.surA_h> -}        [ ['s','h','o','u','t','i','n','g'], ['s','c','r','e','a','m','i','n','g'] ],

    FuCAL |< Iy               `adj`     {- <.surA_hIy> -}      [ ['s','h','o','u','t','i','n','g'], ['s','c','r','e','a','m','i','n','g'] ],

    FaCIL                     `adj`     {- <.sarI_h> -}        [ ['s','h','o','u','t','i','n','g'], ['s','c','r','e','a','m','i','n','g'] ],

    FaCCAL                    `noun`    {- <.sarrA_h> -}       [ ['s','h','o','u','t','e','r'] ],

    FACUL                     `noun`    {- <.sArU_h> -}        [ ['m','i','s','s','i','l','e'], ['r','o','c','k','e','t'] ]
                              `plural`     FawACIL,

    FACUL |< Iy               `adj`     {- <.sArU_hIy> -}      [ ['m','i','s','s','i','l','e'], ['r','o','c','k','e','t'] ],

    IstiFCAL                  `noun`    {- <isti.srA_h> -}     [ unwords [ ['c','r','y'], ['f','o','r'], ['h','e','l','p'] ] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `adj`     {- <.sAri_h> -}        [ ['l','o','u','d'], ['n','o','i','s','y'], ['s','h','o','u','t','e','r'] ] ]


cluster_55  = cluster

 |> ".s r d" <| [

    FaCL                      `noun`    {- <.sard> -}          [ ['p','l','a','t','e','a','u'] ]
                              `plural`     FuCUL,

    FaCL                      `adj`     {- <.sard> -}          [ ['p','u','r','e'], ['s','i','n','c','e','r','e'] ],

    FuCCAL                    `noun`    {- <.surrAd> -}        [ unwords [ ['d','r','i','f','t','i','n','g'], ['c','l','o','u','d','s'] ] ] ]


cluster_56  = cluster

 |> ".s r .s r" <| [

    KaRDaS                    `verb`    {- <.sar.sar> -}       [ ['c','h','i','r','p'], ['s','q','u','e','a','k'], ['s','c','r','e','a','m'] ],

    KaRDaS                    `noun`    {- <.sar.sar> -}       [ ['g','a','l','e'] ],

    KuRDuS                    `noun`    {- <.sur.sur> -}       [ ['c','o','c','k','r','o','a','c','h'] ]
                              `plural`     KaRADiS,

    KaRDUS                    `noun`    {- <.sar.sUr> -}       [ ['S','a','r','s','o','u','r'] ],

    KuRDUS                    `noun`    {- <.sur.sUr> -}       [ ['c','o','c','k','r','o','a','c','h'] ]
                              `plural`     KaRADIS,

    KaRDAS                    `noun`    {- <.sar.sAr> -}       [ ['c','r','i','c','k','e','t'] ],

    MuKaRDiS                  `adj`     {- <mu.sar.sir> -}     [ ['s','c','r','e','a','m','i','n','g'], ['p','i','e','r','c','i','n','g'] ] ]


cluster_57  = cluster

 |> ".s r .t" <| [

    FiCAL                     `noun`    {- <.sirA.t> -}        [ ['w','a','y'], ['p','a','t','h'] ]
                              `plural`     FuCuL ]


cluster_58  = cluster

 |> ".s r `" <| [

    FaCaL                     `verb`    {- <.sara`> -}         [ unwords [ ['t','h','r','o','w'], ['d','o','w','n'] ], ['d','i','s','m','a','y'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <.sAra`> -}         [ unwords [ ['f','i','g','h','t'], ['a','g','a','i','n','s','t'] ], unwords [ ['s','t','r','u','g','g','l','e'], ['w','i','t','h'] ] ],

    TaFACaL                   `verb`    {- <ta.sAra`> -}       [ ['f','i','g','h','t'], ['s','t','r','u','g','g','l','e'] ],

    InFaCaL                   `verb`    {- <in.sara`> -}       [ unwords [ ['b','e'], ['d','i','s','m','a','y','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i.s.tara`> -}      [ ['f','i','g','h','t'], ['s','t','r','u','g','g','l','e'] ],

    FaCL                      `noun`    {- <.sar`> -}          [ ['e','p','i','l','e','p','s','y'], unwords [ ['k','n','o','c','k'], "-", ['o','u','t'] ] ],

    FaCL |< Iy                `adj`     {- <.sar`Iy> -}        [ ['e','p','i','l','e','p','t','i','c'] ],

    FaCIL                     `adj`     {- <.sarI`> -}         [ ['c','o','l','l','a','p','s','e','d'], ['f','a','l','l','e','n'], ['o','v','e','r','c','o','m','e'] ]
                              `plural`     FaCLY,

    MaFCaL                    `noun`    {- <ma.sra`> -}        [ ['d','e','a','t','h'], ['f','a','t','a','l','i','t','y'] ]
                              `plural`     MaFACiL,

    MiFCAL                    `noun`    {- <mi.srA`> -}        [ ['h','e','m','i','s','t','i','c','h'], unwords [ ['d','o','o','r'], ['p','a','n','e','l'] ] ]
                              `plural`     MaFACIL,

    FiCAL                     `noun`    {- <.sirA`> -}         [ ['s','t','r','u','g','g','l','e'], ['f','i','g','h','t'] ]
                              `plural`     FiCAL |< At,

    MuFACaL |< aT             `noun`    {- <mu.sAra`aT> -}     [ ['w','r','e','s','t','l','i','n','g'], ['s','t','r','u','g','g','l','e'] ],

    IFtiCAL                   `noun`    {- <i.s.tirA`> -}      [ ['w','r','e','s','t','l','i','n','g'], ['s','t','r','u','g','g','l','e'] ]
                              `plural`     IFtiCAL |< At,

    MaFCUL                    `adj`     {- <ma.srU`> -}        [ ['c','o','l','l','a','p','s','e','d'], unwords [ ['k','n','o','c','k','e','d'], ['o','u','t'] ] ],

    MaFCUL                    `adj`     {- <ma.srU`> -}        [ ['e','p','i','l','e','p','t','i','c'], ['d','e','m','e','n','t','e','d'] ],

    MuFACiL                   `noun`    {- <mu.sAri`> -}       [ ['f','i','g','h','t','e','r'], ['c','o','m','b','a','t','a','n','t'], ['w','r','e','s','t','l','e','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT ]


cluster_59  = cluster

 |> ".s r f" <| [

    FaCaL                     `verb`    {- <.saraf> -}         [ ['d','i','v','e','r','t'], ['s','p','e','n','d'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <.sarraf> -}        [ ['e','x','c','h','a','n','g','e'], ['e','x','p','e','d','i','t','e'] ],

    TaFaCCaL                  `verb`    {- <ta.sarraf> -}      [ ['b','e','h','a','v','e'] ],

    InFaCaL                   `verb`    {- <in.saraf> -}       [ unwords [ ['g','o'], ['a','w','a','y'] ] ],

    FaCL                      `noun`    {- <.sarf> -}          [ ['d','i','v','e','r','t','i','n','g'], ['s','p','e','n','d','i','n','g'] ],

    FiCL                      `noun`    {- <.sirf> -}          [ ['m','e','r','e'], ['p','u','r','e'] ],

    FaCL |< Iy                `adj`     {- <.sarfIy> -}        [ ['m','o','r','p','h','o','l','o','g','i','c','a','l'] ],

    FaCL |< Iy |< At          `noun`    {- <.sarfIyAt> -}      [ ['d','i','s','b','u','r','s','e','m','e','n','t','s'] ]
                              `plural`     FaCL |< Iy |< At
                           
    `limited` "-------P--",

    FaCIL                     `noun`    {- <.sarIf> -}         [ ['s','q','u','e','a','k','i','n','g'], ['s','q','u','e','a','l','i','n','g'] ],

    FaCCAL                    `noun`    {- <.sarrAf> -}        [ unwords [ ['m','o','n','e','y'], ['c','h','a','n','g','e','r'] ], ['c','a','s','h','i','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCIL |< aT               `noun`    {- <.sarIfaT> -}       [ unwords [ ['r','e','e','d'], "-", ['m','a','t'], ['h','u','t'] ] ]
                              `plural`     FaCA'iL,

    MaFCiL                    `noun`    {- <ma.srif> -}        [ ['b','a','n','k'] ]
                              `plural`     MaFACiL,

    MaFCiL |< Iy              `adj`     {- <ma.srifIy> -}      [ ['b','a','n','k'], ['b','a','n','k','i','n','g'] ],

    TaFCIL                    `noun`    {- <ta.srIf> -}        [ ['s','e','l','l','i','n','g'], ['p','a','s','s','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta.srIfIy> -}      [ ['s','e','l','l','i','n','g'], ['p','a','s','s','i','n','g'] ],

    TaFaCCuL                  `noun`    {- <ta.sarruf> -}      [ ['b','e','h','a','v','i','o','r'], ['c','o','n','d','u','c','t'], ['d','i','s','p','o','s','a','l'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< At            `noun`    {- <ta.sarrufAt> -}    [ ['m','e','a','s','u','r','e','s'], ['r','e','g','u','l','a','t','i','o','n','s'] ]
                              `plural`     TaFaCCuL |< At
                           
    `limited` "-------P--",

    InFiCAL                   `noun`    {- <in.sirAf> -}       [ ['d','e','p','a','r','t','u','r','e'] ]
                              `plural`     InFiCAL |< At,

    MaFCUL                    `noun`    {- <ma.srUf> -}        [ ['e','x','p','e','n','d','i','t','u','r','e'], ['e','x','p','e','n','s','e'] ]
                              `plural`     MaFACIL
                              `plural`     MaFCUL |< At,

    MutaFaCCiL                `noun`    {- <muta.sarrif> -}    [ unwords [ ['p','r','o','v','i','n','c','i','a','l'], ['g','o','v','e','r','n','o','r'] ] ],

    MutaFaCCiL |< Iy |< aT    `noun`    {- <muta.sarrifIyaT> -} [ ['p','r','o','v','i','n','c','e'], ['j','u','r','i','s','d','i','c','t','i','o','n'] ],

    MunFaCiL                  `adj`     {- <mun.sarif> -}      [ ['d','e','p','a','r','t','i','n','g'], ['l','e','a','v','i','n','g'] ],

    MunFaCaL                  `noun`    {- <mun.saraf> -}      [ ['d','e','p','a','r','t','u','r','e'], ['c','o','n','c','l','u','s','i','o','n'], ['e','n','d'] ],

    FayCaL                    `noun`    {- <.sayraf> -}        [ unwords [ ['m','o','n','e','y'], ['c','h','a','n','g','e','r'] ], ['c','a','s','h','i','e','r'] ]
                              `plural`     FayACiL,

    FayCaL |< Iy              `noun`    {- <.sayrafIy> -}      [ unwords [ ['m','o','n','e','y'], ['c','h','a','n','g','e','r'] ], ['c','a','s','h','i','e','r'] ]
                              `plural`     FayACiL |< aT
                              `femini`     FayCaL |< Iy |< aT ]


cluster_60  = cluster

 |> ".s r m" <| [

    FaCaL                     `verb`    {- <.saram> -}         [ unwords [ ['c','u','t'], ['o','f','f'] ], ['s','e','v','e','r'], ['s','e','p','a','r','a','t','e'] ]
                              `imperf`     FCiL,

    FACaL                     `verb`    {- <.sAram> -}         [ unwords [ ['b','e'], ['e','s','t','r','a','n','g','e','d'] ], unwords [ ['b','r','a','k','e'], ['o','f','f'], ['w','i','t','h'] ] ],

    InFaCaL                   `verb`    {- <in.saram> -}       [ ['e','x','p','i','r','e'], ['e','l','a','p','s','e'] ],

    FaCL                      `noun`    {- <.sarm> -}          [ ['s','e','v','e','r','a','n','c','e'], ['s','e','p','a','r','a','t','i','o','n'] ],

    FaCAL |< aT               `noun`    {- <.sarAmaT> -}       [ ['s','e','v','e','r','i','t','y'], ['h','a','r','s','h','n','e','s','s'] ],

    FACiL                     `adj`     {- <.sArim> -}         [ ['s','e','v','e','r','e'], ['r','i','g','o','r','o','u','s'], ['s','t','r','i','c','t'] ],

    FaCIL |< aT               `noun`    {- <.sarImaT> -}       [ ['e','n','e','r','g','y'], ['f','i','r','m','n','e','s','s'] ],

    MuFACaL |< aT             `noun`    {- <mu.sAramaT> -}     [ ['e','s','t','r','a','n','g','e','m','e','n','t'], ['h','o','s','t','i','l','i','t','y'] ],

    InFiCAL                   `noun`    {- <in.sirAm> -}       [ ['e','x','p','i','r','a','t','i','o','n'], ['e','n','d'] ]
                              `plural`     InFiCAL |< At,

    MunFaCiL                  `adj`     {- <mun.sarim> -}      [ unwords [ ['g','o','n','e'], ['b','y'] ], ['e','l','a','p','s','e','d'] ] ]

 |> ".s r m" <| [

    FaCL |< aT                `noun`    {- <.sarmaT> -}        [ ['s','h','o','e'] ]
                              `plural`     FiCaL,

    FuCLAy |< aT              `noun`    {- <.surmAyaT> -}      [ ['s','h','o','e'] ]
                              `plural`     FaCALI
                              `plural`     FuCLAy |< At,

    FuCaL |< At |< Iy         `noun`    {- <.suramAtIy> -}     [ ['c','o','b','b','l','e','r'] ]
                              `plural`     FuCaL |< At |< Iy |< Un
                              `femini`     FuCaL |< At |< Iy |< aT ]


cluster_61  = cluster

 |> ['.','s','i','r','b'] <| [

    _____ |< iyA              `noun`    {- <.sirbiyA> -}       [ ['S','e','r','b','i','a'] ],

    _____ |< Iy               `adj`     {- <.sirbIy> -}        [ ['S','e','r','b','i','a','n'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <.sirbIy> -}        [ ['S','e','r','b','i','a','n'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT ]


cluster_62  = cluster

 |> ['.','s','a','r','d','A'] <| [

    _____                     `noun`    {- <.sardA> -}         [ ['S','a','r','d','a'] ] ]


cluster_63  = cluster

 |> ".s .t b" <| [

    MaFCaL |< aT              `noun`    {- <ma.s.tabaT> -}     [ ['m','a','s','t','a','b','a'], unwords [ ['s','t','o','n','e'], ['b','e','n','c','h'] ] ]
                              `plural`     MaFACiL ]


cluster_64  = cluster

 |> ".s .t l" <| [

    MaFCUL                    `noun`    {- <ma.s.tUl> -}       [ ['f','o','o','l'] ] ]


cluster_65  = cluster

 |> ".s ` b" <| [

    FaCuL                     `verb`    {- <.sa`ub> -}         [ unwords [ ['b','e'], ['d','i','f','f','i','c','u','l','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL |< aT,

    TaFaCCaL                  `verb`    {- <ta.sa``ab> -}      [ unwords [ ['b','e','c','o','m','e'], ['d','i','f','f','i','c','u','l','t'] ] ],

    TaFACaL                   `verb`    {- <ta.sA`ab> -}       [ unwords [ ['b','e'], ['d','i','f','f','i','c','u','l','t'] ] ],

    IstaFCaL                  `verb`    {- <ista.s`ab> -}      [ unwords [ ['c','o','n','s','i','d','e','r'], ['d','i','f','f','i','c','u','l','t'] ] ],

    FaCL                      `adj`     {- <.sa`b> -}          [ ['d','i','f','f','i','c','u','l','t'], ['h','a','r','d'], ['a','r','d','u','o','u','s'] ]
                              `plural`     FiCAL,

    HaFCaL                    `adj`     {- <'a.s`ab> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['d','i','f','f','i','c','u','l','t'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['a','r','d','u','o','u','s'] ] ],

    FuCUL |< aT               `noun`    {- <.su`UbaT> -}       [ ['d','i','f','f','i','c','u','l','t','y'] ]
                              `plural`     FuCUL |< At,

    MaFACiL                   `noun`    {- <ma.sA`ib> -}       [ ['d','i','f','f','i','c','u','l','t','i','e','s'] ]
                              `plural`     MaFACiL
                           
    `limited` "-------P--",

    MutaFACiL                 `adj`     {- <muta.sA`ib> -}     [ ['d','i','f','f','i','c','u','l','t'], unwords [ ['h','a','r','d'], ['t','o'], ['p','l','e','a','s','e'] ] ] ]


cluster_66  = cluster

 |> ".s ` t r" <| [

    KaRDaS                    `noun`    {- <.sa`tar> -}        [ ['t','h','y','m','e'] ] ]


cluster_67  = cluster

 |> ".s ` d" <| [

    FaCiL                     `verb`    {- <.sa`id> -}         [ ['r','i','s','e'], ['c','l','i','m','b'], unwords [ ['g','e','t'], ['i','n'] ], unwords [ ['g','e','t'], ['o','n'] ] ]
                              `imperf`     FCaL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <.sa``ad> -}        [ ['e','s','c','a','l','a','t','e'], ['i','n','t','e','n','s','i','f','y'] ],

    HaFCaL                    `verb`    {- <'a.s`ad> -}        [ unwords [ ['m','a','k','e'], ['r','i','s','e'] ], unwords [ ['b','e'], ['r','a','i','s','e','d'] ] ],

    TaFaCCaL                  `verb`    {- <ta.sa``ad> -}      [ ['e','s','c','a','l','a','t','e'], ['e','v','a','p','o','r','a','t','e'] ],

    TaFACaL                   `verb`    {- <ta.sA`ad> -}       [ ['c','l','i','m','b'], ['i','n','c','r','e','a','s','e'] ],

    FuCUL                     `noun`    {- <.su`Ud> -}         [ ['a','s','c','e','n','t'], ['r','i','s','i','n','g'] ],

    FaCL |< aT                `noun`    {- <.sa`daT> -}        [ ['r','i','s','e'], ['i','n','c','l','i','n','e'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `noun`    {- <.sa`Id> -}         [ ['l','e','v','e','l'], ['p','l','a','n','e'], ['d','o','m','a','i','n','s'] ]
                              `plural`     FuCuL
                              `plural`     HaFCiL |< aT,

    FaCIL                     `noun`    {- <.sa`Id> -}         [ ['h','i','g','h','l','a','n','d','s'], unwords [ ['U','p','p','e','r'], ['E','g','y','p','t'] ] ],

    FaCIL |< Iy               `adj`     {- <.sa`IdIy> -}       [ ['S','a','i','d','i'], unwords [ ['U','p','p','e','r'], ['E','g','y','p','t','i','a','n'] ] ]
                              `plural`     FaCA'iL |< aT,

    FuCaLA'                   `noun`    {- <.su`adA'> -}       [ unwords [ ['d','e','e','p'], ['s','i','g','h'] ] ],

    MaFCaL                    `noun`    {- <ma.s`ad> -}        [ ['a','n','o','d','e'] ]
                              `plural`     MaFACiL,

    MiFCaL                    `noun`    {- <mi.s`ad> -}        [ ['e','l','e','v','a','t','o','r'] ]
                              `plural`     MaFACiL
                              `plural`     MiFCaL |< At,

    TaFCIL                    `noun`    {- <ta.s`Id> -}        [ ['e','s','c','a','l','a','t','i','o','n'], ['i','n','t','e','n','s','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta.s`IdIy> -}      [ ['e','s','c','a','l','a','t','i','o','n'] ],

    HiFCAL                    `noun`    {- <'i.s`Ad> -}        [ ['r','a','i','s','e'], ['i','n','c','r','e','a','s','e'] ]
                              `plural`     HiFCAL |< At,

    TaFACuL                   `noun`    {- <ta.sA`ud> -}       [ ['g','r','o','w','t','h'], ['i','n','c','r','e','a','s','e'], ['e','s','c','a','l','a','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    TaFACuL |< Iy             `adj`     {- <ta.sA`udIy> -}     [ ['g','r','o','w','i','n','g'], ['i','n','c','r','e','a','s','i','n','g'], ['e','s','c','a','l','a','t','i','n','g'] ],

    FACiL                     `adj`     {- <.sA`id> -}         [ ['r','i','s','i','n','g'], ['a','s','c','e','n','d','i','n','g'] ],

    FACiL |<< "aN"            `adj`     {- <.sA`idaN> -}       [ ['h','e','n','c','e','f','o','r','t','h'], ['u','p','w','a','r','d'] ],

    MutaFACiL                 `adj`     {- <muta.sA`id> -}     [ ['r','i','s','i','n','g'], ['a','s','c','e','n','d','i','n','g'] ],

    FACiL |< aT               `noun`    {- <.sA`idaT> -}       [ ['s','t','a','l','a','g','m','i','t','e'] ]
                              `plural`     FawACiL,

    FaCCAL                    `noun`    {- <.sa``Ad> -}        [ ['e','s','c','a','l','a','t','o','r'] ] ]


cluster_68  = cluster

 |> ".s ` r" <| [

    FaCiL                     `verb`    {- <.sa`ir> -}         [ unwords [ ['h','a','v','e'], ['t','o','r','t','i','c','o','l','l','i','s'] ], unwords [ ['h','a','v','e'], ['w','r','y','n','e','c','k'] ], ['g','r','i','m','a','c','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <.sa``ar> -}        [ ['g','r','i','m','a','c','e'] ],

    FaCL                      `noun`    {- <.sa`r> -}          [ ['t','o','r','t','i','c','o','l','l','i','s'], ['w','r','y','n','e','c','k'] ],

    TaFCIL                    `noun`    {- <ta.s`Ir> -}        [ ['g','r','i','m','a','c','e'], ['p','o','u','t','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_69  = cluster

 |> ".s ` q" <| [

    FaCaL                     `verb`    {- <.sa`aq> -}         [ ['s','t','u','n'], ['s','t','r','i','k','e'] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <.sa`iq> -}         [ unwords [ ['b','e'], ['s','t','u','n','n','e','d'] ], unwords [ ['b','e'], ['t','h','u','n','d','e','r','s','t','r','u','c','k'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FuCAL,

    HaFCaL                    `verb`    {- <'a.s`aq> -}        [ ['s','t','u','n'], ['s','t','r','i','k','e'] ],

    InFaCaL                   `verb`    {- <in.sa`aq> -}       [ unwords [ ['b','e'], ['s','t','u','n','n','e','d'] ], unwords [ ['b','e'], ['t','h','u','n','d','e','r','s','t','r','u','c','k'] ] ],

    FaCaL                     `noun`    {- <.sa`aq> -}         [ ['e','l','e','c','t','r','o','c','u','t','i','o','n'], ['d','e','t','o','n','a','t','i','o','n'] ],

    FACiL                     `noun`    {- <.sA`iq> -}         [ ['d','e','t','o','n','a','t','o','r'], ['s','t','u','n','n','i','n','g'] ],

    FACiL |< aT               `noun`    {- <.sA`iqaT> -}       [ ['S','a','\'','i','q','a','h'], ['S','a','i','q','a'] ],

    FACiL |< aT               `noun`    {- <.sA`iqaT> -}       [ ['l','i','g','h','t','n','i','n','g'] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <ma.s`Uq> -}        [ ['t','h','u','n','d','e','r','s','t','r','u','c','k'], ['s','t','u','n','n','e','d'] ],

    MunFaCiL                  `adj`     {- <mun.sa`iq> -}      [ ['t','h','u','n','d','e','r','s','t','r','u','c','k'], ['s','t','u','n','n','e','d'] ] ]


cluster_70  = cluster

 |> ".s ` l" <| [

    FaCL                      `noun`    {- <.sa`l> -}          [ ['m','i','c','r','o','c','e','p','h','a','l','i','c'] ]
                              `plural`     HaFCaL ]


cluster_71  = cluster

 |> ".s ` l k" <| [

    KaRDaS |< aT              `noun`    {- <.sa`lakaT> -}      [ ['v','a','g','r','a','n','c','y'], ['m','i','s','e','r','y'] ],

    KuRDUS                    `noun`    {- <.su`lUk> -}        [ ['v','a','g','r','a','n','t'], ['v','a','g','a','b','o','n','d'] ]
                              `plural`     KaRADIS
                              `femini`     KuRDUS |< aT ]


cluster_72  = cluster

 |> ".s .g r" <| [

    FaCuL                     `verb`    {- <.sa.gur> -}        [ unwords [ ['b','e'], ['s','m','a','l','l'] ] ]
                              `imperf`     FCuL
                              `masdar`     FiCaL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <.sa.g.gar> -}      [ ['d','i','m','i','n','i','s','h'], ['b','e','l','i','t','t','l','e'] ],

    TaFACaL                   `verb`    {- <ta.sA.gar> -}      [ unwords [ ['b','e'], ['h','u','m','b','l','e'] ] ],

    IstaFCaL                  `verb`    {- <ista.s.gar> -}     [ unwords [ ['l','o','o','k'], ['d','o','w','n'], ['o','n'] ] ],

    FiCaL                     `noun`    {- <.si.gar> -}        [ ['s','m','a','l','l','n','e','s','s'], ['h','u','m','i','l','i','t','y'] ],

    FiCaL                     `noun`    {- <.si.gar> -}        [ ['y','o','u','t','h'], ['i','n','f','a','n','c','y'] ],

    FaCAL |< aT               `noun`    {- <.sa.gAraT> -}      [ ['s','m','a','l','l','n','e','s','s'], ['h','u','m','i','l','i','t','y'] ],

    FaCIL                     `adj`     {- <.sa.gIr> -}        [ ['s','m','a','l','l'], ['y','o','u','n','g'] ]
                              `plural`     FiCAL,

    FaCIL |< aT               `noun`    {- <.sa.gIraT> -}      [ unwords [ ['v','e','n','i','a','l'], ['s','i','n'] ] ]
                              `plural`     FaCA'iL,

    HaFCaL                    `adj`     {- <'a.s.gar> -}       [ unwords [ ['s','m','a','l','l','e','r'], "/", ['s','m','a','l','l','e','s','t'] ], unwords [ ['y','o','u','n','g','e','r'], "/", ['y','o','u','n','g','e','s','t'] ], ['m','i','n','o','r'] ]
                              `femini`     FuCLY,

    TaFCIL                    `noun`    {- <ta.s.gIr> -}       [ ['d','i','m','i','n','u','t','i','o','n'], ['r','e','d','u','c','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'i.s.gAr> -}       [ ['c','o','n','t','e','m','p','t'], ['d','i','s','r','e','g','a','r','d'] ]
                              `plural`     HiFCAL |< At,

    TaFACuL                   `noun`    {- <ta.sA.gur> -}      [ ['s','e','r','v','i','l','i','t','y'], ['h','u','m','i','l','i','t','y'] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `adj`     {- <.sA.gir> -}        [ ['c','o','n','t','e','m','p','t','i','b','l','e'], ['d','e','j','e','c','t','e','d'] ],

    MuFaCCaL                  `adj`     {- <mu.sa.g.gar> -}    [ ['d','i','m','i','n','i','s','h','e','d'], ['r','e','d','u','c','e','d'] ] ]


cluster_73  = cluster

 |> ['.','s','U','f','A'] <| [

    _____                     `noun`    {- <.sUfA> -}          [ ['s','o','f','a'] ] ]


cluster_74  = cluster

 |> ".s f .h" <| [

    FaCaL                     `verb`    {- <.safa.h> -}        [ ['p','a','r','d','o','n'], ['f','l','a','t','t','e','n'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <.saffa.h> -}       [ ['f','o','l','i','a','t','e'] ],

    FACaL                     `verb`    {- <.sAfa.h> -}        [ unwords [ ['s','h','a','k','e'], ['h','a','n','d','s'], ['w','i','t','h'] ] ],

    TaFaCCaL                  `verb`    {- <ta.saffa.h> -}     [ unwords [ ['p','a','g','e'], ['t','h','r','o','u','g','h'] ], ['e','x','a','m','i','n','e'], ['r','e','a','d'] ],

    TaFACaL                   `verb`    {- <ta.sAfa.h> -}      [ unwords [ ['s','h','a','k','e'], ['h','a','n','d','s'] ] ],

    IstaFCaL                  `verb`    {- <ista.sfa.h> -}     [ ['a','p','o','l','o','g','i','z','e'] ],

    FaCL                      `noun`    {- <.saf.h> -}         [ ['p','a','r','d','o','n'] ],

    FaCUL                     `adj`     {- <.safU.h> -}        [ ['c','l','e','m','e','n','t'], ['f','o','r','g','i','v','i','n','g'] ],

    FaCL |< aT                `noun`    {- <.saf.haT> -}       [ ['p','a','g','e'], ['l','e','a','f'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `noun`    {- <.safI.h> -}        [ unwords [ ['t','i','n'], ['p','l','a','t','e'] ] ],

    FaCIL |< aT               `noun`    {- <.safI.haT> -}      [ ['p','l','a','t','e'], ['s','h','e','e','t'] ]
                              `plural`     FaCA'iL,

    FuCCAL                    `noun`    {- <.suffA.h> -}       [ ['t','i','n','p','l','a','t','e'], ['f','l','a','g','s','t','o','n','e'] ]
                              `plural`     FaCACIL
                              `plural`     FuCCAL |< At,

    TaFCIL                    `noun`    {- <ta.sfI.h> -}       [ ['p','l','a','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FaCCAL                    `noun`    {- <.saffA.h> -}       [ ['t','i','n','s','m','i','t','h'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    TaFaCCuL                  `noun`    {- <ta.saffu.h> -}     [ ['e','x','a','m','i','n','a','t','i','o','n'], ['p','e','r','u','s','a','l'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCaL                  `noun`    {- <mu.saffa.h> -}     [ ['i','r','o','n','c','l','a','d'], ['a','r','m','o','r','e','d'], ['p','l','a','t','e','d'] ],

    MuFaCCaL |< aT            `noun`    {- <mu.saffa.haT> -}   [ unwords [ ['a','r','m','o','r','e','d'], ['v','e','h','i','c','l','e'] ] ]
                              `plural`     MuFaCCaL |< At,

    MuFACaL |< aT             `noun`    {- <mu.sAfa.haT> -}    [ ['h','a','n','d','s','h','a','k','e'] ] ]


cluster_75  = cluster

 |> ".s f d" <| [

    FaCCaL                    `verb`    {- <.saffad> -}        [ ['s','h','a','c','k','l','e'], ['h','a','n','d','c','u','f','f'] ],

    HaFCaL                    `verb`    {- <'a.sfad> -}        [ ['s','h','a','c','k','l','e'], ['h','a','n','d','c','u','f','f'] ],

    FaCaL                     `noun`    {- <.safad> -}         [ ['S','a','f','a','d'] ],

    FaCaL                     `noun`    {- <.safad> -}         [ ['h','a','n','d','c','u','f','f'], ['s','h','a','c','k','l','e'] ]
                              `plural`     HaFCAL,

    FiCAL                     `noun`    {- <.sifAd> -}         [ ['h','a','n','d','c','u','f','f','s'], ['s','h','a','c','k','l','e','s'] ]
                              `plural`     HaFCAL,

    TaFCIL                    `noun`    {- <ta.sfId> -}        [ ['h','a','n','d','c','u','f','f','i','n','g'], ['s','h','a','c','k','l','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'i.sfAd> -}        [ ['h','a','n','d','c','u','f','f','i','n','g'], ['s','h','a','c','k','l','i','n','g'] ]
                              `plural`     HiFCAL |< At ]


cluster_76  = cluster

 |> ".s f r" <| [

    FaCaL                     `verb`    {- <.safar> -}         [ ['w','h','i','s','t','l','e'] ]
                              `imperf`     FCiL
                              `masdar`     FaCIL,

    FaCCaL                    `verb`    {- <.saffar> -}        [ ['w','h','i','s','t','l','e'] ],

    FuCayL                    `noun`    {- <.sufayr> -}        [ ['S','f','e','i','r'] ],

    FaCL |< aT                `noun`    {- <.safraT> -}        [ ['w','h','i','s','t','l','e'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `noun`    {- <.safIr> -}         [ ['w','h','i','s','t','l','i','n','g'], ['w','h','i','s','t','l','e','s'], ['s','a','p','p','h','i','r','e'] ],

    FaCCAL |< aT              `noun`    {- <.saffAraT> -}      [ ['w','h','i','s','t','l','e'], ['s','i','r','e','n'] ]
                              `plural`     FaCACIL
                              `plural`     FaCCAL |< At,

    TaFCIL                    `noun`    {- <ta.sfIr> -}        [ ['w','h','i','s','t','l','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< aT              `noun`    {- <ta.sfIraT> -}      [ ['w','h','i','s','t','l','i','n','g'], ['w','h','i','s','t','l','e','s'] ]
                              `plural`     TaFCIL |< At,

    FACiL |< aT               `noun`    {- <.sAfiraT> -}       [ ['w','h','i','s','t','l','e'] ],

    MuFaCCiL                  `adj`     {- <mu.saffir> -}      [ ['w','h','i','s','t','l','i','n','g'], ['w','h','i','s','t','l','e','r'] ] ]

 |> ".s f r" <| [

    FaCCaL                    `verb`    {- <.saffar> -}        [ unwords [ ['d','y','e'], ['y','e','l','l','o','w'] ] ],

    IFCaLL                    `verb`    {- <i.sfarr> -}        [ unwords [ ['t','u','r','n'], ['y','e','l','l','o','w'] ], unwords [ ['b','e','c','o','m','e'], ['p','a','l','e'] ] ],

    IFCALL                    `verb`    {- <i.sfArr> -}        [ unwords [ ['t','u','r','n'], ['y','e','l','l','o','w'] ], unwords [ ['b','e','c','o','m','e'], ['p','a','l','e'] ] ],

    TaFCIL                    `noun`    {- <ta.sfIr> -}        [ ['y','e','l','l','o','w','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FaCaL                     `noun`    {- <.safar> -}         [ ['j','a','u','n','d','i','c','e'] ],

    FuCL |< aT                `noun`    {- <.sufraT> -}        [ ['y','e','l','l','o','w','n','e','s','s'], ['p','a','l','l','o','r'] ],

    FaCAL                     `noun`    {- <.safAr> -}         [ ['y','e','l','l','o','w','n','e','s','s'], ['p','a','l','l','o','r'] ],

    HaFCaL                    `adj`     {- <'a.sfar> -}        [ ['y','e','l','l','o','w'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FaCLA' |< Iy              `adj`     {- <.safrAwIy> -}      [ ['y','e','l','l','o','w'] ],

    MiFCAL                    `noun`    {- <mi.sfAr> -}        [ unwords [ ['d','e','e','p'], ['y','e','l','l','o','w'] ] ],

    IFCiLAL                   `noun`    {- <i.sfirAr> -}       [ ['y','e','l','l','o','w','i','n','g'], ['p','a','l','l','o','r'] ]
                              `plural`     IFCiLAL |< At,

    MuFCaLL                   `adj`     {- <mu.sfarr> -}       [ ['y','e','l','l','o','w'], ['p','a','l','e'] ] ]

 |> ".s f r" <| [

    HaFCaL                    `verb`    {- <'a.sfar> -}        [ ['e','m','p','t','y'] ],

    HaFCaL                    `verb`    {- <'a.sfar> -}        [ unwords [ ['b','e'], ['e','m','p','t','y'], "-", ['h','a','n','d','e','d'] ] ],

    HaFCaL                    `adj`     {- <'a.sfar> -}        [ ['e','m','p','t','y'] ],

    FiCL                      `noun`    {- <.sifr> -}          [ ['z','e','r','o'] ]
                              `plural`     FiCL |< At,

    FiCL |< Iy                `adj`     {- <.sifrIy> -}        [ ['n','u','l','l'], ['n','e','g','a','t','i','v','e'] ],

    MuFCiL                    `adj`     {- <mu.sfir> -}        [ unwords [ ['e','m','p','t','y'], "-", ['h','a','n','d','e','d'] ] ] ]

 |> ".s f r" <| [

    FaCaL                     `noun`    {- <.safar> -}         [ ['S','a','f','a','r'] ] ]


cluster_77  = cluster

 |> ".s f .s f" <| [

    KaRDAS |< aT              `noun`    {- <.saf.sAfaT> -}     [ ['w','i','l','l','o','w'] ],

    KaRDaS                    `adj`     {- <.saf.saf> -}       [ ['b','a','r','r','e','n'], ['d','e','s','o','l','a','t','e'] ] ]


cluster_78  = cluster

 |> ".s f .t" <| [

    FaCLA' |< Iy              `noun`    {- <.saf.tAwIy> -}     [ ['S','a','f','t','a','w','i'] ],

    FaCLA' |< Iy              `adj`     {- <.saf.tAwIy> -}     [ unwords [ ['f','r','o','m'], "/", ['o','f'], ['S','a','f','t','a'] ] ] ]


cluster_79  = cluster

 |> ".s f `" <| [

    FaCaL                     `verb`    {- <.safa`> -}         [ ['s','l','a','p'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    TaFACaL                   `verb`    {- <ta.sAfa`> -}       [ unwords [ ['s','l','a','p'], ['o','n','e'], ['a','n','o','t','h','e','r'] ] ],

    FaCL |< aT                `noun`    {- <.saf`aT> -}        [ ['s','l','a','p'], ['b','l','o','w'] ]
                              `plural`     FaCaL |< At,

    FaCCAL                    `noun`    {- <.saffA`> -}        [ ['b','u','f','f','o','o','n'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_80  = cluster

 |> ".s f q" <| [

    FaCaL                     `verb`    {- <.safaq> -}         [ ['s','l','a','m'], ['c','l','a','p'] ]
                              `imperf`     FCiL,

    FaCaL                     `verb`    {- <.safaq> -}         [ ['t','r','a','n','s','f','u','s','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <.saffaq> -}        [ ['a','p','p','l','a','u','d'], ['c','l','a','p'] ],

    HaFCaL                    `verb`    {- <'a.sfaq> -}        [ ['t','r','a','n','s','f','u','s','e'] ],

    FaCL                      `noun`    {- <.safq> -}          [ ['s','l','a','m','m','i','n','g'], ['c','l','a','p','p','i','n','g'], ['t','r','a','n','s','f','u','s','i','o','n'] ],

    FaCL |< aT                `noun`    {- <.safqaT> -}        [ ['d','e','a','l'], ['t','r','a','n','s','a','c','t','i','o','n'] ]
                              `plural`     FaCaL |< At,

    FiCAL                     `noun`    {- <.sifAq> -}         [ ['d','e','r','m','i','s'] ],

    FaCIL                     `adj`     {- <.safIq> -}         [ ['t','h','i','c','k'], ['i','m','p','u','d','e','n','t'] ],

    FaCAL |< aT               `noun`    {- <.safAqaT> -}       [ ['i','n','s','o','l','e','n','c','e'] ],

    TaFCIL                    `noun`    {- <ta.sfIq> -}        [ ['a','p','p','l','a','u','s','e'], ['c','l','a','p','p','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_81  = cluster

 |> ".s f q s" <| [

    KaRADiS                   `noun`    {- <.safAqis> -}       [ ['S','f','a','x'] ] ]


cluster_82  = cluster

 |> ".s f n" <| [

    FaCaL                     `verb`    {- <.safan> -}         [ ['p','o','n','d','e','r'] ]
                              `imperf`     FCiL,

    FaCaL                     `noun`    {- <.safan> -}         [ ['s','c','r','o','t','u','m'] ]
                              `plural`     HaFCAL,

    FaCIL                     `noun`    {- <.safIn> -}         [ ['s','a','v','i','n'] ] ]


cluster_83  = cluster

 |> ".s q b" <| [

    FaCiL                     `verb`    {- <.saqib> -}         [ ['a','p','p','r','o','a','c','h'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <.sAqab> -}         [ ['a','p','p','r','o','a','c','h'], unwords [ ['b','e'], ['a','d','j','a','c','e','n','t'] ] ],

    MuFACaL |< aT             `noun`    {- <mu.sAqabaT> -}     [ ['a','f','f','i','n','i','t','y'] ] ]


cluster_84  = cluster

 |> ".s q r" <| [

    FaCL                      `noun`    {- <.saqr> -}          [ ['S','a','q','r'] ],

    FaCL                      `noun`    {- <.saqr> -}          [ ['f','a','l','c','o','n'], ['h','a','w','k'] ]
                              `plural`     HaFCuL
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <.saqrIy> -}        [ unwords [ ['f','a','l','c','o','n'], "-", ['l','i','k','e'] ], unwords [ ['h','a','w','k'], "-", ['l','i','k','e'] ] ],

    FaCCAL                    `noun`    {- <.saqqAr> -}        [ ['f','a','l','c','o','n','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FACUL                     `noun`    {- <.sAqUr> -}         [ unwords [ ['s','t','o','n','e'], ['a','x'] ] ],

    FaCaLAn                   `noun`    {- <.saqarAn> -}       [ ['S','a','q','a','r','a','n'] ],

    FaCaLAn |< Iy             `noun`    {- <.saqarAnIy> -}     [ ['S','a','q','a','r','a','n','i'] ] ]


cluster_85  = cluster

 |> ".s q `" <| [

    FaCaL                     `verb`    {- <.saqa`> -}         [ unwords [ ['b','e'], ['e','l','o','q','u','e','n','t'] ], unwords [ ['s','p','e','a','k'], ['w','e','l','l'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <.saqi`> -}         [ unwords [ ['b','e'], ['f','r','o','z','e','n'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <.saqqa`> -}        [ ['f','r','e','e','z','e'] ],

    FuCL                      `noun`    {- <.suq`> -}          [ ['r','e','g','i','o','n'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <.saq`aT> -}        [ unwords [ ['s','e','v','e','r','e'], ['c','o','l','d'] ], unwords [ ['c','o','l','d'], ['s','p','e','l','l'] ] ],

    FaCIL                     `noun`    {- <.saqI`> -}         [ ['f','r','o','s','t'], ['i','c','e'] ],

    HaFCaL                    `adj`     {- <'a.sqa`> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['e','l','o','q','u','e','n','t'] ] ],

    MiFCaL                    `adj`     {- <mi.sqa`> -}        [ ['e','l','o','q','u','e','n','t'], ['s','t','e','n','t','o','r','i','a','n'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta.sqI`> -}        [ unwords [ ['d','e','e','p'], "-", ['f','r','e','e','z','i','n','g'] ] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mu.saqqa`> -}      [ ['f','r','o','z','e','n'] ],

    MaFCUL                    `adj`     {- <ma.sqU`> -}        [ ['f','r','o','z','e','n'] ] ]


cluster_86  = cluster

 |> ".s q l" <| [

    FaCaL                     `verb`    {- <.saqal> -}         [ ['s','m','o','o','t','h'], ['p','o','l','i','s','h'], ['r','e','f','i','n','e'] ]
                              `imperf`     FCuL,

    InFaCaL                   `verb`    {- <in.saqal> -}       [ unwords [ ['b','e'], ['s','m','o','o','t','h'] ], unwords [ ['b','e'], ['p','o','l','i','s','h','e','d'] ], unwords [ ['b','e'], ['r','e','f','i','n','e','d'] ] ],

    FaCL                      `noun`    {- <.saql> -}          [ ['p','o','l','i','s','h','i','n','g'], ['b','u','r','n','i','s','h','i','n','g'] ],

    FaCIL                     `noun`    {- <.saqIl> -}         [ ['p','o','l','i','s','h','e','d'], ['b','u','r','n','i','s','h','e','d'] ],

    FaCCAL                    `noun`    {- <.saqqAl> -}        [ ['p','o','l','i','s','h','e','r'], ['s','m','o','o','t','h','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <.saqqAl> -}        [ ['S','a','q','q','a','l'], ['S','a','k','k','a','l'] ],

    FayCaL                    `noun`    {- <.sayqal> -}        [ ['p','o','l','i','s','h','e','r'], ['s','m','o','o','t','h','e','r'] ]
                              `plural`     FayACiL |< aT,

    MiFCaL |< aT              `noun`    {- <mi.sqalaT> -}      [ ['b','u','r','n','i','s','h','e','r'] ]
                              `plural`     MaFACiL,

    MaFCUL                    `adj`     {- <ma.sqUl> -}        [ ['p','o','l','i','s','h','e','d'], ['b','u','r','n','i','s','h','e','d'] ],

    FiCAL |< aT               `noun`    {- <.siqAlaT> -}       [ ['t','i','e','r'], ['t','e','r','r','a','c','e'], ['s','c','a','f','f','o','l','d','i','n','g'], ['s','c','a','f','f','o','l','d','s'] ]
                              `plural`     FaCA'iL ]


cluster_87  = cluster

 |> ".s q l b" <| [

    KaRDaS |< Iy              `adj`     {- <.saqlabIy> -}      [ ['S','l','a','v','i','c'], ['S','l','a','v','s'] ]
                              `plural`     KaRADiS |< aT,

    KaRDaS |< Iy              `noun`    {- <.saqlabIy> -}      [ ['S','l','a','v','i','c'], ['S','l','a','v','s'] ]
                              `plural`     KaRADiS |< aT
                              `femini`     KaRDaS |< Iy |< aT ]


cluster_88  = cluster

 |> ['.','s','A','l'] <| [

    _____ |< aT               `noun`    {- <.sAlaT> -}         [ ['h','a','l','l'] ]
                              `plural`     _____ |< At ]


cluster_89  = cluster

 |> ".s l b" <| [

    FaCuL                     `verb`    {- <.salub> -}         [ ['h','a','r','d','e','n'], ['s','t','i','f','f','e','n'] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <.sallab> -}        [ ['h','a','r','d','e','n'], ['s','t','i','f','f','e','n'] ],

    TaFaCCaL                  `verb`    {- <ta.sallab> -}      [ ['h','a','r','d','e','n'], ['s','t','i','f','f','e','n'] ],

    FuCL                      `noun`    {- <.sulb> -}          [ ['h','e','a','r','t'], ['c','o','r','e'], ['c','r','u','x'], ['c','e','n','t','e','r'], ['e','s','s','e','n','c','e'] ],

    FuCL                      `adj`     {- <.sulb> -}          [ ['h','a','r','d'], ['s','o','l','i','d'], ['r','o','b','u','s','t'] ],

    FaCAL |< aT               `noun`    {- <.salAbaT> -}       [ ['f','i','r','m','n','e','s','s'], ['c','o','n','s','i','s','t','e','n','c','y'] ],

    FuCL                      `noun`    {- <.sulb> -}          [ unwords [ ['s','p','i','n','a','l'], ['c','o','l','u','m','n'] ] ]
                              `plural`     HaFCAL,

    FuCL |< Iy                `adj`     {- <.sulbIy> -}        [ ['d','o','r','s','a','l'], ['l','u','m','b','a','r'] ],

    FACiL                     `noun`    {- <.sAlib> -}         [ ['k','e','e','l'] ]
                              `plural`     FawACiL,

    TaFaCCuL                  `noun`    {- <ta.sallub> -}      [ ['h','a','r','d','n','e','s','s'], ['h','a','r','d','e','n','i','n','g'], ['s','c','l','e','r','o','s','i','s'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <ta.sallubIy> -}    [ ['c','a','t','a','l','e','p','t','i','c'], ['s','c','l','e','r','o','u','s'] ],

    MutaFaCCiL                `adj`     {- <muta.sallib> -}    [ ['i','n','f','l','e','x','i','b','l','e'] ] ]

 |> ".s l b" <| [

    FaCaL                     `verb`    {- <.salab> -}         [ ['c','r','u','c','i','f','y'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <.sallab> -}        [ ['c','r','u','c','i','f','y'] ],

    TaFACaL                   `verb`    {- <ta.sAlab> -}       [ ['i','n','t','e','r','s','e','c','t'] ],

    FaCL                      `noun`    {- <.salb> -}          [ ['c','r','u','c','i','f','i','x','i','o','n'] ],

    FaCL |<< "Ut"             `noun`    {- <.salbUt> -}        [ ['c','r','u','c','i','f','i','x'] ],

    FaCIL                     `noun`    {- <.salIb> -}         [ ['c','r','o','s','s'], ['c','r','u','c','i','f','i','x'] ]
                              `plural`     FuCLAn
                              `plural`     FuCuL,

    FaCIL |< Iy               `adj`     {- <.salIbIy> -}       [ ['c','r','u','s','a','d','e'], unwords [ ['c','r','o','s','s'], "-", ['l','i','k','e'] ] ],

    FaCIL |< Iy |< aT         `noun`    {- <.salIbIyaT> -}     [ ['c','r','u','s','a','d','e'], ['c','a','m','p','a','i','g','n'] ]
                              `plural`     FaCIL |< Iy |< At,

    MaFCUL                    `adj`     {- <ma.slUb> -}        [ ['c','r','u','c','i','f','i','e','d'] ],

    TaFCIL                    `noun`    {- <ta.slIb> -}        [ ['c','r','o','s','s','i','n','g'], ['i','n','t','e','r','s','e','c','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL |< aT            `noun`    {- <mu.sallabaT> -}    [ ['c','r','o','s','s','p','i','e','c','e'], ['c','r','o','s','s','b','a','r'] ],

    TaFACuL                   `noun`    {- <ta.sAlub> -}       [ ['c','r','o','s','s','i','n','g'], ['i','n','t','e','r','s','e','c','t','i','n','g'] ]
                              `plural`     TaFACuL |< At ]


cluster_90  = cluster

 |> ".s l t" <| [

    FaCuL                     `verb`    {- <.salut> -}         [ unwords [ ['b','e'], ['g','l','o','s','s','y'] ], unwords [ ['b','e'], ['s','h','i','n','i','n','g'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL |< aT,

    HaFCaL                    `verb`    {- <'a.slat> -}        [ ['u','n','s','h','e','a','t','h','e'] ],

    FuCUL |< aT               `noun`    {- <.sulUtaT> -}       [ ['g','l','o','s','s','y'], ['s','h','i','n','i','n','g'] ] ]


cluster_91  = cluster

 |> ".s l ^g" <| [

    FuCCaL                    `noun`    {- <.sulla^g> -}       [ ['c','o','c','o','o','n'] ]
                              `plural`     FuCCaL |< At,

    FawCaLAn                  `noun`    {- <.sawla^gAn> -}     [ ['s','c','e','p','t','e','r'], unwords [ ['g','o','l','f'], ['c','l','u','b'] ], unwords [ ['p','o','l','o'], ['m','a','l','l','e','t'] ] ]
                              `plural`     FawACiL |< aT ]


cluster_92  = cluster

 |> ".s l .h" <| [

    FaCuL                     `verb`    {- <.salu.h> -}        [ unwords [ ['b','e'], ['s','u','i','t','a','b','l','e'] ], unwords [ ['b','e'], ['f','i','t','t','i','n','g'] ], unwords [ ['b','e'], ['v','a','l','i','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL
                              `masdar`     FuCUL
                              `masdar`     FaCAL |< Iy |< aT,

    FaCCaL                    `verb`    {- <.salla.h> -}       [ unwords [ ['p','u','t'], ['i','n'], ['o','r','d','e','r'] ], ['r','e','p','a','i','r'] ],

    FACaL                     `verb`    {- <.sAla.h> -}        [ ['r','e','c','o','n','c','i','l','e'], ['c','o','m','p','r','o','m','i','s','e'] ],

    HaFCaL                    `verb`    {- <'a.sla.h> -}       [ unwords [ ['p','u','t'], ['i','n'], ['o','r','d','e','r'] ], ['r','e','p','a','i','r'], ['r','e','f','o','r','m'] ],

    TaFACaL                   `verb`    {- <ta.sAla.h> -}      [ unwords [ ['b','e'], ['r','e','c','o','n','c','i','l','e','d'] ] ],

    InFaCaL                   `verb`    {- <in.sala.h> -}      [ unwords [ ['b','e'], ['a','r','r','a','n','g','e','d'] ], unwords [ ['b','e'], ['p','u','t'], ['i','n'], ['o','r','d','e','r'] ] ],

    IFtaCaL                   `verb`    {- <i.s.tala.h> -}     [ ['c','o','n','c','u','r'], ['a','g','r','e','e'] ],

    IstaFCaL                  `verb`    {- <ista.sla.h> -}     [ unwords [ ['d','e','e','m'], ['s','u','i','t','a','b','l','e'] ], unwords [ ['m','a','k','e'], ['a','r','a','b','l','e'] ] ],

    FuCL                      `noun`    {- <.sul.h> -}         [ ['p','e','a','c','e'], ['r','e','c','o','n','c','i','l','i','a','t','i','o','n'] ],

    FuCL |< Iy                `adj`     {- <.sul.hIy> -}       [ ['c','o','n','c','i','l','i','a','t','o','r','y'] ],

    FaCAL                     `noun`    {- <.salA.h> -}        [ ['S','a','l','a','h'] ],

    FaCAL                     `noun`    {- <.salA.h> -}        [ ['p','r','o','p','e','r'], unwords [ ['g','o','o','d'], ['c','o','n','d','i','t','i','o','n'] ] ],

    FaCAL |< Iy |< aT         `noun`    {- <.salA.hIyaT> -}    [ ['p','r','a','c','t','i','c','a','b','i','l','i','t','y'], ['v','i','a','b','i','l','i','t','y'], ['c','o','m','p','e','t','e','n','c','e'] ]
                              `plural`     FaCAL |< Iy |< At,

    FuCUL |< Iy |< aT         `noun`    {- <.sulU.hIyaT> -}    [ ['p','r','a','c','t','i','c','a','b','i','l','i','t','y'], ['v','i','a','b','i','l','i','t','y'], ['c','o','m','p','e','t','e','n','c','e'] ],

    HaFCaL                    `adj`     {- <'a.sla.h> -}       [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['c','o','n','v','e','n','i','e','n','t'] ], unwords [ ['b','e','t','t','e','r'], "/", ['b','e','s','t'] ] ],

    MaFCaL                    `noun`    {- <ma.sla.h> -}       [ ['g','a','r','a','g','e'] ],

    MaFCaL |< aT              `noun`    {- <ma.sla.haT> -}     [ ['i','n','t','e','r','e','s','t'], ['a','d','v','a','n','t','a','g','e'], ['a','g','e','n','c','y'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <ma.sla.hIy> -}     [ ['a','d','m','i','n','i','s','t','r','a','t','i','o','n','a','l'], ['g','o','v','e','r','n','m','e','n','t','a','l'] ],

    TaFCIL                    `noun`    {- <ta.slI.h> -}       [ ['r','e','p','a','i','r'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu.sAla.haT> -}    [ ['c','o','n','c','i','l','i','a','t','i','o','n'], ['c','o','m','p','r','o','m','i','s','e'] ],

    HiFCAL                    `noun`    {- <'i.slA.h> -}       [ ['r','e','f','o','r','m'], ['r','e','s','t','o','r','a','t','i','o','n'], ['c','o','r','r','e','c','t','i','o','n'], ['a','m','e','n','d','m','e','n','t'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'i.slA.hIy> -}     [ ['r','e','f','o','r','m','a','t','i','v','e'], ['c','o','r','r','e','c','t','i','v','e'] ],

    HiFCAL |< Iy              `noun`    {- <'i.slA.hIy> -}     [ ['r','e','f','o','r','m','e','r'], ['r','e','v','i','s','i','o','n','i','s','t'] ]
                              `plural`     HiFCAL |< Iy |< Un
                              `femini`     HiFCAL |< Iy |< aT,

    HiFCAL |< Iy |< aT        `noun`    {- <'i.slA.hIyaT> -}   [ ['r','e','f','o','r','m','i','s','m'], ['r','e','h','a','b','i','l','i','t','a','t','i','o','n'] ],

    TaFACuL                   `noun`    {- <ta.sAlu.h> -}      [ ['r','e','c','o','n','c','i','l','i','a','t','i','o','n'], ['s','e','t','t','l','e','m','e','n','t'] ]
                              `plural`     TaFACuL |< At,

    TaFACuL |< Iy             `adj`     {- <ta.sAlu.hIy> -}    [ ['r','e','c','o','n','c','i','l','i','a','t','o','r','y'] ],

    IFtiCAL                   `noun`    {- <i.s.tilA.h> -}     [ ['c','o','n','v','e','n','t','i','o','n'], unwords [ ['t','e','c','h','n','i','c','a','l'], ['t','e','r','m'] ] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <i.s.tilA.hIy> -}   [ ['c','o','n','v','e','n','t','i','o','n','a','l'], ['t','e','c','h','n','i','c','a','l'] ],

    IstiFCAL                  `noun`    {- <isti.slA.h> -}     [ ['r','e','c','l','a','m','a','t','i','o','n'], ['c','u','l','t','i','v','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `noun`    {- <.sAli.h> -}        [ ['S','a','l','i','h'], ['S','a','l','e','h'] ],

    FACiL                     `adj`     {- <.sAli.h> -}        [ ['s','u','i','t','a','b','l','e'], ['a','p','p','l','i','c','a','b','l','e'] ],

    FACiL                     `noun`    {- <.sAli.h> -}        [ ['a','d','v','a','n','t','a','g','e'], ['i','n','t','e','r','e','s','t'] ]
                              `plural`     FawACiL,

    FawACiL |< aT             `noun`    {- <.sawAli.haT> -}    [ ['S','a','w','a','l','h','e','h'] ],

    FACiL                     `adj`     {- <.sAli.h> -}        [ ['p','i','o','u','s'], ['u','p','r','i','g','h','t'] ]
                              `plural`     FuCCAL
                              `plural`     FuCaLA'
                              `plural`     FACiL |< Un,

    FACiL |< At               `noun`    {- <.sAli.hAt> -}      [ unwords [ ['g','o','o','d'], ['d','e','e','d','s'] ] ]
                              `plural`     FACiL |< At
                           
    `limited` "-------P--",

    MuFaCCiL                  `noun`    {- <mu.salli.h> -}     [ ['r','e','p','a','i','r','m','a','n'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFACiL                   `noun`    {- <mu.sAli.h> -}      [ ['p','e','a','c','e','m','a','k','e','r'], ['c','o','n','c','i','l','i','a','t','o','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MutaFACiL                 `adj`     {- <muta.sAli.h> -}    [ ['r','e','c','o','n','c','i','l','e','d'], unwords [ ['a','t'], ['p','e','a','c','e'] ] ],

    MuFtaCaL                  `noun`    {- <mu.s.tala.h> -}    [ unwords [ ['t','e','c','h','n','i','c','a','l'], ['t','e','r','m'] ], ['t','e','r','m','i','n','o','l','o','g','y'] ]
                              `plural`     MuFtaCaL |< At ]


cluster_93  = cluster

 |> ".s l _h" <| [

    HaFCaL                    `adj`     {- <'a.sla_h> -}       [ ['d','e','a','f'] ]
                              `femini`     FaCLA' ]


cluster_94  = cluster

 |> ".s l d" <| [

    FaCaL                     `verb`    {- <.salad> -}         [ unwords [ ['b','e'], ['s','o','l','i','d'] ], unwords [ ['b','e'], ['c','o','m','p','a','c','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <.sallad> -}        [ ['h','a','r','d','e','n'] ],

    HaFCaL                    `verb`    {- <'a.slad> -}        [ ['h','a','r','d','e','n'] ],

    FaCL                      `adj`     {- <.sald> -}          [ ['f','i','r','m'], ['s','o','l','i','d'] ]
                              `plural`     HaFCAL,

    FaCAL |< aT               `noun`    {- <.salAdaT> -}       [ ['s','o','l','i','d','i','t','y'], ['h','a','r','d','n','e','s','s'], ['r','e','s','i','s','t','a','n','c','e'] ],

    FuCUL |< aT               `noun`    {- <.sulUdaT> -}       [ ['s','o','l','i','d','i','t','y'], ['h','a','r','d','n','e','s','s'], ['r','e','s','i','s','t','a','n','c','e'] ],

    TaFCIL                    `noun`    {- <ta.slId> -}        [ ['t','e','m','p','e','r','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mu.sallad> -}      [ ['t','e','m','p','e','r','e','d'] ] ]


cluster_95  = cluster

 |> ".s l .s" <| [

    FaCL |< aT                `noun`    {- <.sal.saT> -}       [ ['s','a','u','c','e'], ['s','a','l','s','a'] ]
                              `plural`     FaCL |< At ]


cluster_96  = cluster

 |> ".s l .s l" <| [

    KaRDaS                    `verb`    {- <.sal.sal> -}       [ ['j','i','n','g','l','e'], ['r','a','t','t','l','e'], ['c','l','i','n','k'] ],

    TaKaRDaS                  `verb`    {- <ta.sal.sal> -}     [ ['j','i','n','g','l','e'], ['r','a','t','t','l','e'], ['c','l','i','n','k'] ],

    KaRDaS |< aT              `noun`    {- <.sal.salaT> -}     [ ['j','i','n','g','l','e'], ['r','a','t','t','l','e'], ['c','l','i','n','k'] ],

    KaRDAS                    `noun`    {- <.sal.sAl> -}       [ unwords [ ['d','r','y'], ['c','l','a','y'] ] ],

    MuKaRDiS                  `adj`     {- <mu.sal.sil> -}     [ ['n','o','i','s','y'], ['r','e','s','o','u','n','d','i','n','g'] ] ]


cluster_97  = cluster

 |> ".s l .t .h" <| [

    MuKaRDaS                  `noun`    {- <mu.sal.ta.h> -}    [ ['s','h','a','l','l','o','w'], ['s','h','o','a','l'], ['f','l','a','t'] ] ]


cluster_98  = cluster

 |> ".s l `" <| [

    FaCiL                     `verb`    {- <.sali`> -}         [ unwords [ ['b','e'], ['b','a','l','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCaL                     `noun`    {- <.sala`> -}         [ ['b','a','l','d','n','e','s','s'] ],

    FaCL |< aT                `noun`    {- <.sal`aT> -}        [ unwords [ ['b','a','l','d'], ['s','p','o','t'] ], unwords [ ['b','a','l','d'], ['h','e','a','d'] ] ],

    HaFCaL                    `adj`     {- <'a.sla`> -}        [ ['b','a','l','d'] ]
                              `plural`     FuCL
                              `plural`     FuCLAn
                              `femini`     FaCLA' ]


cluster_99  = cluster

 |> ".s l f" <| [

    FaCiL                     `verb`    {- <.salif> -}         [ ['b','r','a','g'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <ta.sallaf> -}      [ ['b','r','a','g'] ],

    FaCaL                     `noun`    {- <.salaf> -}         [ ['b','r','a','g','g','i','n','g'] ],

    FaCiL                     `adj`     {- <.salif> -}         [ ['b','o','a','s','t','f','u','l'] ]
                              `plural`     FuCaLA',

    TaFaCCuL                  `noun`    {- <ta.salluf> -}      [ ['b','o','a','s','t','i','n','g'], ['c','o','n','c','e','i','t'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta.sallif> -}    [ ['b','o','a','s','t','f','u','l'], ['c','o','n','c','e','i','t','e','d'] ] ]


cluster_100 = cluster

 |> ['.','s','A','l','U','n'] <| [

    _____                     `noun`    {- <.sAlUn> -}         [ ['s','a','l','o','n'], ['p','a','r','l','o','r'] ]
                              `plural`     _____ |< At ]

 |> ['.','s','a','l','U','n'] <| [

    _____                     `noun`    {- <.salUn> -}         [ ['s','a','l','o','n'], ['p','a','r','l','o','r'] ]
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
