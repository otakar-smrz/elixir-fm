
module Elixir.Data.Moony.Regular.E (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['b','l','A','s','t','I','k'] <| [

    _____                     `noun`    {- <blAstIk> -}        [ ['p','l','a','s','t','i','c'] ],

    _____ |< Iy               `adj`     {- <blAstIkIy> -}      [ ['p','l','a','s','t','i','c'] ] ]


cluster_2   = cluster

 |> ['b','l','a','k'] <| [

    _____                     `noun`    {- <blak> -}           [ unwords [ ['s','p','a','r','k'], ['p','l','u','g'] ] ]
                              `plural`     _____ |< At ]

 |> ['b','u','l','u','k'] <| [

    _____                     `noun`    {- <buluk> -}          [ unwords [ ['c','o','m','p','a','n','y'], "(", ['m','i','l','.'], ")" ] ]
                              `plural`     _____ |< At ]

 |> ['b','u','l','U','k'] <| [

    _____                     `noun`    {- <bulUk> -}          [ ['b','l','o','c','k'] ]
                              `plural`     _____ |< At ]


cluster_3   = cluster

 |> ['^','g','I','b'] <| [

    _____                     `noun`    {- <^gIb> -}           [ ['j','e','e','p'] ]
                              `plural`     _____ |< At ]


cluster_4   = cluster

 |> ['^','g','a','b'] <| [

    _____ |<< "_hAn" |< aT    `noun`    {- <^gab_hAnaT> -}     [ unwords [ ['p','o','w','d','e','r'], ['m','a','g','a','z','i','n','e'] ], ['a','m','m','u','n','i','t','i','o','n'] ] ]


cluster_5   = cluster

 |> "^g b .h" <| [

    FaCL                      `noun`    {- <^gab.h> -}         [ ['b','e','e','h','i','v','e'] ]
                              `plural`     FiCAL
                              `plural`     HaFCuL
                              `plural`     HaFCAL ]


cluster_6   = cluster

 |> "^g b _d" <| [

    FaCaL                     `verb`    {- <^gaba_d> -}        [ ['p','u','l','l'] ]
                              `imperf`     FCiL ]


cluster_7   = cluster

 |> "^g b r" <| [

    FaCaL                     `verb`    {- <^gabar> -}         [ ['b','a','n','d','a','g','e'], ['r','e','s','t','o','r','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gabbar> -}        [ ['s','t','r','e','n','g','t','h','e','n'], ['s','e','t'] ],

    FACaL                     `verb`    {- <^gAbar> -}         [ unwords [ ['t','r','e','a','t'], ['k','i','n','d','l','y'] ] ],

    HaFCaL                    `verb`    {- <'a^gbar> -}        [ ['f','o','r','c','e'], ['c','o','m','p','e','l'] ],

    TaFaCCaL                  `verb`    {- <ta^gabbar> -}      [ unwords [ ['a','c','t'], ['a','r','r','o','g','a','n','t','l','y'] ], unwords [ ['s','h','o','w'], ['s','t','r','e','n','g','t','h'] ] ],

    InFaCaL                   `verb`    {- <in^gabar> -}       [ unwords [ ['b','e'], ['m','e','n','d','e','d'] ], unwords [ ['b','e'], ['r','e','s','t','o','r','e','d'] ] ],

    FaCL                      `noun`    {- <^gabr> -}          [ ['c','o','e','r','c','i','o','n'] ],

    FaCL                      `noun`    {- <^gabr> -}          [ ['a','l','g','e','b','r','a'] ],

    FaCL                      `noun`    {- <^gabr> -}          [ unwords [ ['b','o','n','e'], ['s','e','t','t','i','n','g'] ] ],

    FaCL |<< "aN"             `noun`    {- <^gabraN> -}        [ ['f','o','r','c','i','b','l','y'] ],

    FaCL |< Iy                `adj`     {- <^gabrIy> -}        [ ['c','o','m','p','u','l','s','o','r','y'], ['f','o','r','c','e','d'] ],

    FaCL |< Iy                `adj`     {- <^gabrIy> -}        [ ['a','l','g','e','b','r','a','i','c'] ],

    FaCaL |< Iy |< aT         `noun`    {- <^gabarIyaT> -}     [ ['f','a','t','a','l','i','s','m'] ],

    FuCayL                    `noun`    {- <^gubayr> -}        [ ['J','u','b','a','y','r'] ],

    FaCCAL                    `noun`    {- <^gabbAr> -}        [ ['J','a','b','b','a','r'] ],

    FaCCAL                    `adj`     {- <^gabbAr> -}        [ ['g','i','g','a','n','t','i','c'], ['a','l','m','i','g','h','t','y'] ]
                              `plural`     FaCCAL |< Un
                              `plural`     FaCACiL |< aT,

    FaCCAL                    `noun`    {- <^gabbAr> -}        [ ['t','y','r','a','n','t'] ]
                              `plural`     FaCCAL |< Un
                              `plural`     FaCACiL |< aT
                              `femini`     FaCCAL |< aT,

    FiCAL |< aT               `noun`    {- <^gibAraT> -}       [ unwords [ ['b','o','n','e'], ['s','e','t','t','i','n','g'] ] ],

    FaCIL |< aT               `noun`    {- <^gabIraT> -}       [ ['s','p','l','i','n','t'] ]
                              `plural`     FaCA'iL,

    HiFCAL                    `noun`    {- <'i^gbAr> -}        [ ['c','o','m','p','u','l','s','i','o','n'], ['c','o','e','r','c','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'i^gbArIy> -}      [ ['c','o','m','p','u','l','s','o','r','y'], ['o','b','l','i','g','a','t','o','r','y'] ],

    FACiL                     `noun`    {- <^gAbir> -}         [ ['J','a','b','i','r'] ],

    FACiL                     `noun`    {- <^gAbir> -}         [ unwords [ ['b','o','n','e'], ['s','e','t','t','e','r'] ] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    FACiL |< Iy               `adj`     {- <^gAbirIy> -}       [ ['J','a','b','i','r','i'] ],

    MuFaCCiL                  `noun`    {- <mu^gabbir> -}      [ unwords [ ['b','o','n','e'], ['s','e','t','t','e','r'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MaFCUL                    `adj`     {- <ma^gbUr> -}        [ ['f','o','r','c','e','d'], ['c','o','m','p','e','l','l','e','d'] ],

    MuFCaL                    `adj`     {- <mu^gbar> -}        [ ['f','o','r','c','e','d'], ['c','o','m','p','e','l','l','e','d'] ],

    FuCLAn                    `noun`    {- <^gubrAn> -}        [ ['G','i','b','r','a','n'], ['J','u','b','r','a','n'] ],

    MutaFaCCiL                `adj`     {- <muta^gabbir> -}    [ ['t','y','r','a','n','t'] ],

    FaCaL |<< "Ut"            `noun`    {- <^gabarUt> -}       [ ['o','m','n','i','p','o','t','e','n','c','e'], ['m','i','g','h','t'] ] ]


cluster_8   = cluster

 |> "^g b s" <| [

    FaCCaL                    `verb`    {- <^gabbas> -}        [ ['p','l','a','s','t','e','r'], unwords [ ['p','u','t'], ['i','n'], "a", ['c','a','s','t'] ] ],

    FiCL                      `noun`    {- <^gibs> -}          [ ['g','y','p','s','u','m'], unwords [ ['p','l','a','s','t','e','r'], ['o','f'], ['P','a','r','i','s'] ] ],

    FaCCAL |< aT              `noun`    {- <^gabbAsaT> -}      [ unwords [ ['g','y','p','s','u','m'], ['q','u','a','r','r','y'] ], unwords [ ['p','l','a','s','t','e','r'], ['k','i','l','n'] ] ] ]


cluster_9   = cluster

 |> "^g b l" <| [

    FaCaL                     `verb`    {- <^gabal> -}         [ ['m','o','l','d'], ['k','n','e','a','d'], ['c','r','e','a','t','e'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FiCiLL |< aT              `noun`    {- <^gibillaT> -}      [ ['d','i','s','p','o','s','i','t','i','o','n'], ['t','e','m','p','e','r'] ]
                              `plural`     FiCiLL |< At,

    FiCL |< aT                `noun`    {- <^giblaT> -}        [ ['d','i','s','p','o','s','i','t','i','o','n'], ['t','e','m','p','e','r'] ]
                              `plural`     FiCL |< At ]

 |> "^g b l" <| [

    FaCaL                     `noun`    {- <^gabal> -}         [ ['m','o','u','n','t','a','i','n'] ]
                              `plural`     HaFCAL
                              `plural`     FiCAL,

    FaCaL |< Iy               `noun`    {- <^gabalIy> -}       [ ['m','o','u','n','t','a','i','n','e','e','r'], ['h','i','g','h','l','a','n','d','e','r'] ]
                              `plural`     FaCaL |< Iy |< Un
                              `femini`     FaCaL |< Iy |< aT,

    FaCaL |< Iy               `adj`     {- <^gabalIy> -}       [ ['m','o','u','n','t','a','i','n','o','u','s'] ],

    FaCaL |<< "Aw" |< Iy      `noun`    {- <^gabalAwIy> -}     [ ['m','o','u','n','t','a','i','n','e','e','r'] ],

    FaCaL |<< "Aw" |< Iy      `noun`    {- <^gabalAwIy> -}     [ ['G','a','b','a','l','a','w','i'] ],

    FaCaL                     `noun`    {- <^gabal> -}         [ ['J','a','b','a','l'] ],

    FuCayL                    `noun`    {- <^gubayl> -}        [ ['J','u','b','a','y','l'] ],

    FaCaL |<< "Ay" |< aT      `noun`    {- <^gabalAyaT> -}     [ ['g','r','o','t','t','o'], ['c','a','v','e'] ]
                              `plural`     FaCaL |<< "Ay" |< At,

    FaCL |< aT                `noun`    {- <^gablaT> -}        [ ['J','a','b','l','e','h'] ] ]


cluster_10  = cluster

 |> "^g b n" <| [

    FaCuL                     `verb`    {- <^gabun> -}         [ unwords [ ['b','e'], "a", ['c','o','w','a','r','d'] ], unwords [ ['b','e'], ['f','e','a','r','f','u','l'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gabban> -}        [ unwords [ ['m','a','k','e'], ['c','u','r','d','l','e'] ], unwords [ ['c','a','l','l'], "a", ['c','o','w','a','r','d'] ] ],

    TaFaCCaL                  `verb`    {- <ta^gabban> -}      [ ['c','u','r','d','l','e'] ],

    FuCL                      `noun`    {- <^gubn> -}          [ ['c','o','w','a','r','d','i','c','e'] ],

    FaCAL |< aT               `noun`    {- <^gabAnaT> -}       [ ['c','o','w','a','r','d','i','c','e'] ],

    FuCL                      `noun`    {- <^gubn> -}          [ ['c','h','e','e','s','e'] ]
                              `plural`     FuCUL,

    FaCAL                     `noun`    {- <^gabAn> -}         [ ['c','o','w','a','r','d'] ]
                              `plural`     FuCaLA'
                              `femini`     FaCAL |< aT,

    FaCAL                     `adj`     {- <^gabAn> -}         [ ['c','o','w','a','r','d','l','y'] ]
                              `plural`     FuCaLA',

    FaCCAL                    `noun`    {- <^gabbAn> -}        [ unwords [ ['c','h','e','e','s','e'], ['m','e','r','c','h','a','n','t'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCIL                     `noun`    {- <^gabIn> -}         [ ['f','o','r','e','h','e','a','d'], ['b','r','o','w'] ],

    FuCuL                     `noun`    {- <^gubun> -}         [ ['f','r','o','n','t','s'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     HaFCuL,

    FaCIL |< Iy               `adj`     {- <^gabInIy> -}       [ ['f','r','o','n','t','a','l'] ],

    HaFCaL                    `adj`     {- <'a^gban> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['c','o','w','a','r','d','l','y'] ] ],

    FaCCAL |< aT              `noun`    {- <^gabbAnaT> -}      [ ['c','e','m','e','t','e','r','y'] ]
                              `plural`     FaCCAL |< At,

    MaFCaL |< aT              `noun`    {- <ma^gbanaT> -}      [ unwords [ ['c','h','e','e','s','e'], ['d','a','i','r','y'] ] ],

    TaFCIL                    `noun`    {- <ta^gbIn> -}        [ unwords [ ['c','h','e','e','s','e'], ['m','a','k','i','n','g'] ] ]
                              `plural`     TaFCIL |< At ]


cluster_11  = cluster

 |> ['^','g','A','b','U','n'] <| [

    _____                     `xtra`    {- <^gAbUn> -}         [ ['G','a','b','o','n'] ],

    _____ |< Iy               `noun`    {- <^gAbUnIy> -}       [ ['G','a','b','o','n','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy               `adj`     {- <^gAbUnIy> -}       [ ['G','a','b','o','n','i','a','n'] ] ]


cluster_12  = cluster

 |> "^g b h" <| [

    FaCaL                     `verb`    {- <^gabah> -}         [ ['c','o','n','f','r','o','n','t'], ['f','a','c','e'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <^gAbah> -}         [ ['c','o','n','f','r','o','n','t'], ['d','e','f','y'] ],

    TaFACaL                   `verb`    {- <ta^gAbah> -}       [ ['c','o','n','f','r','o','n','t'] ],

    FaCL |< aT                `noun`    {- <^gabhaT> -}        [ ['f','r','o','n','t'], unwords [ ['f','r','o','n','t'], ['l','i','n','e'] ] ]
                              `plural`     FiCAL
                              `plural`     FaCaL |< At,

    TaFCIL                    `noun`    {- <ta^gbIh> -}        [ ['r','e','s','i','s','t','a','n','c','e'], ['o','p','p','o','s','i','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mu^gAbahaT> -}     [ ['c','o','n','f','r','o','n','t','a','t','i','o','n'], ['o','p','p','o','s','i','t','i','o','n'] ] ]


cluster_13  = cluster

 |> ['^','g','U','t'] <| [

    _____                     `noun`    {- <^gUt> -}           [ unwords [ ['j','u','t','e'], ['f','i','b','e','r'] ] ] ]


cluster_14  = cluster

 |> "^g _t r" <| [

    FaCIL                     `noun`    {- <^ga_tIr> -}        [ ['J','a','t','h','i','r'] ] ]


cluster_15  = cluster

 |> "^g _t l" <| [

    FaCL                      `adj`     {- <^ga_tl> -}         [ ['t','h','i','c','k'], ['d','e','n','s','e'] ] ]


cluster_16  = cluster

 |> "^g _t l q" <| [

    KiRDIS                    `noun`    {- <^gi_tlIq> -}       [ ['c','a','t','h','o','l','i','c','o','s'], unwords [ ['p','r','i','m','a','t','e'], ['o','f'], ['t','h','e'], ['A','r','m','e','n','i','a','n'], ['c','h','u','r','c','h'] ] ]
                              `plural`     KaRADiS |< aT ]


cluster_17  = cluster

 |> "^g _t m" <| [

    FaCaL                     `verb`    {- <^ga_tam> -}        [ ['b','e','s','e','t'], ['s','q','u','a','t'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCL |< aT                `noun`    {- <^ga_tmaT> -}       [ ['m','o','t','i','o','n','l','e','s','s'] ],

    FuCAL                     `noun`    {- <^gu_tAm> -}        [ ['n','i','g','h','t','m','a','r','e'] ]
                              `plural`     FACUL,

    FuCLAn                    `noun`    {- <^gu_tmAn> -}       [ ['c','o','r','p','s','e'], ['b','o','d','y'] ]
                              `plural`     FuCLAn |< At,

    FuCLAn |< Iy              `adj`     {- <^gu_tmAnIy> -}     [ ['b','o','d','i','l','y'], ['c','o','r','p','o','r','e','a','l'] ],

    FACiL                     `adj`     {- <^gA_tim> -}        [ ['s','q','u','a','t','t','i','n','g'], ['p','r','o','n','e'] ]
                              `plural`     FuCCaL
                              `plural`     FACiL |< Un ]


cluster_18  = cluster

 |> ['^','g','u','.','h','A'] <| [

    _____                     `noun`    {- <^gu.hA> -}         [ ['J','u','h','a'] ] ]


cluster_19  = cluster

 |> "^g .h d" <| [

    FaCaL                     `verb`    {- <^ga.had> -}        [ ['d','e','n','y'], ['d','i','s','a','v','o','w'], ['r','e','j','e','c','t'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <^ga.hd> -}         [ ['d','e','n','i','a','l'], ['r','e','j','e','c','t','i','o','n'] ],

    FuCUL                     `noun`    {- <^gu.hUd> -}        [ ['d','e','n','i','a','l'], ['r','e','j','e','c','t','i','o','n'] ],

    FACiL                     `noun`    {- <^gA.hid> -}        [ ['d','e','n','i','e','r'], ['i','n','f','i','d','e','l'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT ]


cluster_20  = cluster

 |> "^g .h r" <| [

    FaCaL                     `verb`    {- <^ga.har> -}        [ ['h','i','d','e'] ]
                              `imperf`     FCaL,

    InFaCaL                   `verb`    {- <in^ga.har> -}      [ ['h','i','d','e'] ],

    IFtaCaL                   `verb`    {- <i^gta.har> -}      [ unwords [ ['s','e','e','k'], ['r','e','f','u','g','e'] ] ],

    FuCL                      `noun`    {- <^gu.hr> -}         [ ['h','o','l','e'], ['b','u','r','r','o','w'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL ]


cluster_21  = cluster

 |> "^g .h ^s" <| [

    FaCL                      `noun`    {- <^ga.h^s> -}        [ unwords [ ['y','o','u','n','g'], ['d','o','n','k','e','y'] ] ]
                              `plural`     FiCLAn
                              `plural`     HaFCAL
                              `plural`     FiCAL
                              `femini`     FaCL |< aT,

    FuCUL                     `noun`    {- <^gu.hU^s> -}       [ ['h','o','r','s','e','s'] ] ]


cluster_22  = cluster

 |> "^g .h .z" <| [

    FaCaL                     `verb`    {- <^ga.ha.z> -}       [ ['p','r','o','t','r','u','d','e'], ['s','t','a','r','e'] ]
                              `imperf`     FCaL,

    FuCUL                     `noun`    {- <^gu.hU.z> -}       [ ['p','r','o','t','r','u','s','i','o','n'] ],

    FACiL                     `noun`    {- <^gA.hi.z> -}       [ ['J','a','h','i','z'] ] ]


cluster_23  = cluster

 |> "^g .h f" <| [

    FaCaL                     `verb`    {- <^ga.haf> -}        [ unwords [ ['p','e','e','l'], ['o','f','f'] ], ['s','i','d','e'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <^gA.haf> -}        [ ['f','o','l','l','o','w'], ['a','p','p','r','o','a','c','h'] ],

    HaFCaL                    `verb`    {- <'a^g.haf> -}       [ ['h','a','r','m'], ['r','u','i','n'] ],

    HiFCAL                    `noun`    {- <'i^g.hAf> -}       [ ['i','n','j','u','s','t','i','c','e'], ['p','r','e','j','u','d','i','c','e'] ]
                              `plural`     HiFCAL |< At,

    MuFCiL                    `adj`     {- <mu^g.hif> -}       [ ['u','n','f','a','i','r'], ['b','i','a','s','e','d'] ] ]


cluster_24  = cluster

 |> "^g .h f l" <| [

    TaKaRDaS                  `verb`    {- <ta^ga.hfal> -}     [ ['m','a','s','s'], ['t','h','r','o','n','g'] ],

    KaRDaS                    `noun`    {- <^ga.hfal> -}       [ ['m','u','l','t','i','t','u','d','e'], ['a','r','m','y'] ]
                              `plural`     KaRADiS ]


cluster_25  = cluster

 |> "^g .h m" <| [

    FaCIL                     `noun`    {- <^ga.hIm> -}        [ ['h','e','l','l'] ],

    FaCIL |< Iy               `adj`     {- <^ga.hImIy> -}      [ ['h','e','l','l','i','s','h'], ['i','n','f','e','r','n','a','l'] ] ]


cluster_26  = cluster

 |> "^g _h f" <| [

    FaCaL                     `verb`    {- <^ga_haf> -}        [ ['b','o','a','s','t'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL ]


cluster_27  = cluster

 |> ['^','g','U','d','U'] <| [

    _____                     `noun`    {- <^gUdU> -}          [ ['j','u','d','o'] ] ]


cluster_28  = cluster

 |> "^g d b" <| [

    FaCuL                     `verb`    {- <^gadub> -}         [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['b','e'], ['a','r','i','d'] ] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <^gadab> -}         [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['b','e'], ['a','r','i','d'] ] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'a^gdab> -}        [ unwords [ ['b','e'], ['b','a','r','r','e','n'] ], unwords [ ['e','x','p','l','o','d','e'], ['i','n'], ['t','h','e'], ['b','a','r','r','e','l'] ] ],

    FuCUL |< aT               `noun`    {- <^gudUbaT> -}       [ ['b','a','r','r','e','n','n','e','s','s'], ['s','t','e','r','i','l','i','t','y'] ],

    FaCL                      `noun`    {- <^gadb> -}          [ ['d','r','o','u','g','h','t'], ['s','t','e','r','i','l','i','t','y'] ],

    FaCIL                     `adj`     {- <^gadIb> -}         [ ['b','a','r','r','e','n'], ['s','t','e','r','i','l','e'] ],

    HaFCaL                    `adj`     {- <'a^gdab> -}        [ ['b','a','r','r','e','n'], ['s','t','e','r','i','l','e'] ]
                              `femini`     FaCLA',

    MuFCiL                    `adj`     {- <mu^gdib> -}        [ ['b','a','r','r','e','n'], ['s','t','e','r','i','l','e'], ['u','n','p','r','o','d','u','c','t','i','v','e'] ] ]


cluster_29  = cluster

 |> "^g d _t" <| [

    FaCaL                     `noun`    {- <^gada_t> -}        [ ['g','r','a','v','e'], ['t','o','m','b'] ]
                              `plural`     HaFCAL ]


cluster_30  = cluster

 |> "^g d ^g d" <| [

    KuRDuS                    `noun`    {- <^gud^gud> -}       [ ['c','r','i','c','k','e','t'] ]
                              `plural`     KaRADiS ]


cluster_31  = cluster

 |> "^g d .h" <| [

    FaCaL                     `verb`    {- <^gada.h> -}        [ ['s','t','i','r'], ['m','i','x'] ]
                              `imperf`     FCaL ]


cluster_32  = cluster

 |> "^g d r" <| [

    FaCiL                     `verb`    {- <^gadir> -}         [ unwords [ ['h','a','v','e'], ['s','m','a','l','l','p','o','x'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^gaddar> -}        [ unwords [ ['h','a','v','e'], ['s','m','a','l','l','p','o','x'] ] ],

    FuCaL |< Iy               `adj`     {- <^gudarIy> -}       [ ['s','m','a','l','l','p','o','x'] ],

    MaFCUL                    `adj`     {- <ma^gdUr> -}        [ unwords [ ['h','a','v','i','n','g'], ['s','m','a','l','l','p','o','x'] ], unwords [ ['p','o','c','k'], "-", ['m','a','r','k','e','d'] ] ],

    MuFaCCaL                  `adj`     {- <mu^gaddar> -}      [ unwords [ ['h','a','v','i','n','g'], ['s','m','a','l','l','p','o','x'] ], unwords [ ['p','o','c','k'], "-", ['m','a','r','k','e','d'] ] ],

    MuFaCCaL |< aT            `noun`    {- <mu^gaddaraT> -}    [ unwords [ ['m','u','j','a','d','d','a','r','a'], "(", ['c','r','a','c','k','e','d'], ['w','h','e','a','t'], ['c','o','o','k','e','d'], ['w','i','t','h'], ['l','e','n','t','i','l','s'], ['a','n','d'], ['b','r','o','w','n','e','d'], ['c','a','n','d','i','e','d'], ['o','n','i','o','n','s'], ")" ] ] ]

 |> "^g d r" <| [

    FaCuL                     `verb`    {- <^gadur> -}         [ unwords [ ['b','e'], ['s','u','i','t','a','b','l','e'] ], ['b','e','h','o','o','v','e'] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'a^gdar> -}        [ unwords [ ['m','a','k','e'], ['w','o','r','t','h','y'] ], unwords [ ['b','e','c','o','m','e'], ['w','o','r','t','h','y'] ] ],

    FaCIL                     `adj`     {- <^gadIr> -}         [ ['w','o','r','t','h','y'], ['a','p','p','r','o','p','r','i','a','t','e'] ]
                              `plural`     FuCaLA'
                              `plural`     FaCIL |< Un,

    FaCIL                     `noun`    {- <^gadIr> -}         [ ['J','a','d','i','r'] ],

    HaFCaL                    `adj`     {- <'a^gdar> -}        [ ['w','o','r','t','h','i','e','r'], unwords [ ['m','o','r','e'], ['s','u','i','t','a','b','l','e'] ] ],

    FaCAL |< aT               `noun`    {- <^gadAraT> -}       [ ['w','o','r','t','h','i','n','e','s','s'], ['a','p','t','i','t','u','d','e'], ['m','e','r','i','t'] ],

    FiCAL                     `noun`    {- <^gidAr> -}         [ ['w','a','l','l'] ]
                              `plural`     FuCLAn,

    FiCAL |< Iy               `adj`     {- <^gidArIy> -}       [ ['m','u','r','a','l'], ['w','a','l','l'] ] ]


cluster_33  = cluster

 |> "^g d `" <| [

    FaCaL                     `verb`    {- <^gada`> -}         [ ['a','m','p','u','t','a','t','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `adj`     {- <'a^gda`> -}        [ ['m','u','t','i','l','a','t','e','d'] ],

    FaCaL                     `noun`    {- <^gada`> -}         [ ['y','o','u','t','h'] ]
                              `plural`     FiCLAn,

    FaCaL                     `adj`     {- <^gada`> -}         [ ['s','t','r','o','n','g'], ['m','a','c','h','o'] ]
                              `plural`     FiCLAn ]


cluster_34  = cluster

 |> "^g d f" <| [

    FaCCaL                    `verb`    {- <^gaddaf> -}        [ ['b','l','a','s','p','h','e','m','e'], ['c','u','r','s','e'] ],

    TaFCIL                    `noun`    {- <ta^gdIf> -}        [ ['i','m','p','r','e','c','a','t','i','o','n'], ['b','l','a','s','p','h','e','m','y'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <mu^gaddif> -}      [ ['b','l','a','s','p','h','e','m','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]

 |> "^g d f" <| [

    FaCaL                     `verb`    {- <^gadaf> -}         [ ['r','o','w'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <^gaddaf> -}        [ ['r','o','w'] ],

    TaFCIL                    `noun`    {- <ta^gdIf> -}        [ ['r','o','w','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <mu^gaddif> -}      [ ['r','o','w','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MiFCAL                    `noun`    {- <mi^gdAf> -}        [ ['o','a','r'] ]
                              `plural`     MaFACIL ]


cluster_35  = cluster

 |> "^g d l" <| [

    FaCaL                     `verb`    {- <^gadal> -}         [ ['t','w','i','s','t'], ['b','r','a','i','d'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <^gadil> -}         [ unwords [ ['b','r','o','a','d','e','n'], ['o','u','t'] ], ['g','r','o','w'], unwords [ ['b','e'], ['r','e','i','n','f','o','r','c','e','d'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^gaddal> -}        [ ['b','r','a','i','d'] ],

    FACaL                     `verb`    {- <^gAdal> -}         [ ['q','u','a','r','r','e','l'], ['d','e','b','a','t','e'] ],

    TaFACaL                   `verb`    {- <ta^gAdal> -}       [ ['q','u','a','r','r','e','l'], ['d','e','b','a','t','e'] ],

    FaCaL                     `noun`    {- <^gadal> -}         [ ['c','o','n','t','r','o','v','e','r','s','y'], ['q','u','a','r','r','e','l'], ['d','e','b','a','t','e'] ],

    FaCaL |< Iy               `adj`     {- <^gadalIy> -}       [ ['c','o','n','t','r','o','v','e','r','s','i','a','l'] ],

    FaCaL |< Iy |< aT         `noun`    {- <^gadalIyaT> -}     [ ['d','i','a','l','e','c','t','i','c','s'] ],

    FaCCAL                    `adj`     {- <^gaddAl> -}        [ ['d','i','s','p','u','t','a','t','i','o','u','s'] ],

    MiFCAL                    `adj`     {- <mi^gdAl> -}        [ ['d','i','s','p','u','t','a','t','i','o','u','s'] ],

    FaCIL |< aT               `noun`    {- <^gadIlaT> -}       [ ['b','r','a','i','d'], ['t','r','e','s','s'] ]
                              `plural`     FaCA'iL,

    MiFCAL                    `noun`    {- <mi^gdAl> -}        [ ['f','l','a','g','s','t','o','n','e'] ]
                              `plural`     MaFACIL,

    FiCAL                     `noun`    {- <^gidAl> -}         [ ['d','e','b','a','t','e'], ['q','u','a','r','r','e','l'] ],

    MuFACaL |< aT             `noun`    {- <mu^gAdalaT> -}     [ ['d','e','b','a','t','e'], ['q','u','a','r','r','e','l'] ],

    MaFCUL                    `adj`     {- <ma^gdUl> -}        [ ['t','w','i','s','t','e','d'], ['b','r','a','i','d','e','d'] ],

    MuFACiL                   `noun`    {- <mu^gAdil> -}       [ ['d','i','s','p','u','t','a','n','t'], ['o','p','p','o','n','e','n','t'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT ]


cluster_36  = cluster

 |> ['^','g','i','d','`','U','n'] <| [

    _____                     `noun`    {- <^gid`Un> -}        [ ['G','i','d','e','o','n'] ] ]


cluster_37  = cluster

 |> "^g _d b" <| [

    FaCaL                     `verb`    {- <^ga_dab> -}        [ ['p','u','l','l'], ['a','t','t','r','a','c','t'] ]
                              `imperf`     FCiL,

    FACaL                     `verb`    {- <^gA_dab> -}        [ ['c','o','n','t','e','n','d'], ['c','o','m','p','e','t','e'] ],

    TaFACaL                   `verb`    {- <ta^gA_dab> -}      [ ['a','t','t','r','a','c','t'], ['c','o','n','t','e','n','d'] ],

    InFaCaL                   `verb`    {- <in^ga_dab> -}      [ ['g','r','a','v','i','t','a','t','e'], unwords [ ['b','e'], ['a','t','t','r','a','c','t','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i^gta_dab> -}      [ ['a','t','t','r','a','c','t'], ['a','l','l','u','r','e'] ],

    FaCL                      `noun`    {- <^ga_db> -}         [ ['a','t','t','r','a','c','t','i','o','n'] ],

    FaCCAL                    `adj`     {- <^ga_d_dAb> -}      [ ['a','t','t','r','a','c','t','i','v','e'], ['a','l','l','u','r','i','n','g'] ],

    HaFCaL                    `adj`     {- <'a^g_dab> -}       [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['a','t','t','r','a','c','t','i','v','e'] ] ],

    TaFACuL                   `noun`    {- <ta^gA_dub> -}      [ ['i','n','t','e','r','a','c','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    InFiCAL                   `noun`    {- <in^gi_dAb> -}      [ ['a','t','t','r','a','c','t','i','o','n'], ['t','e','n','d','e','n','c','y'], ['e','n','t','i','c','e','m','e','n','t'] ]
                              `plural`     InFiCAL |< At,

    IFtiCAL                   `noun`    {- <i^gti_dAb> -}      [ ['a','t','t','r','a','c','t','i','o','n'], ['t','e','n','d','e','n','c','y'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <^gA_dib> -}        [ ['a','t','t','r','a','c','t','i','v','e'], ['a','l','l','u','r','i','n','g'] ],

    FACiL |< Iy |< aT         `noun`    {- <^gA_dibIyaT> -}    [ ['g','r','a','v','i','t','a','t','i','o','n'], ['g','r','a','v','i','t','a','t','i','o','n','a','l'] ],

    MaFCUL                    `adj`     {- <ma^g_dUb> -}       [ ['a','t','t','r','a','c','t','e','d'], ['i','n','s','a','n','e'], ['l','u','n','a','t','i','c'] ]
                              `plural`     MaFACIL,

    MaFCUL                    `noun`    {- <ma^g_dUb> -}       [ ['M','a','j','d','o','u','b'], ['M','e','j','d','o','u','b'] ],

    MutaFACiL                 `adj`     {- <muta^gA_dib> -}    [ unwords [ ['m','u','t','u','a','l','l','y'], ['a','t','t','r','a','c','t','e','d'] ] ],

    MunFaCaL                  `adj`     {- <mun^ga_dab> -}     [ ['a','t','t','r','a','c','t','e','d'], ['t','e','n','d','i','n','g'] ] ]


cluster_38  = cluster

 |> "^g _d r" <| [

    FaCaL                     `verb`    {- <^ga_dar> -}        [ ['u','p','r','o','o','t'], ['e','x','t','r','a','c','t'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^ga_d_dar> -}      [ unwords [ ['e','x','t','r','a','c','t'], ['t','h','e'], ['r','o','o','t'] ], unwords [ ['t','a','k','e'], ['r','o','o','t'] ] ],

    InFaCaL                   `verb`    {- <in^ga_dar> -}      [ unwords [ ['b','e'], ['e','x','t','r','a','c','t','e','d'] ], unwords [ ['b','e'], ['u','p','r','o','o','t','e','d'] ] ],

    FiCL                      `noun`    {- <^gi_dr> -}         [ ['r','o','o','t'], ['s','t','u','b'] ]
                              `plural`     FuCUL,

    FaCL                      `noun`    {- <^ga_dr> -}         [ ['r','o','o','t'], ['s','t','u','b'] ]
                              `plural`     FuCUL,

    FiCL |< Iy                `adj`     {- <^gi_drIy> -}       [ ['r','a','d','i','c','a','l'], ['r','o','o','t'] ],

    TaFCIL                    `noun`    {- <ta^g_dIr> -}       [ ['e','v','o','l','u','t','i','o','n'], unwords [ ['r','o','o','t'], ['e','x','t','r','a','c','t','i','o','n'] ] ]
                              `plural`     TaFCIL |< At ]


cluster_39  = cluster

 |> "^g _d `" <| [

    FaCaL                     `noun`    {- <^ga_da`> -}        [ ['y','o','u','t','h'] ]
                              `plural`     FuCLAn,

    FaCaL |< aT |<< "aN"      `noun`    {- <^ga_da`aTaN> -}    [ ['a','g','a','i','n'], unwords [ ['o','n','c','e'], ['m','o','r','e'] ] ],

    FaCaL |<< "aN"            `noun`    {- <^ga_da`aN> -}      [ ['a','g','a','i','n'], unwords [ ['o','n','c','e'], ['m','o','r','e'] ] ],

    FiCL                      `noun`    {- <^gi_d`> -}         [ ['t','r','u','n','k'], ['s','t','u','m','p'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FiCL |< Iy                `adj`     {- <^gi_d`Iy> -}       [ ['t','r','u','n','c','a','l'], ['t','o','r','s','o'] ] ]


cluster_40  = cluster

 |> "^g _d f" <| [

    FaCCaL                    `verb`    {- <^ga_d_daf> -}      [ ['r','o','w'] ],

    MiFCAL                    `noun`    {- <mi^g_dAf> -}       [ ['o','a','r'] ]
                              `plural`     MaFACIL ]


cluster_41  = cluster

 |> "^g _d l" <| [

    FaCiL                     `verb`    {- <^ga_dil> -}        [ unwords [ ['b','e'], ['h','a','p','p','y'] ], ['r','e','j','o','i','c','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a^g_dal> -}       [ unwords [ ['m','a','k','e'], ['h','a','p','p','y'] ], ['g','l','a','d','d','e','n'] ],

    FiCL                      `noun`    {- <^gi_dl> -}         [ ['s','t','u','m','p'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FaCaL                     `noun`    {- <^ga_dal> -}        [ ['h','a','p','p','i','n','e','s','s'], ['g','a','i','e','t','y'] ],

    FaCiL                     `adj`     {- <^ga_dil> -}        [ ['h','a','p','p','y'], ['g','a','y'] ]
                              `plural`     FuCLAn,

    FaCLAn                    `adj`     {- <^ga_dlAn> -}       [ ['h','a','p','p','y'], ['g','a','y'] ] ]


cluster_42  = cluster

 |> "^g _d m" <| [

    FaCaL                     `verb`    {- <^ga_dam> -}        [ unwords [ ['c','u','t'], ['o','f','f'] ], ['e','x','c','i','s','e'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <^ga_dim> -}        [ unwords [ ['h','a','v','e'], ['l','e','p','r','o','s','y'] ] ]
                              `imperf`     FCaL,

    FiCL                      `noun`    {- <^gi_dm> -}         [ ['r','o','o','t'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FuCAL                     `noun`    {- <^gu_dAm> -}        [ ['l','e','p','r','o','s','y'] ],

    FuCAL |< aT               `noun`    {- <^gu_dAmaT> -}      [ ['s','t','u','b','b','l','e'] ],

    HaFCaL                    `adj`     {- <'a^g_dam> -}       [ ['m','u','t','i','l','a','t','e','d'], ['l','e','p','r','o','u','s'] ]
                              `plural`     FaCLY,

    MaFCUL                    `adj`     {- <ma^g_dUm> -}       [ ['l','e','p','r','o','u','s'] ] ]


cluster_43  = cluster

 |> "^g _d m r" <| [

    KuRDUS                    `noun`    {- <^gu_dmUr> -}       [ ['s','t','u','m','p'] ]
                              `plural`     KaRADIS ]


cluster_44  = cluster

 |> "^g r b" <| [

    FaCiL                     `verb`    {- <^garib> -}         [ unwords [ ['b','e'], ['m','a','n','g','y'] ], ['f','a','d','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^garrab> -}        [ ['t','e','s','t'], ['t','r','y'], ['a','t','t','e','m','p','t'] ],

    FaCaL                     `noun`    {- <^garab> -}         [ ['m','a','n','g','e'], ['s','c','a','b','i','e','s'] ],

    FaCiL                     `adj`     {- <^garib> -}         [ ['m','a','n','g','y'], ['s','c','a','b','b','y'] ],

    HaFCaL                    `adj`     {- <'a^grab> -}        [ ['m','a','n','g','y'], ['s','c','a','b','b','y'] ]
                              `plural`     FuCL
                              `plural`     FaCLAn
                              `femini`     FaCLA',

    FiCAL                     `noun`    {- <^girAb> -}         [ ['s','a','c','k'], ['c','a','s','e'] ]
                              `plural`     FuCuL
                              `plural`     HaFCiL |< aT,

    FuCAL                     `noun`    {- <^gurAb> -}         [ ['s','t','o','c','k','i','n','g'], ['s','o','c','k'] ]
                              `plural`     FuCAL |< At,

    FawCaL                    `noun`    {- <^gawrab> -}        [ ['s','t','o','c','k','i','n','g'], ['s','o','c','k'] ]
                              `plural`     FawACiL,

    FaCIL                     `noun`    {- <^garIb> -}         [ unwords [ ['p','a','t','c','h'], ['o','f'], ['l','a','n','d'] ] ]
                              `plural`     FaCIL |< At,

    TaFCiL |< aT              `noun`    {- <ta^gribaT> -}      [ ['e','x','p','e','r','i','e','n','c','e'], ['e','x','p','e','r','i','m','e','n','t'] ]
                              `plural`     TaFACiL,

    TaFCIL                    `noun`    {- <ta^grIb> -}        [ ['t','r','i','a','l'], ['t','e','s','t'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta^grIbIy> -}      [ ['t','r','i','a','l'], ['e','x','p','e','r','i','m','e','n','t','a','l'] ],

    MuFaCCiL                  `noun`    {- <mu^garrib> -}      [ ['t','e','s','t','e','r'], ['e','x','p','e','r','i','m','e','n','t','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <mu^garrab> -}      [ ['t','e','s','t','e','d'] ] ]


cluster_45  = cluster

 |> "^g r b _d" <| [

    KaRDaS |< aT              `noun`    {- <^garba_daT> -}     [ ['s','w','i','n','d','l','e'], ['d','e','c','e','p','t','i','o','n'] ],

    KuRDuS                    `noun`    {- <^gurbu_d> -}       [ ['i','m','p','o','s','t','o','r'], ['s','w','i','n','d','l','e','r'] ]
                              `plural`     KaRADiS |< aT ]


cluster_46  = cluster

 |> "^g r b z" <| [

    KaRDaS |< aT              `noun`    {- <^garbazaT> -}      [ ['s','w','i','n','d','l','e'], ['d','e','c','e','p','t','i','o','n'] ],

    KuRDuS                    `noun`    {- <^gurbuz> -}        [ ['i','m','p','o','s','t','o','r'], ['s','w','i','n','d','l','e','r'] ]
                              `plural`     KaRADiS |< aT ]


cluster_47  = cluster

 |> "^g r b `" <| [

    KaRDUS                    `noun`    {- <^garbU`> -}        [ ['j','e','r','b','o','a'] ]
                              `plural`     KaRADIS ]


cluster_48  = cluster

 |> ['^','g','a','r','a','b','a','n','d'] <| [

    _____ |< Iy |< aT         `noun`    {- <^garabandIyaT> -}  [ ['k','n','a','p','s','a','c','k'], ['p','o','u','c','h'] ] ]


cluster_49  = cluster

 |> "^g r _t m" <| [

    TaKaRDaS                  `verb`    {- <ta^gar_tam> -}     [ unwords [ ['t','a','k','e'], ['r','o','o','t'] ], ['g','e','r','m','i','n','a','t','e'] ],

    KuRDUS                    `noun`    {- <^gur_tUm> -}       [ ['g','e','r','m'], ['m','i','c','r','o','b','e'] ]
                              `plural`     KaRADIS,

    KuRDUS |< Iy              `adj`     {- <^gur_tUmIy> -}     [ ['g','e','r','m'], ['b','a','c','t','e','r','i','a','l'] ] ]


cluster_50  = cluster

 |> "^g r ^g" <| [

    FaCAL                     `noun`    {- <^garA^g> -}        [ ['g','a','r','a','g','e'] ]
                              `plural`     FaCAL |< At ]


cluster_51  = cluster

 |> "^g r ^g r" <| [

    KaRDaS                    `verb`    {- <^gar^gar> -}       [ ['g','a','r','g','l','e'], ['d','r','a','g'] ],

    TaKaRDaS                  `verb`    {- <ta^gar^gar> -}     [ unwords [ ['b','e'], ['g','a','r','g','l','e','d'] ], unwords [ ['b','e'], ['d','r','a','g','g','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <^gar^garaT> -}     [ ['g','a','r','g','l','i','n','g'], ['c','l','a','t','t','e','r'] ],

    KiRDiS                    `noun`    {- <^gir^gir> -}       [ ['b','e','a','n','s'] ],

    KiRDIS                    `noun`    {- <^gir^gIr> -}       [ ['w','a','t','e','r','c','r','e','s','s'] ] ]


cluster_52  = cluster

 |> "^g r .h" <| [

    FaCaL                     `verb`    {- <^gara.h> -}        [ ['w','o','u','n','d'], ['i','n','j','u','r','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <^garra.h> -}       [ ['c','h','a','l','l','e','n','g','e'], ['i','n','v','a','l','i','d','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <ta^garra.h> -}     [ unwords [ ['b','e'], ['w','o','u','n','d','e','d'] ], unwords [ ['b','e'], ['i','n','j','u','r','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i^gtara.h> -}      [ ['c','o','m','m','i','t'] ],

    FuCL                      `noun`    {- <^gur.h> -}         [ ['w','o','u','n','d'], ['i','n','j','u','r','y'] ]
                              `plural`     HaFCAL
                              `plural`     FiCAL
                              `plural`     FuCUL
                              `plural`     FuCUL |< At,

    FaCCAL                    `noun`    {- <^garrA.h> -}       [ ['s','u','r','g','e','o','n'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <^garrA.h> -}       [ ['J','a','r','r','a','h'] ],

    FiCAL |< aT               `noun`    {- <^girA.haT> -}      [ ['s','u','r','g','e','r','y'] ]
                              `plural`     FiCAL |< At,

    FiCAL |< Iy               `adj`     {- <^girA.hIy> -}      [ ['s','u','r','g','i','c','a','l'] ],

    FaCIL                     `noun`    {- <^garI.h> -}        [ ['w','o','u','n','d','e','d'], ['i','n','j','u','r','e','d'], ['h','u','r','t'] ]
                              `plural`     FaCLY,

    FaCIL                     `adj`     {- <^garI.h> -}        [ ['w','o','u','n','d','e','d'], ['i','n','j','u','r','e','d'], ['h','u','r','t'] ]
                              `plural`     FaCLY,

    TaFCIL                    `noun`    {- <ta^grI.h> -}       [ ['s','u','r','g','e','r','y'], ['s','l','a','n','d','e','r'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `adj`     {- <^gAri.h> -}        [ ['i','n','j','u','r','i','n','g'], ['p','r','e','d','a','t','o','r','y'] ],

    FACiL |< aT               `noun`    {- <^gAri.haT> -}      [ ['p','r','e','d','a','t','o','r','y'], ['e','x','t','r','e','m','i','t','i','e','s'] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <ma^grU.h> -}       [ ['w','o','u','n','d','e','d'], ['i','n','j','u','r','e','d'] ]
                              `plural`     MaFCUL |< Un
                              `plural`     MaFACIL ]


cluster_53  = cluster

 |> "^g r d" <| [

    FaCaL                     `verb`    {- <^garad> -}         [ ['r','e','m','o','v','e'], ['s','t','r','i','p'], unwords [ ['t','a','k','e'], ['s','t','o','c','k'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^garrad> -}        [ ['r','e','m','o','v','e'], ['s','t','r','i','p'] ],

    TaFaCCaL                  `verb`    {- <ta^garrad> -}      [ unwords [ ['b','e'], ['s','t','r','i','p','p','e','d'] ], ['r','e','n','o','u','n','c','e'] ],

    FaCL                      `noun`    {- <^gard> -}          [ ['i','n','v','e','n','t','o','r','y'], ['s','t','o','c','k','t','a','k','i','n','g'] ],

    FaCiL                     `adj`     {- <^garid> -}         [ ['b','a','r','r','e','n'] ],

    HaFCaL                    `adj`     {- <'a^grad> -}        [ ['b','a','r','r','e','n'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FaCAL                     `noun`    {- <^garAd> -}         [ ['l','o','c','u','s','t'] ],

    FaCIL                     `noun`    {- <^garId> -}         [ unwords [ ['p','a','l','m'], ['b','r','a','n','c','h','e','s'] ], ['j','a','v','e','l','i','n'] ],

    FaCIL |< aT               `noun`    {- <^garIdaT> -}       [ ['n','e','w','s','p','a','p','e','r'] ]
                              `plural`     FaCA'iL,

    TaFCIL                    `noun`    {- <ta^grId> -}        [ ['s','t','r','i','p','p','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< aT              `noun`    {- <ta^grIdaT> -}      [ unwords [ ['m','i','l','i','t','a','r','y'], ['d','e','t','a','c','h','m','e','n','t'] ], unwords [ ['e','x','p','e','d','i','t','i','o','n','a','r','y'], ['f','o','r','c','e'] ] ]
                              `plural`     TaFACIL,

    TaFCIL |< Iy              `adj`     {- <ta^grIdIy> -}      [ ['a','b','s','t','r','a','c','t'] ],

    TaFaCCuL                  `noun`    {- <ta^garrud> -}      [ ['f','r','e','e','d','o','m'], ['a','b','s','t','r','a','c','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCaL                  `noun`    {- <mu^garrad> -}      [ unwords [ ['n','o','t','h','i','n','g'], ['b','u','t'] ], ['m','e','r','e'], unwords [ ['f','o','r'], ['n','o'], ['r','e','a','s','o','n'], ['e','x','c','e','p','t'] ], unwords [ ['f','o','r'], ['t','h','e'], ['s','o','l','e'], ['r','e','a','s','o','n'] ] ],

    MuFaCCaL                  `adj`     {- <mu^garrad> -}      [ ['b','a','r','e'], ['p','u','r','e'] ],

    MutaFaCCiL                `adj`     {- <muta^garrid> -}    [ ['i','m','p','a','r','t','i','a','l'] ],

    FuCUL                     `noun`    {- <^gurUd> -}         [ unwords [ ['b','a','r','r','e','n'], ['a','r','e','a','s'] ] ] ]


cluster_54  = cluster

 |> "^g r d l" <| [

    KaRDaS                    `noun`    {- <^gardal> -}        [ ['b','u','c','k','e','t'], ['p','a','i','l'] ]
                              `plural`     KaRADiS ]


cluster_55  = cluster

 |> "^g r _d" <| [

    FuCaL                     `noun`    {- <^gura_d> -}        [ ['r','a','t'] ]
                              `plural`     FiCLAn
                              `plural`     FuCLAn ]


cluster_56  = cluster

 |> "^g r z" <| [

    FaCaL                     `verb`    {- <^garaz> -}         [ ['a','n','n','i','h','i','l','a','t','e'], unwords [ ['c','u','t'], ['o','f','f'] ] ]
                              `imperf`     FCuL,

    FuCL |< aT                `noun`    {- <^gurzaT> -}        [ ['b','u','n','d','l','e'], ['p','o','n','y','t','a','i','l'] ]
                              `plural`     FuCaL ]


cluster_57  = cluster

 |> "^g r s" <| [

    FiCL |< Iy |< aT          `noun`    {- <^girsIyaT> -}      [ ['j','e','r','s','e','y'] ]
                              `plural`     FiCL |< Iy |< At ]

 |> "^g r s" <| [

    FaCaL                     `verb`    {- <^garas> -}         [ ['r','i','n','g'], ['t','o','l','l'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <^garras> -}        [ unwords [ ['m','a','k','e'], ['i','n','u','r','e'] ], unwords [ ['s','o','r','e','l','y'], ['t','r','y'] ], ['d','i','s','c','r','e','d','i','t'] ],

    FaCL                      `noun`    {- <^gars> -}          [ ['s','o','u','n','d'], ['t','o','n','e'] ],

    FaCaL                     `noun`    {- <^garas> -}         [ ['b','e','l','l'] ]
                              `plural`     HaFCAL,

    FuCL |< aT                `noun`    {- <^gursaT> -}        [ ['d','e','f','a','m','a','t','i','o','n'], ['s','c','a','n','d','a','l'] ] ]


cluster_58  = cluster

 |> "^g r ^s" <| [

    FaCaL                     `verb`    {- <^gara^s> -}        [ ['g','r','a','t','e'], ['c','r','u','s','h'], ['g','r','i','n','d'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <^gar^s> -}         [ ['g','r','a','t','i','n','g'], ['s','c','r','a','p','i','n','g'] ],

    FaCIL                     `adj`     {- <^garI^s> -}        [ ['c','r','u','s','h','e','d'], ['g','r','o','u','n','d'] ],

    FaCCAL                    `noun`    {- <^garrA^s> -}       [ ['c','r','u','s','h','e','r'], ['g','r','i','n','d','e','r'] ]
                              `plural`     FaCCAL |< At,

    FACUL |< aT               `noun`    {- <^gArU^saT> -}      [ ['q','u','e','r','n'], unwords [ ['h','a','n','d'], ['m','i','l','l'] ] ]
                              `plural`     FawACIL,

    FaCaL                     `noun`    {- <^gara^s> -}        [ ['J','e','r','a','s','h'], ['J','a','r','a','s','h'] ] ]


cluster_59  = cluster

 |> "^g r .d" <| [

    FaCiL                     `verb`    {- <^gari.d> -}        [ ['c','h','o','k','e'], unwords [ ['b','e'], ['u','p','s','e','t'] ], unwords [ ['b','e'], ['m','o','v','e','d'] ] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <^gara.d> -}        [ ['c','h','o','k','e'], ['s','u','f','f','o','c','a','t','e'] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'a^gra.d> -}       [ ['a','l','a','r','m'], ['u','n','n','e','r','v','e'] ],

    FaCIL                     `noun`    {- <^garI.d> -}        [ ['c','h','o','k','i','n','g'] ] ]


cluster_60  = cluster

 |> "^g r `" <| [

    FaCaL                     `verb`    {- <^gara`> -}         [ ['a','b','s','o','r','b'], ['s','w','a','l','l','o','w'], ['d','e','v','o','u','r'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^garra`> -}        [ unwords [ ['m','a','k','e'], ['s','w','a','l','l','o','w'] ], unwords [ ['g','u','l','p'], ['d','o','w','n'] ] ],

    TaFaCCaL                  `verb`    {- <ta^garra`> -}      [ ['s','w','a','l','l','o','w'], ['d','r','i','n','k'] ],

    IFtaCaL                   `verb`    {- <i^gtara`> -}       [ ['s','w','a','l','l','o','w'], unwords [ ['g','u','l','p'], ['d','o','w','n'] ] ],

    FuCL |< aT                `noun`    {- <^gur`aT> -}        [ ['d','o','s','a','g','e'], ['g','u','l','p'] ]
                              `plural`     FuCL |< At
                              `plural`     FuCaL ]


cluster_61  = cluster

 |> "^g r f" <| [

    FaCaL                     `verb`    {- <^garaf> -}         [ unwords [ ['t','e','a','r'], ['o','u','t'] ], ['r','e','m','o','v','e'], unwords [ ['s','w','e','e','p'], ['a','w','a','y'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^garraf> -}        [ unwords [ ['c','a','r','r','y'], ['a','w','a','y'] ], unwords [ ['w','a','s','h'], ['a','w','a','y'] ] ],

    InFaCaL                   `verb`    {- <in^garaf> -}       [ unwords [ ['b','e'], ['s','w','e','p','t'], ['a','w','a','y'] ], unwords [ ['b','e'], ['c','a','r','r','i','e','d'], ['a','w','a','y'] ] ],

    IFtaCaL                   `verb`    {- <i^gtaraf> -}       [ unwords [ ['c','a','r','r','y'], ['a','w','a','y'] ], unwords [ ['w','a','s','h'], ['a','w','a','y'] ], unwords [ ['t','e','a','r'], ['o','u','t'] ] ],

    FaCL                      `noun`    {- <^garf> -}          [ ['s','h','o','v','e','l','i','n','g'], ['d','r','e','d','g','i','n','g'] ],

    FuCL                      `noun`    {- <^gurf> -}          [ ['b','l','u','f','f'], ['c','l','i','f','f'] ]
                              `plural`     FuCUL,

    FaCCAL |< aT              `noun`    {- <^garrAfaT> -}      [ ['r','a','k','e'], ['b','u','l','l','d','o','z','e','r'] ]
                              `plural`     FaCACIL
                              `plural`     FaCCAL |< At,

    MaFCaL                    `noun`    {- <ma^graf> -}        [ ['t','o','r','r','e','n','t'] ]
                              `plural`     MaFACiL,

    MiFCAL                    `noun`    {- <mi^grAf> -}        [ ['s','h','o','v','e','l'], ['t','r','o','w','e','l'], ['s','c','o','o','p'] ]
                              `plural`     MaFACIL,

    MiFCaL |< aT              `noun`    {- <mi^grafaT> -}      [ ['s','h','o','v','e','l'], ['t','r','o','w','e','l'], ['s','c','o','o','p'] ]
                              `plural`     MaFACIL,

    TaFCIL                    `noun`    {- <ta^grIf> -}        [ unwords [ ['c','a','r','r','y','i','n','g'], ['a','w','a','y'] ], unwords [ ['w','a','s','h','i','n','g'], ['a','w','a','y'] ] ]
                              `plural`     TaFCIL |< At,

    InFiCAL                   `noun`    {- <in^girAf> -}       [ ['e','r','o','s','i','o','n'] ]
                              `plural`     InFiCAL |< At,

    FACiL                     `adj`     {- <^gArif> -}         [ ['t','o','r','r','e','n','t','i','a','l'], ['s','t','o','r','m','y'] ] ]


cluster_62  = cluster

 |> "^g r k s" <| [

    KaRDaS                    `noun`    {- <^garkas> -}        [ ['C','i','r','c','a','s','s','i','a','n','s'] ],

    KaRDaS |< Iy              `adj`     {- <^garkasIy> -}      [ ['C','i','r','c','a','s','s','i','a','n'] ]
                              `plural`     KaRDaS |< Iy |< Un
                              `plural`     KaRADiS |< aT,

    KaRDaS |< Iy              `noun`    {- <^garkasIy> -}      [ ['C','i','r','c','a','s','s','i','a','n'] ]
                              `plural`     KaRDaS |< Iy |< Un
                              `plural`     KaRADiS |< aT
                              `femini`     KaRDaS |< Iy |< aT ]


cluster_63  = cluster

 |> "^g r m" <| [

    FaCaL                     `verb`    {- <^garam> -}         [ ['i','n','j','u','r','e'], ['w','r','o','n','g'], ['b','o','n','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <^garram> -}        [ ['c','r','i','m','i','n','a','l','i','z','e'], ['i','n','c','r','i','m','i','n','a','t','e'] ],

    HaFCaL                    `verb`    {- <'a^gram> -}        [ unwords [ ['c','o','m','m','i','t'], "a", ['c','r','i','m','e'] ], ['s','i','n'], unwords [ ['d','o'], ['w','r','o','n','g'] ] ],

    IFtaCaL                   `verb`    {- <i^gtaram> -}       [ ['i','n','c','r','i','m','i','n','a','t','e'] ],

    FaCL                      `noun`    {- <^garm> -}          [ ['b','a','r','g','e'], ['c','r','i','m','e','s'] ]
                              `plural`     FuCUL,

    FiCL                      `noun`    {- <^girm> -}          [ ['b','o','d','y'], ['b','u','l','k'], ['m','a','s','s'], ['c','r','i','m','e','s'] ]
                              `plural`     HaFCAL,

    FuCL                      `noun`    {- <^gurm> -}          [ ['c','r','i','m','e'], ['s','i','n'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FaCIL |< aT               `noun`    {- <^garImaT> -}       [ ['c','r','i','m','e'] ]
                              `plural`     FaCA'iL,

    TaFCIL                    `noun`    {- <ta^grIm> -}        [ ['c','r','i','m','i','n','a','l','i','z','a','t','i','o','n'], ['i','n','c','r','i','m','i','n','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'i^grAm> -}        [ ['d','e','l','i','n','q','u','e','n','c','y'], ['c','r','i','m','i','n','a','l','i','t','y'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'i^grAmIy> -}      [ ['c','r','i','m','i','n','a','l'] ],

    MuFCiL                    `noun`    {- <mu^grim> -}        [ ['c','r','i','m','i','n','a','l'] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT ]


cluster_64  = cluster

 |> "^g r m z" <| [

    KaRADIS                   `noun`    {- <^garAmIz> -}       [ ['l','e','g','s'], ['l','i','m','b','s'] ]
                              `plural`     KaRADIS
                           
    `limited` "-------P--",

    KaRADiS                   `noun`    {- <^garAmiz> -}       [ ['l','e','g','s'], ['l','i','m','b','s'] ]
                              `plural`     KaRADiS
                           
    `limited` "-------P--" ]


cluster_65  = cluster

 |> "^g r n" <| [

    FuCL                      `noun`    {- <^gurn> -}          [ ['b','a','s','i','n'], ['m','o','r','t','a','r'] ]
                              `plural`     HaFCAL ]


cluster_66  = cluster

 |> "^g r n l" <| [

    KuRDAS                    `noun`    {- <^gurnAl> -}        [ ['j','o','u','r','n','a','l'], ['n','e','w','s','p','a','p','e','r'] ]
                              `plural`     KaRADIS ]


cluster_67  = cluster

 |> ['^','g','i','r','^','g','i','s'] <| [

    _____                     `noun`    {- <^gir^gis> -}       [ ['G','i','r','g','i','s'] ] ]


cluster_68  = cluster

 |> ['^','g','a','r','s','U','n'] <| [

    _____                     `noun`    {- <^garsUn> -}        [ ['w','a','i','t','e','r'] ]
                              `plural`     _____ |< At,

    _____ |< aT               `noun`    {- <^garsUnaT> -}      [ ['w','a','i','t','r','e','s','s'] ] ]


cluster_69  = cluster

 |> ['^','g','A','z'] <| [

    _____                     `noun`    {- <^gAz> -}           [ ['g','a','s','o','l','i','n','e'], ['k','e','r','o','s','e','n','e'] ]
                              `plural`     _____ |< At ]


cluster_70  = cluster

 |> "^g z ^g" <| [

    HaFCAL |< Iy              `noun`    {- <'a^gzA^gIy> -}     [ ['p','h','a','r','m','a','c','i','s','t'] ]
                              `plural`     HaFCAL |< Iy |< aT
                              `femini`     HaFCAL |< Iy |< aT ]


cluster_71  = cluster

 |> "^g z d" <| [

    FuCLAn                    `noun`    {- <^guzdAn> -}        [ ['w','a','l','l','e','t'] ]
                              `plural`     FuCLAn |< At ]


cluster_72  = cluster

 |> "^g z r" <| [

    FaCaL                     `verb`    {- <^gazar> -}         [ ['s','l','a','u','g','h','t','e','r'], ['b','u','t','c','h','e','r'] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <^gazar> -}         [ ['s','i','n','k'], ['e','b','b'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <^gazr> -}          [ ['s','l','a','u','g','h','t','e','r'], ['e','b','b'] ],

    FaCL |< aT                `noun`    {- <^gazraT> -}        [ unwords [ ['b','l','o','o','d'], ['s','a','c','r','i','f','i','c','e'] ] ],

    FaCaL                     `noun`    {- <^gazar> -}         [ ['c','a','r','r','o','t'] ],

    FaCUL                     `noun`    {- <^gazUr> -}         [ unwords [ ['s','l','a','u','g','h','t','e','r'], ['c','a','m','e','l'] ] ],

    FiCAL |< aT               `noun`    {- <^gizAraT> -}       [ ['b','u','t','c','h','e','r','y'] ],

    FaCCAL                    `noun`    {- <^gazzAr> -}        [ ['b','u','t','c','h','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCIL |< aT               `noun`    {- <^gazIraT> -}       [ ['i','s','l','a','n','d'], ['p','e','n','i','n','s','u','l','a'] ]
                              `plural`     FaCA'iL
                              `plural`     FuCuL,

    FaCIL |< aT               `noun`    {- <^gazIraT> -}       [ ['J','a','z','e','e','r','a'], unwords [ ['A','l'], "-", ['J','a','z','e','e','r','a'] ] ],

    FaCA'iL                   `noun`    {- <^gazA'ir> -}       [ ['A','l','g','e','r','i','a'] ]
                              `plural`     FaCA'iL
                           
    `limited` "-------P--",

    FaCA'iL                   `noun`    {- <^gazA'ir> -}       [ ['A','l','g','i','e','r','s'] ]
                              `plural`     FaCA'iL
                           
    `limited` "-------P--",

    FaCA'iL |< Iy             `adj`     {- <^gazA'irIy> -}     [ ['A','l','g','e','r','i','a','n'] ],

    FaCA'iL |< Iy             `noun`    {- <^gazA'irIy> -}     [ ['A','l','g','e','r','i','a','n'] ]
                              `plural`     FaCA'iL |< Iy |< Un
                              `femini`     FaCA'iL |< Iy |< aT,

    FaCaL |< Iy               `adj`     {- <^gazarIy> -}       [ ['i','n','s','u','l','a','r'] ],

    MaFCiL                    `noun`    {- <ma^gzir> -}        [ ['m','a','s','s','a','c','r','e'], ['s','l','a','u','g','h','t','e','r'] ],

    MaFCaL |< aT              `noun`    {- <ma^gzaraT> -}      [ ['m','a','s','s','a','c','r','e'], ['s','l','a','u','g','h','t','e','r'] ]
                              `plural`     MaFACiL ]


cluster_73  = cluster

 |> "^g z `" <| [

    FaCiL                     `verb`    {- <^gazi`> -}         [ unwords [ ['b','e'], ['c','o','n','c','e','r','n','e','d'] ], unwords [ ['b','e'], ['w','o','r','r','i','e','d'] ], ['r','e','g','r','e','t'] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <^gaza`> -}         [ ['t','r','a','v','e','r','s','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^gazza`> -}        [ ['l','a','c','e','r','a','t','e'], ['m','a','r','b','l','e'], ['b','r','e','a','k'] ],

    TaFaCCaL                  `verb`    {- <ta^gazza`> -}      [ unwords [ ['b','e'], ['b','r','o','k','e','n'] ], unwords [ ['b','r','e','a','k'], ['a','p','a','r','t'] ], ['s','n','a','p'] ],

    FaCL                      `noun`    {- <^gaz`> -}          [ ['o','n','y','x'] ],

    FuCL                      `noun`    {- <^guz`> -}          [ ['a','x','l','e'], ['s','h','a','f','t'] ],

    FaCaL                     `noun`    {- <^gaza`> -}         [ ['a','n','x','i','e','t','y'], ['w','o','r','r','y'] ],

    FaCUL                     `adj`     {- <^gazU`> -}         [ ['r','e','s','t','l','e','s','s'], ['a','n','x','i','o','u','s'] ],

    FaCiL                     `adj`     {- <^gazi`> -}         [ ['r','e','s','t','l','e','s','s'], ['a','n','x','i','o','u','s'] ],

    FaCCAL                    `noun`    {- <^gazzA`> -}        [ ['J','a','z','z','a'] ],

    FACiL                     `adj`     {- <^gAzi`> -}         [ ['r','e','s','t','l','e','s','s'], ['a','n','x','i','o','u','s'] ],

    MuFaCCaL                  `adj`     {- <mu^gazza`> -}      [ ['m','a','r','b','l','e','d'], ['v','a','r','i','e','g','a','t','e','d'] ] ]


cluster_74  = cluster

 |> "^g z f" <| [

    FaCaL                     `verb`    {- <^gazaf> -}         [ unwords [ ['b','e'], ['r','e','c','k','l','e','s','s'] ], ['r','i','s','k'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <^gAzaf> -}         [ unwords [ ['a','c','t'], ['r','a','n','d','o','m','l','y'] ], ['s','p','e','c','u','l','a','t','e'] ],

    FuCAL                     `noun`    {- <^guzAf> -}         [ ['p','u','r','c','h','a','s','e'] ],

    FuCAL |<< "aN"            `noun`    {- <^guzAfaN> -}       [ ['r','a','n','d','o','m','l','y'] ],

    MuFACaL |< aT             `noun`    {- <mu^gAzafaT> -}     [ ['r','e','c','k','l','e','s','s','n','e','s','s'], ['h','a','z','a','r','d'] ],

    MuFACiL                   `adj`     {- <mu^gAzif> -}       [ ['r','e','c','k','l','e','s','s'], ['v','e','n','t','u','r','e','s','o','m','e'] ] ]


cluster_75  = cluster

 |> "^g z l" <| [

    FaCuL                     `verb`    {- <^gazul> -}         [ unwords [ ['b','e'], ['p','r','u','d','e','n','t'] ], unwords [ ['b','e'], ['c','o','n','s','i','d','e','r','a','b','l','e'] ], unwords [ ['b','e'], ['p','l','e','n','t','i','f','u','l'] ] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'a^gzal> -}        [ unwords [ ['b','e'], ['g','e','n','e','r','o','u','s'] ], unwords [ ['g','i','v','e'], ['l','i','b','e','r','a','l','l','y'] ] ],

    IFtaCaL                   `verb`    {- <i^gtazal> -}       [ unwords [ ['w','r','i','t','e'], ['s','h','o','r','t','h','a','n','d'] ] ],

    FaCL                      `adj`     {- <^gazl> -}          [ ['a','b','u','n','d','a','n','t'] ]
                              `plural`     FiCAL,

    FaCIL                     `adj`     {- <^gazIl> -}         [ ['a','b','u','n','d','a','n','t'] ]
                              `plural`     FiCAL,

    FiCL |< aT                `noun`    {- <^gizlaT> -}        [ ['p','i','e','c','e'], ['s','l','i','c','e'] ],

    FaCAL |< aT               `noun`    {- <^gazAlaT> -}       [ ['a','b','u','n','d','a','n','c','e'] ],

    FawCaL                    `noun`    {- <^gawzal> -}        [ ['p','i','g','e','o','n'] ]
                              `plural`     FawACiL ]


cluster_76  = cluster

 |> "^g z l n" <| [

    KuRDAS                    `noun`    {- <^guzlAn> -}        [ ['w','a','l','l','e','t'] ] ]


cluster_77  = cluster

 |> "^g z m" <| [

    FaCaL                     `verb`    {- <^gazam> -}         [ unwords [ ['c','u','t'], ['s','h','o','r','t'] ], unwords [ ['b','e'], ['c','e','r','t','a','i','n'] ], ['i','m','p','o','s','e'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <^gazm> -}          [ ['c','l','i','p','p','i','n','g'], ['d','e','c','i','s','i','o','n'] ],

    FaCL |< aT                `noun`    {- <^gazmaT> -}        [ ['s','h','o','e'], ['b','o','o','t'] ]
                              `plural`     FaCaL |< At
                              `plural`     FiCaL,

    FaCL |<< "a" |<< "^g" |< Iy `noun`    {- <^gazma^gIy> -}     [ ['s','h','o','e','m','a','k','e','r'] ]
                              `plural`     FaCL |<< "a" |<< "^g" |< Iy |< Un
                              `femini`     FaCL |<< "a" |<< "^g" |< Iy |< aT,

    FACiL                     `adj`     {- <^gAzim> -}         [ ['d','e','c','i','s','i','v','e'], ['d','e','f','i','n','i','t','i','v','e'] ],

    FACiL |<< "aN"            `adj`     {- <^gAzimaN> -}       [ unwords [ ['w','i','t','h'], ['a','b','s','o','l','u','t','e'], ['c','e','r','t','a','i','n','t','y'] ] ],

    FACiL                     `noun`    {- <^gAzim> -}         [ unwords [ ['a','p','o','c','o','p','a','t','i','n','g'], "(", ['g','r','a','m','.'], ")" ] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <ma^gzUm> -}        [ unwords [ ['c','u','t'], ['s','h','o','r','t'] ], ['c','l','i','p','p','e','d'] ] ]


cluster_78  = cluster

 |> ['^','g','A','z','U','n'] <| [

    _____                     `noun`    {- <^gAzUn> -}         [ ['l','a','w','n'] ] ]


cluster_79  = cluster

 |> "^g s d" <| [

    FaCCaL                    `verb`    {- <^gassad> -}        [ ['m','a','t','e','r','i','a','l','i','z','e'], ['e','m','b','o','d','y'] ],

    TaFaCCaL                  `verb`    {- <ta^gassad> -}      [ ['m','a','t','e','r','i','a','l','i','z','e'], unwords [ ['b','e'], ['e','m','b','o','d','i','e','d'] ] ],

    FaCaL                     `noun`    {- <^gasad> -}         [ ['b','o','d','y'] ]
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <^gasadIy> -}       [ ['b','o','d','i','l','y'] ],

    FuCLAn                    `noun`    {- <^gusdAn> -}        [ ['b','o','d','y'] ],

    FuCLAn |< Iy              `adj`     {- <^gusdAnIy> -}      [ ['b','o','d','i','l','y'] ],

    TaFCIL                    `noun`    {- <ta^gsId> -}        [ ['m','a','t','e','r','i','a','l','i','z','a','t','i','o','n'], ['e','m','b','o','d','i','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta^gassud> -}      [ ['m','a','t','e','r','i','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCaL                  `adj`     {- <mu^gassad> -}      [ ['e','m','b','o','d','i','e','d'] ],

    MutaFaCCiL                `adj`     {- <muta^gassid> -}    [ ['c','o','r','p','o','r','e','a','l'], ['i','n','c','a','r','n','a','t','e'] ] ]


cluster_80  = cluster

 |> "^g s r" <| [

    FaCaL                     `verb`    {- <^gasar> -}         [ ['v','e','n','t','u','r','e'], ['r','i','s','k'] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <^gasar> -}         [ ['c','r','o','s','s'], ['s','p','a','n'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gassar> -}        [ ['e','n','c','o','u','r','a','g','e'] ],

    TaFACaL                   `verb`    {- <ta^gAsar> -}       [ unwords [ ['b','e'], ['i','n','s','o','l','e','n','t'] ], ['d','a','r','e'] ],

    IFtaCaL                   `verb`    {- <i^gtasar> -}       [ ['c','r','o','s','s'], ['s','p','a','n'], ['t','r','a','v','e','r','s','e'] ],

    FiCL                      `noun`    {- <^gisr> -}          [ ['b','r','i','d','g','e'], unwords [ "(", ['r','e','i','n','f','o','r','c','e','m','e','n','t'], ")", ['b','e','a','m'], ['o','r'], ['b','a','r'] ] ]
                              `plural`     FuCUL
                              `plural`     HaFCuL,

    FaCUL                     `adj`     {- <^gasUr> -}         [ ['b','o','l','d'], ['d','a','r','i','n','g'] ],

    FaCAL |< aT               `noun`    {- <^gasAraT> -}       [ ['b','o','l','d','n','e','s','s'], ['i','n','s','o','l','e','n','c','e'] ],

    TaFACuL                   `noun`    {- <ta^gAsur> -}       [ ['b','o','l','d','n','e','s','s'], ['i','n','s','o','l','e','n','c','e'] ]
                              `plural`     TaFACuL |< At,

    MutaFACiL                 `adj`     {- <muta^gAsir> -}     [ ['b','o','l','d'], ['i','m','p','u','d','e','n','t'] ],

    FACiL                     `noun`    {- <^gAsir> -}         [ ['J','a','s','i','r'] ] ]


cluster_81  = cluster

 |> "^g s .t n" <| [

    TaKaRDaS                  `verb`    {- <ta^gas.tan> -}     [ ['r','e','l','a','x'], ['l','o','u','n','g','e'], unwords [ ['l','o','l','l'], ['b','a','c','k'] ] ] ]


cluster_82  = cluster

 |> "^g s m" <| [

    FaCuL                     `verb`    {- <^gasum> -}         [ unwords [ ['b','e'], ['l','a','r','g','e'] ], unwords [ ['b','e'], ['b','u','l','k','y'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gassam> -}        [ ['m','a','t','e','r','i','a','l','i','z','e'], ['e','n','l','a','r','g','e'] ],

    TaFaCCaL                  `verb`    {- <ta^gassam> -}      [ unwords [ ['t','a','k','e'], ['s','h','a','p','e'] ], unwords [ ['b','e'], ['m','a','t','e','r','i','a','l','i','z','e','d'] ] ],

    FiCL                      `noun`    {- <^gism> -}          [ ['b','o','d','y'], ['f','o','r','m'] ]
                              `plural`     HaFCAL,

    FiCL |< Iy                `adj`     {- <^gismIy> -}        [ ['b','o','d','i','l','y'], ['m','a','t','e','r','i','a','l'] ],

    FaCIL                     `noun`    {- <^gasIm> -}         [ ['g','r','e','a','t'], ['h','u','g','e'] ]
                              `plural`     FiCAL
                              `femini`     FaCIL |< aT,

    FuCayL                    `noun`    {- <^gusaym> -}        [ ['p','a','r','t','i','c','l','e'], ['c','o','r','p','u','s','c','l','e'] ]
                              `plural`     FuCayL |< At,

    HaFCaL                    `adj`     {- <'a^gsam> -}        [ ['l','a','r','g','e','r'], unwords [ ['m','o','r','e'], ['c','o','r','p','u','l','e','n','t'] ] ],

    FaCAL |< aT               `noun`    {- <^gasAmaT> -}       [ ['s','i','z','e'], ['c','o','r','p','u','l','e','n','c','e'] ],

    FuCLAn                    `noun`    {- <^gusmAn> -}        [ ['b','o','d','y'], ['m','a','s','s'] ],

    FuCLAn |< Iy              `adj`     {- <^gusmAnIy> -}      [ ['b','o','d','i','l','y'], ['p','h','y','s','i','c','a','l'] ],

    FaCLAn |< Iy |< aT        `noun`    {- <^gasmAnIyaT> -}    [ ['G','e','t','h','s','e','m','a','n','e'] ],

    TaFCIL                    `noun`    {- <ta^gsIm> -}        [ ['e','m','b','o','d','i','m','e','n','t'], ['e','n','l','a','r','g','e','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mu^gassam> -}      [ ['b','o','d','i','l','y'], ['e','m','b','o','d','i','e','d'] ],

    FACiL                     `noun`    {- <^gAsim> -}         [ ['J','a','s','e','m'], ['J','a','s','i','m'] ] ]


cluster_83  = cluster

 |> "^g ^s r" <| [

    FuCAL                     `noun`    {- <^gu^sAr> -}        [ ['l','i','v','e','s','t','o','c','k'] ] ]


cluster_84  = cluster

 |> "^g ^s `" <| [

    FaCiL                     `verb`    {- <^ga^si`> -}        [ unwords [ ['b','e'], ['c','o','v','e','t','o','u','s'] ], unwords [ ['b','e'], ['g','r','e','e','d','y'] ] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <ta^ga^s^sa`> -}    [ unwords [ ['b','e'], ['c','o','v','e','t','o','u','s'] ], unwords [ ['b','e'], ['g','r','e','e','d','y'] ] ],

    FaCaL                     `noun`    {- <^ga^sa`> -}        [ ['g','r','e','e','d'] ],

    FaCiL                     `adj`     {- <^ga^si`> -}        [ ['g','r','e','e','d','y'] ] ]


cluster_85  = cluster

 |> "^g ^s m" <| [

    FaCiL                     `verb`    {- <^ga^sim> -}        [ ['s','u','f','f','e','r'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^ga^s^sam> -}      [ ['i','m','p','o','s','e'], ['b','u','r','d','e','n'] ],

    TaFaCCaL                  `verb`    {- <ta^ga^s^sam> -}    [ ['s','u','f','f','e','r'], ['u','n','d','e','r','g','o'] ] ]


cluster_86  = cluster

 |> "^g ^s n" <| [

    FiCL |< Iy                `noun`    {- <^gi^snIy> -}       [ ['s','a','m','p','l','e'], ['s','p','e','c','i','m','e','n'] ] ]


cluster_87  = cluster

 |> "^g .s .t n" <| [

    TaKaRDaS                  `verb`    {- <ta^ga.s.tan> -}    [ ['r','e','l','a','x'], ['l','o','u','n','g','e'], unwords [ ['l','o','l','l'], ['b','a','c','k'] ] ] ]


cluster_88  = cluster

 |> "^g .s `" <| [

    FiL |< aT                 `noun`    {- <^gi`aT> -}         [ ['b','e','e','r'] ] ]


cluster_89  = cluster

 |> "^g ` b" <| [

    FaCCaL                    `verb`    {- <^ga``ab> -}        [ ['c','o','r','r','u','g','a','t','e'] ],

    FaCL |< aT                `noun`    {- <^ga`baT> -}        [ ['q','u','i','v','e','r'], ['p','i','p','e'], unwords [ ['g','u','n'], ['b','a','r','r','e','l'] ] ]
                              `plural`     FiCAL,

    FuCL |< aT                `noun`    {- <^gu`baT> -}        [ ['q','u','i','v','e','r'], ['p','i','p','e'], unwords [ ['g','u','n'], ['b','a','r','r','e','l'] ] ]
                              `plural`     FiCAL ]


cluster_90  = cluster

 |> "^g ` ^g `" <| [

    KaRDaS                    `verb`    {- <^ga`^ga`> -}       [ ['c','l','a','m','o','r'], ['s','h','o','u','t'] ],

    KaRDaS |< aT              `noun`    {- <^ga`^ga`aT> -}     [ ['n','o','i','s','e'], ['r','a','t','t','l','e'], ['b','l','u','s','t','e','r'] ],

    KaRDAS                    `adj`     {- <^ga`^gA`> -}       [ ['n','o','i','s','y'], ['v','o','c','i','f','e','r','o','u','s'] ],

    KaRDaS                    `noun`    {- <^ga`^ga`> -}       [ ['G','e','a','g','e','a'] ] ]


cluster_91  = cluster

 |> "^g ` d" <| [

    FaCuL                     `verb`    {- <^ga`ud> -}         [ ['c','u','r','l'], unwords [ ['b','e'], ['w','r','i','n','k','l','e','d'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^ga``ad> -}        [ ['c','u','r','l'], ['w','r','i','n','k','l','e'] ],

    TaFaCCaL                  `verb`    {- <ta^ga``ad> -}      [ unwords [ ['b','e'], ['c','u','r','l','y'] ], unwords [ ['b','e'], ['w','r','i','n','k','l','e','d'] ], unwords [ ['b','e'], ['w','a','v','y'] ] ],

    FaCL                      `noun`    {- <^ga`d> -}          [ ['t','i','g','h','t'] ],

    FaCL |< aT                `noun`    {- <^ga`daT> -}        [ ['c','u','r','l'], ['l','o','c','k'] ],

    FaCL |< Iy                `adj`     {- <^ga`dIy> -}        [ ['c','u','r','l','y'] ],

    HaFCaL                    `adj`     {- <'a^g`ad> -}        [ ['c','u','r','l','y'] ],

    FaCIL |< Iy               `adj`     {- <^ga`IdIy> -}       [ ['l','o','a','f','e','r'], ['b','u','m'] ],

    TaFACIL                   `noun`    {- <ta^gA`Id> -}       [ ['w','r','i','n','k','l','e','s'] ]
                              `plural`     TaFACIL
                           
    `limited` "-------P--",

    TaFaCCuL |< At            `noun`    {- <ta^ga``udAt> -}    [ ['w','r','i','n','k','l','e','s'] ]
                              `plural`     TaFaCCuL |< At
                           
    `limited` "-------P--",

    MuFaCCaL                  `adj`     {- <mu^ga``ad> -}      [ ['c','u','r','l','e','d'], ['w','r','i','n','k','l','e','d'] ],

    MutaFaCCaL                `adj`     {- <muta^ga``ad> -}    [ ['c','u','r','l','e','d'], ['w','r','i','n','k','l','e','d'] ] ]


cluster_92  = cluster

 |> "^g ` d n" <| [

    KaRDaS |< aT              `noun`    {- <^ga`danaT> -}      [ ['g','o','s','s','i','p'] ] ]


cluster_93  = cluster

 |> "^g ` r" <| [

    FaCaL                     `verb`    {- <^ga`ar> -}         [ unwords [ ['d','r','o','p'], ['m','a','n','u','r','e'] ] ]
                              `imperf`     FCaL,

    FiCLAn                    `noun`    {- <^gi`rAn> -}        [ ['d','u','n','g'] ],

    FaCIL                     `noun`    {- <^ga`Ir> -}         [ ['J','a','i','r'] ] ]


cluster_94  = cluster

 |> "^g ` f r" <| [

    KaRDaS                    `noun`    {- <^ga`far> -}        [ ['J','a','a','f','a','r'] ],

    KaRDaS |< Iy              `adj`     {- <^ga`farIy> -}      [ ['J','a','a','f','a','r','i'], ['J','a','f','a','r','i'] ] ]


cluster_95  = cluster

 |> "^g ` l" <| [

    FaCaL                     `verb`    {- <^ga`al> -}         [ ['m','a','k','e'], unwords [ ['b','r','i','n','g'], ['a','b','o','u','t'] ], ['a','p','p','o','i','n','t'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <^gA`al> -}         [ unwords [ ['t','r','y'], ['t','o'], ['b','r','i','b','e'] ], unwords [ ['t','r','y'], ['t','o'], ['w','i','n'] ] ],

    FaCL                      `noun`    {- <^ga`l> -}          [ ['m','a','k','i','n','g'], unwords [ ['b','r','i','n','g','i','n','g'], ['a','b','o','u','t'] ], ['a','p','p','o','i','n','t','i','n','g'] ],

    FuCL                      `noun`    {- <^gu`l> -}          [ ['p','a','y'], ['w','a','g','e','s'] ]
                              `plural`     HaFCAL,

    FuCL |< Iy                `adj`     {- <^gu`lIy> -}        [ unwords [ ['p','i','e','c','e'], "-", ['w','o','r','k'] ] ],

    FiCAL |< aT               `noun`    {- <^gi`AlaT> -}       [ ['p','a','y'], ['w','a','g','e','s'] ]
                              `plural`     FaCA'iL,

    FaCAL |< aT               `noun`    {- <^ga`AlaT> -}       [ ['p','a','y'], ['w','a','g','e','s'] ]
                              `plural`     FaCA'iL,

    FuCAL |< aT               `noun`    {- <^gu`AlaT> -}       [ ['p','a','y'], ['w','a','g','e','s'] ]
                              `plural`     FaCA'iL ]


cluster_96  = cluster

 |> ['^','g','u','.','g','r','A','f'] <| [

    _____ |< iyA              `noun`    {- <^gu.grAfiyA> -}    [ ['g','e','o','g','r','a','p','h','y'] ],

    _____ |< Iy               `adj`     {- <^gu.grAfIy> -}     [ ['g','e','o','g','r','a','p','h','i','c','a','l'] ],

    _____ |< Iy               `noun`    {- <^gu.grAfIy> -}     [ ['g','e','o','g','r','a','p','h','e','r'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_97  = cluster

 |> "^g f t" <| [

    FiCL                      `noun`    {- <^gift> -}          [ ['f','o','r','c','e','p','s'], ['t','w','e','e','z','e','r','s'] ] ]


cluster_98  = cluster

 |> "^g f r" <| [

    FaCL                      `noun`    {- <^gafr> -}          [ ['f','o','r','t','u','n','e','t','e','l','l','i','n','g'], ['d','i','v','i','n','a','t','i','o','n'] ],

    FiCL |< Iy                `adj`     {- <^gifrIy> -}        [ ['J','i','f','r','i'] ],

    FuCL |< aT                `noun`    {- <^gufraT> -}        [ ['p','i','t'], ['h','o','l','e'] ]
                              `plural`     FuCaL ]


cluster_99  = cluster

 |> "^g f l" <| [

    FaCaL                     `verb`    {- <^gafal> -}         [ unwords [ ['b','e'], ['s','t','a','r','t','l','e','d'] ], unwords [ ['j','u','m','p'], ['w','i','t','h'], ['f','r','i','g','h','t'] ], unwords [ ['b','e'], ['s','h','y'] ] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gaffal> -}        [ ['s','c','a','r','e'], ['s','t','a','r','t','l','e'] ],

    HaFCaL                    `verb`    {- <'a^gfal> -}        [ ['b','o','l','t'], unwords [ ['b','e'], ['s','t','a','r','t','l','e','d'] ] ],

    FaCL                      `noun`    {- <^gafl> -}          [ ['f','r','i','g','h','t'], ['a','l','a','r','m'] ],

    FuCUL                     `noun`    {- <^gufUl> -}         [ ['f','r','i','g','h','t'], ['a','l','a','r','m'] ] ]


cluster_100 = cluster

 |> "^g f n" <| [

    FaCL                      `noun`    {- <^gafn> -}          [ ['e','y','e','l','i','d'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <^gafnaT> -}        [ ['b','o','w','l'], ['g','r','a','p','e','v','i','n','e'] ]
                              `plural`     FiCAL
                              `plural`     FaCaL |< At ]


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
