
module Elixir.Data.Moony.Regular.F (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['^','g','i','f','t','i','^','s','I'] <| [

    _____                     `noun`    {- <^gifti^sI> -}      [ ['f','i','l','i','g','r','e','e'] ] ]


cluster_2   = cluster

 |> ['^','g','i','f','t','l','i','k'] <| [

    _____                     `noun`    {- <^giftlik> -}       [ ['f','a','r','m'], unwords [ ['s','t','a','t','e'], ['l','a','n','d'] ] ] ]


cluster_3   = cluster

 |> ['^','g','U','k','I'] <| [

    _____                     `noun`    {- <^gUkI> -}          [ ['j','o','c','k','e','y'] ] ]


cluster_4   = cluster

 |> ['^','g','A','k','i','t'] <| [

    _____                     `noun`    {- <^gAkit> -}         [ ['j','a','c','k','e','t'] ]
                              `plural`     _____ |< At ]


cluster_5   = cluster

 |> "^g k r" <| [

    FACaL                     `verb`    {- <^gAkar> -}         [ ['t','e','a','s','e'], ['f','o','o','l'] ] ]


cluster_6   = cluster

 |> "^g l b" <| [

    FaCaL                     `verb`    {- <^galab> -}         [ ['b','r','i','n','g'], ['a','t','t','r','a','c','t'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <^gallab> -}        [ ['c','l','a','m','o','r'], ['s','h','o','u','t'] ],

    HaFCaL                    `verb`    {- <'a^glab> -}        [ ['e','a','r','n'], ['a','c','q','u','i','r','e'] ],

    InFaCaL                   `verb`    {- <in^galab> -}       [ unwords [ ['b','e'], ['b','r','o','u','g','h','t'] ], unwords [ ['b','e'], ['p','r','o','c','u','r','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i^gtalab> -}       [ ['b','r','i','n','g'], ['p','r','o','c','u','r','e'] ],

    IstaFCaL                  `verb`    {- <ista^glab> -}      [ ['a','t','t','r','a','c','t'], ['f','e','t','c','h'] ],

    FuCAL                     `noun`    {- <^gulAb> -}         [ unwords [ ['r','o','s','e'], ['w','a','t','e','r'] ], ['j','u','l','e','p'] ],

    FuCCAL                    `noun`    {- <^gullAb> -}        [ unwords [ ['r','o','s','e'], ['w','a','t','e','r'] ], ['j','u','l','e','p'] ],

    FaCL                      `noun`    {- <^galb> -}          [ ['a','c','q','u','i','s','i','t','i','o','n'], ['a','r','r','a','i','g','n','m','e','n','t'] ],

    FaCaL                     `noun`    {- <^galab> -}         [ ['c','l','a','m','o','r'] ],

    FuCL |< aT                `noun`    {- <^gulbaT> -}        [ ['s','c','a','r'] ],

    FaCIL                     `noun`    {- <^galIb> -}         [ ['i','m','p','o','r','t','e','d'] ],

    FaCLY                     `noun`    {- <^galbY> -}         [ unwords [ ['f','o','r','e','i','g','n'], ['s','l','a','v','e'] ] ]
                              `plural`     FuCaLA',

    FaCCAL                    `adj`     {- <^gallAb> -}        [ ['a','t','t','r','a','c','t','i','v','e'] ],

    FaCCAL                    `noun`    {- <^gallAb> -}        [ ['t','r','a','d','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL |< Iy |< aT        `noun`    {- <^gallAbIyaT> -}    [ unwords [ ['g','a','l','l','a','b','i','y','a'], "(", ['g','o','w','n'], ")" ] ]
                              `plural`     FaCCAL |< Iy |< At
                              `plural`     FaCACIL,

    HaFCaL                    `adj`     {- <'a^glab> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['a','t','t','r','a','c','t','i','v','e'] ] ],

    MaFCaL |< aT              `noun`    {- <ma^glabaT> -}      [ ['c','a','u','s','e'], ['m','o','t','i','v','e'] ]
                              `plural`     MaFACiL,

    IstiFCAL                  `noun`    {- <isti^glAb> -}      [ ['a','c','q','u','i','s','i','t','i','o','n'], ['p','r','o','m','o','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `noun`    {- <^gAlib> -}         [ ['c','a','u','s','e'], ['m','o','t','i','v','e'] ],

    MaFCUL                    `adj`     {- <ma^glUb> -}        [ ['i','m','p','o','r','t','e','d'], ['e','x','o','t','i','c'] ] ]


cluster_7   = cluster

 |> "^g l b t" <| [

    KaRDUS                    `noun`    {- <^galbUt> -}        [ ['b','o','a','t'] ]
                              `plural`     KaRADIS ]


cluster_8   = cluster

 |> ['^','g','u','l','u','b','b','A','n'] <| [

    _____                     `noun`    {- <^gulubbAn> -}      [ unwords [ ['g','r','a','s','s'], ['p','e','a'] ] ] ]


cluster_9   = cluster

 |> ['^','g','A','l','U','t'] <| [

    _____                     `noun`    {- <^gAlUt> -}         [ ['G','o','l','i','a','t','h'] ] ]


cluster_10  = cluster

 |> "^g l t n" <| [

    TaKaRDaS                  `verb`    {- <ta^galtan> -}      [ ['g','e','l','a','t','i','n','i','z','e'] ] ]


cluster_11  = cluster

 |> ['^','g','i','l','A','t','I','n'] <| [

    _____                     `noun`    {- <^gilAtIn> -}       [ ['g','e','l','a','t','i','n'], ['j','e','l','l','y'] ] ]


cluster_12  = cluster

 |> "^g l ^g l" <| [

    KaRDaS                    `verb`    {- <^gal^gal> -}       [ ['r','e','s','o','u','n','d'], ['r','e','v','e','r','b','e','r','a','t','e'], ['r','a','t','t','l','e'] ],

    KuRDuS                    `noun`    {- <^gul^gul> -}       [ ['b','e','l','l'], ['j','i','n','g','l','e'] ]
                              `plural`     KaRADiS,

    KaRDaS |< aT              `noun`    {- <^gal^galaT> -}     [ ['j','i','n','g','l','e'], ['r','i','n','g'] ],

    MuKaRDiS                  `adj`     {- <mu^gal^gil> -}     [ ['r','i','n','g','i','n','g'] ],

    KuRDuS |< aT              `noun`    {- <^gul^gulaT> -}     [ ['G','o','l','g','o','t','h','a'] ] ]


cluster_13  = cluster

 |> "^g l .h" <| [

    FaCiL                     `verb`    {- <^gali.h> -}        [ unwords [ ['b','e','c','o','m','e'], ['b','a','l','d'] ], unwords [ ['l','o','s','e'], ['h','a','i','r'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `adj`     {- <'a^gla.h> -}       [ ['b','a','l','d'] ]
                              `plural`     FuCL
                              `femini`     FaCLA' ]


cluster_14  = cluster

 |> "^g l _h" <| [

    FaCaL                     `verb`    {- <^gala_h> -}        [ ['s','h','a','r','p','e','n'], ['s','t','r','e','t','c','h'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^galla_h> -}       [ ['s','h','a','r','p','e','n'], ['s','t','r','e','t','c','h'] ],

    FaCL                      `noun`    {- <^gal_h> -}         [ ['g','r','i','n','d','s','t','o','n','e'] ] ]


cluster_15  = cluster

 |> "^g l d" <| [

    FaCaL                     `verb`    {- <^galad> -}         [ ['f','l','o','g'] ]
                              `imperf`     FCiL,

    FaCiL                     `verb`    {- <^galid> -}         [ ['f','r','e','e','z','e'] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <^galud> -}         [ unwords [ ['b','e'], ['s','t','e','a','d','f','a','s','t'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gallad> -}        [ ['b','i','n','d'], ['f','r','e','e','z','e'] ],

    FACaL                     `verb`    {- <^gAlad> -}         [ ['f','i','g','h','t'] ],

    HaFCaL                    `verb`    {- <'a^glad> -}        [ ['f','r','e','e','z','e'], unwords [ ['b','e'], ['f','r','o','z','e','n'] ] ],

    TaFaCCaL                  `verb`    {- <ta^gallad> -}      [ unwords [ ['b','e'], ['p','a','t','i','e','n','t'] ], unwords [ ['b','e'], ['f','r','o','z','e','n'] ] ],

    TaFACaL                   `verb`    {- <ta^gAlad> -}       [ unwords [ ['c','r','o','s','s'], ['s','w','o','r','d','s'] ] ],

    FaCL                      `noun`    {- <^gald> -}          [ ['f','l','o','g','g','i','n','g'] ],

    FiCL                      `noun`    {- <^gild> -}          [ ['s','k','i','n'], ['l','e','a','t','h','e','r'] ],

    FiCL |< Iy                `adj`     {- <^gildIy> -}        [ ['d','e','r','m','a','l'], ['c','u','t','a','n','e','o','u','s'] ],

    FuCayL |< aT              `noun`    {- <^gulaydaT> -}      [ ['m','e','m','b','r','a','n','e'], ['f','i','l','m'] ],

    FaCaL                     `noun`    {- <^galad> -}         [ ['e','n','d','u','r','a','n','c','e'], ['p','a','t','i','e','n','c','e'] ],

    FaCL |< aT                `noun`    {- <^galdaT> -}        [ ['l','a','s','h'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `adj`     {- <^galId> -}         [ ['s','t','e','a','d','f','a','s','t'] ]
                              `plural`     FuCaLA',

    FaCIL                     `noun`    {- <^galId> -}         [ ['i','c','e'] ],

    FaCIL |< Iy               `adj`     {- <^galIdIy> -}       [ ['i','c','y'], ['i','c','e'] ],

    FaCUL                     `adj`     {- <^galUd> -}         [ ['p','a','t','i','e','n','t'] ],

    FaCCAL                    `noun`    {- <^gallAd> -}        [ unwords [ ['l','e','a','t','h','e','r'], ['m','e','r','c','h','a','n','t'] ], ['e','x','e','c','u','t','i','o','n','e','r'], ['h','a','n','g','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MiFCaL |< aT              `noun`    {- <mi^gladaT> -}      [ ['w','h','i','p'] ],

    TaFCIL                    `noun`    {- <ta^glId> -}        [ ['f','r','e','e','z','i','n','g'], ['b','o','o','k','b','i','n','d','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FiCAL                     `noun`    {- <^gilAd> -}         [ ['b','a','t','t','l','e'] ],

    TaFaCCuL                  `noun`    {- <ta^gallud> -}      [ ['p','a','t','i','e','n','c','e'], ['e','n','d','u','r','a','n','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCiL                  `noun`    {- <mu^gallid> -}      [ ['b','o','o','k','b','i','n','d','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <mu^gallad> -}      [ ['f','r','o','z','e','n'], ['b','o','u','n','d'] ],

    MuFACiL                   `noun`    {- <mu^gAlid> -}       [ ['g','l','a','d','i','a','t','o','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MutaFaCCiL                `adj`     {- <muta^gallid> -}    [ ['p','a','t','i','e','n','t'] ] ]


cluster_16  = cluster

 |> "^g l s" <| [

    FaCaL                     `verb`    {- <^galas> -}         [ ['s','i','t'] ]
                              `imperf`     FCiL,

    FACaL                     `verb`    {- <^gAlas> -}         [ unwords [ ['s','i','t'], ['w','i','t','h'] ] ],

    HaFCaL                    `verb`    {- <'a^glas> -}        [ ['s','e','a','t'], unwords [ ['m','a','k','e'], ['s','i','t'] ] ],

    FaCL |< aT                `noun`    {- <^galsaT> -}        [ ['s','e','s','s','i','o','n'], ['m','e','e','t','i','n','g'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `noun`    {- <^galIs> -}         [ ['p','a','r','t','i','c','i','p','a','n','t'], ['c','o','m','p','a','n','i','o','n'], ['s','i','t','t','e','r'] ]
                              `plural`     FuCaLA'
                              `femini`     FaCIL |< aT,

    FuCUL                     `noun`    {- <^gulUs> -}         [ ['s','i','t','t','i','n','g'] ],

    FACiL                     `adj`     {- <^gAlis> -}         [ ['s','i','t','t','i','n','g'] ],

    FACiL                     `noun`    {- <^gAlis> -}         [ ['p','a','r','t','i','c','i','p','a','n','t'], ['s','i','t','t','e','r'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT,

    MaFCiL                    `noun`    {- <ma^glis> -}        [ ['c','o','u','n','c','i','l'], ['b','o','a','r','d'], ['M','a','j','l','i','s'] ]
                              `plural`     MaFACiL,

    MuFACaL |< aT             `noun`    {- <mu^gAlasaT> -}     [ unwords [ ['s','o','c','i','a','l'], ['i','n','t','e','r','c','o','u','r','s','e'] ] ] ]


cluster_17  = cluster

 |> "^g l .s" <| [

    FACUL                     `noun`    {- <^gAlU.s> -}        [ unwords [ ['l','a','r','g','e'], ['h','e','a','p'] ] ],

    FiCAL |< Iy               `adj`     {- <^gilA.sIy> -}      [ ['J','e','l','a','s','s','i'] ] ]


cluster_18  = cluster

 |> "^g l .t" <| [

    FaCaL                     `verb`    {- <^gala.t> -}        [ ['s','h','a','v','e'], ['c','h','a','f','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <^galla.t> -}       [ ['c','o','a','g','u','l','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <ta^galla.t> -}     [ ['c','o','a','g','u','l','a','t','e'], ['c','o','n','g','e','a','l'] ],

    FuCL |< aT                `noun`    {- <^gul.taT> -}       [ ['c','l','o','t'] ]
                              `plural`     FaCaL |< At,

    TaFaCCuL                  `noun`    {- <ta^gallu.t> -}     [ ['c','o','a','g','u','l','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At ]


cluster_19  = cluster

 |> "^g l .t n" <| [

    TaKaRDaS                  `verb`    {- <ta^gal.tan> -}     [ ['g','e','l','a','t','i','n','i','z','e'] ] ]


cluster_20  = cluster

 |> "^g l f" <| [

    FaCaL                     `verb`    {- <^galaf> -}         [ ['s','c','r','a','t','c','h'], ['s','c','r','a','p','e'], ['g','r','a','z','e'] ]
                              `imperf`     FCuL,

    InFaCaL                   `verb`    {- <in^galaf> -}       [ unwords [ ['b','e'], ['s','c','r','a','t','c','h','e','d'] ], unwords [ ['b','e'], ['g','r','a','z','e','d'] ] ],

    FiCL                      `noun`    {- <^gilf> -}          [ ['r','u','d','e'] ]
                              `plural`     HaFCAL ]


cluster_21  = cluster

 |> "^g l f .t" <| [

    KaRDaS                    `verb`    {- <^galfa.t> -}       [ ['c','a','u','l','k'] ],

    KaRDaS |< aT              `noun`    {- <^galfa.taT> -}     [ ['c','a','u','l','k','i','n','g'] ] ]


cluster_22  = cluster

 |> "^g l f n" <| [

    KaRDaS                    `verb`    {- <^galfan> -}        [ ['g','a','l','v','a','n','i','z','e'] ],

    TaKaRDaS                  `verb`    {- <ta^galfan> -}      [ unwords [ ['b','e'], ['g','a','l','v','a','n','i','z','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <^galfanaT> -}      [ ['g','a','l','v','a','n','i','z','a','t','i','o','n'] ],

    MuKaRDaS                  `adj`     {- <mu^galfan> -}      [ ['g','a','l','v','a','n','i','z','e','d'] ] ]


cluster_23  = cluster

 |> "^g l q" <| [

    FiCCiL                    `noun`    {- <^gilliq> -}        [ unwords [ ['D','a','m','a','s','c','u','s'], "(", ['o','l','d'], ['n','a','m','e'], ")" ] ],

    FuCAL |< aT               `noun`    {- <^gulAqaT> -}       [ ['b','u','m','p','k','i','n'] ] ]


cluster_24  = cluster

 |> "^g l m" <| [

    FaCaL                     `verb`    {- <^galam> -}         [ ['c','l','i','p'], ['s','h','e','a','r'] ]
                              `imperf`     FCiL,

    FaCaL                     `noun`    {- <^galam> -}         [ ['s','h','e','a','r','s'] ]
                              `plural`     HaFCAL ]


cluster_25  = cluster

 |> "^g l m d" <| [

    TaKaRDaS                  `verb`    {- <ta^galmad> -}      [ unwords [ ['b','e'], ['p','e','t','r','i','f','i','e','d'] ] ],

    KaRDaS                    `noun`    {- <^galmad> -}        [ ['b','o','u','l','d','e','r'], ['r','o','c','k'] ]
                              `plural`     KaRADiS,

    KuRDUS                    `noun`    {- <^gulmUd> -}        [ ['b','o','u','l','d','e','r'], ['r','o','c','k'] ]
                              `plural`     KaRADIS ]


cluster_26  = cluster

 |> ['^','g','A','l','U','n'] <| [

    _____                     `noun`    {- <^gAlUn> -}         [ ['g','a','l','l','o','n'] ]
                              `plural`     _____ |< At ]

 |> ['^','g','a','l','U','n'] <| [

    _____                     `noun`    {- <^galUn> -}         [ ['g','a','l','l','o','n'] ]
                              `plural`     _____ |< At ]


cluster_27  = cluster

 |> ['^','g','u','l','^','g','u','l','A','n'] <| [

    _____                     `noun`    {- <^gul^gulAn> -}     [ ['s','e','s','a','m','e'] ] ]


cluster_28  = cluster

 |> ['^','g','i','l','`','A','d'] <| [

    _____                     `noun`    {- <^gil`Ad> -}        [ ['G','i','l','e','a','d'] ] ]


cluster_29  = cluster

 |> ['^','g','U','l','f'] <| [

    _____                     `noun`    {- <^gUlf> -}          [ ['g','o','l','f'] ] ]


cluster_30  = cluster

 |> ['^','g','a','l','f','A','n','U','m','i','t','r'] <| [

    _____                     `noun`    {- <^galfAnUmitr> -}   [ ['g','a','l','v','a','n','o','m','e','t','e','r'] ] ]


cluster_31  = cluster

 |> ['^','g','I','m'] <| [

    _____                     `noun`    {- <^gIm> -}           [ unwords [ ['j','i','m'], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_32  = cluster

 |> ['^','g','A','m'] <| [

    _____                     `noun`    {- <^gAm> -}           [ ['c','u','p'], ['b','o','w','l'] ]
                              `plural`     _____ |< At ]


cluster_33  = cluster

 |> "^g m b r" <| [

    KaRDaS |< Iy              `adj`     {- <^gambarIy> -}      [ ['s','h','r','i','m','p'] ] ]


cluster_34  = cluster

 |> "^g m ^g m" <| [

    KuRDuS |< aT              `noun`    {- <^gum^gumaT> -}     [ ['s','k','u','l','l'], ['c','r','a','n','i','u','m'] ]
                              `plural`     KaRADiS,

    KuRDuS |< Iy              `adj`     {- <^gum^gumIy> -}     [ ['c','r','a','n','i','a','l'] ] ]

 |> "^g m ^g m" <| [

    KaRDaS                    `verb`    {- <^gam^gam> -}       [ ['s','t','a','m','m','e','r'], ['m','u','m','b','l','e'] ],

    TaKaRDaS                  `verb`    {- <ta^gam^gam> -}     [ ['s','t','a','m','m','e','r'], ['m','u','m','b','l','e'] ],

    KaRDaS |< aT              `noun`    {- <^gam^gamaT> -}     [ ['s','t','a','m','m','e','r','i','n','g'], ['m','u','m','b','l','i','n','g'] ] ]


cluster_35  = cluster

 |> "^g m .h" <| [

    FaCaL                     `verb`    {- <^gama.h> -}        [ unwords [ ['b','e'], ['d','e','f','i','a','n','t'] ], unwords [ ['b','e'], ['o','b','s','t','i','n','a','t','e'] ] ]
                              `imperf`     FCaL,

    FiCAL                     `noun`    {- <^gimA.h> -}        [ ['d','e','f','i','a','n','c','e'], ['o','b','s','t','i','n','a','c','y'] ],

    FuCUL                     `noun`    {- <^gumU.h> -}        [ ['d','e','f','i','a','n','c','e'], ['o','b','s','t','i','n','a','c','y'] ],

    FaCUL                     `noun`    {- <^gamU.h> -}        [ ['d','e','f','i','a','n','t'], ['o','b','s','t','i','n','a','t','e'] ],

    FACiL                     `adj`     {- <^gAmi.h> -}        [ ['d','e','f','i','a','n','t'], ['o','b','s','t','i','n','a','t','e'] ] ]


cluster_36  = cluster

 |> "^g m d" <| [

    FaCaL                     `verb`    {- <^gamad> -}         [ ['f','r','e','e','z','e'], unwords [ ['b','e','c','o','m','e'], ['h','a','r','d'] ] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <^gamud> -}         [ ['f','r','e','e','z','e'], unwords [ ['b','e','c','o','m','e'], ['h','a','r','d'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gammad> -}        [ ['f','r','e','e','z','e'], ['h','a','r','d','e','n'] ],

    TaFaCCaL                  `verb`    {- <ta^gammad> -}      [ unwords [ ['b','e'], ['s','t','i','f','f'] ], ['h','a','r','d','e','n'] ],

    InFaCaL                   `verb`    {- <in^gamad> -}       [ ['f','r','e','e','z','e'] ],

    FaCL                      `noun`    {- <^gamd> -}          [ ['f','r','e','e','z','i','n','g'] ],

    FaCAL                     `noun`    {- <^gamAd> -}         [ ['s','o','l','i','d'], ['i','n','o','r','g','a','n','i','c'] ]
                              `plural`     FaCAL |< At,

    FuCAL                     `noun`    {- <^gumAd> -}         [ ['J','u','m','a','d'] ],

    FuCALY                    `noun`    {- <^gumAdY> -}        [ ['J','u','m','a','d','a'] ]
                              `plural`     FuCALY |< At,

    FuCUL                     `noun`    {- <^gumUd> -}         [ ['f','r','e','e','z','i','n','g'], ['i','n','e','r','t','i','a'], ['d','e','a','d','l','o','c','k'] ],

    FuCUL |< aT               `noun`    {- <^gumUdaT> -}       [ ['s','o','l','i','d','i','t','y'] ],

    TaFCIL                    `noun`    {- <ta^gmId> -}        [ ['f','r','e','e','z','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta^gammud> -}      [ ['f','r','e','e','z','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    InFiCAL                   `noun`    {- <in^gimAd> -}       [ ['f','r','e','e','z','i','n','g'] ]
                              `plural`     InFiCAL |< At,

    FACiL                     `adj`     {- <^gAmid> -}         [ ['f','r','o','z','e','n'], ['r','i','g','i','d'], ['s','o','l','i','d'], ['i','n','o','r','g','a','n','i','c'] ]
                              `plural`     FACiL |< Un
                              `plural`     FawACiL,

    MuFaCCaL                  `adj`     {- <mu^gammad> -}      [ ['f','r','o','z','e','n'], ['h','a','r','d','e','n','e','d'] ],

    MutaFaCCiL                `adj`     {- <muta^gammid> -}    [ ['f','r','o','z','e','n'] ],

    MunFaCiL                  `adj`     {- <mun^gamid> -}      [ ['f','r','o','z','e','n'] ] ]


cluster_37  = cluster

 |> "^g m r" <| [

    FaCCaL                    `verb`    {- <^gammar> -}        [ ['r','o','a','s','t'] ],

    IFtaCaL                   `verb`    {- <i^gtamar> -}       [ unwords [ ['b','u','r','n'], ['i','n','c','e','n','s','e'] ] ],

    FaCL                      `noun`    {- <^gamr> -}          [ ['e','m','b','e','r'], ['p','e','b','b','l','e'] ]
                              `plural`     FaCaL |< At,

    FuCCAL                    `noun`    {- <^gummAr> -}        [ unwords [ ['p','a','l','m'], ['c','o','r','e'] ] ],

    MiFCaL |< aT              `noun`    {- <mi^gmaraT> -}      [ ['b','r','a','z','i','e','r'] ]
                              `plural`     MaFACiL ]


cluster_38  = cluster

 |> "^g m r k" <| [

    KuRDuS                    `noun`    {- <^gumruk> -}        [ ['c','u','s','t','o','m','s'], ['c','o','n','t','r','o','l'], ['t','a','r','i','f','f','s'] ]
                              `plural`     KaRADiS,

    KuRDuS |< Iy              `adj`     {- <^gumrukIy> -}      [ ['c','u','s','t','o','m','s'], ['t','a','r','i','f','f'] ],

    MuKaRDaS                  `noun`    {- <mu^gamrak> -}      [ unwords [ ['d','u','t','y'], ['p','a','i','d'] ] ]
                              `plural`     MuKaRDaS |< Un
                              `femini`     MuKaRDaS |< aT ]


cluster_39  = cluster

 |> "^g m z" <| [

    FuCCayL                   `noun`    {- <^gummayz> -}       [ ['s','y','c','a','m','o','r','e'] ] ]


cluster_40  = cluster

 |> "^g m s" <| [

    FACUL                     `noun`    {- <^gAmUs> -}         [ ['b','u','f','f','a','l','o'] ]
                              `plural`     FawACIL,

    FACUL |< aT               `noun`    {- <^gAmUsaT> -}       [ unwords [ ['b','u','f','f','a','l','o'], ['c','o','w'] ] ]
                              `plural`     FACUL |< At ]


cluster_41  = cluster

 |> "^g m ^s" <| [

    FaCaL                     `verb`    {- <^gama^s> -}        [ ['s','h','a','v','e'], ['c','a','r','e','s','s'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gamma^s> -}       [ ['c','a','r','e','s','s'] ],

    FaCL                      `noun`    {- <^gam^s> -}         [ ['s','h','a','v','i','n','g'], ['c','a','r','e','s','s','i','n','g'] ],

    TaFCIL                    `noun`    {- <ta^gmI^s> -}       [ ['c','a','r','e','s','s','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_42  = cluster

 |> ['^','g','a','m','a','^','s','t'] <| [

    _____                     `noun`    {- <^gama^st> -}       [ ['a','m','e','t','h','y','s','t'] ] ]


cluster_43  = cluster

 |> "^g m `" <| [

    FaCaL                     `verb`    {- <^gama`> -}         [ ['g','a','t','h','e','r'], ['a','s','s','e','m','b','l','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^gamma`> -}        [ ['a','c','c','u','m','u','l','a','t','e'], ['a','s','s','e','m','b','l','e'] ],

    FACaL                     `verb`    {- <^gAma`> -}         [ unwords [ ['m','a','k','e'], ['l','o','v','e'], ['t','o'] ] ],

    HaFCaL                    `verb`    {- <'a^gma`> -}        [ ['c','o','n','c','u','r'], unwords [ ['a','g','r','e','e'], ['u','n','a','n','i','m','o','u','s','l','y'] ] ],

    TaFaCCaL                  `verb`    {- <ta^gamma`> -}      [ ['g','a','t','h','e','r'], ['r','a','l','l','y'] ],

    IFtaCaL                   `verb`    {- <i^gtama`> -}       [ ['m','e','e','t'], ['c','o','n','f','e','r'] ],

    IstaFCaL                  `verb`    {- <ista^gma`> -}      [ ['g','a','t','h','e','r'], ['s','u','m','m','a','r','i','z','e'] ],

    FaCL                      `noun`    {- <^gam`> -}          [ ['g','a','t','h','e','r','i','n','g'], ['c','o','l','l','e','c','t','i','o','n'], ['j','o','i','n','i','n','g'] ],

    FuCUL                     `noun`    {- <^gumU`> -}         [ ['c','r','o','w','d','s'], ['m','a','s','s','e','s'] ],

    FaCL |< Iy                `adj`     {- <^gam`Iy> -}        [ ['c','o','l','l','e','c','t','i','v','e'] ],

    FuCL |< aT                `noun`    {- <^gum`aT> -}        [ ['F','r','i','d','a','y'] ]
                              `plural`     FuCL |< At
                              `plural`     FuCaL,

    FaCL |< Iy |< aT          `noun`    {- <^gam`IyaT> -}      [ ['a','s','s','o','c','i','a','t','i','o','n'], ['s','o','c','i','e','t','y'] ]
                              `plural`     FaCL |< Iy |< At,

    FaCIL                     `noun`    {- <^gamI`> -}         [ ['e','v','e','r','y','o','n','e'], ['a','l','l'] ],

    FaCIL |<< "aN"            `noun`    {- <^gamI`aN> -}       [ ['e','n','t','i','r','e','l','y'], ['t','o','g','e','t','h','e','r'] ],

    HaFCaL                    `adj`     {- <'a^gma`> -}        [ ['e','n','t','i','r','e'], ['w','h','o','l','e'] ]
                              `plural`     HaFCaL |< Un
                              `femini`     FaCLA',

    FaCAL |< aT               `noun`    {- <^gamA`aT> -}       [ ['p','a','r','t','y'], ['g','r','o','u','p'], ['s','q','u','a','d'] ]
                              `plural`     FaCAL |< At,

    FaCAL |< Iy               `adj`     {- <^gamA`Iy> -}       [ ['s','o','c','i','a','l'], ['c','o','m','m','o','n'], ['c','o','l','l','e','c','t','i','v','e'] ],

    FuCLAn                    `noun`    {- <^gum`An> -}        [ ['J','u','m','\'','a','n'] ],

    MaFCaL                    `noun`    {- <ma^gma`> -}        [ ['a','s','s','e','m','b','l','y'], ['a','c','a','d','e','m','y'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <ma^gma`Iy> -}      [ ['a','c','a','d','e','m','i','c'] ],

    MaFCaL |< Iy              `noun`    {- <ma^gma`Iy> -}      [ ['a','c','a','d','e','m','i','c','i','a','n'] ]
                              `plural`     MaFCaL |< Iy |< Un
                              `femini`     MaFCaL |< Iy |< aT,

    TaFCIL                    `noun`    {- <ta^gmI`> -}        [ ['g','a','t','h','e','r','i','n','g'], ['j','o','i','n','i','n','g'], ['a','s','s','e','m','b','l','e'] ]
                              `plural`     TaFCIL |< At,

    FiCAL                     `noun`    {- <^gimA`> -}         [ unwords [ ['s','e','x','u','a','l'], ['i','n','t','e','r','c','o','u','r','s','e'] ], ['c','o','m','b','i','n','a','t','i','o','n'] ],

    HiFCAL                    `noun`    {- <'i^gmA`> -}        [ ['c','o','n','s','e','n','s','u','s'], ['a','g','r','e','e','m','e','n','t'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'i^gmA`Iy> -}      [ ['u','n','a','n','i','m','o','u','s'], ['c','o','l','l','e','c','t','i','v','e'] ],

    TaFaCCuL                  `noun`    {- <ta^gammu`> -}      [ ['g','a','t','h','e','r','i','n','g'], ['a','s','s','e','m','b','l','y'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <i^gtimA`> -}       [ ['m','e','e','t','i','n','g'], ['g','a','t','h','e','r','i','n','g'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <i^gtimA`Iy> -}     [ ['s','o','c','i','a','l'] ],

    lA >| IFtiCAL |< Iy       `adj`     {- <lA-i^gtimA`Iy> -}  [ ['a','n','t','i','s','o','c','i','a','l'], ['a','s','o','c','i','a','l'] ],

    FACiL                     `adj`     {- <^gAmi`> -}         [ ['c','o','m','p','r','e','h','e','n','s','i','v','e'], ['e','x','t','e','n','s','i','v','e'] ],

    FACiL                     `noun`    {- <^gAmi`> -}         [ ['m','o','s','q','u','e'] ]
                              `plural`     FawACiL,

    FACiL |< aT               `noun`    {- <^gAmi`aT> -}       [ ['u','n','i','v','e','r','s','i','t','y'], ['l','e','a','g','u','e'] ]
                              `plural`     FACiL |< At,

    FACiL |< Iy               `adj`     {- <^gAmi`Iy> -}       [ ['u','n','i','v','e','r','s','i','t','y'] ],

    MaFCUL                    `adj`     {- <ma^gmU`> -}        [ ['g','a','t','h','e','r','e','d'], ['t','o','t','a','l'] ],

    MaFCUL |< aT              `noun`    {- <ma^gmU`aT> -}      [ ['c','o','l','l','e','c','t','i','o','n'], ['g','r','o','u','p'], ['b','l','o','c'] ]
                              `plural`     MaFACIL
                              `plural`     MaFCUL |< At,

    MuFaCCiL                  `noun`    {- <mu^gammi`> -}      [ ['c','o','l','l','e','c','t','o','r'], ['b','a','t','t','e','r','y'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `noun`    {- <mu^gamma`> -}      [ ['c','o','m','p','o','u','n','d'], ['c','o','m','p','l','e','x'] ]
                              `plural`     MuFaCCaL |< At,

    MuFaCCaL                  `adj`     {- <mu^gamma`> -}      [ ['c','o','m','b','i','n','e','d'], ['c','o','l','l','e','c','t','i','v','e'] ],

    MuFCaL                    `adj`     {- <mu^gma`> -}        [ ['u','n','a','n','i','m','o','u','s'], unwords [ ['i','n'], ['a','g','r','e','e','m','e','n','t'] ] ],

    MuFtaCiL                  `adj`     {- <mu^gtami`> -}      [ ['p','a','r','t','i','c','i','p','a','n','t'], ['a','s','s','e','m','b','l','a','g','e'] ],

    MuFtaCaL                  `noun`    {- <mu^gtama`> -}      [ ['s','o','c','i','e','t','y'] ]
                              `plural`     MuFtaCaL |< At,

    MuFtaCaL |< Iy            `adj`     {- <mu^gtama`Iy> -}    [ ['s','o','c','i','e','t','a','l'] ] ]


cluster_44  = cluster

 |> "^g m k" <| [

    FACaL |< Iy |< aT         `noun`    {- <^gAmakIyaT> -}     [ ['p','a','y'] ]
                              `plural`     FawACiL ]


cluster_45  = cluster

 |> "^g m l" <| [

    FaCaL                     `verb`    {- <^gamal> -}         [ ['s','u','m','m','a','r','i','z','e'] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <^gamul> -}         [ unwords [ ['b','e'], ['b','e','a','u','t','i','f','u','l'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gammal> -}        [ ['e','m','b','e','l','l','i','s','h'], ['a','d','o','r','n'] ],

    FACaL                     `verb`    {- <^gAmal> -}         [ unwords [ ['b','e'], ['c','o','u','r','t','e','o','u','s'] ], unwords [ ['b','e'], ['a','m','i','a','b','l','e'] ] ],

    HaFCaL                    `verb`    {- <'a^gmal> -}        [ ['a','d','d'], ['s','u','m','m','a','r','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <ta^gammal> -}      [ unwords [ ['a','d','o','r','n'], ['o','n','e','s','e','l','f'] ] ],

    TaFACaL                   `verb`    {- <ta^gAmal> -}       [ unwords [ ['b','e'], ['c','o','u','r','t','e','o','u','s'] ] ],

    FuCL |< aT                `noun`    {- <^gumlaT> -}        [ ['s','e','n','t','e','n','c','e'], ['c','l','a','u','s','e'], ['g','r','o','u','p'], ['w','h','o','l','e'] ]
                              `plural`     FuCaL,

    FaCaL                     `noun`    {- <^gamal> -}         [ ['c','a','m','e','l'] ]
                              `plural`     FiCAL
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <^gamal> -}         [ ['J','a','m','a','l'], ['G','a','m','a','l'] ],

    FaCCAL                    `noun`    {- <^gammAl> -}        [ unwords [ ['c','a','m','e','l'], ['d','r','i','v','e','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCAL                     `noun`    {- <^gamAl> -}         [ ['J','a','m','a','l'], ['G','a','m','a','l'] ],

    FaCAL                     `noun`    {- <^gamAl> -}         [ ['b','e','a','u','t','y'] ],

    FaCAL |< Iy               `adj`     {- <^gamAlIy> -}       [ ['a','e','s','t','h','e','t','i','c'] ],

    FaCIL                     `noun`    {- <^gamIl> -}         [ ['b','e','a','u','t','i','f','u','l'], ['n','i','c','e'] ]
                              `plural`     FaCIL |< Un
                              `femini`     FaCIL |< aT,

    FaCIL                     `noun`    {- <^gamIl> -}         [ ['J','a','m','e','e','l'], ['J','a','m','i','l'], ['G','a','m','e','e','l'] ],

    HaFCaL                    `adj`     {- <'a^gmal> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['b','e','a','u','t','i','f','u','l'] ] ],

    TaFCIL                    `noun`    {- <ta^gmIl> -}        [ ['e','m','b','e','l','l','i','s','h','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta^gmIlIy> -}      [ ['c','o','s','m','e','t','i','c'] ],

    MuFACaL |< aT             `noun`    {- <mu^gAmalaT> -}     [ ['c','o','u','r','t','e','s','y'], ['f','l','a','t','t','e','r','y'] ],

    HiFCAL                    `noun`    {- <'i^gmAl> -}        [ ['s','u','m','m','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |<< "aN"           `noun`    {- <'i^gmAlaN> -}      [ unwords [ ['i','n'], ['g','e','n','e','r','a','l'] ], unwords [ ['o','n'], ['t','h','e'], ['w','h','o','l','e'] ] ],

    HiFCAL |< Iy              `adj`     {- <'i^gmAlIy> -}      [ ['c','o','m','p','r','e','h','e','n','s','i','v','e'], ['c','o','l','l','e','c','t','i','v','e'], ['f','u','l','l'] ],

    HiFCAL |< Iy              `noun`    {- <'i^gmAlIy> -}      [ ['t','o','t','a','l'], unwords [ ['f','u','l','l'], ['a','m','o','u','n','t'] ], ['t','o','t','a','l','i','t','y'] ],

    MuFCiL                    `noun`    {- <mu^gmil> -}        [ ['w','h','o','l','e','s','a','l','e','r'] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT,

    MuFCaL                    `noun`    {- <mu^gmal> -}        [ ['s','u','m','m','a','r','y'], ['t','o','t','a','l'] ]
                              `plural`     MuFCaL |< At ]


cluster_46  = cluster

 |> ['^','g','a','m','a','l','U','n'] <| [

    _____                     `noun`    {- <^gamalUn> -}       [ ['g','a','b','l','e'] ] ]


cluster_47  = cluster

 |> "^g m n" <| [

    FuCAL                     `noun`    {- <^gumAn> -}         [ ['J','u','m','a','n'] ],

    FuCAL                     `noun`    {- <^gumAn> -}         [ ['p','e','a','r','l'] ],

    FuCAL |< aT               `noun`    {- <^gumAnaT> -}       [ ['J','u','m','a','n','a'] ] ]


cluster_48  = cluster

 |> "^g m h r" <| [

    KaRDaS                    `verb`    {- <^gamhar> -}        [ ['a','s','s','e','m','b','l','e'], ['g','a','t','h','e','r'] ],

    TaKaRDaS                  `verb`    {- <ta^gamhar> -}      [ ['a','s','s','e','m','b','l','e'], ['g','a','t','h','e','r'] ],

    KaRDaS |< aT              `noun`    {- <^gamharaT> -}      [ ['g','a','t','h','e','r','i','n','g'], ['t','h','r','o','n','g'] ],

    TaKaRDuS                  `noun`    {- <ta^gamhur> -}      [ ['g','a','t','h','e','r','i','n','g'], ['c','r','o','w','d'] ]
                              `plural`     TaKaRDuS |< At,

    KuRDUS                    `noun`    {- <^gumhUr> -}        [ ['m','u','l','t','i','t','u','d','e'], ['p','u','b','l','i','c'], ['m','a','s','s','e','s'] ]
                              `plural`     KaRADIS,

    KuRDUS |< Iy |< aT        `noun`    {- <^gumhUrIyaT> -}    [ ['r','e','p','u','b','l','i','c'] ]
                              `plural`     KuRDUS |< Iy |< At,

    KuRDUS |< Iy              `adj`     {- <^gumhUrIy> -}      [ ['r','e','p','u','b','l','i','c','a','n'], ['r','e','p','u','b','l','i','c'] ],

    KaRADIS |< Iy             `adj`     {- <^gamAhIrIy> -}     [ ['m','a','s','s'], ['t','h','r','o','n','g'] ],

    KaRADIS |< Iy |< aT       `noun`    {- <^gamAhIrIyaT> -}   [ ['J','a','m','a','h','i','r','i','y','a'] ] ]


cluster_49  = cluster

 |> ['^','g','I','n'] <| [

    _____                     `noun`    {- <^gIn> -}           [ ['g','e','n','e'] ]
                              `plural`     _____ |< At ]


cluster_50  = cluster

 |> "^g n b" <| [

    FaCaL                     `verb`    {- <^ganab> -}         [ ['a','v','e','r','t'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <^gannab> -}        [ unwords [ ['h','e','l','p'], ['a','v','o','i','d'] ], unwords [ ['s','h','i','e','l','d'], ['f','r','o','m'] ] ],

    FACaL                     `verb`    {- <^gAnab> -}         [ ['f','l','a','n','k'], ['s','k','i','r','t'], ['a','v','o','i','d'] ],

    TaFaCCaL                  `verb`    {- <ta^gannab> -}      [ ['a','v','o','i','d'] ],

    TaFACaL                   `verb`    {- <ta^gAnab> -}       [ ['a','v','o','i','d'] ],

    IFtaCaL                   `verb`    {- <i^gtanab> -}       [ ['a','v','o','i','d'] ],

    FaCL |<< "a"              `prep`    {- <^ganba> -}         [ unwords [ ['n','e','x','t'], ['t','o'] ] ],

    FaCL                      `noun`    {- <^ganb> -}          [ ['s','i','d','e'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <^ganbaT> -}        [ ['s','i','d','e'] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy                `adj`     {- <^ganbIy> -}        [ ['l','a','t','e','r','a','l'] ],

    FaCL |< Iy |< aT          `noun`    {- <^ganbIyaT> -}      [ ['d','a','g','g','e','r'] ],

    FaCAL                     `noun`    {- <^ganAb> -}         [ unwords [ ['R','i','g','h','t'], ['H','o','n','o','r','a','b','l','e'] ] ],

    FaCAL |< aT               `noun`    {- <^ganAbaT> -}       [ unwords [ ['r','i','t','u','a','l'], ['i','m','p','u','r','i','t','y'] ] ],

    FaCUL                     `noun`    {- <^ganUb> -}         [ ['s','o','u','t','h'] ],

    FaCUL |< Iy               `adj`     {- <^ganUbIy> -}       [ ['s','o','u','t','h','e','r','n'], ['s','o','u','t','h'] ],

    FACiL                     `noun`    {- <^gAnib> -}         [ ['s','i','d','e'], ['a','s','p','e','c','t'] ]
                              `plural`     FawACiL,

    FACiL |< Iy               `adj`     {- <^gAnibIy> -}       [ ['s','i','d','e'], ['l','a','t','e','r','a','l'], ['m','a','r','g','i','n','a','l'] ],

    HaFCaL |< Iy              `adj`     {- <'a^gnabIy> -}      [ ['f','o','r','e','i','g','n'] ]
                              `plural`     HaFCaL |< Iy |< Un
                              `plural`     HaFACiL,

    HaFCaL |< Iy              `noun`    {- <'a^gnabIy> -}      [ ['f','o','r','e','i','g','n','e','r'] ]
                              `plural`     HaFCaL |< Iy |< Un
                              `plural`     HaFACiL
                              `femini`     HaFCaL |< Iy |< aT,

    FaCCAL |< Iy |< aT        `noun`    {- <^gannAbIyaT> -}    [ ['e','m','b','a','n','k','m','e','n','t'], unwords [ ['s','i','d','e'], ['c','h','a','n','n','e','l'] ] ],

    TaFCIL                    `noun`    {- <ta^gnIb> -}        [ unwords [ ['h','e','l','p','i','n','g'], ['a','v','o','i','d'] ], unwords [ ['s','h','i','e','l','d','i','n','g'], ['f','r','o','m'] ] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta^gannub> -}      [ ['a','v','o','i','d','a','n','c','e'], ['a','v','o','i','d','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <i^gtinAb> -}       [ ['a','v','o','i','d','a','n','c','e'] ]
                              `plural`     IFtiCAL |< At,

    MuFaCCiL |< aT            `noun`    {- <mu^gannibaT> -}    [ ['f','l','a','n','k'], unwords [ ['w','i','n','g'], "(", ['m','i','l','.'], ")" ] ] ]


cluster_51  = cluster

 |> "^g n b r" <| [

    KaRDaS |< Iy              `adj`     {- <^ganbarIy> -}      [ ['s','h','r','i','m','p'] ] ]


cluster_52  = cluster

 |> "^g n b z" <| [

    KuRDAS                    `noun`    {- <^gunbAz> -}        [ ['g','y','m','n','a','s','t','i','c','s'], ['c','a','l','i','s','t','h','e','n','i','c','s'] ],

    KuRDAS |< Iy              `adj`     {- <^gunbAzIy> -}      [ ['g','y','m','n','a','s','t','i','c'], ['c','a','l','i','s','t','h','e','n','i','c'] ] ]


cluster_53  = cluster

 |> "^g n .h" <| [

    FaCaL                     `verb`    {- <^gana.h> -}        [ ['i','n','c','l','i','n','e'], ['t','e','n','d'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^ganna.h> -}       [ ['i','n','c','l','i','n','e'], unwords [ ['g','i','v','e'], ['w','i','n','g','s'] ] ],

    HaFCaL                    `verb`    {- <'a^gna.h> -}       [ unwords [ ['b','e'], ['i','n','c','l','i','n','e','d'] ], ['t','e','n','d'], unwords [ ['b','e'], ['s','t','r','a','n','d','e','d'] ] ],

    FiCL                      `noun`    {- <^gin.h> -}         [ ['d','a','r','k','n','e','s','s'] ],

    FiCL                      `noun`    {- <^gin.h> -}         [ ['s','i','d','e'] ],

    FuCL |< aT                `noun`    {- <^gun.haT> -}       [ ['m','i','s','d','e','m','e','a','n','o','r'] ]
                              `plural`     FuCaL,

    FaCAL                     `noun`    {- <^ganA.h> -}        [ ['w','i','n','g'], ['f','l','a','n','k'] ]
                              `plural`     HaFCuL
                              `plural`     HaFCiL |< aT,

    FuCAL                     `noun`    {- <^gunA.h> -}        [ ['m','i','s','d','e','m','e','a','n','o','r'] ],

    FuCAL |< Iy               `adj`     {- <^gunA.hIy> -}      [ ['d','e','l','i','n','q','u','e','n','t'], ['c','r','i','m','i','n','a','l'] ],

    HaFCaL                    `adj`     {- <'a^gna.h> -}       [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['i','n','c','l','i','n','e','d'] ] ],

    FaCUL                     `adj`     {- <^ganU.h> -}        [ ['i','n','c','l','i','n','e','d'] ],

    FuCUL                     `noun`    {- <^gunU.h> -}        [ ['i','n','c','l','i','n','a','t','i','o','n'], ['t','e','n','d','e','n','c','y'] ],

    FACiL                     `noun`    {- <^gAni.h> -}        [ ['w','i','n','g'], ['f','l','a','n','k'] ]
                              `plural`     FawACiL,

    FACiL                     `noun`    {- <^gAni.h> -}        [ ['d','e','l','i','n','q','u','e','n','t'], ['c','r','i','m','i','n','a','l'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    FACiL |< aT               `noun`    {- <^gAni.haT> -}      [ ['r','i','b'], ['i','n','s','i','d','e'], ['h','e','a','r','t'], ['s','o','u','l'] ]
                              `plural`     FawACiL,

    MuFaCCaL                  `adj`     {- <mu^ganna.h> -}     [ ['w','i','n','g','e','d'], ['f','l','a','n','k','e','d'] ] ]


cluster_54  = cluster

 |> "^g n d" <| [

    FaCCaL                    `verb`    {- <^gannad> -}        [ ['r','e','c','r','u','i','t'], ['e','n','l','i','s','t'], ['m','o','b','i','l','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <ta^gannad> -}      [ unwords [ ['b','e'], ['r','e','c','r','u','i','t','e','d'] ], unwords [ ['b','e'], ['e','n','l','i','s','t','e','d'] ], unwords [ ['b','e'], ['m','o','b','i','l','i','z','e','d'] ] ],

    FuCL                      `noun`    {- <^gund> -}          [ ['a','r','m','y'] ],

    FuCL |< Iy                `noun`    {- <^gundIy> -}        [ ['s','o','l','d','i','e','r'], ['p','r','i','v','a','t','e'] ]
                              `plural`     FuCUL
                              `plural`     HaFCAL
                              `femini`     FuCL |< Iy |< aT,

    FuCL |< Iy |< aT          `noun`    {- <^gundIyaT> -}      [ ['m','i','l','i','t','a','r','i','s','m'], unwords [ ['m','i','l','i','t','a','r','y'], ['a','r','t'] ] ],

    TaFCIL                    `noun`    {- <ta^gnId> -}        [ ['r','e','c','r','u','i','t','m','e','n','t'], ['e','n','l','i','s','t','m','e','n','t'], ['m','o','b','i','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta^gannud> -}      [ unwords [ ['m','i','l','i','t','a','r','y'], ['s','e','r','v','i','c','e'] ] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCaL                  `adj`     {- <mu^gannad> -}      [ ['r','e','c','r','u','i','t','e','d'], ['e','n','l','i','s','t','e','d'], ['r','e','c','r','u','i','t'], ['d','r','a','f','t','e','e'], ['c','o','n','s','c','r','i','p','t'] ] ]


cluster_55  = cluster

 |> "^g n d b" <| [

    KuRDuS                    `noun`    {- <^gundub> -}        [ ['g','r','a','s','s','h','o','p','p','e','r'] ]
                              `plural`     KaRADiS ]


cluster_56  = cluster

 |> "^g n d r" <| [

    KaRDaS                    `verb`    {- <^gandar> -}        [ ['r','e','t','o','u','c','h'], ['m','a','n','g','l','e'] ],

    KiRDAS |< Iy              `noun`    {- <^gindArIy> -}      [ unwords [ ['s','t','a','n','d','a','r','d'], "-", ['b','e','a','r','e','r'] ], ['c','o','r','n','e','t','i','s','t'] ]
                              `plural`     KaRADiS |< aT
                              `plural`     KiRDAS |< Iy |< Un ]


cluster_57  = cluster

 |> "^g n d l" <| [

    KaRDaS                    `verb`    {- <^gandal> -}        [ unwords [ ['b','r','i','n','g'], ['d','o','w','n'] ], ['f','e','l','l'] ],

    KaRDaS                    `noun`    {- <^gandal> -}        [ ['c','a','t','a','r','a','c','t'] ]
                              `plural`     KaRDaS |< At
                              `plural`     KaRADiS,

    KuRDUS                    `noun`    {- <^gundUl> -}        [ ['g','o','n','d','o','l','a'] ]
                              `plural`     KuRDUS |< At
                              `plural`     KaRADIS ]


cluster_58  = cluster

 |> ['^','g','i','n','I','r','A','l'] <| [

    _____                     `noun`    {- <^ginIrAl> -}       [ ['g','e','n','e','r','a','l'] ] ]

 |> ['^','g','i','n','i','r','A','l'] <| [

    _____                     `noun`    {- <^ginirAl> -}       [ ['g','e','n','e','r','a','l'] ] ]


cluster_59  = cluster

 |> "^g n z" <| [

    FaCCaL                    `verb`    {- <^gannaz> -}        [ ['b','u','r','y'] ],

    FiCAL |< aT               `noun`    {- <^ginAzaT> -}       [ ['f','u','n','e','r','a','l'] ]
                              `plural`     FiCAL |< At
                              `plural`     FaCA'iL,

    FiCAL |< Iy               `adj`     {- <^ginAzIy> -}       [ ['f','u','n','e','r','a','r','y'] ],

    FuCCAL                    `noun`    {- <^gunnAz> -}        [ ['f','u','n','e','r','a','l'] ]
                              `plural`     FaCACIL,

    TaFCIL                    `noun`    {- <ta^gnIz> -}        [ ['b','u','r','y','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_60  = cluster

 |> "^g n z r" <| [

    KaRDaS                    `verb`    {- <^ganzar> -}        [ unwords [ ['b','e'], ['v','e','r','d','i','g','r','i','s'] ] ],

    KiRDAS                    `noun`    {- <^ginzAr> -}        [ ['v','e','r','d','i','g','r','i','s'], ['c','o','p','p','e','r'] ],

    KiRDIS                    `noun`    {- <^ginzIr> -}        [ ['c','h','a','i','n'], ['t','r','a','c','k'] ]
                              `plural`     KaRADIS,

    KiRDIS                    `noun`    {- <^ginzIr> -}        [ ['j','i','n','z','e','e','r'] ]
                              `plural`     KaRADIS,

    KaRDUS |< Iy              `adj`     {- <^ganzUrIy> -}      [ ['J','a','n','z','o','u','r','i'] ],

    MuKaRDiS                  `adj`     {- <mu^ganzir> -}      [ unwords [ ['t','r','a','c','k'], "-", ['l','a','y','i','n','g'] ] ],

    MuKaRDaS                  `adj`     {- <mu^ganzar> -}      [ ['t','r','a','c','k','e','d'], unwords [ ['h','a','v','i','n','g'], ['t','r','a','c','k','s'], "(", ['v','e','h','i','c','l','e'], ")" ] ] ]


cluster_61  = cluster

 |> "^g n s" <| [

    FaCCaL                    `verb`    {- <^gannas> -}        [ ['c','l','a','s','s','i','f','y'], ['h','o','m','o','g','e','n','i','z','e'], ['a','s','s','i','m','i','l','a','t','e'] ],

    FACaL                     `verb`    {- <^gAnas> -}         [ unwords [ ['b','e'], ['r','e','l','a','t','e','d'], ['t','o'] ], unwords [ ['b','e'], ['o','f'], ['s','a','m','e'], ['k','i','n','d'], ['a','s'] ] ],

    TaFaCCaL                  `verb`    {- <ta^gannas> -}      [ unwords [ ['b','e'], ['n','a','t','u','r','a','l','i','z','e','d'] ] ],

    TaFACaL                   `verb`    {- <ta^gAnas> -}       [ unwords [ ['b','e'], ['h','o','m','o','g','e','n','o','u','s'] ], unwords [ ['b','e'], ['r','e','l','a','t','e','d'] ] ],

    FiCL                      `noun`    {- <^gins> -}          [ ['g','e','n','d','e','r'], ['s','e','x'] ]
                              `plural`     HaFCAL,

    FiCL                      `noun`    {- <^gins> -}          [ ['t','y','p','e'], ['k','i','n','d'] ]
                              `plural`     HaFCAL,

    FiCL |< Iy                `adj`     {- <^ginsIy> -}        [ ['s','e','x','u','a','l'] ],

    FiCL |< Iy                `adj`     {- <^ginsIy> -}        [ ['e','t','h','n','i','c'], ['r','a','c','i','a','l'], ['n','a','t','i','o','n','a','l'] ],

    FiCL |< Iy |< aT          `noun`    {- <^ginsIyaT> -}      [ ['n','a','t','i','o','n','a','l','i','t','y'], ['c','i','t','i','z','e','n','s','h','i','p'] ],

    lA >| FiCL |< Iy |< aT    `noun`    {- <lA-^ginsIyaT> -}   [ ['s','t','a','t','e','l','e','s','s','n','e','s','s'] ],

    TaFCIL                    `noun`    {- <ta^gnIs> -}        [ ['n','a','t','u','r','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    FiCAL                     `noun`    {- <^ginAs> -}         [ ['a','s','s','o','n','a','n','c','e'], ['p','u','n'] ],

    MuFACaL |< aT             `noun`    {- <mu^gAnasaT> -}     [ ['s','i','m','i','l','a','r','i','t','y'], ['r','e','s','e','m','b','l','a','n','c','e'] ],

    TaFaCCuL                  `noun`    {- <ta^gannus> -}      [ ['n','a','t','u','r','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <ta^gAnus> -}       [ ['h','o','m','o','g','e','n','e','i','t','y'], ['r','e','s','e','m','b','l','a','n','c','e'] ]
                              `plural`     TaFACuL |< At,

    MuFaCCiL                  `adj`     {- <mu^gannis> -}      [ ['m','o','n','g','r','e','l'] ],

    MuFACiL                   `adj`     {- <mu^gAnis> -}       [ ['h','o','m','o','g','e','n','e','o','u','s'], ['r','e','l','a','t','e','d'] ],

    MutaFaCCiL                `adj`     {- <muta^gannis> -}    [ ['n','a','t','u','r','a','l','i','z','e','d'] ],

    MutaFACiL                 `adj`     {- <muta^gAnis> -}     [ ['h','o','m','o','g','e','n','e','o','u','s'], ['r','e','l','a','t','e','d'] ] ]


cluster_62  = cluster

 |> "^g n f" <| [

    TaFACaL                   `verb`    {- <ta^gAnaf> -}       [ ['d','e','v','i','a','t','e'], ['i','n','c','l','i','n','e'] ] ]


cluster_63  = cluster

 |> "^g n f .s" <| [

    KuRDAS                    `noun`    {- <^gunfA.s> -}       [ ['r','a','g'], ['s','a','c','k','c','l','o','t','h'] ] ]


cluster_64  = cluster

 |> "^g n q" <| [

    FaCaL                     `verb`    {- <^ganaq> -}         [ ['c','a','t','a','p','u','l','t'] ]
                              `imperf`     FCiL ]


cluster_65  = cluster

 |> "^g n k" <| [

    FuCL                      `noun`    {- <^gunk> -}          [ ['h','a','r','p'] ]
                              `plural`     FuCUL,

    FuCL |< Iy                `adj`     {- <^gunkIy> -}        [ ['h','a','r','p','i','s','t'] ] ]


cluster_66  = cluster

 |> ['^','g','i','n','I','h'] <| [

    _____                     `noun`    {- <^ginIh> -}         [ ['p','o','u','n','d'] ]
                              `plural`     _____ |< At
                           
    `excepts` Triptote ]

 |> ['^','g','u','n','a','y','h'] <| [

    _____                     `noun`    {- <^gunayh> -}        [ ['p','o','u','n','d'] ]
                              `plural`     _____ |< At
                           
    `excepts` Triptote ]


cluster_67  = cluster

 |> ['^','g','a','n','b','U','n'] <| [

    _____                     `noun`    {- <^ganbUn> -}        [ ['h','a','m'] ] ]


cluster_68  = cluster

 |> ['^','g','u','n','b','l','A','.','t'] <| [

    _____                     `xtra`    {- <^gunblA.t> -}      [ ['J','u','m','b','l','a','t','t'] ],

    _____ |< Iy               `adj`     {- <^gunblA.tIy> -}    [ ['J','u','m','b','l','a','t','t','i','s','t'] ] ]


cluster_69  = cluster

 |> ['^','g','a','n','d','a','r','m'] <| [

    _____ |< aT               `noun`    {- <^gandarmaT> -}     [ ['g','e','n','d','a','r','m','e'] ],

    _____ |< Iy               `adj`     {- <^gandarmIy> -}     [ ['g','e','n','d','a','r','m','e'] ] ]


cluster_70  = cluster

 |> ['^','g','a','n','d','u','f','l'] <| [

    _____ |< Iy               `adj`     {- <^ganduflIy> -}     [ ['o','y','s','t','e','r','s'] ] ]


cluster_71  = cluster

 |> ['^','g','a','n','z','a','b','I','l'] <| [

    _____                     `noun`    {- <^ganzabIl> -}      [ ['g','i','n','g','e','r'] ],

    _____ |< Iy               `adj`     {- <^ganzabIlIy> -}    [ ['g','i','n','g','e','r'] ] ]


cluster_72  = cluster

 |> ['^','g','A','n','f','I'] <| [

    _____                     `noun`    {- <^gAnfI> -}         [ ['J','a','n','u','a','r','y'] ] ]


cluster_73  = cluster

 |> ['^','g','A','h'] <| [

    _____                     `noun`    {- <^gAh> -}           [ ['r','a','n','k'], ['d','i','g','n','i','t','y'] ] ]


cluster_74  = cluster

 |> "^g h b _d" <| [

    KaRDaS                    `adj`     {- <^gahba_d> -}       [ ['b','r','i','l','l','i','a','n','t'], ['e','r','u','d','i','t','e'], ['g','e','n','i','u','s'] ]
                              `plural`     KaRADiS |< aT,

    KiRDIS                    `adj`     {- <^gihbI_d> -}       [ ['b','r','i','l','l','i','a','n','t'], ['e','r','u','d','i','t','e'], ['g','e','n','i','u','s'] ]
                              `plural`     KaRADiS |< aT,

    KiRDiS                    `adj`     {- <^gihbi_d> -}       [ ['b','r','i','l','l','i','a','n','t'], ['e','r','u','d','i','t','e'], ['g','e','n','i','u','s'] ]
                              `plural`     KaRADiS |< aT ]


cluster_75  = cluster

 |> "^g h d" <| [

    FaCaL                     `verb`    {- <^gahad> -}         [ ['e','n','d','e','a','v','o','r'], ['s','t','r','i','v','e'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <^gAhad> -}         [ unwords [ ['w','a','g','e'], ['w','a','r'], ['o','r'], ['J','i','h','a','d'], "(", ['a','g','a','i','n','s','t'], ")" ] ],

    HaFCaL                    `verb`    {- <'a^ghad> -}        [ ['f','a','t','i','g','u','e'], ['s','t','r','a','i','n'] ],

    IFtaCaL                   `verb`    {- <i^gtahad> -}       [ unwords [ ['w','o','r','k'], ['h','a','r','d'] ], ['s','t','r','i','v','e'] ],

    FaCL                      `noun`    {- <^gahd> -}          [ ['e','x','e','r','t','i','o','n'], ['e','n','d','e','a','v','o','r'], ['e','f','f','o','r','t','s'] ]
                              `plural`     FuCUL,

    FuCL                      `noun`    {- <^guhd> -}          [ ['s','t','r','a','i','n'], ['e','x','e','r','t','i','o','n'] ],

    FaCIL                     `noun`    {- <^gahId> -}         [ ['s','o','u','g','h','t'], unwords [ ['w','o','r','k','e','d'], ['h','a','r','d'], ['f','o','r'] ] ],

    FiCAL                     `noun`    {- <^gihAd> -}         [ ['J','i','h','a','d'], unwords [ ['h','o','l','y'], ['w','a','r'] ], ['s','t','r','u','g','g','l','e'] ],

    FiCAL |< Iy               `adj`     {- <^gihAdIy> -}       [ ['J','i','h','a','d','i','s','t'], unwords [ ['h','o','l','y'], ['w','a','r','f','a','r','e'] ] ],

    MuFACaL |< aT             `noun`    {- <mu^gAhadaT> -}     [ ['f','i','g','h','t'], ['b','a','t','t','l','e'] ],

    HiFCAL                    `noun`    {- <'i^ghAd> -}        [ ['e','f','f','o','r','t'], ['e','x','e','r','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'i^ghAdIy> -}      [ ['s','t','r','e','n','u','o','u','s'], ['g','r','u','e','l','i','n','g'] ],

    IFtiCAL                   `noun`    {- <i^gtihAd> -}       [ ['e','f','f','o','r','t'], unwords [ ['i','n','d','e','p','e','n','d','e','n','t'], ['t','h','i','n','k','i','n','g'] ] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <^gAhid> -}         [ ['s','t','r','i','v','i','n','g'], ['e','n','d','e','a','v','o','r','i','n','g'] ],

    MaFCUL                    `noun`    {- <ma^ghUd> -}        [ ['e','f','f','o','r','t'], ['e','n','d','e','a','v','o','r'] ]
                              `plural`     MaFCUL |< At,

    MaFCUL                    `adj`     {- <ma^ghUd> -}        [ unwords [ ['e','x','p','e','n','d','e','d'], "(", ['e','f','f','o','r','t'], ")" ] ],

    MuFACiL                   `noun`    {- <mu^gAhid> -}       [ ['f','i','g','h','t','e','r'], ['w','a','r','r','i','o','r'], ['M','u','j','a','h','i','d'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFCiL                    `adj`     {- <mu^ghid> -}        [ ['s','t','r','e','n','u','o','u','s'], ['g','r','u','e','l','i','n','g'] ],

    MuFCaL                    `adj`     {- <mu^ghad> -}        [ ['e','x','h','a','u','s','t','e','d'] ],

    MuFtaCiL                  `adj`     {- <mu^gtahid> -}      [ ['i','n','d','u','s','t','r','i','o','u','s'], ['d','i','l','i','g','e','n','t'] ] ]


cluster_76  = cluster

 |> "^g h r" <| [

    FaCaL                     `verb`    {- <^gahar> -}         [ ['a','p','p','e','a','r'] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <^gahar> -}         [ ['a','n','n','o','u','n','c','e'], ['p','r','o','c','l','a','i','m'] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <^gahur> -}         [ unwords [ ['b','e'], ['l','o','u','d'] ], unwords [ ['b','e'], ['a','u','d','i','b','l','e'] ] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <^gAhar> -}         [ ['c','o','n','f','e','s','s'], ['e','x','p','r','e','s','s'] ],

    FaCL                      `noun`    {- <^gahr> -}          [ ['p','u','b','l','i','c','n','e','s','s'], ['p','u','b','l','i','c','i','t','y'], ['n','o','t','o','r','i','e','t','y'] ],

    FaCL |< aT |<< "aN"       `noun`    {- <^gahraTaN> -}      [ ['p','u','b','l','i','c','l','y'], ['o','p','e','n','l','y'], ['o','v','e','r','t','l','y'], ['f','r','a','n','k','l','y'] ],

    FiCAL                     `noun`    {- <^gihAr> -}         [ ['p','u','b','l','i','c','n','e','s','s'], ['p','u','b','l','i','c','i','t','y'], ['n','o','t','o','r','i','e','t','y'] ],

    FaCL |< Iy                `adj`     {- <^gahrIy> -}        [ ['p','u','b','l','i','c'], unwords [ ['o','u','t'], "-", ['l','o','u','d'] ] ],

    FaCIL                     `adj`     {- <^gahIr> -}         [ ['l','o','u','d'] ],

    HaFCaL                    `adj`     {- <'a^ghar> -}        [ unwords [ ['l','o','u','d','e','r'], "/", ['l','a','u','d','e','s','t'] ] ],

    HaFCaL                    `adj`     {- <'a^ghar> -}        [ unwords [ ['d','a','y'], "-", ['b','l','i','n','d'] ] ],

    MiFCaL                    `noun`    {- <mi^ghar> -}        [ ['m','i','c','r','o','s','c','o','p','e'] ]
                              `plural`     MaFACiL,

    MiFCaL |< Iy              `adj`     {- <mi^gharIy> -}      [ ['m','i','c','r','o','s','c','o','p','i','c'] ],

    MiFCAL                    `noun`    {- <mi^ghAr> -}        [ unwords [ ['l','o','u','d'], "-", ['v','o','i','c','e','d'] ], ['m','e','g','a','p','h','o','n','e'] ]
                              `plural`     MaFACIL,

    MuFACaL |< aT             `noun`    {- <mu^gAharaT> -}     [ ['f','r','a','n','k','n','e','s','s'], ['c','a','n','d','o','r'] ],

    MaFCUL                    `adj`     {- <ma^ghUr> -}        [ ['p','e','r','c','e','p','t','i','b','l','e'] ],

    MuFACiL                   `adj`     {- <mu^gAhir> -}       [ ['o','p','e','n'], ['p','u','b','l','i','c'] ] ]


cluster_77  = cluster

 |> "^g h z" <| [

    FaCaL                     `verb`    {- <^gahaz> -}         [ unwords [ ['f','i','n','i','s','h'], ['o','f','f'] ], unwords [ ['g','i','v','e'], "a", ['c','o','u','p'], ['d','e'], ['g','r','a','c','e'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^gahhaz> -}        [ ['e','q','u','i','p'], ['s','u','p','p','l','y'], ['p','r','e','p','a','r','e'] ],

    HaFCaL                    `verb`    {- <'a^ghaz> -}        [ unwords [ ['f','i','n','i','s','h'], ['o','f','f'] ], unwords [ ['g','i','v','e'], "a", ['c','o','u','p'], ['d','e'], ['g','r','a','c','e'] ] ],

    TaFaCCaL                  `verb`    {- <ta^gahhaz> -}      [ unwords [ ['b','e'], ['e','q','u','i','p','p','e','d'] ], unwords [ ['b','e'], ['f','u','r','n','i','s','h','e','d'] ], unwords [ ['g','e','t'], ['r','e','a','d','y'] ] ],

    FiCAL                     `noun`    {- <^gihAz> -}         [ ['a','p','p','a','r','a','t','u','s'], ['e','q','u','i','p','m','e','n','t'], ['a','p','p','l','i','a','n','c','e'], ['s','y','s','t','e','m'] ]
                              `plural`     HaFCiL |< aT,

    FuCUL |< Iy |< aT         `noun`    {- <^guhUzIyaT> -}     [ ['p','r','e','p','a','r','e','d','n','e','s','s'], ['f','i','t','n','e','s','s'] ],

    TaFCIL                    `noun`    {- <ta^ghIz> -}        [ ['e','q','u','i','p','m','e','n','t'], ['g','e','a','r'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta^ghIzIy> -}      [ ['p','r','e','p','a','r','a','t','o','r','y'], ['e','q','u','i','p','p','i','n','g'] ],

    FACiL                     `adj`     {- <^gAhiz> -}         [ ['p','r','e','p','a','r','e','d'], ['e','q','u','i','p','p','e','d'] ],

    FACiL |< Iy |< aT         `noun`    {- <^gAhizIyaT> -}     [ ['r','e','a','d','i','n','e','s','s'], ['p','r','e','p','a','r','e','d','n','e','s','s'] ],

    MuFaCCiL                  `noun`    {- <mu^gahhiz> -}      [ ['s','u','p','p','l','i','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <mu^gahhaz> -}      [ ['e','q','u','i','p','p','e','d'], ['s','u','p','p','l','i','e','d'] ] ]


cluster_78  = cluster

 |> "^g h ^s" <| [

    HaFCaL                    `verb`    {- <'a^gha^s> -}       [ ['s','o','b'] ],

    FaCL |< aT                `noun`    {- <^gah^saT> -}       [ ['s','o','b'] ]
                              `plural`     FaCaL |< At,

    HiFCAL                    `noun`    {- <'i^ghA^s> -}       [ ['s','o','b'] ]
                              `plural`     HiFCAL |< At ]


cluster_79  = cluster

 |> "^g h .d" <| [

    HaFCaL                    `verb`    {- <'a^gha.d> -}       [ ['a','b','o','r','t'], ['m','i','s','c','a','r','r','y'] ],

    FiCL                      `noun`    {- <^gih.d> -}         [ unwords [ ['m','i','s','c','a','r','r','i','e','d'], ['f','e','t','u','s'] ] ],

    FaCIL                     `noun`    {- <^gahI.d> -}        [ unwords [ ['m','i','s','c','a','r','r','i','e','d'], ['f','e','t','u','s'] ] ],

    HiFCAL                    `noun`    {- <'i^ghA.d> -}       [ ['a','b','o','r','t','i','o','n'], ['m','i','s','c','a','r','r','i','a','g','e'] ]
                              `plural`     HiFCAL |< At ]


cluster_80  = cluster

 |> "^g h l" <| [

    FaCiL                     `verb`    {- <^gahil> -}         [ ['i','g','n','o','r','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <^gahhal> -}        [ unwords [ ['c','a','l','l'], ['s','t','u','p','i','d'] ], ['s','t','u','p','e','f','y'] ],

    TaFACaL                   `verb`    {- <ta^gAhal> -}       [ unwords [ ['f','e','i','g','n'], ['i','g','n','o','r','a','n','c','e'], ['o','f'] ], ['d','i','s','r','e','g','a','r','d'] ],

    IstaFCaL                  `verb`    {- <ista^ghal> -}      [ unwords [ ['c','o','n','s','i','d','e','r'], ['i','g','n','o','r','a','n','t'] ] ],

    FaCL                      `noun`    {- <^gahl> -}          [ ['i','g','n','o','r','a','n','c','e'] ],

    FaCAL |< aT               `noun`    {- <^gahAlaT> -}       [ ['i','g','n','o','r','a','n','c','e'] ],

    FaCUL                     `adj`     {- <^gahUl> -}         [ ['i','g','n','o','r','a','n','t'], ['f','o','o','l','i','s','h'] ],

    MaFCaL                    `noun`    {- <ma^ghal> -}        [ unwords [ ['u','n','k','n','o','w','n'], ['t','e','r','r','i','t','o','r','y'] ] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta^ghIl> -}        [ ['s','t','u','l','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFACuL                   `noun`    {- <ta^gAhul> -}       [ ['i','g','n','o','r','i','n','g'], ['d','i','s','r','e','g','a','r','d'], unwords [ ['f','e','i','g','n','e','d'], ['i','g','n','o','r','a','n','c','e'] ] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `adj`     {- <^gAhil> -}         [ ['i','g','n','o','r','a','n','t'], ['f','o','o','l','i','s','h'] ]
                              `plural`     FaCaL |< aT
                              `plural`     FuCCaL
                              `plural`     FuCaLA'
                              `plural`     FuCCAL,

    FACiL |< Iy               `adj`     {- <^gAhilIy> -}       [ ['p','a','g','a','n'], unwords [ ['J','a','h','i','l','i'], "(", ['p','r','e'], "-", ['I','s','l','a','m','i','c'], ")" ] ],

    FACiL |< Iy |< aT         `noun`    {- <^gAhilIyaT> -}     [ unwords [ ['J','a','h','i','l','i','y','a'], "(", ['p','r','e'], "-", ['I','s','l','a','m'], ")" ], ['i','g','n','o','r','a','n','c','e'] ],

    MaFCUL                    `adj`     {- <ma^ghUl> -}        [ ['u','n','k','n','o','w','n'], ['u','n','i','d','e','n','t','i','f','i','e','d'] ],

    MaFCUL |< Iy |< aT        `noun`    {- <ma^ghUlIyaT> -}    [ ['a','n','o','n','y','m','i','t','y'] ] ]


cluster_81  = cluster

 |> "^g h m" <| [

    FaCuL                     `verb`    {- <^gahum> -}         [ ['f','r','o','w','n'] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'a^gham> -}        [ ['f','r','o','w','n'], unwords [ ['b','e'], ['g','l','o','o','m','y'] ] ],

    TaFaCCaL                  `verb`    {- <ta^gahham> -}      [ ['s','c','o','w','l'], unwords [ ['b','e'], ['g','l','o','o','m','y'] ] ],

    FaCL                      `noun`    {- <^gahm> -}          [ ['s','u','l','l','e','n'], ['g','l','o','o','m','y'] ],

    FaCAL                     `noun`    {- <^gahAm> -}         [ ['c','l','o','u','d','s'] ],

    FaCAL |< aT               `noun`    {- <^gahAmaT> -}       [ ['s','u','l','l','e','n'], ['g','l','o','o','m','y'] ],

    FuCUL |< aT               `noun`    {- <^guhUmaT> -}       [ ['s','u','l','l','e','n'], ['g','l','o','o','m','y'] ],

    MutaFaCCiL                `adj`     {- <muta^gahhim> -}    [ ['f','r','o','w','n','i','n','g'], ['s','c','o','w','l','i','n','g'] ] ]


cluster_82  = cluster

 |> ['^','g','a','h','a','n','n','a','m'] <| [

    _____                     `noun`    {- <^gahannam> -}      [ ['h','e','l','l'] ],

    _____ |< Iy               `adj`     {- <^gahannamIy> -}    [ ['h','e','l','l','i','s','h'], ['i','n','f','e','r','n','a','l'] ] ]


cluster_83  = cluster

 |> ['^','g','r','U','s'] <| [

    _____ |< aT               `noun`    {- <^grUsaT> -}        [ ['g','r','o','s','s'] ] ]


cluster_84  = cluster

 |> ['^','g','r','A','m'] <| [

    _____                     `noun`    {- <^grAm> -}          [ ['g','r','a','m'] ]
                           
    `excepts` Triptote ]


cluster_85  = cluster

 |> ['^','g','r','A','n','I','t'] <| [

    _____                     `noun`    {- <^grAnIt> -}        [ ['g','r','a','n','i','t','e'] ],

    _____ |< Iy               `adj`     {- <^grAnItIy> -}      [ ['g','r','a','n','i','t','e'], ['g','r','a','n','i','t','i','c'] ] ]


cluster_86  = cluster

 |> ['^','g','l','A','s','I','h'] <| [

    _____                     `noun`    {- <^glAsIh> -}        [ unwords [ ['k','i','d'], ['l','e','a','t','h','e','r'] ] ] ]


cluster_87  = cluster

 |> ['^','g','l','U','k','U','z'] <| [

    _____                     `noun`    {- <^glUkUz> -}        [ ['g','l','u','c','o','s','e'] ] ]


cluster_88  = cluster

 |> ".h b .h b" <| [

    KaRDaS                    `noun`    {- <.hab.hab> -}       [ ['w','a','t','e','r','m','e','l','o','n'] ],

    KuRADiS                   `noun`    {- <.hubA.hib> -}      [ ['f','i','r','e','f','l','y'], ['g','l','o','w','w','o','r','m'] ] ]


cluster_89  = cluster

 |> ".h b _d" <| [

    FaCCaL                    `verb`    {- <.habba_d> -}       [ ['a','p','p','l','a','u','d'], ['a','p','p','r','e','c','i','a','t','e'] ],

    TaFCIL                    `noun`    {- <ta.hbI_d> -}       [ ['a','p','p','r','o','v','a','l'], ['a','c','c','l','a','i','m'] ]
                              `plural`     TaFCIL |< At ]


cluster_90  = cluster

 |> ".h b r" <| [

    YaFCUL                    `noun`    {- <ya.hbUr> -}        [ unwords [ ['b','u','s','t','a','r','d'], ['c','h','i','c','k'] ] ],

    FaCaL                     `verb`    {- <.habar> -}         [ ['g','l','a','d','d','e','n'], ['d','e','l','i','g','h','t'] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <.habir> -}         [ unwords [ ['b','e'], ['h','a','p','p','y'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <.habbar> -}        [ ['e','m','b','e','l','l','i','s','h'], ['r','e','f','i','n','e'], ['c','o','m','p','o','s','e'] ],

    FiCL                      `noun`    {- <.hibr> -}          [ ['i','n','k'] ],

    FaCL                      `noun`    {- <.habr> -}          [ ['p','o','n','t','i','f','f'] ],

    FaCL |< Iy                `adj`     {- <.habrIy> -}        [ ['p','o','n','t','i','f','i','c','a','l'] ],

    FaCL |< Iy |< aT          `noun`    {- <.habrIyaT> -}      [ ['p','o','n','t','i','f','i','c','a','t','e'] ],

    FaCaL |< aT               `noun`    {- <.habaraT> -}       [ ['s','h','a','w','l'], ['w','r','a','p'] ],

    FaCAL                     `noun`    {- <.habAr> -}         [ ['m','a','r','k'], ['t','r','a','c','e'] ]
                              `plural`     FaCAL |< At,

    FuCUL                     `noun`    {- <.hubUr> -}         [ ['j','o','y'] ],

    MiFCaL |< aT              `noun`    {- <mi.hbaraT> -}      [ ['i','n','k','w','e','l','l'] ]
                              `plural`     MaFCaL
                              `plural`     MaFACiL,

    FuCALY                    `noun`    {- <.hubArY> -}        [ ['b','u','s','t','a','r','d'] ]
                              `plural`     FuCALY |< At ]


cluster_91  = cluster

 |> ".h b s" <| [

    FaCaL                     `verb`    {- <.habas> -}         [ ['o','b','s','t','r','u','c','t'], ['c','o','n','f','i','n','e'] ]
                              `imperf`     FCiL,

    InFaCaL                   `verb`    {- <in.habas> -}       [ unwords [ ['b','e'], ['r','e','s','t','r','a','i','n','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i.htabas> -}       [ ['c','o','n','f','i','n','e'], ['r','e','t','a','i','n'] ],

    FaCL                      `noun`    {- <.habs> -}          [ ['c','o','n','f','i','n','e','m','e','n','t'], ['c','u','s','t','o','d','y'], ['p','r','i','s','o','n'] ]
                              `plural`     FuCUL,

    FiCL                      `noun`    {- <.hibs> -}          [ ['d','a','m'], ['b','a','r','r','a','g','e'] ]
                              `plural`     HaFCAL,

    FuCL |< aT                `noun`    {- <.hubsaT> -}        [ ['i','m','p','e','d','i','m','e','n','t'], ['a','p','h','a','s','i','a'] ],

    FaCUL                     `noun`    {- <.habUs> -}         [ unwords [ ['h','a','b','o','u','s'], "(", ['M','a','g','h','r','e','b','i'], ['w','a','q','f'], ")" ], ['f','o','u','n','d','a','t','i','o','n'] ],

    FaCIL                     `adj`     {- <.habIs> -}         [ ['s','e','c','l','u','d','e','d'], ['r','e','s','t','r','a','i','n','e','d'], ['h','e','r','m','i','t','s'] ]
                              `plural`     FuCaLA',

    MaFCaL                    `noun`    {- <ma.hbas> -}        [ ['p','r','i','s','o','n'], ['c','e','l','l'], unwords [ ['s','h','u','t','o','f','f'], ['v','a','l','v','e','s'] ] ]
                              `plural`     MaFACiL
                              `plural`     MaFCiL,

    MiFCaL                    `noun`    {- <mi.hbas> -}        [ unwords [ ['s','h','u','t','o','f','f'], ['v','a','l','v','e'] ] ],

    MaFCaL |< aT              `noun`    {- <ma.hbasaT> -}      [ ['h','e','r','m','i','t','a','g','e'] ],

    InFiCAL                   `noun`    {- <in.hibAs> -}       [ ['s','e','c','l','u','s','i','o','n'], ['c','o','n','f','i','n','e','m','e','n','t'] ]
                              `plural`     InFiCAL |< At,

    IFtiCAL                   `noun`    {- <i.htibAs> -}       [ ['r','e','t','e','n','t','i','o','n'], ['o','b','s','t','r','u','c','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    MaFCUL                    `adj`     {- <ma.hbUs> -}        [ ['i','m','p','r','i','s','o','n','e','d'], ['d','e','t','a','i','n','e','d'], ['d','e','t','a','i','n','e','e'] ]
                              `plural`     MaFCUL |< Un
                              `plural`     MaFACIL ]


cluster_92  = cluster

 |> ".h b ^s" <| [

    FaCaL                     `noun`    {- <.haba^s> -}        [ ['E','t','h','i','o','p','i','a'], ['A','b','y','s','s','i','n','i','a'] ],

    FaCaL |< aT               `noun`    {- <.haba^saT> -}      [ ['E','t','h','i','o','p','i','a'], ['A','b','y','s','s','i','n','i','a'] ],

    FaCaL |< Iy               `adj`     {- <.haba^sIy> -}      [ ['H','a','b','a','s','h','i'] ],

    FaCaL |< Iy               `adj`     {- <.haba^sIy> -}      [ ['E','t','h','i','o','p','i','a','n'], ['A','b','y','s','s','i','n','i','a','n'] ]
                              `plural`     HaFCAL
                              `plural`     FaCaL
                              `plural`     FaCaL |< aT ]


cluster_93  = cluster

 |> ".h b .t" <| [

    FaCaL                     `verb`    {- <.haba.t> -}        [ ['f','a','i','l'], ['a','b','o','r','t'] ]
                              `imperf`     FCiL,

    HaFCaL                    `verb`    {- <'a.hba.t> -}       [ ['f','o','i','l'], ['t','h','w','a','r','t'] ],

    FaCaL                     `noun`    {- <.haba.t> -}        [ ['s','c','a','r'], ['w','e','l','t'] ],

    FuCUL                     `noun`    {- <.hubU.t> -}        [ ['f','a','i','l','u','r','e'], ['f','u','t','i','l','i','t','y'] ],

    HiFCAL                    `noun`    {- <'i.hbA.t> -}       [ ['t','h','w','a','r','t','i','n','g'], ['d','e','f','e','a','t','i','n','g'], ['d','e','f','e','a','t'], ['f','r','u','s','t','r','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    MuFCiL                    `adj`     {- <mu.hbi.t> -}       [ ['f','r','u','i','t','l','e','s','s'], ['w','o','r','t','h','l','e','s','s'] ] ]


cluster_94  = cluster

 |> ".h b q" <| [

    FaCaL                     `noun`    {- <.habaq> -}         [ ['b','a','s','i','l'], ['m','a','r','j','o','r','a','m'] ],

    FuCayL |< aT              `noun`    {- <.hubayqaT> -}      [ ['H','u','b','e','i','q','a'] ],

    FiCAL                     `noun`    {- <.hibAq> -}         [ ['b','a','s','i','l'] ] ]


cluster_95  = cluster

 |> ['.','h','a','b','a','q','U','q'] <| [

    _____                     `noun`    {- <.habaqUq> -}       [ ['H','a','b','b','a','k','u','k'] ] ]


cluster_96  = cluster

 |> ".h b k" <| [

    FaCaL                     `verb`    {- <.habak> -}         [ ['w','e','a','v','e'], ['t','i','g','h','t','e','n'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <.habbak> -}        [ ['f','a','s','t','e','n'], ['t','w','i','n','e'] ],

    TaFaCCaL                  `verb`    {- <ta.habbak> -}      [ ['e','n','c','i','r','c','l','e'], ['s','u','r','r','o','u','n','d'] ],

    IFtaCaL                   `verb`    {- <i.htabak> -}       [ ['w','e','a','v','e'], ['l','a','c','e'] ],

    FaCL                      `noun`    {- <.habk> -}          [ ['w','e','a','v','i','n','g'] ],

    FaCL |< aT                `noun`    {- <.habkaT> -}        [ ['w','e','b'], ['p','l','o','t'] ],

    FuCL |< aT                `noun`    {- <.hubkaT> -}        [ ['b','e','l','t'], ['g','i','r','d','l','e'] ]
                              `plural`     FuCaL,

    FiCAL                     `noun`    {- <.hibAk> -}         [ ['l','i','n','e'], ['o','r','b','i','t'] ]
                              `plural`     FuCuL,

    FiCAL |< aT               `noun`    {- <.hibAkaT> -}       [ ['w','e','a','v','i','n','g'] ],

    MaFCUL                    `adj`     {- <ma.hbUk> -}        [ ['s','o','l','i','d'], unwords [ ['w','e','l','l'], "-", ['k','n','i','t'] ] ],

    MuFtaCiL                  `noun`    {- <mu.htabik> -}      [ ['i','n','t','e','r','w','o','v','e','n'] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT ]


cluster_97  = cluster

 |> ".h b l" <| [

    FaCaL                     `verb`    {- <.habal> -}         [ ['t','i','e'], ['f','e','t','t','e','r'] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <.habil> -}         [ unwords [ ['b','e','c','o','m','e'], ['p','r','e','g','n','a','n','t'] ], ['c','o','n','c','e','i','v','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <.habbal> -}        [ unwords [ ['m','a','k','e'], ['p','r','e','g','n','a','n','t'] ] ],

    HaFCaL                    `verb`    {- <'a.hbal> -}        [ unwords [ ['m','a','k','e'], ['p','r','e','g','n','a','n','t'] ] ],

    IFtaCaL                   `verb`    {- <i.htabal> -}       [ ['e','n','s','n','a','r','e'], ['t','r','a','p'] ],

    FaCL                      `noun`    {- <.habl> -}          [ ['c','o','r','d'], ['c','a','b','l','e'], ['r','o','p','e'] ]
                              `plural`     FiCAL
                              `plural`     HaFCAL
                              `plural`     FuCUL
                              `plural`     HaFCuL,

    FaCaL                     `noun`    {- <.habal> -}         [ ['c','o','n','c','e','p','t','i','o','n'], ['p','r','e','g','n','a','n','c','y'] ],

    FaCLAn                    `adj`     {- <.hablAn> -}        [ ['s','t','u','f','f','e','d'] ],

    FaCLAn                    `adj`     {- <.hablAn> -}        [ ['p','r','e','g','n','a','n','t'] ],

    FuCLY                     `noun`    {- <.hublY> -}         [ ['p','r','e','g','n','a','n','t'] ]
                              `plural`     FaCALY
                              `plural`     FuCLY |< At,

    HuFCUL |< aT              `noun`    {- <'u.hbUlaT> -}      [ ['s','n','a','r','e'], ['t','r','i','c','k'] ]
                              `plural`     HaFACIL,

    FiCAL |< aT               `noun`    {- <.hibAlaT> -}       [ ['s','n','a','r','e'], ['n','e','t'] ]
                              `plural`     FaCA'iL,

    FACiL                     `noun`    {- <.hAbil> -}         [ ['t','r','i','c','k','s','t','e','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT ]


cluster_98  = cluster

 |> ".h b n" <| [

    FaCaL                     `noun`    {- <.haban> -}         [ ['e','d','e','m','a'], ['d','r','o','p','s','y'] ],

    HaFCaL                    `adj`     {- <'a.hban> -}        [ unwords [ ['s','u','f','f','e','r','i','n','g'], ['f','r','o','m'], ['e','d','e','m','a'] ] ]
                              `femini`     FaCLA',

    FACiL                     `adj`     {- <.hAbin> -}         [ unwords [ ['s','u','f','f','e','r','i','n','g'], ['f','r','o','m'], ['e','d','e','m','a'] ] ] ]


cluster_99  = cluster

 |> ['.','h','a','b','b','a','h','A','n'] <| [

    _____                     `noun`    {- <.habbahAn> -}      [ ['c','a','r','d','a','m','o','m'] ] ]


cluster_100 = cluster

 |> ".h t d" <| [

    FaCiL                     `verb`    {- <.hatid> -}         [ unwords [ ['b','e'], ['o','f'], ['p','u','r','e'], ['o','r','i','g','i','n'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `adj`     {- <.hatid> -}         [ unwords [ ['o','f'], ['n','o','b','l','e'], ['b','i','r','t','h'] ] ],

    MaFCiL                    `noun`    {- <ma.htid> -}        [ ['l','i','n','e','a','g','e'], ['d','e','s','c','e','n','t'] ] ]


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
