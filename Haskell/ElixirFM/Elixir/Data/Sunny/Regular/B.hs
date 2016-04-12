
module Elixir.Data.Sunny.Regular.B (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> "t m n" <| [

    FuCCaL                    `noun`    {- <tumman> -}         [ ['r','i','c','e'] ] ]


cluster_2   = cluster

 |> ['t','A','m','b','a','r'] <| [

    _____                     `noun`    {- <tAmbar> -}         [ ['s','t','a','m','p'], ['p','o','s','t','a','g','e'] ] ]


cluster_3   = cluster

 |> ['t','u','m','b','A','k'] <| [

    _____                     `noun`    {- <tumbAk> -}         [ ['t','o','b','a','c','c','o'] ] ]


cluster_4   = cluster

 |> ['t','a','m','m','U','z'] <| [

    _____                     `noun`    {- <tammUz> -}         [ ['J','u','l','y'] ] ]


cluster_5   = cluster

 |> ['t','U','n'] <| [

    _____ |< aT               `noun`    {- <tUnaT> -}          [ ['t','u','n','a'] ] ]


cluster_6   = cluster

 |> "t n b" <| [

    FaCCUL                    `noun`    {- <tannUb> -}         [ ['f','i','r'] ] ]


cluster_7   = cluster

 |> "t n b r" <| [

    KaRDaS                    `noun`    {- <tanbar> -}         [ ['s','t','a','m','p'] ]
                              `plural`     KaRADiS,

    MuKaRDaS                  `adj`     {- <mutanbar> -}       [ ['s','t','a','m','p','e','d'] ] ]


cluster_8   = cluster

 |> "t n b l" <| [

    KiRDAS                    `noun`    {- <tinbAl> -}         [ ['s','h','o','r','t'] ]
                              `plural`     KaRADIS,

    KaRDaS                    `noun`    {- <tanbal> -}         [ ['l','a','z','y'], ['i','d','l','e','r'] ]
                              `plural`     KaRADiS |< aT ]


cluster_9   = cluster

 |> "t n r" <| [

    FaCCUL                    `noun`    {- <tannUr> -}         [ ['o','v','e','n'] ]
                              `plural`     FaCACIL,

    FaCCUL |< aT              `noun`    {- <tannUraT> -}       [ ['s','k','i','r','t'] ] ]


cluster_10  = cluster

 |> ['t','i','n','i','s'] <| [

    _____                     `noun`    {- <tinis> -}          [ ['t','e','n','n','i','s'] ] ]


cluster_11  = cluster

 |> "t n k" <| [

    FaCaL |< aT               `noun`    {- <tanakaT> -}        [ unwords [ ['j','e','r','r','y'], ['c','a','n'] ] ],

    FaCaL |<< "^g" |< Iy      `noun`    {- <tanak^gIy> -}      [ ['t','i','n','s','m','i','t','h'] ]
                              `plural`     FaCaL |<< "^g" |< Iy |< aT ]


cluster_12  = cluster

 |> ['t','u','n','b','A','k'] <| [

    _____                     `noun`    {- <tunbAk> -}         [ ['t','o','b','a','c','c','o'] ] ]


cluster_13  = cluster

 |> ['t','U','n','^','g'] <| [

    _____                     `noun`    {- <tUn^g> -}          [ ['b','r','o','n','z','e'] ] ]


cluster_14  = cluster

 |> ['t','u','n','^','g','s','t','I','n'] <| [

    _____                     `noun`    {- <tun^gstIn> -}      [ ['t','u','n','g','s','t','e','n'] ] ]


cluster_15  = cluster

 |> ['t','A','n','z','A','n'] <| [

    _____ |< iyA              `xtra`    {- <tAnzAniyA> -}      [ ['T','a','n','z','a','n','i','a'] ],

    _____ |< Iy               `adj`     {- <tAnzAnIy> -}       [ ['T','a','n','z','a','n','i','a','n'] ] ]


cluster_16  = cluster

 |> ['t','a','n','n','I','n'] <| [

    _____                     `noun`    {- <tannIn> -}         [ ['t','a','n','n','i','n'] ] ]


cluster_17  = cluster

 |> "t h t h" <| [

    KaRDaS                    `verb`    {- <tahtah> -}         [ ['s','t','e','m','m','e','r'], ['s','t','u','t','t','e','r'] ] ]


cluster_18  = cluster

 |> "t h m" <| [

    FiCAL |< aT               `noun`    {- <tihAmaT> -}        [ ['T','i','h','a','m','a'] ]
                           
    `excepts` Diptote,

    FuCAL |< Iy               `noun`    {- <tuhAmIy> -}        [ ['T','u','h','a','m','i'] ] ]


cluster_19  = cluster

 |> ['t','r','U','b'] <| [

    _____                     `noun`    {- <trUb> -}           [ ['s','q','u','a','d','r','o','n'] ] ]


cluster_20  = cluster

 |> ['t','r','I','n','I','d','A','d'] <| [

    _____                     `xtra`    {- <trInIdAd> -}       [ ['T','r','i','n','i','d','a','d'] ],

    _____ |< Iy               `adj`     {- <trInIdAdIy> -}     [ ['T','r','i','n','i','d','a','d','i','a','n'] ] ]


cluster_21  = cluster

 |> ['t','^','s','A','d'] <| [

    _____                     `xtra`    {- <t^sAd> -}          [ ['C','h','a','d'] ],

    al >| _____               `xtra`    {- <at-t^sAd> -}       [ ['C','h','a','d'] ],

    _____ |< Iy               `adj`     {- <t^sAdIy> -}        [ ['C','h','a','d','i','a','n'] ] ]


cluster_22  = cluster

 |> ['t','^','s','I','k'] <| [

    _____ |< iyA              `xtra`    {- <t^sIkiyA> -}       [ ['C','z','e','c','h','i','a'] ],

    _____ |< Iy               `adj`     {- <t^sIkIy> -}        [ ['C','z','e','c','h'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <t^sIkIy> -}        [ ['C','z','e','c','h'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <t^sIkIyaT> -}      [ ['C','z','e','c','h'] ] ]


cluster_23  = cluster

 |> ['t','^','s','I','k','U','s','l','U','f','A','k'] <| [

    _____ |< iyA              `xtra`    {- <t^sIkUslUfAkiyA> -} [ ['C','z','e','c','h','o','s','l','o','v','a','k','i','a'] ],

    _____ |< Iy               `adj`     {- <t^sIkUslUfAkIy> -} [ ['C','z','e','c','h','o','s','l','o','v','a','k'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <t^sIkUslUfAkIy> -} [ ['C','z','e','c','h','o','s','l','o','v','a','k'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT ]


cluster_24  = cluster

 |> ['t','^','s','I','l'] <| [

    _____ |<< "I"             `xtra`    {- <t^sIlI> -}         [ ['C','h','i','l','e'] ],

    _____ |< Iy               `adj`     {- <t^sIlIy> -}        [ ['C','h','i','l','e','a','n'] ] ]


cluster_25  = cluster

 |> "_t b t" <| [

    FaCuL                     `verb`    {- <_tabut> -}         [ unwords [ ['b','e'], ['f','i','r','m'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL
                              `masdar`     FuCUL,

    FaCaL                     `verb`    {- <_tabat> -}         [ unwords [ ['b','e'], ['s','t','a','b','l','e'] ], unwords [ ['b','e'], ['e','s','t','a','b','l','i','s','h','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <_tabbat> -}        [ ['c','o','n','f','i','r','m'], ['r','e','i','n','f','o','r','c','e'] ],

    HaFCaL                    `verb`    {- <'a_tbat> -}        [ ['a','s','c','e','r','t','a','i','n'], ['e','s','t','a','b','l','i','s','h'] ],

    TaFaCCaL                  `verb`    {- <ta_tabbat> -}      [ ['a','s','c','e','r','t','a','i','n'], ['v','e','r','i','f','y'] ],

    IstaFCaL                  `verb`    {- <ista_tbat> -}      [ ['v','e','r','i','f','y'], unwords [ ['s','e','e','k'], ['c','o','n','f','i','r','m','a','t','i','o','n'] ] ],

    HiFCAL                    `noun`    {- <'i_tbAt> -}        [ ['c','o','n','f','i','r','m','a','t','i','o','n'], ['v','e','r','i','f','i','c','a','t','i','o','n'] ],

    HiFCAL |< Iy              `adj`     {- <'i_tbAtIy> -}      [ ['c','o','n','f','i','r','m','a','t','o','r','y'] ],

    FaCAL |< Iy               `adj`     {- <_tabAtIy> -}       [ ['s','t','a','b','l','e'], ['s','t','a','t','i','c'] ],

    FaCAL |< Iy |< aT         `noun`    {- <_tabAtIyaT> -}     [ ['s','t','a','b','i','l','i','t','y'] ],

    FaCAL                     `noun`    {- <_tabAt> -}         [ ['r','e','l','i','a','b','i','l','i','t','y'], ['c','o','n','s','t','a','n','c','y'] ],

    FuCUL                     `noun`    {- <_tubUt> -}         [ ['c','o','n','s','t','a','n','c','y'], ['p','e','r','m','a','n','e','n','c','e'] ],

    FuCUL |< Iy               `adj`     {- <_tubUtIy> -}       [ ['e','v','i','d','e','n','t','i','a','l'], ['s','u','p','p','o','r','t','i','n','g'] ],

    HaFCaL                    `adj`     {- <'a_tbat> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['r','e','l','i','a','b','l','e'] ], ['s','t','e','a','d','i','e','r'] ],

    TaFCIL                    `noun`    {- <ta_tbIt> -}        [ ['s','u','b','s','t','a','n','t','i','a','t','i','o','n'], ['s','t','a','b','i','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta_tabbut> -}      [ ['a','s','c','e','r','t','a','i','n','m','e','n','t'], ['v','e','r','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `adj`     {- <_tAbit> -}         [ ['e','s','t','a','b','l','i','s','h','e','d'], ['p','r','o','v','e','n'], ['p','e','r','m','a','n','e','n','t'] ],

    FACiL                     `noun`    {- <_tAbit> -}         [ ['T','h','a','b','i','t'] ],

    FACiL |< aT               `noun`    {- <_tAbitaT> -}       [ unwords [ ['f','i','x','e','d'], ['s','t','a','r'] ] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <ma_tbUt> -}        [ ['p','r','o','v','e','n'], ['c','o','n','f','i','r','m','e','d'], ['e','s','t','a','b','l','i','s','h','e','d'] ],

    MuFaCCiL                  `adj`     {- <mu_tabbit> -}      [ ['f','i','x','a','t','i','v','e'], unwords [ ['f','i','x','i','n','g'], ['f','l','u','i','d'] ] ],

    FuCayL |< Iy              `noun`    {- <_tubaytIy> -}      [ ['T','h','u','b','a','i','t','i'] ] ]


cluster_26  = cluster

 |> "_t b ^g" <| [

    FaCaL                     `verb`    {- <_taba^g> -}        [ ['s','c','r','i','b','b','l','e'], ['d','o','o','d','l','e'] ]
                              `imperf`     FCuL ]


cluster_27  = cluster

 |> "_t b r" <| [

    FaCaL                     `verb`    {- <_tabar> -}         [ ['r','u','i','n'], ['d','e','s','t','r','o','y'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <_tAbar> -}         [ ['p','e','r','s','i','s','t'], ['p','e','r','s','e','v','e','r','e'] ],

    FuCUL                     `noun`    {- <_tubUr> -}         [ ['r','u','i','n'], ['d','e','s','t','r','u','c','t','i','o','n'] ],

    MuFACaL |< aT             `noun`    {- <mu_tAbaraT> -}     [ ['p','e','r','s','i','s','t','e','n','c','e'], ['p','e','r','s','e','v','e','r','a','n','c','e'] ] ]


cluster_28  = cluster

 |> "_t b .t" <| [

    FaCaL                     `verb`    {- <_taba.t> -}        [ ['d','i','s','c','o','u','r','a','g','e'], ['f','r','u','s','t','r','a','t','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <_tabba.t> -}       [ ['d','i','s','c','o','u','r','a','g','e'], ['f','r','u','s','t','r','a','t','e'] ] ]


cluster_29  = cluster

 |> "_t b q" <| [

    FaCaL                     `verb`    {- <_tabaq> -}         [ unwords [ ['b','e'], ['s','w','o','l','l','e','n'] ], unwords [ ['c','r','y'], ['e','a','s','i','l','y'] ] ]
                              `imperf`     FCiL,

    InFaCaL                   `verb`    {- <in_tabaq> -}       [ ['s','p','i','l','l'], ['s','h','e','d'] ] ]


cluster_30  = cluster

 |> "_t b n" <| [

    FaCaL                     `verb`    {- <_taban> -}         [ ['f','o','l','d'] ]
                              `imperf`     FCiL,

    FuCL |< aT                `noun`    {- <_tubnaT> -}        [ ['l','a','p'], ['f','o','l','d'] ]
                              `plural`     FuCaL
                              `plural`     FiCAL,

    MaFCaL |< aT              `noun`    {- <ma_tbanaT> -}      [ unwords [ ['t','o','i','l','e','t','r','y'], ['k','i','t'] ], unwords [ ['t','o','i','l','e','t','t','e'], ['b','a','g'] ], unwords [ ['v','a','n','i','t','y'], ['c','a','s','e'] ] ]
                              `plural`     MaFACiL ]


cluster_31  = cluster

 |> "_t t l" <| [

    FayCaL                    `noun`    {- <_taytal> -}        [ ['g','o','a','t'] ]
                              `plural`     FayACiL ]


cluster_32  = cluster

 |> "_t _h n" <| [

    FaCuL                     `verb`    {- <_ta_hun> -}        [ unwords [ ['b','e'], ['s','o','l','i','d'] ], unwords [ ['b','e'], ['t','h','i','c','k'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <_ta_h_han> -}      [ ['s','o','l','i','d','i','f','y'], ['t','h','i','c','k','e','n'] ],

    HaFCaL                    `verb`    {- <'a_t_han> -}       [ ['m','a','s','s','a','c','r','e'], unwords [ ['w','e','a','r'], ['o','u','t'] ] ],

    FiCaL                     `noun`    {- <_ti_han> -}        [ ['t','h','i','c','k','n','e','s','s'], ['d','e','n','s','i','t','y'] ],

    FaCAL |< aT               `noun`    {- <_ta_hAnaT> -}      [ ['t','h','i','c','k','n','e','s','s'], ['d','e','n','s','i','t','y'] ],

    FuCUL |< aT               `noun`    {- <_tu_hUnaT> -}      [ ['t','h','i','c','k','n','e','s','s'], ['d','e','n','s','i','t','y'] ],

    FaCIL                     `adj`     {- <_ta_hIn> -}        [ ['t','h','i','c','k'], ['d','e','n','s','e'] ]
                              `plural`     FaCIL |< Un
                              `plural`     FuCaLA' ]


cluster_33  = cluster

 |> "_t r b" <| [

    FaCaL                     `verb`    {- <_tarab> -}         [ ['b','l','a','m','e'], ['c','e','n','s','u','r','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <_tarrab> -}        [ ['b','l','a','m','e'], ['c','e','n','s','u','r','e'] ],

    TaFCIL                    `noun`    {- <ta_trIb> -}        [ ['c','e','n','s','u','r','e'], ['b','l','a','m','e'] ]
                              `plural`     TaFCIL |< At ]


cluster_34  = cluster

 |> "_t r _t r" <| [

    KaRDaS                    `verb`    {- <_tar_tar> -}       [ ['c','h','a','t','t','e','r'], ['p','r','a','t','t','l','e'] ],

    KaRDaS |< aT              `noun`    {- <_tar_taraT> -}     [ ['c','h','a','t','t','e','r'], ['p','r','a','t','t','l','e'] ],

    KaRDAS                    `noun`    {- <_tar_tAr> -}       [ ['c','h','a','t','t','e','r','b','o','x'], ['g','a','r','r','u','l','o','u','s'] ]
                              `plural`     KaRDAS |< Un
                              `femini`     KaRDAS |< aT ]


cluster_35  = cluster

 |> "_t r d" <| [

    FaCaL                     `verb`    {- <_tarad> -}         [ ['s','o','p'] ]
                              `imperf`     FCuL,

    FaCIL                     `noun`    {- <_tarId> -}         [ ['b','r','o','t','h'] ],

    MiFCaL                    `noun`    {- <mi_trad> -}        [ ['b','o','w','l'] ] ]


cluster_36  = cluster

 |> "_t r m" <| [

    FaCaL                     `verb`    {- <_taram> -}         [ unwords [ ['k','n','o','c','k'], ['t','o','o','t','h'], ['o','u','t'] ] ]
                              `imperf`     FCiL,

    FaCiL                     `verb`    {- <_tarim> -}         [ unwords [ ['h','a','v','e'], ['t','o','o','t','h'], ['g','a','p'] ] ]
                              `imperf`     FCaL,

    InFaCaL                   `verb`    {- <in_taram> -}       [ unwords [ ['l','o','s','e'], ['t','e','e','t','h'] ] ] ]


cluster_37  = cluster

 |> "_t ` b" <| [

    FaCaL                     `verb`    {- <_ta`ab> -}         [ ['p','o','u','r'], ['d','r','a','i','n'] ]
                              `imperf`     FCaL,

    MaFCaL                    `noun`    {- <ma_t`ab> -}        [ ['d','r','a','i','n'] ]
                              `plural`     MaFACiL,

    FuCLAn                    `noun`    {- <_tu`bAn> -}        [ ['s','n','a','k','e'] ]
                              `plural`     FaCALIn,

    FuCLAn |< Iy              `adj`     {- <_tu`bAnIy> -}      [ ['s','e','r','p','e','n','t','i','n','e'], ['s','n','a','k','e','l','i','k','e'] ] ]


cluster_38  = cluster

 |> "_t ` l" <| [

    FuCAL                     `noun`    {- <_tu`Al> -}         [ ['f','o','x'] ],

    FuCAL |< aT               `noun`    {- <_tu`AlaT> -}       [ ['f','o','x'], ['v','i','x','e','n'] ] ]


cluster_39  = cluster

 |> "_t ` l b" <| [

    KaRADiS |< Iy             `noun`    {- <_ta`AlibIy> -}     [ ['T','h','a','\'','a','l','a','b','i'] ],

    KaRDaS                    `noun`    {- <_ta`lab> -}        [ ['f','o','x'] ]
                              `plural`     KaRADiS
                              `femini`     KaRDaS |< aT,

    KaRDaS |< Iy              `adj`     {- <_ta`labIy> -}      [ unwords [ ['f','o','x'], "-", ['l','i','k','e'] ] ] ]


cluster_40  = cluster

 |> "_t .g _t .g" <| [

    KaRDaS                    `verb`    {- <_ta.g_ta.g> -}     [ ['s','t','a','m','m','e','r'], ['s','t','u','t','t','e','r'] ] ]


cluster_41  = cluster

 |> "_t .g r" <| [

    FaCL                      `noun`    {- <_ta.gr> -}         [ unwords [ ['f','r','o','n','t'], ['t','e','e','t','h'] ], ['f','r','o','n','t'] ]
                              `plural`     FuCUL,

    FuCL |< aT                `noun`    {- <_tu.graT> -}       [ ['g','a','p'], ['b','r','e','a','c','h'] ]
                              `plural`     FaCaL |< At ]


cluster_42  = cluster

 |> "_t .g m" <| [

    FaCAL                     `noun`    {- <_ta.gAm> -}        [ ['w','h','i','t','e','n','e','s','s'] ],

    FACiL                     `adj`     {- <_tA.gim> -}        [ ['w','h','i','t','e'] ] ]


cluster_43  = cluster

 |> "_t f r" <| [

    FaCaL                     `noun`    {- <_tafar> -}         [ ['c','r','u','p','p','e','r'] ]
                              `plural`     HaFCAL ]


cluster_44  = cluster

 |> "_t f l" <| [

    HaFCaL                    `verb`    {- <'a_tfal> -}        [ unwords [ ['f','o','r','m'], "a", ['s','e','d','i','m','e','n','t'] ] ],

    FuCL                      `noun`    {- <_tufl> -}          [ ['s','e','d','i','m','e','n','t'], ['d','r','e','g','s'] ] ]


cluster_45  = cluster

 |> "_t f n" <| [

    FaCiL                     `verb`    {- <_tafin> -}         [ unwords [ ['b','e'], ['c','a','l','l','o','u','s'] ], unwords [ ['h','a','v','e'], ['c','a','l','l','u','s','e','s'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <_tAfan> -}         [ ['a','s','s','o','c','i','a','t','e'], ['p','u','r','s','u','e'] ],

    FiCL |< aT                `noun`    {- <_tifnaT> -}        [ ['c','a','l','l','u','s'] ]
                              `plural`     FiCaL ]


cluster_46  = cluster

 |> "_t q b" <| [

    FaCaL                     `verb`    {- <_taqab> -}         [ ['d','r','i','l','l'], ['p','e','r','f','o','r','a','t','e'], ['p','i','e','r','c','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <_taqqab> -}        [ ['p','e','r','f','o','r','a','t','e'], ['l','i','g','h','t'], ['k','i','n','d','l','e'] ],

    HaFCaL                    `verb`    {- <'a_tqab> -}        [ ['l','i','g','h','t'], ['k','i','n','d','l','e'], unwords [ ['b','e'], ['l','i','t'] ] ],

    TaFaCCaL                  `verb`    {- <ta_taqqab> -}      [ unwords [ ['b','e'], ['p','i','e','r','c','e','d'] ], unwords [ ['b','e'], ['p','e','r','f','o','r','a','t','e','d'] ] ],

    InFaCaL                   `verb`    {- <in_taqab> -}       [ unwords [ ['b','e'], ['p','i','e','r','c','e','d'] ], unwords [ ['b','e'], ['p','e','r','f','o','r','a','t','e','d'] ] ],

    FaCL                      `noun`    {- <_taqb> -}          [ ['p','e','r','f','o','r','a','t','i','o','n'], ['p','i','e','r','c','i','n','g'], ['p','u','n','c','t','u','r','e'] ],

    FuCL                      `noun`    {- <_tuqb> -}          [ ['p','e','r','f','o','r','a','t','i','o','n'], unwords [ ['d','r','i','l','l'], ['h','o','l','e'] ] ]
                              `plural`     FuCUL
                              `plural`     HaFCAL,

    FuCL |< aT                `noun`    {- <_tuqbaT> -}        [ ['h','o','l','e'], ['p','e','r','f','o','r','a','t','i','o','n'] ]
                              `plural`     FuCaL,

    FiCAL                     `noun`    {- <_tiqAb> -}         [ ['m','a','t','c','h'] ],

    FaCCAL |< aT              `noun`    {- <_taqqAbaT> -}      [ unwords [ ['d','r','i','l','l','i','n','g'], ['r','i','g'] ], unwords [ ['d','r','i','l','l','i','n','g'], ['m','a','c','h','i','n','e'] ] ]
                              `plural`     FaCCAL |< At,

    HiFCAL                    `noun`    {- <'i_tqAb> -}        [ ['l','i','g','h','t','i','n','g'], ['k','i','n','d','l','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    FACiL                     `adj`     {- <_tAqib> -}         [ ['p','e','n','e','t','r','a','t','i','n','g'], ['p','i','e','r','c','i','n','g'] ],

    FiCAL |< At               `noun`    {- <_tiqAbAt> -}       [ ['b','o','r','e','r','s'], ['d','r','i','l','l','s'] ]
                              `plural`     FiCAL |< At
                           
    `limited` "-------P--" ]


cluster_47  = cluster

 |> "_t q f" <| [

    FaCiL                     `verb`    {- <_taqif> -}         [ unwords [ ['b','e'], ['i','n','t','e','l','l','i','g','e','n','t'] ], unwords [ ['b','e'], ['s','k','i','l','l','f','u','l'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FaCaL,

    FaCuL                     `verb`    {- <_taquf> -}         [ unwords [ ['b','e'], ['s','k','i','l','l','f','u','l'] ], unwords [ ['b','e'], ['c','l','e','v','e','r'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <_taqqaf> -}        [ ['i','n','s','t','r','u','c','t'], ['e','d','u','c','a','t','e'] ],

    FACaL                     `verb`    {- <_tAqaf> -}         [ ['f','e','n','c','e'] ],

    TaFaCCaL                  `verb`    {- <ta_taqqaf> -}      [ unwords [ ['b','e'], ['t','r','a','i','n','e','d'] ], unwords [ ['b','e'], ['i','n','s','t','r','u','c','t','e','d'] ] ],

    TaFACaL                   `verb`    {- <ta_tAqaf> -}       [ unwords [ ['p','r','e','t','e','n','d'], ['t','o'], ['f','i','g','h','t'] ] ],

    FaCAL |< aT               `noun`    {- <_taqAfaT> -}       [ ['c','u','l','t','u','r','e'], ['c','i','v','i','l','i','z','a','t','i','o','n'] ]
                              `plural`     FaCAL |< At,

    FaCAL |< Iy               `adj`     {- <_taqAfIy> -}       [ ['c','u','l','t','u','r','a','l'], ['i','n','t','e','l','l','e','c','t','u','a','l'] ],

    TaFCIL                    `noun`    {- <ta_tqIf> -}        [ ['e','d','u','c','a','t','i','o','n'], ['c','u','l','t','i','v','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu_tAqafaT> -}     [ ['f','e','n','c','i','n','g'], ['s','w','o','r','d','p','l','a','y'] ],

    MuFaCCaL                  `noun`    {- <mu_taqqaf> -}      [ ['i','n','t','e','l','l','e','c','t','u','a','l'], ['c','u','l','t','i','v','a','t','e','d'], ['c','u','l','t','u','r','e','d'], ['e','d','u','c','a','t','e','d'] ]
                              `plural`     MuFaCCaL |< Un
                              `femini`     MuFaCCaL |< aT ]


cluster_48  = cluster

 |> "_t q l" <| [

    FaCuL                     `verb`    {- <_taqul> -}         [ unwords [ ['b','e'], ['h','e','a','v','y'] ], unwords [ ['b','e'], ['b','u','r','d','e','n','s','o','m','e'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <_taqqal> -}        [ ['b','u','r','d','e','n'], ['p','e','s','t','e','r'] ],

    HaFCaL                    `verb`    {- <'a_tqal> -}        [ ['b','u','r','d','e','n'], ['o','p','p','r','e','s','s'] ],

    TaFACaL                   `verb`    {- <ta_tAqal> -}       [ unwords [ ['a','c','t'], ['s','l','o','w','l','y'] ], unwords [ ['b','e'], ['t','r','o','u','b','l','e','s','o','m','e'] ] ],

    IstaFCaL                  `verb`    {- <ista_tqal> -}      [ unwords [ ['f','i','n','d'], ['h','e','a','v','y'] ], unwords [ ['f','i','n','d'], ['a','n','n','o','y','i','n','g'] ] ],

    FiCL                      `noun`    {- <_tiql> -}          [ ['w','e','i','g','h','t'], ['l','o','a','d'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <_taqlaT> -}        [ ['t','r','o','u','b','l','e'], ['b','u','r','d','e','n'] ]
                              `plural`     FaCaL |< At,

    FaCAL |< aT               `noun`    {- <_taqAlaT> -}       [ ['h','e','a','v','i','n','e','s','s'], ['d','u','l','l','n','e','s','s'] ],

    FaCIL                     `adj`     {- <_taqIl> -}         [ ['h','e','a','v','y'], ['o','p','p','r','e','s','s','i','v','e'] ]
                              `plural`     FuCaLA'
                              `plural`     FiCAL,

    HaFCaL                    `adj`     {- <'a_tqal> -}        [ ['h','e','a','v','i','e','r'], unwords [ ['m','o','r','e'], ['o','p','p','r','e','s','s','i','v','e'] ] ],

    MiFCAL                    `noun`    {- <mi_tqAl> -}        [ ['w','e','i','g','h','t'], ['m','i','s','k','a','l'] ]
                              `plural`     MaFACIL,

    TaFCIL                    `noun`    {- <ta_tqIl> -}        [ ['w','e','i','g','h','t','i','n','g'], ['b','u','r','d','e','n','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFACuL                   `noun`    {- <ta_tAqul> -}       [ ['s','l','u','g','g','i','s','h','n','e','s','s'], ['d','u','l','l','n','e','s','s'] ]
                              `plural`     TaFACuL |< At,

    MuFaCCaL                  `adj`     {- <mu_taqqal> -}      [ ['b','u','r','d','e','n','e','d'], ['w','e','i','g','h','t','e','d'] ],

    MuFCaL                    `adj`     {- <mu_tqal> -}        [ ['b','u','r','d','e','n','e','d'], ['w','e','i','g','h','t','e','d'] ],

    MutaFACiL                 `adj`     {- <muta_tAqil> -}     [ ['s','l','u','g','g','i','s','h'], ['b','o','r','e','d'] ] ]


cluster_49  = cluster

 |> "_t k l" <| [

    FaCiL                     `verb`    {- <_takil> -}         [ unwords [ ['b','e'], ['b','e','r','e','f','t'] ], unwords [ ['l','o','s','e'], "a", ['l','o','v','e','d'], ['o','n','e'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a_tkal> -}        [ ['b','e','r','e','a','v','e'] ],

    FaCaL                     `noun`    {- <_takal> -}         [ ['b','e','r','e','a','v','e','m','e','n','t'] ],

    FuCL                      `noun`    {- <_tukl> -}          [ ['b','e','r','e','a','v','e','m','e','n','t'] ],

    FaCLAn                    `adj`     {- <_taklAn> -}        [ ['b','e','r','e','f','t'], ['b','e','r','e','a','v','e','d'] ]
                              `plural`     FaCALY
                              `femini`     FaCLY,

    FACiL                     `adj`     {- <_tAkil> -}         [ ['b','e','r','e','f','t'], ['b','e','r','e','a','v','e','d'] ]
                              `plural`     FawACiL ]


cluster_50  = cluster

 |> "_t k n" <| [

    FuCL |< aT                `noun`    {- <_tuknaT> -}        [ ['b','a','r','r','a','c','k','s'] ]
                              `plural`     FuCaL
                              `plural`     FaCaL |< At ]


cluster_51  = cluster

 |> "_t l b" <| [

    FaCaL                     `verb`    {- <_talab> -}         [ ['c','r','i','t','i','c','i','z','e'], ['s','l','a','n','d','e','r'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <_talb> -}          [ ['s','l','a','n','d','e','r'], ['d','e','f','a','m','a','t','i','o','n'] ],

    MaFCaL |< aT              `noun`    {- <ma_tlabaT> -}      [ ['s','h','o','r','t','c','o','m','i','n','g'], ['d','e','f','e','c','t'] ]
                              `plural`     MaFACiL,

    FACiL                     `adj`     {- <_tAlib> -}         [ ['s','l','a','n','d','e','r','o','u','s'], ['d','e','f','a','m','a','t','o','r','y'] ] ]


cluster_52  = cluster

 |> "_t l _t" <| [

    FuCALA'                   `noun`    {- <_tulA_tA'> -}      [ ['T','u','e','s','d','a','y'] ],

    FuCaLA'                   `noun`    {- <_tula_tA'> -}      [ ['T','u','e','s','d','a','y'] ],

    FaCCaL                    `verb`    {- <_talla_t> -}       [ ['t','r','i','p','l','e'], ['t','r','e','b','l','e'] ],

    FuCL                      `noun`    {- <_tul_t> -}         [ ['t','h','i','r','d'] ]
                              `plural`     HaFCAL,

    FACiL                     `adj`     {- <_tAli_t> -}        [ ['t','h','i','r','d'] ],

    FaCAL |< In |< At         `noun`    {- <_talA_tInAt> -}    [ ['t','h','i','r','t','i','e','s'] ]
                              `plural`     FaCAL |< In |< At
                           
    `limited` "-------P--",

    FaCAL |< In |< Iy         `adj`     {- <_talA_tInIy> -}    [ ['t','h','i','r','t','i','e','s'] ],

    FuCAL |< Iy               `noun`    {- <_tulA_tIy> -}      [ ['t','r','i','o'] ],

    FuCAL |< Iy               `adj`     {- <_tulA_tIy> -}      [ unwords [ ['t','h','r','e','e'], "-", ['p','a','r','t'] ], ['t','r','i','o'], unwords [ ['c','o','r','n','e','r'], "(", ['s','h','o','t'], ")" ] ],

    FACUL                     `noun`    {- <_tAlU_t> -}        [ ['t','r','i','a','d'], ['t','r','i','n','i','t','y'] ],

    TaFCIL                    `noun`    {- <ta_tlI_t> -}       [ ['t','r','i','n','i','t','y'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta_tlI_tIy> -}     [ ['t','r','i','g','o','n','o','m','e','t','r','i','c','a','l'] ],

    MuFaCCaL                  `adj`     {- <mu_talla_t> -}     [ ['t','r','i','a','n','g','l','e'], ['t','r','i','p','l','e'] ],

    MuFaCCaL |< At            `noun`    {- <mu_talla_tAt> -}   [ ['t','r','i','g','o','n','o','m','e','t','r','y'] ]
                              `plural`     MuFaCCaL |< At
                           
    `limited` "-------P--" ]


cluster_53  = cluster

 |> "_t l ^g" <| [

    FaCaL                     `verb`    {- <_tala^g> -}        [ ['s','n','o','w'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCiL                     `verb`    {- <_tali^g> -}        [ unwords [ ['b','e'], ['d','e','l','i','g','h','t','e','d'] ], unwords [ ['b','e'], ['g','l','a','d','d','e','n','e','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <_talla^g> -}       [ ['f','r','e','e','z','e'] ],

    HaFCaL                    `verb`    {- <'a_tla^g> -}       [ ['s','n','o','w'], ['f','r','e','e','z','e'] ],

    TaFaCCaL                  `verb`    {- <ta_talla^g> -}     [ ['f','r','e','e','z','e'] ],

    FaCL                      `noun`    {- <_tal^g> -}         [ ['s','n','o','w'], ['i','c','e'] ]
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <_tal^gIy> -}       [ ['s','n','o','w','y'], ['i','c','y'] ],

    FaCCAL |< aT              `noun`    {- <_tallA^gaT> -}     [ ['r','e','f','r','i','g','e','r','a','t','o','r'], ['i','c','e','b','o','x'] ]
                              `plural`     FaCCAL |< At,

    MaFCaL |< aT              `noun`    {- <ma_tla^gaT> -}     [ unwords [ ['c','o','l','d'], "-", ['s','t','o','r','a','g','e'], ['p','l','a','n','t'] ] ]
                              `plural`     MaFACiL,

    MuFaCCaL                  `adj`     {- <mu_talla^g> -}     [ ['f','r','o','z','e','n'] ],

    MuFaCCaL                  `noun`    {- <mu_talla^g> -}     [ unwords [ ['i','c','e'], ['c','r','e','a','m'] ] ]
                              `plural`     MuFaCCaL |< At ]


cluster_54  = cluster

 |> "_t l m" <| [

    FaCaL                     `verb`    {- <_talam> -}         [ ['b','l','u','n','t'], ['d','e','f','i','l','e'] ]
                              `imperf`     FCiL,

    FaCiL                     `verb`    {- <_talim> -}         [ unwords [ ['b','e'], ['j','a','g','g','e','d'] ], unwords [ ['b','e'], ['b','l','u','n','t'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <_tallam> -}        [ ['b','l','u','n','t'] ],

    TaFaCCaL                  `verb`    {- <ta_tallam> -}      [ unwords [ ['b','e','c','o','m','e'], ['b','l','u','n','t'] ], unwords [ ['b','e'], ['d','i','s','c','r','e','d','i','t','e','d'] ] ],

    InFaCaL                   `verb`    {- <in_talam> -}       [ unwords [ ['b','e'], ['d','e','f','i','l','e','d'] ], unwords [ ['b','e'], ['d','i','s','c','r','e','d','i','t','e','d'] ] ],

    FaCL                      `noun`    {- <_talm> -}          [ ['b','r','e','a','c','h'], ['c','r','a','c','k'] ],

    FuCL |< aT                `noun`    {- <_tulmaT> -}        [ ['g','a','p'], ['c','r','a','c','k'] ]
                              `plural`     FuCaL,

    FACiL                     `adj`     {- <_tAlim> -}         [ ['d','u','l','l'], ['b','l','u','n','t'] ],

    MaFCUL                    `adj`     {- <ma_tlUm> -}        [ ['d','e','f','i','l','e','d'], ['s','u','l','l','i','e','d'] ],

    MutaFaCCiL                `adj`     {- <muta_tallim> -}    [ ['b','l','u','n','t'], ['c','r','a','c','k','i','n','g'] ],

    MunFaCiL                  `adj`     {- <mun_talim> -}      [ ['s','o','i','l','e','d'], ['d','i','s','c','r','e','d','i','t','e','d'] ] ]


cluster_55  = cluster

 |> "_t m r" <| [

    FaCaL                     `verb`    {- <_tamar> -}         [ unwords [ ['b','e','a','r'], ['f','r','u','i','t'] ] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'a_tmar> -}        [ ['r','e','s','u','l','t'] ],

    IstaFCaL                  `verb`    {- <ista_tmar> -}      [ ['i','n','v','e','s','t'] ],

    FaCaL                     `noun`    {- <_tamar> -}         [ ['f','r','u','i','t'], ['r','e','s','u','l','t'], ['e','f','f','e','c','t'], ['y','i','e','l','d'], ['p','r','o','f','i','t'] ]
                              `plural`     FiCAL
                              `plural`     HaFCAL
                              `femini`     FaCaL |< aT,

    IstiFCAL                  `noun`    {- <isti_tmAr> -}      [ ['i','n','v','e','s','t','m','e','n','t'], ['i','n','v','e','s','t','i','n','g'] ]
                              `plural`     IstiFCAL |< At,

    IstiFCAL |< Iy            `adj`     {- <isti_tmArIy> -}    [ ['i','n','v','e','s','t','m','e','n','t'] ],

    MuFCiL                    `adj`     {- <mu_tmir> -}        [ ['p','r','o','f','i','t','a','b','l','e'] ],

    MustaFCiL                 `noun`    {- <musta_tmir> -}     [ ['i','n','v','e','s','t','o','r'] ]
                              `plural`     MustaFCiL |< Un
                              `femini`     MustaFCiL |< aT,

    MustaFCiL                 `adj`     {- <musta_tmir> -}     [ ['i','n','v','e','s','t','i','n','g'] ],

    MustaFCaL                 `adj`     {- <musta_tmar> -}     [ ['e','x','p','l','o','i','t','e','d'], ['i','n','v','e','s','t','e','d'] ],

    FACiL                     `noun`    {- <_tAmir> -}         [ ['T','h','a','m','i','r'] ] ]


cluster_56  = cluster

 |> "_t m l" <| [

    FaCiL                     `verb`    {- <_tamil> -}         [ unwords [ ['b','e','c','o','m','e'], ['d','r','u','n','k'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a_tmal> -}        [ unwords [ ['m','a','k','e'], ['d','r','u','n','k'] ], ['i','n','t','o','x','i','c','a','t','e'] ],

    FaCaL                     `noun`    {- <_tamal> -}         [ ['i','n','t','o','x','i','c','a','t','i','o','n'] ],

    FaCaL |< aT               `noun`    {- <_tamalaT> -}       [ ['i','n','t','o','x','i','c','a','t','i','o','n'] ],

    FaCiL                     `adj`     {- <_tamil> -}         [ ['i','n','t','o','x','i','c','a','t','e','d'] ],

    FuCAL |< aT               `noun`    {- <_tumAlaT> -}       [ ['r','e','s','i','d','u','e'], ['d','r','e','g','s'] ] ]


cluster_57  = cluster

 |> "_t m n" <| [

    FaCCaL                    `verb`    {- <_tamman> -}        [ ['a','p','p','r','a','i','s','e'], ['e','s','t','i','m','a','t','e'] ],

    FaCaL                     `noun`    {- <_taman> -}         [ ['v','a','l','u','e'], ['p','r','i','c','e'] ]
                              `plural`     HaFCAL
                              `plural`     HaFCiL |< aT,

    FaCIL                     `adj`     {- <_tamIn> -}         [ ['c','o','s','t','l','y'], ['p','r','e','c','i','o','u','s'] ]
                              `plural`     FiCAL,

    HaFCaL                    `adj`     {- <'a_tman> -}        [ ['c','o','s','t','l','i','e','r'], unwords [ ['m','o','r','e'], ['v','a','l','u','a','b','l','e'] ] ],

    TaFCIL                    `noun`    {- <ta_tmIn> -}        [ ['a','p','p','r','a','i','s','a','l'], ['r','a','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MaFCUL                    `adj`     {- <ma_tmUn> -}        [ ['v','a','l','u','a','b','l','e'] ],

    MuFaCCiL                  `noun`    {- <mu_tammin> -}      [ ['a','p','p','r','a','i','s','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFCiL                    `adj`     {- <mu_tmin> -}        [ ['p','r','i','z','e','d'], ['v','a','l','u','e','d'] ],

    MuFCaL                    `adj`     {- <mu_tman> -}        [ ['v','a','l','u','a','b','l','e'] ] ]

 |> "_t m n" <| [

    FuCL                      `noun`    {- <_tumn> -}          [ ['e','i','g','h','t','h'] ]
                              `plural`     HaFCAL,

    FuCL |< aT                `noun`    {- <_tumnaT> -}        [ ['t','h','u','m','n','a'] ]
                              `plural`     FuCaL |< At,

    FACiL                     `adj`     {- <_tAmin> -}         [ ['e','i','g','h','t','h'] ],

    FaCAL |< In |< At         `noun`    {- <_tamAnInAt> -}     [ ['e','i','g','h','t','i','e','s'] ]
                              `plural`     FaCAL |< In |< At
                           
    `limited` "-------P--",

    FaCAL |< In |< Iy         `adj`     {- <_tamAnInIy> -}     [ ['e','i','g','h','t','i','e','s'] ],

    MuFaCCaL                  `adj`     {- <mu_tamman> -}      [ ['o','c','t','a','g','o','n','a','l'], ['e','i','g','h','t','f','o','l','d'] ] ]


cluster_58  = cluster

 |> "d b t" <| [

    FuCayL                    `noun`    {- <dubayt> -}         [ unwords [ ['d','o','u','b','e','i','t'], ['p','o','e','m'] ] ] ]


cluster_59  = cluster

 |> "d b ^g" <| [

    FaCCaL                    `verb`    {- <dabba^g> -}        [ ['e','m','b','e','l','l','i','s','h'], ['c','o','m','p','o','s','e'] ],

    FICAL                     `noun`    {- <dIbA^g> -}         [ unwords [ ['s','i','l','k'], ['b','r','o','c','a','d','e'] ] ]
                              `plural`     FaCACIL,

    FICAL |< aT               `noun`    {- <dIbA^gaT> -}       [ ['b','r','o','c','a','d','e'], ['p','r','e','a','m','b','l','e'] ],

    TaFCIL                    `noun`    {- <tadbI^g> -}        [ ['o','r','n','a','m','e','n','t','a','t','i','o','n'], ['c','o','m','p','o','s','i','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mudabba^g> -}      [ ['e','m','b','e','l','l','i','s','h','e','d'] ],

    MuFaCCaL                  `noun`    {- <mudabba^g> -}      [ ['e','m','b','e','l','l','i','s','h','m','e','n','t'], unwords [ ['f','i','g','u','r','e'], ['o','f'], ['s','p','e','e','c','h'] ] ]
                              `plural`     MuFaCCaL |< At ]


cluster_60  = cluster

 |> "d b d b" <| [

    KaRDaS                    `verb`    {- <dabdab> -}         [ ['t','r','e','a','d'], ['t','a','p'] ],

    KaRDaS |< aT              `noun`    {- <dabdabaT> -}       [ ['f','o','o','t','s','t','e','p','s'], ['c','l','a','t','t','e','r'] ],

    KaRDUS |< aT              `noun`    {- <dabdUbaT> -}       [ ['p','o','i','n','t'], unwords [ ['t','a','p','e','r','e','d'], ['e','n','d'] ] ]
                              `plural`     KaRADIS,

    MuKaRDaS                  `adj`     {- <mudabdab> -}       [ ['p','o','i','n','t','e','d'], ['t','a','p','e','r','e','d'] ] ]


cluster_61  = cluster

 |> "d b r" <| [

    FaCaL                     `verb`    {- <dabar> -}          [ unwords [ ['t','u','r','n'], ['t','h','e'], ['b','a','c','k'] ], ['e','l','a','p','s','e'], ['p','a','s','s'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <dabbar> -}         [ unwords [ ['m','a','k','e'], ['p','l','a','n','s'] ], ['a','r','r','a','n','g','e'], ['m','a','n','a','g','e'] ],

    HaFCaL                    `verb`    {- <'adbar> -}         [ unwords [ ['t','u','r','n'], ['t','h','e'], ['b','a','c','k'] ], ['f','l','e','e'], ['d','o','d','g','e'] ],

    TaFaCCaL                  `verb`    {- <tadabbar> -}       [ unwords [ ['b','e'], ['p','r','e','p','a','r','e','d'] ], unwords [ ['b','e'], ['a','r','r','a','n','g','e','d'] ] ],

    TaFACaL                   `verb`    {- <tadAbar> -}        [ unwords [ ['b','e'], ['c','o','n','t','r','a','r','y'] ], unwords [ ['b','e'], ['o','p','p','o','s','e','d'] ] ],

    IstaFCaL                  `verb`    {- <istadbar> -}       [ unwords [ ['t','u','r','n'], ['t','h','e'], ['b','a','c','k'] ] ],

    FuCL                      `noun`    {- <dubr> -}           [ ['b','a','c','k','s','i','d','e'], ['p','o','s','t','e','r','i','o','r'] ]
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <dabarIy> -}        [ ['l','a','t','e'], ['b','e','h','i','n','d'] ],

    FaCL |< aT                `noun`    {- <dabraT> -}         [ ['f','a','t','e'] ],

    FaCUL                     `noun`    {- <dabUr> -}          [ unwords [ ['w','e','s','t'], ['w','i','n','d'] ] ],

    FaCCUL                    `noun`    {- <dabbUr> -}         [ ['h','o','r','n','e','t'], ['w','a','s','p'] ]
                              `plural`     FaCACIL,

    TaFCIL                    `noun`    {- <tadbIr> -}         [ ['a','r','r','a','n','g','e','m','e','n','t'], ['p','r','e','p','a','r','a','t','i','o','n'], ['m','a','n','a','g','e','m','e','n','t'], ['m','e','a','s','u','r','e','s'] ]
                              `plural`     TaFACIL
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'idbAr> -}         [ ['r','e','t','r','e','a','t'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <tadabbur> -}       [ ['m','e','d','i','t','a','t','i','o','n'], ['d','e','l','i','b','e','r','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <tadAbur> -}        [ ['d','i','s','p','a','r','i','t','y'], ['c','o','n','t','r','a','s','t'] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `adj`     {- <dAbir> -}          [ ['b','y','g','o','n','e'], ['u','t','m','o','s','t'], ['r','o','o','t'] ],

    MuFaCCiL                  `noun`    {- <mudabbir> -}       [ ['m','a','n','a','g','e','r'], ['o','r','g','a','n','i','z','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFCiL                    `noun`    {- <mudbir> -}         [ unwords [ ['f','r','o','m'], ['t','h','e'], ['r','e','a','r'] ] ] ]

 |> "d b r" <| [

    FuCAL |< aT               `noun`    {- <dubAraT> -}        [ ['t','w','i','n','e'], ['t','h','r','e','a','d'] ],

    FUCAL |< aT               `noun`    {- <dUbAraT> -}        [ ['t','w','i','n','e'], ['t','h','r','e','a','d'] ] ]


cluster_62  = cluster

 |> "d b s" <| [

    FaCCUL                    `noun`    {- <dabbUs> -}         [ ['p','i','n'], unwords [ ['s','a','f','e','t','y'], ['p','i','n'] ] ]
                              `plural`     FaCACIL ]

 |> "d b s" <| [

    FiCL                      `noun`    {- <dibs> -}           [ ['t','r','e','a','c','l','e'], ['m','o','l','a','s','s','e','s'] ] ]


cluster_63  = cluster

 |> "d b ^s" <| [

    FaCaL                     `noun`    {- <daba^s> -}         [ unwords [ ['c','r','u','s','h','e','d'], ['r','o','c','k'] ] ],

    FaCaL                     `noun`    {- <daba^s> -}         [ ['r','u','b','b','i','s','h'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <daba^s> -}         [ ['f','u','r','n','i','t','u','r','e'] ]
                              `plural`     HaFCAL ]


cluster_64  = cluster

 |> "d b .g" <| [

    FaCaL                     `verb`    {- <daba.g> -}         [ ['t','a','n'], ['d','y','e'] ]
                              `imperf`     FCaL
                              `imperf`     FCuL
                              `imperf`     FCiL
                              `masdar`     FaCL,

    InFaCaL                   `verb`    {- <indaba.g> -}       [ unwords [ ['b','e'], ['t','a','n','n','e','d'] ], unwords [ ['b','e'], ['d','y','e','d'] ] ],

    FiCAL |< aT               `noun`    {- <dibA.gaT> -}       [ ['t','a','n','n','i','n','g'], ['d','y','e'] ],

    FaCCAL                    `noun`    {- <dabbA.g> -}        [ ['t','a','n','n','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <dabbA.g> -}        [ ['D','a','b','b','a','g','h'] ],

    MaFCaL                    `noun`    {- <madba.g> -}        [ ['t','a','n','n','e','r','y'] ]
                              `plural`     MaFACiL ]


cluster_65  = cluster

 |> "d b q" <| [

    FaCiL                     `verb`    {- <dabiq> -}          [ ['s','t','i','c','k'], ['c','l','e','a','v','e'], ['c','l','i','n','g'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <dabbaq> -}         [ unwords [ ['c','a','t','c','h'], ['w','i','t','h'], ['b','i','r','d','l','i','m','e'] ] ],

    FiCL                      `noun`    {- <dibq> -}           [ ['b','i','r','d','l','i','m','e'] ],

    FaCiL                     `adj`     {- <dabiq> -}          [ ['s','t','i','c','k','y'], ['g','l','u','e','y'], ['l','i','m','y'] ] ]


cluster_66  = cluster

 |> "d b k" <| [

    FaCaL                     `verb`    {- <dabak> -}          [ unwords [ ['s','t','a','m','p'], ['t','h','e'], ['f','e','e','t'] ], unwords [ ['d','a','n','c','e'], ['t','h','e'], ['d','a','b','k','a'] ] ]
                              `imperf`     FCuL,

    FaCL |< aT                `noun`    {- <dabkaT> -}         [ unwords [ ['d','a','b','k','a'], "(", ['d','a','n','c','e'], ")" ] ] ]


cluster_67  = cluster

 |> "d b l" <| [

    FiCL |< aT                `noun`    {- <diblaT> -}         [ ['r','i','n','g'] ]
                              `plural`     FiCaL ]


cluster_68  = cluster

 |> "d b l ^g" <| [

    KaRDaS                    `verb`    {- <dabla^g> -}        [ ['d','u','b'] ],

    KaRDaS |< aT              `noun`    {- <dabla^gaT> -}      [ ['d','u','b','b','i','n','g'] ],

    MuKaRDiS                  `noun`    {- <mudabli^g> -}      [ unwords [ ['d','u','b','b','i','n','g'], ['a','r','t','i','s','t'] ], unwords [ ['d','u','b','b','i','n','g'], ['a','c','t','o','r'] ], ['d','u','b','b','e','r'] ],

    MuKaRDaS                  `adj`     {- <mudabla^g> -}      [ ['d','u','b','b','e','d'] ] ]

 |> ['d','U','b','l','A','^','g'] <| [

    _____                     `noun`    {- <dUblA^g> -}        [ ['d','u','b','b','i','n','g'] ] ]


cluster_69  = cluster

 |> ['d','U','b','l','I','r'] <| [

    _____                     `noun`    {- <dUblIr> -}         [ ['d','o','u','b','l','e'], ['s','u','b','s','t','i','t','u','t','e'] ] ]


cluster_70  = cluster

 |> ['d','I','b','l','U','m'] <| [

    _____                     `noun`    {- <dIblUm> -}         [ ['d','i','p','l','o','m','a'], ['c','e','r','t','i','f','i','c','a','t','e'] ]
                              `plural`     _____ |< At
                           
    `excepts` Triptote ]

 |> ['d','i','b','l','U','m'] <| [

    _____                     `noun`    {- <diblUm> -}         [ ['d','i','p','l','o','m','a'], ['c','e','r','t','i','f','i','c','a','t','e'] ]
                              `plural`     _____ |< At
                           
    `excepts` Triptote ]


cluster_71  = cluster

 |> ['d','I','b','l','U','m','A','s'] <| [

    _____ |< Iy               `adj`     {- <dIblUmAsIy> -}     [ ['d','i','p','l','o','m','a','t','i','c'] ],

    _____ |< Iy               `noun`    {- <dIblUmAsIy> -}     [ ['d','i','p','l','o','m','a','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <dIblUmAsIyaT> -}   [ ['d','i','p','l','o','m','a','c','y'] ] ]

 |> ['d','i','b','l','U','m','A','s'] <| [

    _____ |< Iy               `adj`     {- <diblUmAsIy> -}     [ ['d','i','p','l','o','m','a','t','i','c'] ],

    _____ |< Iy               `noun`    {- <diblUmAsIy> -}     [ ['d','i','p','l','o','m','a','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <diblUmAsIyaT> -}   [ ['d','i','p','l','o','m','a','c','y'] ] ]


cluster_72  = cluster

 |> "d _t r" <| [

    FaCaL                     `verb`    {- <da_tar> -}         [ unwords [ ['b','e'], ['f','o','r','g','o','t','t','e','n'] ], unwords [ ['b','e'], ['o','b','l','i','t','e','r','a','t','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <da_t_tar> -}       [ ['c','o','v','e','r'], ['d','e','s','t','r','o','y'], ['e','n','v','e','l','o','p'] ],

    TaFaCCaL                  `verb`    {- <tada_t_tar> -}     [ unwords [ ['w','r','a','p'], ['o','n','e','s','e','l','f'] ], unwords [ ['c','o','v','e','r'], ['o','n','e','s','e','l','f'] ] ],

    InFaCaL                   `verb`    {- <inda_tar> -}       [ unwords [ ['b','e'], ['o','b','l','i','t','e','r','a','t','e','d'] ], unwords [ ['b','e','c','o','m','e'], ['e','x','t','i','n','c','t'] ], unwords [ ['b','e'], ['f','o','r','g','o','t','t','e','n'] ] ],

    IFtaCaL                   `verb`    {- <idda_tar> -}       [ unwords [ ['w','r','a','p'], ['o','n','e','s','e','l','f'] ], unwords [ ['c','o','v','e','r'], ['o','n','e','s','e','l','f'] ] ],

    FiCAL                     `noun`    {- <di_tAr> -}         [ ['b','l','a','n','k','e','t'], ['c','o','v','e','r'] ]
                              `plural`     FuCuL,

    MaFCUL                    `adj`     {- <mad_tUr> -}        [ ['b','y','g','o','n','e'], ['a','n','c','i','e','n','t'] ] ]


cluster_73  = cluster

 |> "d ^g r" <| [

    FaCiL                     `verb`    {- <da^gir> -}         [ unwords [ ['b','e'], ['e','m','b','a','r','r','a','s','s','e','d'] ], unwords [ ['b','e'], ['a','t'], "a", ['l','o','s','s'] ] ]
                              `imperf`     FCaL,

    FayCUL                    `noun`    {- <day^gUr> -}        [ ['g','l','o','o','m'], ['d','a','r','k','n','e','s','s'] ]
                              `plural`     FayACIL,

    FayCUL |< Iy              `adj`     {- <day^gUrIy> -}      [ ['d','a','r','k'], ['g','l','o','o','m','y'] ] ]


cluster_74  = cluster

 |> "d ^g l" <| [

    FaCaL                     `verb`    {- <da^gal> -}         [ ['d','e','c','e','i','v','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <da^g^gal> -}       [ ['c','o','a','t'], ['d','e','c','e','i','v','e'] ],

    FaCL                      `noun`    {- <da^gl> -}          [ ['d','e','c','e','i','t'], ['t','r','i','c','k','e','r','y'] ],

    FaCCAL                    `noun`    {- <da^g^gAl> -}       [ ['f','a','l','s','e'], ['d','e','c','e','i','t','f','u','l'], ['s','w','i','n','d','l','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    TaFCIL                    `noun`    {- <tad^gIl> -}        [ ['f','a','l','s','e','h','o','o','d'], ['q','u','a','c','k','e','r','y'] ]
                              `plural`     TaFCIL |< At,

    FiCL |< aT                `noun`    {- <di^glaT> -}        [ ['T','i','g','r','i','s'] ] ]


cluster_75  = cluster

 |> "d ^g n" <| [

    FaCaL                     `verb`    {- <da^gan> -}         [ unwords [ ['b','e'], ['m','u','r','k','y'] ], ['s','t','a','y'], unwords [ ['b','e'], ['d','o','m','e','s','t','i','c','a','t','e','d'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <da^g^gan> -}       [ ['t','a','m','e'], ['d','o','m','e','s','t','i','c','a','t','e'] ],

    FACaL                     `verb`    {- <dA^gan> -}         [ ['f','l','a','t','t','e','r'], ['c','a','j','o','l','e'] ],

    HaFCaL                    `verb`    {- <'ad^gan> -}        [ unwords [ ['b','e'], ['m','u','r','k','y'] ], unwords [ ['b','e'], ['o','v','e','r','c','a','s','t'] ], unwords [ ['b','e'], ['d','a','r','k'] ] ],

    FuCL |< aT                `noun`    {- <du^gnaT> -}        [ ['d','a','r','k','n','e','s','s'], ['g','l','o','o','m'] ],

    FuCuLL |< aT              `noun`    {- <du^gunnaT> -}      [ ['d','a','r','k','n','e','s','s'], ['g','l','o','o','m'] ],

    HaFCaL                    `adj`     {- <'ad^gan> -}        [ ['d','a','r','k'], ['g','l','o','o','m','y'] ],

    FACiL                     `adj`     {- <dA^gin> -}         [ ['t','a','m','e'], ['d','o','m','e','s','t','i','c','a','t','e','d'] ],

    FACiL                     `adj`     {- <dA^gin> -}         [ ['d','a','r','k'], ['g','l','o','o','m','y'] ],

    FawACiL                   `noun`    {- <dawA^gin> -}       [ ['p','o','u','l','t','r','y'] ]
                              `plural`     FawACiL
                           
    `limited` "-------P--",

    MuFaCCaL                  `adj`     {- <muda^g^gan> -}     [ ['d','o','m','e','s','t','i','c','a','t','e','d'] ],

    MuFaCCaL                  `noun`    {- <muda^g^gan> -}     [ ['M','u','d','e','j','a','r','s'] ]
                              `plural`     MuFaCCaL |< Un ]


cluster_76  = cluster

 |> ['d','u','^','g','a','n','b','i','r'] <| [

    _____                     `noun`    {- <du^ganbir> -}      [ ['D','e','c','e','m','b','e','r'] ] ]


cluster_77  = cluster

 |> "d .h d .h" <| [

    TaKaRDaS                  `verb`    {- <tada.hda.h> -}     [ ['w','a','d','d','l','e'] ],

    KaRDaS                    `adj`     {- <da.hda.h> -}       [ ['s','t','o','c','k','y'], ['s','q','u','a','t'] ],

    KaRDAS                    `adj`     {- <da.hdA.h> -}       [ ['s','t','o','c','k','y'], ['s','q','u','a','t'] ],

    TaKaRDuS                  `noun`    {- <tada.hdu.h> -}     [ ['w','a','d','d','l','i','n','g'] ]
                              `plural`     TaKaRDuS |< At ]


cluster_78  = cluster

 |> "d .h r" <| [

    FaCaL                     `verb`    {- <da.har> -}         [ unwords [ ['d','r','i','v','e'], ['a','w','a','y'] ], ['d','i','s','l','o','d','g','e'], ['d','e','f','e','a','t'] ]
                              `imperf`     FCaL,

    IFtaCaL                   `verb`    {- <idda.har> -}       [ unwords [ ['b','e'], ['d','r','i','v','e','n'], ['a','w','a','y'] ], unwords [ ['b','e'], ['d','e','f','e','a','t','e','d'] ], ['c','o','l','l','a','p','s','e'] ],

    FaCL                      `noun`    {- <da.hr> -}          [ ['a','b','a','n','d','o','n','i','n','g'], ['l','e','a','v','i','n','g'] ],

    InFiCAL                   `noun`    {- <indi.hAr> -}       [ ['b','a','n','i','s','h','m','e','n','t'], ['r','e','j','e','c','t','i','o','n'], ['d','e','f','e','a','t'], ['c','o','l','l','a','p','s','e'] ]
                              `plural`     InFiCAL |< At,

    MaFCUL                    `adj`     {- <mad.hUr> -}        [ ['e','x','p','e','l','l','e','d'], ['b','a','n','i','s','h','e','d'] ] ]


cluster_79  = cluster

 |> "d .h r ^g" <| [

    KaRDaS                    `verb`    {- <da.hra^g> -}       [ ['r','o','l','l'] ],

    TaKaRDaS                  `verb`    {- <tada.hra^g> -}     [ ['r','o','l','l'], unwords [ ['r','o','l','l'], ['a','l','o','n','g'] ], unwords [ ['r','o','l','l'], ['d','o','w','n'] ] ],

    KaRDaS |< aT              `noun`    {- <da.hra^gaT> -}     [ ['r','o','l','l','i','n','g'] ],

    TaKaRDuS                  `noun`    {- <tada.hru^g> -}     [ ['r','o','l','l','i','n','g'], unwords [ ['r','o','l','l','i','n','g'], ['a','l','o','n','g'] ], unwords [ ['r','o','l','l','i','n','g'], ['d','o','w','n'] ] ]
                              `plural`     TaKaRDuS |< At ]


cluster_80  = cluster

 |> "d .h s" <| [

    FACiL                     `noun`    {- <dA.his> -}         [ ['w','h','i','t','l','o','w'], ['f','e','l','o','n'] ]
                              `plural`     FawACiL ]


cluster_81  = cluster

 |> "d .h ^s" <| [

    FaCaL                     `verb`    {- <da.ha^s> -}        [ ['i','n','s','e','r','t'], unwords [ ['s','m','u','g','g','l','e'], ['i','n'] ], unwords [ ['t','h','r','u','s','t'], ['i','n'] ] ]
                              `imperf`     FCaL,

    InFaCaL                   `verb`    {- <inda.ha^s> -}      [ ['i','n','t','e','r','f','e','r','e'], ['m','e','d','d','l','e'], ['m','i','x'] ] ]


cluster_82  = cluster

 |> "d .h .d" <| [

    FaCaL                     `verb`    {- <da.ha.d> -}        [ unwords [ ['b','e'], ['v','o','i','d'] ], ['i','n','v','a','l','i','d','a','t','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <da.h.ha.d> -}      [ ['d','i','s','p','r','o','v','e'], ['r','e','f','u','t','e'] ],

    HaFCaL                    `verb`    {- <'ad.ha.d> -}       [ ['d','i','s','p','r','o','v','e'], ['r','e','f','u','t','e'] ],

    FaCL                      `noun`    {- <da.h.d> -}         [ ['r','e','f','u','t','a','t','i','o','n'], ['d','i','s','p','r','o','o','f'] ],

    FuCUL                     `noun`    {- <du.hU.d> -}        [ ['r','e','f','u','t','a','b','i','l','i','t','y'], ['i','n','v','a','l','i','d','i','t','y'] ],

    MiFCAL                    `adj`     {- <mid.hA.d> -}       [ ['i','n','v','a','l','i','d'], ['u','n','j','u','s','t','i','f','i','e','d'] ] ]


cluster_83  = cluster

 |> "d .h l" <| [

    FaCaL                     `noun`    {- <da.hal> -}         [ ['m','a','r','b','l','e','s'] ],

    FaCaLAn                   `noun`    {- <da.halAn> -}       [ ['D','a','h','a','l','a','n'] ] ]


cluster_84  = cluster

 |> "d _h s" <| [

    FuCaL                     `noun`    {- <du_has> -}         [ ['d','o','l','p','h','i','n'] ] ]


cluster_85  = cluster

 |> "d _h l" <| [

    FaCaL                     `verb`    {- <da_hal> -}         [ ['e','n','t','e','r'] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FACaL                     `verb`    {- <dA_hal> -}         [ unwords [ ['c','o','m','e'], ['o','v','e','r'] ], ['b','e','f','a','l','l'], ['s','e','i','z','e'] ],

    HaFCaL                    `verb`    {- <'ad_hal> -}        [ ['e','n','t','e','r'], ['i','n','c','l','u','d','e'], ['i','n','s','e','r','t'] ],

    TaFaCCaL                  `verb`    {- <tada_h_hal> -}     [ ['i','n','t','e','r','v','e','n','e'], ['i','n','t','e','r','f','e','r','e'] ],

    TaFACaL                   `verb`    {- <tadA_hal> -}       [ ['m','e','d','d','l','e'], ['i','n','t','e','r','v','e','n','e'] ],

    FaCL                      `noun`    {- <da_hl> -}          [ ['i','n','c','o','m','e'], ['r','e','v','e','n','u','e'], ['b','u','s','i','n','e','s','s'] ],

    FiCL |< aT                `noun`    {- <di_hlaT> -}        [ unwords [ ['i','n','n','e','r'], ['s','e','l','f'] ], unwords [ ['s','e','c','r','e','t'], ['i','n','t','e','n','t','i','o','n'] ] ],

    FuCL |< aT                `noun`    {- <du_hlaT> -}        [ ['w','e','d','d','i','n','g'] ],

    FuCCaL |< aT              `noun`    {- <du_h_halaT> -}     [ ['w','a','r','b','l','e','r'] ],

    FaCIL                     `noun`    {- <da_hIl> -}         [ ['f','o','r','e','i','g','n'], ['i','n','t','r','u','d','e','r'], ['f','o','r','e','i','g','n','e','r','s'] ]
                              `plural`     FaCIL |< Un
                              `plural`     FuCaLA'
                              `femini`     FaCIL |< aT,

    FaCIL                     `adj`     {- <da_hIl> -}         [ ['i','n','t','e','r','n','a','l'], ['i','n','n','e','r'] ],

    FaCIL |< aT               `noun`    {- <da_hIlaT> -}       [ unwords [ ['i','n','n','e','r'], ['s','e','l','f'] ], unwords [ ['i','n','n','e','r','m','o','s','t'], ['t','h','o','u','g','h','t'] ] ]
                              `plural`     FaCA'iL,

    FuCUL                     `noun`    {- <du_hUl> -}         [ ['e','n','t','r','a','n','c','e'], ['p','e','n','e','t','r','a','t','i','o','n'] ],

    FuCUL |< Iy |< aT         `noun`    {- <du_hUlIyaT> -}     [ unwords [ ['e','n','t','r','a','n','c','e'], ['f','e','e'] ] ],

    MaFCaL                    `noun`    {- <mad_hal> -}        [ ['e','n','t','r','a','n','c','e'], ['e','n','t','e','r','i','n','g'], ['i','n','t','r','o','d','u','c','t','i','o','n'] ]
                              `plural`     MaFACiL,

    MuFACaL |< aT             `noun`    {- <mudA_halaT> -}     [ ['i','n','t','e','r','f','e','r','e','n','c','e'], ['p','a','r','t','i','c','i','p','a','t','i','o','n'] ],

    HiFCAL                    `noun`    {- <'id_hAl> -}        [ ['i','n','s','e','r','t','i','o','n'], ['e','n','t','e','r','i','n','g'], ['i','n','c','l','u','s','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <tada_h_hul> -}     [ ['i','n','t','e','r','v','e','n','t','i','o','n'], ['i','n','t','e','r','f','e','r','e','n','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <tadA_hul> -}       [ ['i','n','t','e','r','f','e','r','e','n','c','e'], ['i','n','t','e','r','v','e','n','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    FACiL |<< "a"             `prep`    {- <dA_hila> -}        [ unwords [ ['i','n','s','i','d','e'], ['o','f'] ] ],

    FACiL                     `noun`    {- <dA_hil> -}         [ ['i','n','t','e','r','i','o','r'], ['i','n','s','i','d','e'] ],

    FACiL |< aT               `noun`    {- <dA_hilaT> -}       [ unwords [ ['D','a','k','h','l','a'], "(", ['o','a','s','i','s'], ")" ] ],

    FACiL |< Iy               `adj`     {- <dA_hilIy> -}       [ ['i','n','t','e','r','n','a','l'], ['d','o','m','e','s','t','i','c'], ['i','n','t','e','r','i','o','r'], unwords [ ['o','f'], ['s','t','a','t','e'] ] ],

    MaFCUL                    `noun`    {- <mad_hUl> -}        [ ['r','e','v','e','n','u','e'], ['i','n','c','o','m','e'] ]
                              `plural`     MaFACIL,

    MuFCaL                    `noun`    {- <mud_hal> -}        [ ['i','n','t','r','o','d','u','c','t','i','o','n'] ],

    MutaFaCCiL                `adj`     {- <mutada_h_hil> -}   [ ['i','n','t','e','r','v','e','n','i','n','g'], ['i','n','t','e','r','f','e','r','i','n','g'] ] ]


cluster_86  = cluster

 |> "d _h m s" <| [

    KaRDaS                    `verb`    {- <da_hmas> -}        [ ['d','e','c','e','i','v','e'], ['c','h','e','a','t'] ],

    KaRDaS |< aT              `noun`    {- <da_hmasaT> -}      [ ['d','e','c','e','p','t','i','o','n'], ['c','h','e','a','t','i','n','g'], ['c','u','n','n','i','n','g'] ] ]


cluster_87  = cluster

 |> "d _h n" <| [

    FaCaL                     `verb`    {- <da_han> -}         [ ['s','m','o','l','d','e','r'], ['s','m','o','k','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <da_h_han> -}       [ ['s','m','o','k','e'], ['f','u','m','i','g','a','t','e'] ],

    HaFCaL                    `verb`    {- <'ad_han> -}        [ ['s','m','o','k','e'] ],

    TaFaCCaL                  `verb`    {- <tada_h_han> -}     [ unwords [ ['b','e'], ['s','m','o','k','e','d'] ], unwords [ ['b','e'], ['f','u','m','i','g','a','t','e','d'] ] ],

    FuCL                      `noun`    {- <du_hn> -}          [ unwords [ ['d','u','k','h','n'], "(", ['p','e','a','r','l'], ['m','i','l','l','e','t'], ")" ] ],

    FaCaL                     `noun`    {- <da_han> -}         [ ['s','m','o','k','e'], ['v','a','p','o','r'] ],

    FuCAL                     `noun`    {- <du_hAn> -}         [ ['s','m','o','k','e'], ['s','m','o','k','i','n','g'] ]
                              `plural`     HaFCiL |< aT,

    FuCL |< aT                `noun`    {- <du_hnaT> -}        [ ['s','m','o','k','e'], ['i','n','c','e','n','s','e'] ],

    FaCIL |< aT               `noun`    {- <da_hInaT> -}       [ ['c','i','g','a','r','e','t','t','e'] ]
                              `plural`     FaCA'iL,

    FaCACiL |< Iy             `noun`    {- <da_hA_hinIy> -}    [ ['t','o','b','a','c','c','o','n','i','s','t'] ]
                              `plural`     FaCACiL |< Iy |< Un
                              `femini`     FaCACiL |< Iy |< aT,

    MaFCaL |< aT              `noun`    {- <mad_hanaT> -}      [ ['c','h','i','m','n','e','y'], ['s','m','o','k','e','s','t','a','c','k'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <tad_hIn> -}        [ ['s','m','o','k','i','n','g'], ['f','u','m','i','g','a','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FACiL |< aT               `noun`    {- <dA_hinaT> -}       [ ['c','h','i','m','n','e','y'], ['s','m','o','k','e','s','t','a','c','k'] ]
                              `plural`     FawACiL,

    MuFaCCiL                  `noun`    {- <muda_h_hin> -}     [ ['s','m','o','k','e','r'], ['s','m','o','k','i','n','g'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <muda_h_han> -}     [ ['s','m','o','k','e','d'] ] ]


cluster_88  = cluster

 |> ['d','U','r','U'] <| [

    _____                     `noun`    {- <dUrU> -}           [ unwords [ ['d','u','r','o'], ['c','o','i','n'] ] ] ]


cluster_89  = cluster

 |> "d r b" <| [

    FaCiL                     `verb`    {- <darib> -}          [ unwords [ ['b','e'], ['a','c','c','u','s','t','o','m','e','d'] ], unwords [ ['b','e'], ['t','r','a','i','n','e','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FuCL |< aT,

    FaCCaL                    `verb`    {- <darrab> -}         [ ['h','a','b','i','t','u','a','t','e'], unwords [ ['g','i','v','e'], ['t','r','a','i','n','i','n','g'] ], ['c','o','a','c','h'] ],

    TaFaCCaL                  `verb`    {- <tadarrab> -}       [ unwords [ ['r','e','c','e','i','v','e'], ['t','r','a','i','n','i','n','g'] ], unwords [ ['b','e'], ['s','k','i','l','l','e','d'] ] ],

    FaCL                      `noun`    {- <darb> -}           [ ['p','a','t','h'], ['t','r','a','i','l'] ]
                              `plural`     FuCUL,

    FuCL |< aT                `noun`    {- <durbaT> -}         [ ['h','a','b','i','t','u','a','t','i','o','n'], ['p','r','a','c','t','i','c','e'] ],

    FaCIL |< aT               `noun`    {- <darIbaT> -}        [ unwords [ ['c','o','u','r','t'], ['o','f'], ['f','i','r','s','t'], ['i','n','s','t','a','n','c','e'] ] ],

    TaFCIL                    `noun`    {- <tadrIb> -}         [ ['t','r','a','i','n','i','n','g'], ['c','o','a','c','h','i','n','g'], ['p','r','a','c','t','i','c','e'], ['e','x','e','r','c','i','s','e','s'], ['d','r','i','l','l','s'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <tadrIbIy> -}       [ ['t','r','a','i','n','i','n','g'], ['c','o','a','c','h','i','n','g'], ['p','r','a','c','t','i','c','e'] ],

    MuFaCCiL                  `noun`    {- <mudarrib> -}       [ ['t','r','a','i','n','e','r'], ['c','o','a','c','h'], ['i','n','s','t','r','u','c','t','o','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <mudarrab> -}       [ ['t','r','a','i','n','e','d'] ],

    TaFaCCuL                  `noun`    {- <tadarrub> -}       [ unwords [ ['r','e','c','e','i','v','e'], ['t','r','a','i','n','i','n','g'] ], unwords [ ['b','e'], ['t','r','a','i','n','e','d'] ], ['p','r','a','c','t','i','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `noun`    {- <mutadarrib> -}     [ ['t','r','a','i','n','e','e'] ]
                              `plural`     MutaFaCCiL |< Un
                              `femini`     MutaFaCCiL |< aT ]


cluster_90  = cluster

 |> "d r b s" <| [

    KaRDaS                    `verb`    {- <darbas> -}         [ unwords [ ['b','o','l','t'], ['s','h','u','t'] ] ],

    KaRDaS |< aT              `noun`    {- <darbasaT> -}       [ unwords [ ['b','o','l','t','i','n','g'], ['s','h','u','t'] ] ],

    KiRDAS                    `noun`    {- <dirbAs> -}         [ unwords [ ['d','o','o','r'], ['b','o','l','t'] ] ]
                              `plural`     KaRADIS ]


cluster_91  = cluster

 |> "d r ^g" <| [

    FaCaL                     `verb`    {- <dara^g> -}         [ ['i','n','s','e','r','t'], ['r','e','g','i','s','t','e','r'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <darra^g> -}        [ ['c','a','t','e','g','o','r','i','z','e'], ['c','l','a','s','s','i','f','y'], ['g','r','a','d','a','t','e'] ],

    FACaL                     `verb`    {- <dAra^g> -}         [ unwords [ ['k','e','e','p'], ['u','p'], ['w','i','t','h'] ] ],

    HaFCaL                    `verb`    {- <'adra^g> -}        [ ['i','n','s','e','r','t'], ['i','n','c','l','u','d','e'], ['i','n','t','e','g','r','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <tadarra^g> -}      [ ['p','r','o','g','r','e','s','s'], unwords [ ['b','e'], ['g','r','a','d','a','t','e','d'] ], unwords [ ['a','d','v','a','n','c','e'], ['g','r','a','d','u','a','l','l','y'] ] ],

    InFaCaL                   `verb`    {- <indara^g> -}       [ unwords [ ['b','e'], ['i','n','s','e','r','t','e','d'] ], unwords [ ['b','e'], ['c','l','a','s','s','i','f','i','e','d'] ] ],

    IstaFCaL                  `verb`    {- <istadra^g> -}      [ ['p','r','o','m','o','t','e'], unwords [ ['a','d','v','a','n','c','e'], ['g','r','a','d','u','a','l','l','y'] ] ],

    FaCL                      `noun`    {- <dar^g> -}          [ ['e','n','t','r','y'], ['r','e','g','i','s','t','r','a','t','i','o','n'], ['r','e','c','o','r','d','i','n','g'] ],

    FuCL                      `noun`    {- <dur^g> -}          [ unwords [ ['d','e','s','k'], ['d','r','a','w','e','r'] ] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FaCaL                     `noun`    {- <dara^g> -}         [ ['s','t','e','p'], ['s','t','a','i','r','s'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <dara^g> -}         [ ['r','o','u','t','e'], ['c','o','u','r','s','e'] ]
                              `plural`     HaFCAL,

    FaCaL |< aT               `noun`    {- <dara^gaT> -}       [ ['d','e','g','r','e','e'], ['c','l','a','s','s'], ['r','a','n','k'], ['g','r','a','d','e'], ['l','e','v','e','l'] ]
                              `plural`     FaCaL |< At,

    FuCCAL                    `noun`    {- <durrA^g> -}        [ unwords [ ['f','r','a','n','c','o','l','i','n'], "(", ['b','i','r','d'], ")" ] ]
                              `plural`     FaCACIL,

    FaCCAL |< aT              `noun`    {- <darrA^gaT> -}      [ ['b','i','c','y','c','l','e'] ]
                              `plural`     FaCCAL |< At,

    MaFCaL                    `noun`    {- <madra^g> -}        [ ['r','o','u','t','e'], ['r','u','n','w','a','y'], ['r','a','m','p'] ]
                              `plural`     MaFACiL,

    MaFCaL |< aT              `noun`    {- <madra^gaT> -}      [ ['t','a','r','m','a','c'], ['r','u','n','w','a','y'] ],

    TaFCIL                    `noun`    {- <tadrI^g> -}        [ ['g','r','a','d','a','t','i','o','n'], ['c','l','a','s','s','i','f','i','c','a','t','i','o','n'], ['c','a','t','e','g','o','r','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <tadrI^gIy> -}      [ ['g','r','a','d','u','a','l'], ['p','r','o','g','r','e','s','s','i','v','e'], unwords [ ['i','n'], ['s','t','a','g','e','s'] ], unwords [ ['s','t','e','p'], ['b','y'], ['s','t','e','p'] ] ],

    HiFCAL                    `noun`    {- <'idrA^g> -}        [ ['i','n','s','e','r','t','i','o','n'], ['r','e','g','i','s','t','r','a','t','i','o','n'], ['r','e','c','o','r','d','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <tadarru^g> -}      [ unwords [ ['g','r','a','d','u','a','l'], ['p','r','o','g','r','e','s','s'] ], ['g','r','a','d','a','t','i','o','n'], ['h','i','e','r','a','r','c','h','y'] ]
                              `plural`     TaFaCCuL |< At,

    IstiFCAL                  `noun`    {- <istidrA^g> -}      [ ['p','e','r','s','u','a','s','i','o','n'], ['a','p','p','e','a','l'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `adj`     {- <dAri^g> -}         [ ['p','o','p','u','l','a','r'], ['p','r','e','v','a','l','e','n','t'] ],

    FACiL                     `adj`     {- <dAri^g> -}         [ ['c','o','l','l','o','q','u','i','a','l'], ['v','e','r','n','a','c','u','l','a','r'] ],

    MuFaCCaL                  `adj`     {- <mudarra^g> -}      [ ['g','r','a','d','e','d'], ['t','e','r','r','a','c','e','d'] ],

    MuFaCCaL                  `noun`    {- <mudarra^g> -}      [ ['a','m','p','h','i','t','h','e','a','t','e','r'], ['b','l','e','a','c','h','e','r','s'] ]
                              `plural`     MuFaCCaL |< At,

    MuFCaL                    `adj`     {- <mudra^g> -}        [ ['i','n','s','e','r','t','e','d'], ['i','n','c','l','u','d','e','d'] ],

    MutaFaCCiL                `noun`    {- <mutadarri^g> -}    [ ['a','p','p','r','e','n','t','i','c','e'] ]
                              `plural`     MutaFaCCiL |< Un
                              `femini`     MutaFaCCiL |< aT ]


cluster_92  = cluster

 |> "d r d" <| [

    FaCiL                     `verb`    {- <darid> -}          [ unwords [ ['b','e'], ['t','o','o','t','h','l','e','s','s'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `adj`     {- <'adrad> -}         [ ['t','o','o','t','h','l','e','s','s'] ],

    FuCL |< Iy                `noun`    {- <durdIy> -}         [ ['s','e','d','i','m','e','n','t'], ['d','r','e','g','s'] ] ]


cluster_93  = cluster

 |> "d r d r" <| [

    KaRDaS                    `verb`    {- <dardar> -}         [ ['r','u','s','h'], ['p','r','a','t','t','l','e'], ['c','h','a','t','t','e','r'] ],

    KaRDaS |< aT              `noun`    {- <dardaraT> -}       [ ['r','u','s','h'], ['p','r','a','t','t','l','e'], ['c','h','a','t','t','e','r'] ],

    KaRDAS                    `noun`    {- <dardAr> -}         [ ['e','l','m'] ],

    KaRDUS                    `noun`    {- <dardUr> -}         [ ['D','a','r','d','o','u','r'], ['D','a','r','d','u','r'] ],

    KuRDUS                    `noun`    {- <durdUr> -}         [ ['e','d','d','y'], ['w','h','i','r','l','p','o','o','l'], ['v','o','r','t','e','x'] ] ]


cluster_94  = cluster

 |> "d r d ^s" <| [

    KaRDaS                    `verb`    {- <darda^s> -}        [ ['c','h','a','t'], ['c','o','n','v','e','r','s','e'] ],

    KaRDaS |< aT              `noun`    {- <darda^saT> -}      [ ['c','h','a','t'], ['c','o','n','v','e','r','s','a','t','i','o','n'] ] ]


cluster_95  = cluster

 |> "d r z" <| [

    FaCaL                     `verb`    {- <daraz> -}          [ ['s','e','w'], ['s','t','i','t','c','h'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <darz> -}           [ ['s','e','a','m'], ['h','e','m'], ['s','u','t','u','r','e'] ]
                              `plural`     FuCUL ]

 |> "d r z" <| [

    FuCL |< Iy                `adj`     {- <durzIy> -}         [ ['D','r','u','z','e'], ['D','r','u','s','e'] ]
                              `plural`     FuCUL,

    FuCL |< Iy |< aT          `adj`     {- <durzIyaT> -}       [ unwords [ ['D','r','u','z','e'], ['r','e','l','i','g','i','o','n'] ] ] ]


cluster_96  = cluster

 |> "d r s" <| [

    FaCaL                     `verb`    {- <daras> -}          [ ['s','t','u','d','y'], ['l','e','a','r','n'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL
                              `masdar`     FiCAL |< aT,

    FaCCaL                    `verb`    {- <darras> -}         [ ['t','e','a','c','h'], ['i','n','s','t','r','u','c','t'] ],

    FACaL                     `verb`    {- <dAras> -}          [ unwords [ ['s','t','u','d','y'], ['t','o','g','e','t','h','e','r'] ] ],

    TaFACaL                   `verb`    {- <tadAras> -}        [ unwords [ ['s','t','u','d','y'], ['t','o','g','e','t','h','e','r'] ] ],

    InFaCaL                   `verb`    {- <indaras> -}        [ unwords [ ['b','e'], ['w','i','p','e','d'], ['o','u','t'] ], unwords [ ['b','e'], ['e','f','f','a','c','e','d'] ] ],

    FaCL                      `noun`    {- <dars> -}           [ ['l','e','s','s','o','n'], ['s','t','u','d','y'], ['c','l','a','s','s','e','s'] ]
                              `plural`     FuCUL,

    FiCAL                     `noun`    {- <dirAs> -}          [ ['t','h','r','e','s','h','i','n','g'] ],

    FiCAL |< aT               `noun`    {- <dirAsaT> -}        [ ['s','t','u','d','y'], ['r','e','s','e','a','r','c','h'] ]
                              `plural`     FiCAL |< At,

    FiCAL |< Iy               `adj`     {- <dirAsIy> -}        [ ['e','d','u','c','a','t','i','o','n','a','l'], ['s','c','h','o','l','a','s','t','i','c'], ['i','n','s','t','r','u','c','t','i','o','n','a','l'] ],

    FaCIL                     `noun`    {- <darIs> -}          [ unwords [ ['d','r','i','e','d'], ['c','l','o','v','e','r'] ] ],

    FaCCAL                    `adj`     {- <darrAs> -}         [ ['s','t','u','d','i','o','u','s'] ],

    FaCCAL                    `noun`    {- <darrAs> -}         [ unwords [ ['e','a','g','e','r'], ['s','t','u','d','e','n','t'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL |< aT              `noun`    {- <darrAsaT> -}       [ unwords [ ['t','h','r','e','s','h','i','n','g'], ['m','a','c','h','i','n','e'] ] ],

    MaFCaL |< aT              `noun`    {- <madrasaT> -}       [ ['s','c','h','o','o','l'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <madrasIy> -}       [ ['s','c','h','o','l','a','s','t','i','c'], ['s','c','h','o','o','l'] ],

    TaFCIL                    `noun`    {- <tadrIs> -}         [ ['t','e','a','c','h','i','n','g'], ['i','n','s','t','r','u','c','t','i','o','n'], ['f','a','c','u','l','t','y'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <tadrIsIy> -}       [ ['f','a','c','u','l','t','y'], ['t','e','a','c','h','i','n','g'], ['i','n','s','t','r','u','c','t','i','o','n','a','l'] ],

    TaFACuL                   `noun`    {- <tadArus> -}        [ unwords [ ['s','t','u','d','y','i','n','g'], ['t','o','g','e','t','h','e','r'] ] ],

    FACiL                     `adj`     {- <dAris> -}          [ ['s','t','u','d','y','i','n','g'] ],

    FACiL                     `adj`     {- <dAris> -}          [ ['e','f','f','a','c','e','d'], ['o','b','l','i','t','e','r','a','t','e','d'], ['c','r','u','m','b','l','i','n','g'] ]
                              `plural`     FawACiL,

    FACiL                     `noun`    {- <dAris> -}          [ ['s','t','u','d','e','n','t'], ['r','e','s','e','a','r','c','h','e','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MaFCUL                    `adj`     {- <madrUs> -}         [ ['s','t','u','d','i','e','d'], ['i','n','v','e','s','t','i','g','a','t','e','d'] ],

    MuFaCCiL                  `adj`     {- <mudarris> -}       [ ['t','e','a','c','h','i','n','g'], ['i','n','s','t','r','u','c','t','i','n','g'] ],

    MuFaCCiL                  `noun`    {- <mudarris> -}       [ ['t','e','a','c','h','e','r'], ['i','n','s','t','r','u','c','t','o','r'], ['l','e','c','t','u','r','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_97  = cluster

 |> "d r `" <| [

    FaCCaL                    `verb`    {- <darra`> -}         [ ['a','r','m'], ['e','q','u','i','p'] ],

    TaFaCCaL                  `verb`    {- <tadarra`> -}       [ unwords [ ['b','e'], ['a','r','m','e','d'] ], unwords [ ['b','e'], ['e','q','u','i','p','p','e','d'] ] ],

    IFtaCaL                   `verb`    {- <iddara`> -}        [ unwords [ ['b','e'], ['a','r','m','e','d'] ], unwords [ ['b','e'], ['e','q','u','i','p','p','e','d'] ] ],

    FiCL                      `noun`    {- <dir`> -}           [ ['a','r','m','o','r'], unwords [ ['p','l','a','t','e'], ['a','r','m','o','r'] ] ]
                              `plural`     HaFCuL
                              `plural`     FuCUL
                              `plural`     HaFCAL,

    FiCL |< Iy                `adj`     {- <dir`Iy> -}         [ ['s','h','i','e','l','d','i','n','g'], ['a','r','m','o','r','e','d'] ],

    FaCCAL |< aT              `noun`    {- <darrA`aT> -}       [ unwords [ ['a','r','m','o','r','e','d'], ['c','r','u','i','s','e','r'] ] ]
                              `plural`     FaCCAL |< At,

    FuCCAL |< aT              `noun`    {- <durrA`aT> -}       [ ['g','a','r','m','e','n','t'] ]
                              `plural`     FaCACIL,

    FACiL                     `adj`     {- <dAri`> -}          [ ['a','r','m','o','r','e','d'], unwords [ ['i','r','o','n'], "-", ['c','l','a','d'] ] ],

    FACiL |< aT               `noun`    {- <dAri`aT> -}        [ unwords [ ['a','r','m','o','r','e','d'], ['c','r','u','i','s','e','r'] ] ]
                              `plural`     FawACiL,

    MuFaCCaL                  `adj`     {- <mudarra`> -}       [ ['a','r','m','o','r','e','d'] ],

    MuFaCCaL |< aT            `noun`    {- <mudarra`aT> -}     [ unwords [ ['a','r','m','o','r','e','d'], ['v','e','h','i','c','l','e'] ] ]
                              `plural`     MuFaCCaL |< At ]


cluster_98  = cluster

 |> "d r f" <| [

    FaCL                      `noun`    {- <darf> -}           [ ['s','i','d','e'], ['f','l','a','n','k'], ['w','i','n','g'] ],

    FaCL |< aT                `noun`    {- <darfaT> -}         [ ['l','e','a','f'], unwords [ ['w','i','n','d','o','w'], ['s','h','a','d','e'] ] ]
                              `plural`     FiCaL ]


cluster_99  = cluster

 |> "d r f l" <| [

    KaRDaS                    `verb`    {- <darfal> -}         [ ['r','o','l','l'], ['m','i','l','l'] ],

    KaRDaS |< aT              `noun`    {- <darfalaT> -}       [ ['r','o','l','l','i','n','g'], ['m','i','l','l','i','n','g'] ],

    KaRDIS                    `noun`    {- <darfIl> -}         [ ['d','o','l','p','h','i','n'], ['r','o','l','l','e','r'], ['c','h','o','c','k'] ]
                              `plural`     KaRADIS ]


cluster_100 = cluster

 |> "d r q" <| [

    FaCaL |< aT               `noun`    {- <daraqaT> -}        [ unwords [ ['l','e','a','t','h','e','r'], ['s','h','i','e','l','d'] ] ],

    FaCaL                     `noun`    {- <daraq> -}          [ unwords [ ['t','h','y','r','o','i','d'], ['g','l','a','n','d'] ] ],

    FaCaL |< Iy               `adj`     {- <daraqIy> -}        [ ['t','h','y','r','o','i','d'], unwords [ ['s','h','i','e','l','d'], "-", ['s','h','a','p','e','d'] ] ],

    FuCCAL                    `noun`    {- <durrAq> -}         [ ['p','e','a','c','h'] ],

    FawCaL                    `noun`    {- <dawraq> -}         [ ['c','a','r','a','f','e'] ]
                              `plural`     FawACiL ]


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
