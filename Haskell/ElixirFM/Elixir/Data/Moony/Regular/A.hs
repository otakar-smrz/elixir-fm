
module Elixir.Data.Moony.Regular.A (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['b','i'] <| [

    _____                     `prep`    {- <bi> -}             [ ['b','y'], ['w','i','t','h'] ],

    _____ |<< "mA"            `conj`    {- <bimA> -}           [ ['s','i','n','c','e'], ['a','s'], unwords [ ['i','n'], ['v','i','e','w'], ['o','f'] ] ],

    _____ |<< "_dA"           `prep`    {- <bi_dA> -}          [ unwords [ ['w','i','t','h'], ['t','h','a','t'] ] ],

    _____ |<< "lA"            `prep`    {- <bilA> -}           [ ['w','i','t','h','o','u','t'] ] ]


cluster_2   = cluster

 |> ['b','i','-','s','m','i'] <| [

    _____                     `prep`    {- <bi-smi> -}         [ unwords [ ['i','n'], ['n','a','m','e'], ['o','f'] ] ] ]

 |> "b s m l" <| [

    KaRDaS                    `verb`    {- <basmal> -}         [ unwords [ ['s','a','y'], ['"','b','i','s','m','i','l','l','a','h','"'] ] ],

    KaRDaS |< aT              `noun`    {- <basmalaT> -}       [ ['"','b','i','s','m','i','l','l','a','h','"'] ] ]


cluster_3   = cluster

 |> ['b','I','b'] <| [

    _____                     `noun`    {- <bIb> -}            [ ['p','i','p','e'], ['t','u','b','e'] ] ]


cluster_4   = cluster

 |> ['b','A','b','A'] <| [

    _____                     `noun`    {- <bAbA> -}           [ ['f','a','t','h','e','r'], ['d','a','d','d','y'], ['d','a','d'] ],

    _____                     `noun`    {- <bAbA> -}           [ ['P','o','p','e'] ]
                              `plural`     _____ |< At,

    _____ |< Iy               `adj`     {- <bAbawIy> -}        [ ['p','a','p','a','l'] ],

    _____ |< Iy |< aT         `noun`    {- <bAbawIyaT> -}      [ ['p','a','p','a','c','y'] ] ]


cluster_5   = cluster

 |> "b b ^g" <| [

    FACUL                     `noun`    {- <bAbU^g> -}         [ ['s','l','i','p','p','e','r'] ]
                              `plural`     FawACIL ]


cluster_6   = cluster

 |> "b b r" <| [

    FACUL                     `noun`    {- <bAbUr> -}          [ ['s','t','e','a','m','s','h','i','p'], ['s','t','e','a','m','e','r'] ]
                              `plural`     FACUL |< At
                              `plural`     FawACIL ]

 |> "b b r" <| [

    FaCL                      `noun`    {- <babr> -}           [ ['t','i','g','e','r'] ]
                              `plural`     FuCUL ]


cluster_7   = cluster

 |> ['b','A','b','i','l'] <| [

    _____                     `noun`    {- <bAbil> -}          [ ['B','a','b','e','l'], ['B','a','b','y','l','o','n'] ],

    _____ |< Iy               `adj`     {- <bAbilIy> -}        [ ['B','a','b','y','l','o','n','i','a','n'] ] ]


cluster_8   = cluster

 |> ['b','U','b','I','n'] <| [

    _____ |< aT               `noun`    {- <bUbInaT> -}        [ ['s','p','o','o','l'], ['r','e','e','l'] ] ]


cluster_9   = cluster

 |> ['b','A','b','U','n','a','^','g'] <| [

    _____                     `noun`    {- <bAbUna^g> -}       [ ['c','h','a','m','o','m','i','l','e'] ] ]


cluster_10  = cluster

 |> ['b','U','b','l','I','n'] <| [

    _____                     `noun`    {- <bUblIn> -}         [ ['p','o','p','l','i','n'] ] ]


cluster_11  = cluster

 |> ['b','U','t','A','^','g','A','z'] <| [

    _____                     `noun`    {- <bUtA^gAz> -}       [ unwords [ ['g','a','s'], ['s','t','o','v','e'] ] ] ]


cluster_12  = cluster

 |> "b t r" <| [

    FaCaL                     `verb`    {- <batar> -}          [ ['a','m','p','u','t','a','t','e'], ['m','u','t','i','l','a','t','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    InFaCaL                   `verb`    {- <inbatar> -}        [ unwords [ ['b','e'], ['a','m','p','u','t','a','t','e','d'] ], unwords [ ['b','e'], ['m','u','t','i','l','a','t','e','d'] ] ],

    FaCL                      `noun`    {- <batr> -}           [ ['a','m','p','u','t','a','t','i','o','n'], ['s','e','v','e','r','a','n','c','e'] ],

    HaFCaL                    `adj`     {- <'abtar> -}         [ ['a','m','p','u','t','e','e'], ['d','e','f','e','c','t','i','v','e'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FaCCAL                    `adj`     {- <battAr> -}         [ ['s','h','a','r','p'], ['c','u','t','t','i','n','g'] ],

    FACiL                     `adj`     {- <bAtir> -}          [ ['s','h','a','r','p'], ['c','u','t','t','i','n','g'] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <mabtUr> -}         [ ['m','u','t','i','l','a','t','e','d'], ['i','n','c','o','m','p','l','e','t','e'] ] ]


cluster_13  = cluster

 |> "b t r k" <| [

    KaRDaS                    `noun`    {- <batrak> -}         [ ['p','a','t','r','i','a','r','c','h'] ]
                              `plural`     KaRADiS |< aT ]


cluster_14  = cluster

 |> ['b','U','t','A','s','A'] <| [

    _____                     `noun`    {- <bUtAsA> -}         [ ['p','o','t','a','s','h'] ] ]


cluster_15  = cluster

 |> "b t `" <| [

    HaFCaL                    `adj`     {- <'abta`> -}         [ ['a','l','t','o','g','e','t','h','e','r'], ['e','n','t','i','r','e'] ],

    FACiL                     `adj`     {- <bAti`> -}          [ ['s','t','r','o','n','g'], ['e','n','t','i','r','e'] ] ]


cluster_16  = cluster

 |> "b t q" <| [

    FUCaL |< aT               `noun`    {- <bUtaqaT> -}        [ ['c','r','u','c','i','b','l','e'], unwords [ ['m','e','l','t','i','n','g'], ['p','o','t'] ] ]
                              `plural`     FawACiL ]


cluster_17  = cluster

 |> "b t k" <| [

    FaCCaL                    `verb`    {- <battak> -}         [ ['s','e','v','e','r'], unwords [ ['c','u','t'], ['o','f','f'] ] ],

    TaFCIL                    `noun`    {- <tabtIk> -}         [ ['s','e','v','e','r','i','n','g'], unwords [ ['c','u','t','t','i','n','g'], ['o','f','f'] ] ]
                              `plural`     TaFCIL |< At ]


cluster_18  = cluster

 |> ['b','U','t','I','k'] <| [

    _____                     `noun`    {- <bUtIk> -}          [ ['b','o','u','t','i','q','u','e'] ] ]


cluster_19  = cluster

 |> "b t l" <| [

    FaCaL                     `verb`    {- <batal> -}          [ ['s','e','v','e','r'], ['f','i','n','a','l','i','z','e'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <battal> -}         [ ['s','e','v','e','r'], ['f','i','n','a','l','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <tabattal> -}       [ unwords [ ['b','e'], ['c','h','a','s','t','e'] ], unwords [ ['b','e'], ['p','i','o','u','s'] ] ],

    InFaCaL                   `verb`    {- <inbatal> -}        [ unwords [ ['b','e'], ['s','e','v','e','r','e','d'] ], unwords [ ['b','e'], ['f','i','n','a','l','i','z','e','d'] ] ],

    FaCUL                     `noun`    {- <batUl> -}          [ ['v','i','r','g','i','n'] ],

    FaCUL |< Iy               `adj`     {- <batUlIy> -}        [ ['v','i','r','g','i','n'], ['v','i','r','g','i','n','a','l'] ],

    FaCUL |< Iy |< aT         `noun`    {- <batUlIyaT> -}      [ ['v','i','r','g','i','n','i','t','y'] ],

    MutaFaCCiL                `adj`     {- <mutabattil> -}     [ ['a','s','c','e','t','i','c'], ['p','i','o','u','s'] ],

    FaCL |< aT |<< "aN"       `noun`    {- <batlaTaN> -}       [ ['d','e','f','i','n','i','t','i','v','e','l','y'], ['d','e','c','i','s','i','v','e','l','y'] ],

    FaCaL |< aT               `noun`    {- <batalaT> -}        [ ['p','e','t','a','l'] ] ]


cluster_20  = cluster

 |> ['b','A','t','U','l','A'] <| [

    _____                     `noun`    {- <bAtUlA> -}         [ unwords [ ['b','i','r','c','h'], ['t','r','e','e'] ] ] ]


cluster_21  = cluster

 |> ['b','i','t','r','U','l'] <| [

    _____                     `noun`    {- <bitrUl> -}         [ ['p','e','t','r','o','l','e','u','m'] ],

    _____ |< Iy               `adj`     {- <bitrUlIy> -}       [ ['p','e','t','r','o','l','e','u','m'] ] ]


cluster_22  = cluster

 |> ['b','I','t','z','A'] <| [

    _____                     `noun`    {- <bItzA> -}          [ ['p','i','z','z','a'] ] ]


cluster_23  = cluster

 |> "b _t r" <| [

    FaCaL                     `verb`    {- <ba_tar> -}         [ ['p','u','s','t','u','l','a','t','e'] ]
                              `imperf`     FCiL,

    FaCiL                     `verb`    {- <ba_tir> -}         [ ['p','u','s','t','u','l','a','t','e'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <taba_t_tar> -}     [ ['p','u','s','t','u','l','a','t','e'] ],

    FaCL                      `noun`    {- <ba_tr> -}          [ ['p','u','s','t','u','l','e'] ]
                              `plural`     FuCUL
                              `plural`     FaCaL |< At,

    FaCiL                     `adj`     {- <ba_tir> -}         [ ['p','u','s','t','u','l','a','t','e','d'] ],

    FaCIL                     `adj`     {- <ba_tIr> -}         [ ['p','u','s','t','u','l','a','t','e','d'] ] ]


cluster_24  = cluster

 |> "b _t q" <| [

    FaCaL                     `verb`    {- <ba_taq> -}         [ unwords [ ['m','a','k','e'], ['o','v','e','r','f','l','o','w'] ] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    InFaCaL                   `verb`    {- <inba_taq> -}       [ ['e','m','a','n','a','t','e'], ['r','e','s','u','l','t'] ],

    InFiCAL                   `noun`    {- <inbi_tAq> -}       [ ['e','f','f','u','s','i','o','n'], ['e','m','a','n','a','t','i','o','n'] ]
                              `plural`     InFiCAL |< At,

    MunFaCiL                  `adj`     {- <munba_tiq> -}      [ ['r','e','s','u','l','t','i','n','g'], ['e','m','a','n','a','t','i','n','g'] ],

    MunFaCaL                  `noun`    {- <munba_taq> -}      [ ['r','e','s','u','l','t'] ]
                              `plural`     MunFaCaL |< At ]


cluster_25  = cluster

 |> ['b','A','_','t','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <bA_tUlU^giyA> -}   [ ['p','a','t','h','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <bA_tUlU^gIy> -}    [ ['p','a','t','h','o','l','o','g','i','c','a','l'] ] ]


cluster_26  = cluster

 |> "b _t n" <| [

    FuCayL |< aT              `noun`    {- <bu_taynaT> -}      [ ['B','u','t','h','a','i','n','a'] ] ]


cluster_27  = cluster

 |> "b ^g .h" <| [

    FaCiL                     `verb`    {- <ba^gi.h> -}        [ ['r','e','j','o','i','c','e'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <taba^g^ga.h> -}    [ ['b','o','a','s','t'], ['b','r','a','g'] ],

    TaFaCCuL                  `noun`    {- <taba^g^gu.h> -}    [ ['b','o','a','s','t','i','n','g'], ['b','r','a','g','g','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <mutaba^g^gi.h> -}  [ ['b','r','a','g','g','a','r','t'], ['b','r','a','g','g','i','n','g'] ],

    FaCaL                     `noun`    {- <ba^ga.h> -}        [ ['r','e','j','o','i','c','i','n','g'] ],

    FaCCAL                    `noun`    {- <ba^g^gA.h> -}      [ ['b','r','a','g','g','a','r','t'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_28  = cluster

 |> "b ^g d" <| [

    FaCL |< aT                `noun`    {- <ba^gdaT> -}        [ ['h','e','a','r','t'], ['e','s','s','e','n','c','e'], ['s','o','u','r','c','e'] ],

    FiCAL |< Iy               `adj`     {- <bi^gAdIy> -}       [ ['g','a','r','n','e','t'] ] ]


cluster_29  = cluster

 |> "b ^g r" <| [

    HaFCaL                    `adj`     {- <'ab^gar> -}        [ ['o','b','e','s','e'], ['c','o','r','p','u','l','e','n','t'] ]
                              `plural`     FuCL
                              `femini`     FaCLA' ]


cluster_30  = cluster

 |> "b ^g s" <| [

    FaCaL                     `verb`    {- <ba^gas> -}         [ unwords [ ['m','a','k','e'], ['f','l','o','w'] ] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <ba^g^gas> -}       [ unwords [ ['m','a','k','e'], ['f','l','o','w'] ] ],

    TaFaCCaL                  `verb`    {- <taba^g^gas> -}     [ ['f','l','o','w'], ['p','o','u','r'] ],

    InFaCaL                   `verb`    {- <inba^gas> -}       [ ['f','l','o','w'], ['p','o','u','r'] ],

    FaCL                      `noun`    {- <ba^gs> -}          [ ['f','l','o','w','i','n','g'], ['s','t','r','e','a','m','i','n','g'] ],

    FaCIL                     `adj`     {- <ba^gIs> -}         [ ['f','l','o','w','i','n','g'], ['s','t','r','e','a','m','i','n','g'] ] ]


cluster_31  = cluster

 |> "b ^g `" <| [

    FaCaL                     `noun`    {- <ba^ga`> -}         [ ['p','e','l','i','c','a','n'] ]
                              `plural`     FaCaL |< At ]


cluster_32  = cluster

 |> "b ^g l" <| [

    FaCCaL                    `verb`    {- <ba^g^gal> -}       [ ['h','o','n','o','r'], ['r','e','s','p','e','c','t'], ['v','e','n','e','r','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <taba^g^gal> -}     [ unwords [ ['b','e'], ['h','o','n','o','r','e','d'] ], unwords [ ['b','e'], ['r','e','s','p','e','c','t','e','d'] ], unwords [ ['b','e'], ['v','e','n','e','r','a','t','e','d'] ] ],

    FaCaL                     `noun`    {- <ba^gal> -}         [ ['s','y','p','h','i','l','i','s'] ],

    TaFCIL                    `noun`    {- <tab^gIl> -}        [ ['d','e','f','e','r','e','n','c','e'], ['r','e','v','e','r','e','n','c','e'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <muba^g^gal> -}     [ ['r','e','v','e','r','e','d'], ['v','e','n','e','r','a','b','l','e'] ] ]


cluster_33  = cluster

 |> "b ^g m" <| [

    FaCaL                     `verb`    {- <ba^gam> -}         [ unwords [ ['b','e'], ['s','p','e','e','c','h','l','e','s','s'] ], unwords [ ['b','e'], ['d','u','m','f','o','u','n','d','e','d'] ] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <ba^gm> -}          [ ['s','p','e','e','c','h','l','e','s','s','n','e','s','s'] ]
                              `plural`     FuCUL ]


cluster_34  = cluster

 |> ['b','I','^','g','A','m'] <| [

    _____ |<< "A"             `noun`    {- <bI^gAmA> -}        [ ['p','a','j','a','m','a'] ]
                              `plural`     _____ |< At ]


cluster_35  = cluster

 |> "b ^g n" <| [

    FaCCaL                    `verb`    {- <ba^g^gan> -}       [ unwords [ ['c','l','i','n','c','h'], "(", "a", ['n','a','i','l'], ")" ], ['i','n','c','u','l','c','a','t','e'] ],

    FICAL                     `noun`    {- <bI^gAn> -}         [ ['B','i','j','a','n'] ] ]


cluster_36  = cluster

 |> ['b','U','^','g','I','h'] <| [

    _____                     `noun`    {- <bU^gIh> -}         [ unwords [ ['s','p','a','r','k'], ['p','l','u','g'] ] ] ]


cluster_37  = cluster

 |> "b .h b .h" <| [

    TaKaRDaS                  `verb`    {- <taba.hba.h> -}     [ unwords [ ['h','a','v','e'], ['l','e','i','s','u','r','e'] ], unwords [ ['b','e'], ['p','r','o','s','p','e','r','o','u','s'] ] ],

    KaRDUS                    `adj`     {- <ba.hbU.h> -}       [ ['m','e','r','r','y'] ],

    KuRDUS |< aT              `noun`    {- <bu.hbU.haT> -}     [ ['a','f','f','l','u','e','n','c','e'], ['l','e','i','s','u','r','e'] ]
                              `plural`     KaRADIS,

    MuKaRDaS                  `adj`     {- <muba.hba.h> -}     [ unwords [ ['w','e','l','l'], "-", ['t','o'], "-", ['d','o'] ], ['l','e','i','s','u','r','e','l','y'] ],

    TaKaRDuS                  `noun`    {- <taba.hbu.h> -}     [ ['a','f','f','l','u','e','n','c','e'], ['l','e','i','s','u','r','e'] ]
                              `plural`     TaKaRDuS |< At ]


cluster_38  = cluster

 |> "b .h t" <| [

    FACaL                     `verb`    {- <bA.hat> -}         [ ['p','r','o','m','i','s','e'] ],

    FaCL                      `noun`    {- <ba.ht> -}          [ ['p','u','r','e'], ['e','x','c','l','u','s','i','v','e'] ],

    MuFACaL |< aT             `noun`    {- <mubA.hataT> -}     [ ['p','r','o','m','i','s','e'] ] ]


cluster_39  = cluster

 |> "b .h t r" <| [

    KuRDuS                    `noun`    {- <bu.htur> -}        [ ['s','t','o','c','k','y'], ['p','u','d','g','y'] ],

    KuRDuS |< Iy              `adj`     {- <bu.hturIy> -}      [ ['B','u','h','t','u','r','i'] ],

    KuRDuS |< Iy              `adj`     {- <bu.hturIy> -}      [ ['s','t','o','c','k','y'], ['p','u','d','g','y'] ] ]


cluster_40  = cluster

 |> "b .h _t" <| [

    FaCaL                     `verb`    {- <ba.ha_t> -}        [ ['d','i','s','c','u','s','s'], ['s','e','a','r','c','h'], unwords [ ['l','o','o','k'], ['f','o','r'] ], ['e','x','a','m','i','n','e'], ['s','t','u','d','y'], unwords [ ['l','o','o','k'], ['i','n','t','o'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FACaL                     `verb`    {- <bA.ha_t> -}        [ ['d','i','s','c','u','s','s'], ['d','e','l','i','b','e','r','a','t','e'] ],

    TaFACaL                   `verb`    {- <tabA.ha_t> -}      [ ['d','i','s','c','u','s','s'], ['c','o','n','f','e','r'] ],

    FaCL                      `noun`    {- <ba.h_t> -}         [ ['d','i','s','c','u','s','s','i','o','n'] ],

    FaCL                      `noun`    {- <ba.h_t> -}         [ ['s','e','a','r','c','h'], ['e','x','a','m','i','n','a','t','i','o','n'], ['r','e','s','e','a','r','c','h'] ]
                              `plural`     FuCUL
                              `plural`     FuCUL |< At
                              `plural`     HaFCAL,

    FaCL |< Iy                `adj`     {- <ba.h_tIy> -}       [ ['r','e','s','e','a','r','c','h'] ],

    FACUL                     `noun`    {- <bA.hU_t> -}        [ unwords [ ['s','e','a','r','c','h'], ['e','n','g','i','n','e'] ] ]
                              `plural`     FawACIL
                              `plural`     FACUL |< At,

    FaCCAL                    `noun`    {- <ba.h.hA_t> -}      [ ['s','c','h','o','l','a','r'], ['r','e','s','e','a','r','c','h','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MaFCaL                    `noun`    {- <mab.ha_t> -}       [ ['r','e','s','e','a','r','c','h'], ['i','n','v','e','s','t','i','g','a','t','i','o','n'] ]
                              `plural`     MaFACiL,

    MuFACaL |< aT             `noun`    {- <mubA.ha_taT> -}    [ ['d','i','s','c','u','s','s','i','o','n'], ['t','a','l','k'], ['n','e','g','o','t','i','a','t','i','o','n'] ]
                              `plural`     MuFACaL |< At,

    TaFACuL                   `noun`    {- <tabA.hu_t> -}      [ ['c','o','n','f','e','r','r','i','n','g'], ['d','i','s','c','u','s','s','i','n','g'] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `noun`    {- <bA.hi_t> -}        [ ['s','c','h','o','l','a','r'], ['r','e','s','e','a','r','c','h','e','r'] ]
                              `plural`     FACiL |< Un
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT ]


cluster_41  = cluster

 |> "b .h _t r" <| [

    KaRDaS                    `verb`    {- <ba.h_tar> -}       [ ['s','c','a','t','t','e','r'], ['s','q','u','a','n','d','e','r'] ],

    TaKaRDaS                  `verb`    {- <taba.h_tar> -}     [ unwords [ ['b','e'], ['s','c','a','t','t','e','r','e','d'] ], unwords [ ['b','e'], ['s','q','u','a','n','d','e','r','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <ba.h_taraT> -}     [ ['w','a','s','t','e'], ['d','i','s','s','i','p','a','t','i','o','n'] ],

    MuKaRDiS                  `noun`    {- <muba.h_tir> -}     [ ['s','q','u','a','n','d','e','r','e','r'] ]
                              `plural`     MuKaRDiS |< Un
                              `femini`     MuKaRDiS |< aT,

    MuKaRDiS                  `adj`     {- <muba.h_tir> -}     [ ['d','i','s','s','i','p','a','t','i','n','g'] ] ]


cluster_42  = cluster

 |> "b .h r" <| [

    FaCiL                     `verb`    {- <ba.hir> -}         [ unwords [ ['b','e'], ['s','t','a','r','t','l','e','d'] ], unwords [ ['b','e'], ['b','e','w','i','l','d','e','r','e','d'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <ba.h.har> -}       [ unwords [ ['t','r','a','v','e','l'], ['b','y'], ['s','e','a'] ], unwords [ ['b','e'], ['s','e','n','t'], ['b','y'], ['s','e','a'] ] ],

    HaFCaL                    `verb`    {- <'ab.har> -}        [ unwords [ ['t','r','a','v','e','l'], ['b','y'], ['s','e','a'] ], unwords [ ['s','e','t'], ['s','a','i','l'] ] ],

    TaFaCCaL                  `verb`    {- <taba.h.har> -}     [ unwords [ ['d','e','l','v','e'], ['i','n','t','o'] ], ['s','t','u','d','y'] ],

    IstaFCaL                  `verb`    {- <istab.har> -}      [ unwords [ ['d','e','l','v','e'], ['i','n','t','o'] ], ['e','x','p','a','n','d'] ],

    FaCL                      `noun`    {- <ba.hr> -}          [ ['s','e','a'] ]
                              `plural`     HaFCuL
                              `plural`     FuCUL
                              `plural`     FiCAL
                              `plural`     HaFCAL,

    FaCL |< Iy                `adj`     {- <ba.hrIy> -}        [ ['n','a','v','a','l'], ['m','a','r','i','t','i','m','e'] ],

    FaCL |< Iy |< aT          `noun`    {- <ba.hrIyaT> -}      [ ['n','a','v','y'], ['m','a','r','i','n','e'] ],

    FaCL |< aT                `noun`    {- <ba.hraT> -}        [ ['p','o','n','d'], ['p','o','o','l'] ],

    FaCLAn |< Iy              `adj`     {- <ba.hrAnIy> -}      [ ['B','a','h','r','a','i','n','i'] ]
                              `plural`     FaCALin |< aT,

    FaCL |<< "Aw" |< Iy       `noun`    {- <ba.hrAwIy> -}      [ ['B','a','h','r','a','w','i'], ['B','a','h','r','a','o','u','i'] ],

    FaCCAL                    `noun`    {- <ba.h.hAr> -}       [ ['s','e','a','m','a','n'], ['s','a','i','l','o','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL |< aT              `noun`    {- <ba.h.hAraT> -}     [ ['s','a','i','l','o','r','s'], ['c','r','e','w'] ],

    FuCayL |< aT              `noun`    {- <bu.hayraT> -}      [ ['l','a','k','e'] ]
                              `plural`     FaCA'iL
                              `plural`     FuCayL |< At,

    FuCLAn                    `noun`    {- <bu.hrAn> -}        [ ['c','r','i','s','i','s'], ['c','u','l','m','i','n','a','t','i','o','n'] ],

    HiFCAL                    `noun`    {- <'ib.hAr> -}        [ ['n','a','v','i','g','a','t','i','o','n'], ['s','e','a','f','a','r','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <taba.h.hur> -}     [ ['d','e','l','v','i','n','g'], ['p','e','n','e','t','r','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <mutaba.h.hir> -}   [ ['d','e','l','v','i','n','g'], ['p','e','n','e','t','r','a','t','i','n','g'] ] ]


cluster_43  = cluster

 |> "b .h ^s" <| [

    FaCaL                     `verb`    {- <ba.ha^s> -}        [ ['d','i','g'] ]
                              `imperf`     FCaL ]


cluster_44  = cluster

 |> "b .h l q" <| [

    KaRDaS                    `verb`    {- <ba.hlaq> -}        [ ['g','a','z','e'] ] ]


cluster_45  = cluster

 |> ['b','a','_','h'] <| [

    _____                     `intj`    {- <ba_h> -}           [ unwords [ ['b','r','a','v','o'], "!" ] ] ]


cluster_46  = cluster

 |> "b _h t" <| [

    FaCL                      `noun`    {- <ba_ht> -}          [ ['l','u','c','k'], ['f','o','r','t','u','n','e'] ]
                              `plural`     FuCUL,

    FaCIL                     `adj`     {- <ba_hIt> -}         [ ['l','u','c','k','y'], ['f','o','r','t','u','n','a','t','e'] ],

    MaFCUL                    `adj`     {- <mab_hUt> -}        [ ['l','u','c','k','y'], ['f','o','r','t','u','n','a','t','e'] ] ]


cluster_47  = cluster

 |> "b _h t r" <| [

    KaRDaS                    `verb`    {- <ba_htar> -}        [ ['s','w','a','g','g','e','r'], ['s','t','r','u','t'] ],

    TaKaRDaS                  `verb`    {- <taba_htar> -}      [ ['s','w','a','g','g','e','r'], ['s','t','r','u','t'] ],

    KaRDaS |< aT              `noun`    {- <ba_htaraT> -}      [ ['s','w','a','g','g','e','r','i','n','g'], ['s','t','r','u','t','t','i','n','g'] ],

    TaKaRDuS                  `noun`    {- <taba_htur> -}      [ unwords [ ['s','t','r','u','t','t','i','n','g'], ['g','a','i','t'] ] ]
                              `plural`     TaKaRDuS |< At ]


cluster_48  = cluster

 |> "b _h r" <| [

    FaCaL                     `verb`    {- <ba_har> -}         [ ['s','t','e','a','m'], ['s','m','o','k','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <ba_h_har> -}       [ ['f','u','m','i','g','a','t','e'], unwords [ ['b','u','r','n'], ['i','n','c','e','n','s','e'] ], ['v','a','p','o','r','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <taba_h_har> -}     [ ['e','v','a','p','o','r','a','t','e'], ['v','a','p','o','r','i','z','e'] ],

    FuCAL                     `noun`    {- <bu_hAr> -}         [ ['v','a','p','o','r'], ['s','t','e','a','m'] ]
                              `plural`     FuCAL |< At
                              `plural`     HaFCiL |< aT,

    FuCAL |< Iy               `adj`     {- <bu_hArIy> -}       [ ['B','u','k','h','a','r','i'] ],

    FuCAL |< Iy               `adj`     {- <bu_hArIy> -}       [ ['s','t','e','a','m'], unwords [ ['s','t','e','a','m'], "-", ['d','r','i','v','e','n'] ] ],

    FaCUL                     `noun`    {- <ba_hUr> -}         [ ['i','n','c','e','n','s','e'], ['f','r','a','n','k','i','n','c','e','n','s','e'] ],

    HaFCaL                    `adj`     {- <'ab_har> -}        [ unwords [ ['f','o','u','l'], "-", ['b','r','e','a','t','h','e','d'] ] ],

    MiFCaL |< aT              `noun`    {- <mib_haraT> -}      [ ['f','u','m','i','g','a','t','o','r'], ['c','e','n','s','e','r'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <tab_hIr> -}        [ ['f','u','m','i','g','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <taba_h_hur> -}     [ ['e','v','a','p','o','r','a','t','i','o','n'], ['v','a','p','o','r','i','z','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL |< aT               `noun`    {- <bA_hiraT> -}       [ ['s','t','e','a','m','s','h','i','p'], ['s','h','i','p'] ]
                              `plural`     FawACiL,

    FuwayCiL |< aT            `noun`    {- <buway_hiraT> -}    [ unwords [ ['s','m','a','l','l'], ['s','t','e','a','m','s','h','i','p'] ] ]
                              `plural`     FuwayCiL |< At ]


cluster_49  = cluster

 |> ['b','U','_','h','A','r','i','s','t'] <| [

    _____                     `xtra`    {- <bU_hArist> -}      [ ['B','u','c','h','a','r','e','s','t'] ],

    _____ |< Iy               `adj`     {- <bU_hAristIy> -}    [ unwords [ ['o','f'], "/", ['f','r','o','m'], ['B','u','c','h','a','r','e','s','t'] ] ] ]


cluster_50  = cluster

 |> "b _h s" <| [

    FaCaL                     `verb`    {- <ba_has> -}         [ ['d','e','p','r','e','c','i','a','t','e'], ['u','n','d','e','r','e','s','t','i','m','a','t','e'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <ba_hs> -}          [ ['d','e','p','r','e','c','i','a','t','i','o','n'], unwords [ ['v','e','r','y'], ['l','i','t','t','l','e'] ] ],

    HaFCaL                    `adj`     {- <'ab_has> -}        [ ['s','m','a','l','l','e','r'], ['l','o','w','e','r'] ],

    FACiL                     `adj`     {- <bA_his> -}         [ ['t','r','i','f','l','i','n','g'], ['m','i','n','u','s','c','u','l','e'] ] ]


cluster_51  = cluster

 |> "b _h ^s" <| [

    FaCLIL                    `noun`    {- <ba_h^sI^s> -}      [ ['b','a','k','s','h','e','e','s','h'], ['g','r','a','t','u','i','t','y'] ]
                              `plural`     FaCALIL ]


cluster_52  = cluster

 |> "b _h `" <| [

    FaCaL                     `verb`    {- <ba_ha`> -}         [ unwords [ ['b','e'], ['e','x','t','r','e','m','e'] ], unwords [ ['b','e'], ['v','i','o','l','e','n','t'] ] ]
                              `imperf`     FCaL ]


cluster_53  = cluster

 |> "b _h q" <| [

    HaFCaL                    `adj`     {- <'ab_haq> -}        [ unwords [ ['o','n','e'], "-", ['e','y','e','d'] ] ]
                              `femini`     FaCLA' ]


cluster_54  = cluster

 |> "b _h l" <| [

    FaCiL                     `verb`    {- <ba_hil> -}         [ unwords [ ['b','e'], ['m','i','s','e','r','l','y'] ], ['s','k','i','m','p'] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCuL                     `verb`    {- <ba_hul> -}         [ unwords [ ['b','e'], ['m','i','s','e','r','l','y'] ], ['s','k','i','m','p'] ]
                              `imperf`     FCuL
                              `masdar`     FuCL,

    TaFACaL                   `verb`    {- <tabA_hal> -}       [ unwords [ ['g','i','v','e'], ['r','e','l','u','c','t','a','n','t','l','y'] ] ],

    FuCL                      `noun`    {- <bu_hl> -}          [ ['a','v','a','r','i','c','e'] ],

    FaCIL                     `noun`    {- <ba_hIl> -}         [ ['m','i','s','e','r'], ['a','v','a','r','i','c','i','o','u','s'] ]
                              `plural`     FuCaLA'
                              `plural`     FaCIL |< Un
                              `femini`     FaCIL |< aT,

    MaFCaL |< aT              `noun`    {- <mab_halaT> -}      [ ['a','v','a','r','i','c','e'] ] ]


cluster_55  = cluster

 |> "b _h n q" <| [

    KuRDuS                    `noun`    {- <bu_hnuq> -}        [ ['k','e','r','c','h','i','e','f'], ['v','e','i','l'] ]
                              `plural`     KaRADiS ]


cluster_56  = cluster

 |> ['b','U','d','A','b','i','s','t'] <| [

    _____                     `xtra`    {- <bUdAbist> -}       [ ['B','u','d','a','p','e','s','t'] ],

    _____ |< Iy               `adj`     {- <bUdAbistIy> -}     [ unwords [ ['o','f'], "/", ['f','r','o','m'], ['B','u','d','a','p','e','s','t'] ] ] ]


cluster_57  = cluster

 |> "b d r" <| [

    FaCaL                     `verb`    {- <badar> -}          [ ['s','u','r','p','r','i','s','e'], unwords [ ['c','o','m','e'], ['s','u','d','d','e','n','l','y'] ] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <bAdar> -}          [ ['i','n','i','t','i','a','t','e'], ['s','u','r','p','r','i','s','e'] ],

    TaFACaL                   `verb`    {- <tabAdar> -}        [ unwords [ ['c','o','m','e'], ['f','i','r','s','t'] ] ],

    IFtaCaL                   `verb`    {- <ibtadar> -}        [ unwords [ ['r','u','s','h'], ['a','t'] ], unwords [ ['h','u','r','r','y'], ['t','o'] ] ],

    FuCUL                     `noun`    {- <budUr> -}          [ unwords [ ['s','u','d','d','e','n'], ['a','p','p','e','a','r','a','n','c','e'] ] ],

    FaCL                      `noun`    {- <badr> -}           [ unwords [ ['f','u','l','l'], ['m','o','o','n'] ] ]
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <badraT> -}         [ unwords [ ['l','a','r','g','e'], ['s','u','m'] ] ]
                              `plural`     FaCaL |< At
                              `plural`     FiCAL,

    FaCLAn                    `noun`    {- <badrAn> -}         [ ['B','a','d','r','a','n'] ],

    FaCL |<< "Aw" |< Iy       `noun`    {- <badrAwIy> -}       [ ['B','a','d','r','a','w','i'] ],

    FiCAL |<< "aN"            `noun`    {- <bidAraN> -}        [ ['q','u','i','c','k','l','y'], ['h','a','s','t','i','l','y'] ],

    FaCAL |<< "i"             `intj`    {- <badAri> -}         [ unwords [ ['h','u','r','r','y'], "!" ] ],

    MuFACaL |< aT             `noun`    {- <mubAdaraT> -}      [ ['i','n','i','t','i','a','t','i','v','e'], ['p','r','o','p','o','s','a','l'] ]
                              `plural`     MuFACaL |< At,

    FACiL                     `noun`    {- <bAdir> -}          [ ['B','a','d','e','r'] ],

    FACiL |< aT               `noun`    {- <bAdiraT> -}        [ ['g','e','s','t','u','r','e'], unwords [ ['f','i','r','s','t'], ['s','i','g','n'] ] ]
                              `plural`     FawACiL,

    FICAL                     `noun`    {- <bIdAr> -}          [ ['B','i','d','a','r'] ],

    FayCaL                    `noun`    {- <baydar> -}         [ unwords [ ['t','h','r','e','s','h','i','n','g'], ['f','l','o','o','r'] ] ]
                              `plural`     FayACiL ]


cluster_58  = cluster

 |> "b d `" <| [

    FaCaL                     `verb`    {- <bada`> -}          [ ['i','n','n','o','v','a','t','e'], ['i','n','v','e','n','t'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <badda`> -}         [ ['e','x','c','e','l'] ],

    HaFCaL                    `verb`    {- <'abda`> -}         [ ['i','n','n','o','v','a','t','e'], ['c','r','e','a','t','e'] ],

    IFtaCaL                   `verb`    {- <ibtada`> -}        [ ['c','o','n','t','r','i','v','e'], ['i','n','v','e','n','t'] ],

    IstaFCaL                  `verb`    {- <istabda`> -}       [ unwords [ ['f','i','n','d'], ['e','x','t','r','a','o','r','d','i','n','a','r','y'] ], unwords [ ['f','i','n','d'], ['s','t','r','a','n','g','e'] ] ],

    FaCL                      `noun`    {- <bad`> -}           [ ['i','n','n','o','v','a','t','i','o','n'], ['c','r','e','a','t','i','o','n'] ],

    FiCL                      `noun`    {- <bid`> -}           [ ['o','r','i','g','i','n','a','l'], ['w','o','n','d','e','r'] ],

    HaFCAL                    `noun`    {- <'abdA`> -}         [ ['w','o','n','d','e','r','s'], ['n','o','v','e','l','t','i','e','s'] ],

    FiCL |< aT                `noun`    {- <bid`aT> -}         [ ['h','e','r','e','s','y'], ['n','o','v','e','l','t','y'] ]
                              `plural`     FiCaL,

    FaCIL                     `noun`    {- <badI`> -}          [ ['B','a','d','i','e'] ],

    FaCIL                     `noun`    {- <badI`> -}          [ ['w','o','n','d','e','r','f','u','l'], ['m','a','r','v','e','l','o','u','s'] ],

    FaCIL |< aT               `noun`    {- <badI`aT> -}        [ ['w','o','n','d','e','r'], ['m','a','r','v','e','l'] ]
                              `plural`     FaCA'iL,

    FaCIL |< Iy               `adj`     {- <badI`Iy> -}        [ ['r','h','e','t','o','r','i','c','a','l'] ],

    HaFCaL                    `adj`     {- <'abda`> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['a','m','a','z','i','n','g'] ] ],

    HiFCAL                    `noun`    {- <'ibdA`> -}         [ ['o','r','i','g','i','n','a','l','i','t','y'], ['c','r','e','a','t','i','v','i','t','y'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'ibdA`Iy> -}       [ ['o','r','i','g','i','n','a','l'], ['c','r','e','a','t','i','v','e'] ],

    IFtiCAL                   `noun`    {- <ibtidA`> -}        [ ['i','n','n','o','v','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <ibtidA`Iy> -}      [ ['i','n','n','o','v','a','t','i','v','e'] ],

    MuFCiL                    `noun`    {- <mubdi`> -}         [ ['i','n','n','o','v','a','t','o','r'], ['c','r','e','a','t','i','v','e'] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT,

    MuFtaCiL                  `noun`    {- <mubtadi`> -}       [ ['i','n','n','o','v','a','t','o','r'], ['c','r','e','a','t','i','v','e'] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT ]


cluster_59  = cluster

 |> ['b','I','d','A','.','g','U','^','g'] <| [

    _____ |< Iy               `adj`     {- <bIdA.gU^gIy> -}    [ ['p','e','d','a','g','o','g','i','c','a','l'] ] ]


cluster_60  = cluster

 |> "b d q" <| [

    FUCaL |< aT               `noun`    {- <bUdaqaT> -}        [ ['c','r','u','c','i','b','l','e'], unwords [ ['m','e','l','t','i','n','g'], ['p','o','t'] ] ]
                              `plural`     FawACiL,

    FayCaL                    `noun`    {- <baydaq> -}         [ ['p','a','w','n'] ]
                              `plural`     FayACiL ]


cluster_61  = cluster

 |> ['b','i','d','I','k','I','r'] <| [

    _____                     `noun`    {- <bidIkIr> -}        [ ['p','e','d','i','c','u','r','e'] ] ]


cluster_62  = cluster

 |> "b d l" <| [

    FaCaL                     `verb`    {- <badal> -}          [ ['e','x','c','h','a','n','g','e'], ['r','e','p','l','a','c','e'], ['s','u','b','s','t','i','t','u','t','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <baddal> -}         [ ['c','h','a','n','g','e'], ['m','o','d','i','f','y'] ],

    FACaL                     `verb`    {- <bAdal> -}          [ ['e','x','c','h','a','n','g','e'], ['t','r','a','d','e'] ],

    HaFCaL                    `verb`    {- <'abdal> -}         [ ['s','u','b','s','t','i','t','u','t','e'], ['e','x','c','h','a','n','g','e'], ['r','e','p','l','a','c','e'] ],

    TaFaCCaL                  `verb`    {- <tabaddal> -}       [ unwords [ ['b','e'], ['e','x','c','h','a','n','g','e','d'] ] ],

    TaFACaL                   `verb`    {- <tabAdal> -}        [ ['e','x','c','h','a','n','g','e'] ],

    IstaFCaL                  `verb`    {- <istabdal> -}       [ ['r','e','p','l','a','c','e'], ['s','u','b','s','t','i','t','u','t','e'] ],

    FaCaL                     `noun`    {- <badal> -}          [ ['s','u','b','s','t','i','t','u','t','e'] ]
                              `plural`     FaCaL |< At
                              `plural`     HaFCAL,

    FaCaL |<< "aN"            `adv`     {- <badalaN> -}        [ unwords [ ['i','n','s','t','e','a','d'], ['o','f'] ], unwords [ ['i','n'], ['l','i','e','u'], ['o','f'] ] ],

    FaCL |< aT                `noun`    {- <badlaT> -}         [ ['s','u','i','t'], ['c','o','s','t','u','m','e'] ]
                              `plural`     FaCaL |< At
                              `plural`     FiCaL,

    FaCaL |< Iy |< aT         `noun`    {- <badalIyaT> -}      [ ['c','o','m','p','e','n','s','a','t','i','o','n'] ],

    FaCIL                     `noun`    {- <badIl> -}          [ ['s','u','b','s','t','i','t','u','t','e'], ['a','l','t','e','r','n','a','t','e'] ]
                              `plural`     FaCIL |< Un
                              `plural`     FuCaLA'
                              `plural`     FaCA'iL
                              `femini`     FaCIL |< aT,

    FaCCAL                    `noun`    {- <baddAl> -}         [ ['e','x','c','h','a','n','g','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <baddAl> -}         [ ['p','e','d','a','l'] ]
                              `plural`     FaCCAL |< At,

    FaCCAL |< aT              `noun`    {- <baddAlaT> -}       [ unwords [ ['t','e','l','e','p','h','o','n','e'], ['e','x','c','h','a','n','g','e'] ] ],

    MaFACiL                   `noun`    {- <mabAdil> -}        [ unwords [ ['h','o','u','s','e'], ['c','l','o','t','h','e','s'] ], unwords [ ['c','a','s','u','a','l'], ['d','r','e','s','s'] ] ]
                              `plural`     MaFACiL
                           
    `limited` "-------P--",

    TaFCIL                    `noun`    {- <tabdIl> -}         [ ['r','e','p','l','a','c','e','m','e','n','t'], ['e','x','c','h','a','n','g','e'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mubAdalaT> -}      [ ['e','x','c','h','a','n','g','e'] ]
                              `plural`     MuFACaL |< At,

    HiFCAL                    `noun`    {- <'ibdAl> -}         [ ['s','u','b','s','t','i','t','u','t','e'], ['r','e','p','l','a','c','e'] ],

    HiFCAL                    `noun`    {- <'ibdAl> -}         [ ['s','u','b','s','t','i','t','u','t','i','o','n'], ['r','e','p','l','a','c','e','m','e','n','t'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <tabaddul> -}       [ ['t','r','a','n','s','f','o','r','m','a','t','i','o','n'], ['s','h','i','f','t'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <tabAdul> -}        [ ['e','x','c','h','a','n','g','e'] ]
                              `plural`     TaFACuL |< At,

    IstiFCAL                  `noun`    {- <istibdAl> -}       [ ['s','u','b','s','t','i','t','u','t','i','o','n'], ['e','x','c','h','a','n','g','e'], ['r','e','p','l','a','c','e','m','e','n','t'] ]
                              `plural`     IstiFCAL |< At,

    MutaFACaL                 `adj`     {- <mutabAdal> -}      [ ['m','u','t','u','a','l'], ['r','e','c','i','p','r','o','c','a','l'] ],

    MustaFCaL                 `noun`    {- <mustabdal> -}      [ ['r','e','p','l','a','c','e','m','e','n','t'], ['r','e','s','e','r','v','e'] ]
                              `plural`     MustaFCaL |< Un
                              `femini`     MustaFCaL |< aT ]


cluster_63  = cluster

 |> "b d n" <| [

    FaCuL                     `verb`    {- <badun> -}          [ unwords [ ['b','e'], ['c','o','r','p','u','l','e','n','t'] ] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <badan> -}          [ unwords [ ['b','e'], ['c','o','r','p','u','l','e','n','t'] ] ]
                              `imperf`     FCuL,

    FaCaL                     `noun`    {- <badan> -}          [ ['b','o','d','y'] ]
                              `plural`     HaFCuL
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <badanIy> -}        [ ['p','h','y','s','i','c','a','l'], ['b','o','d','i','l','y'] ],

    FaCAL |< aT               `noun`    {- <badAnaT> -}        [ ['o','b','e','s','i','t','y'], ['c','o','r','p','u','l','e','n','c','e'] ],

    FaCIL                     `adj`     {- <badIn> -}          [ ['c','o','r','p','u','l','e','n','t'], ['o','b','e','s','e'] ],

    FuCUL |< aT               `noun`    {- <budUnaT> -}        [ ['c','o','r','p','u','l','e','n','c','e'], ['o','b','e','s','i','t','y'] ],

    FACiL                     `adj`     {- <bAdin> -}          [ ['c','o','r','p','u','l','e','n','t'], ['o','b','e','s','e'] ] ]


cluster_64  = cluster

 |> "b d h" <| [

    FaCaL                     `verb`    {- <badah> -}          [ ['s','u','r','p','r','i','s','e'], unwords [ ['d','o'], ['s','p','o','n','t','a','n','e','o','u','s','l','y'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <bAdah> -}          [ unwords [ ['a','r','r','i','v','e'], ['u','n','e','x','p','e','c','t','e','d','l','y'] ], ['s','u','r','p','r','i','s','e'] ],

    IFtaCaL                   `verb`    {- <ibtadah> -}        [ ['i','m','p','r','o','v','i','s','e'], ['e','x','t','e','m','p','o','r','i','z','e'] ],

    FaCAL |< aT               `noun`    {- <badAhaT> -}        [ ['s','p','o','n','t','a','n','e','i','t','y'] ],

    FaCIL |< aT               `noun`    {- <badIhaT> -}        [ unwords [ ['i','n','t','u','i','t','i','v','e'], ['g','r','a','s','p'] ] ],

    FaCIL |< Iy               `adj`     {- <badIhIy> -}        [ ['o','b','v','i','o','u','s'], ['i','n','t','u','i','t','i','v','e'], unwords [ ['s','e','l','f'], "-", ['e','v','i','d','e','n','t'] ] ],

    FaCIL |< Iy |< aT         `noun`    {- <badIhIyaT> -}      [ ['p','l','a','t','i','t','u','d','e'], ['a','x','i','o','m'] ]
                              `plural`     FaCIL |< Iy |< At,

    FaCA'iL                   `noun`    {- <badA'ih> -}        [ unwords [ ['s','e','l','f'], "-", ['e','v','i','d','e','n','t'], ['t','r','u','t','h','s'] ] ]
                              `plural`     FaCA'iL
                           
    `limited` "-------P--" ]


cluster_65  = cluster

 |> ['b','U','d','r'] <| [

    _____ |< aT               `noun`    {- <bUdraT> -}         [ ['p','o','w','d','e','r'] ] ]


cluster_66  = cluster

 |> ['b','a','d','r','U','m'] <| [

    _____                     `noun`    {- <badrUm> -}         [ ['b','a','s','e','m','e','n','t'] ]
                              `plural`     _____ |< At ]


cluster_67  = cluster

 |> ['b','U','_','d'] <| [

    _____ |<< "A"             `noun`    {- <bU_dA> -}          [ ['B','u','d','d','h','a'] ],

    _____ |< Iy               `adj`     {- <bU_dIy> -}         [ ['B','u','d','d','h','i','s','t'] ],

    _____ |< Iy               `noun`    {- <bU_dIy> -}         [ ['B','u','d','d','h','i','s','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <bU_dIyaT> -}       [ ['B','u','d','d','h','i','s','m'] ] ]


cluster_68  = cluster

 |> "b _d _h" <| [

    FaCaL                     `verb`    {- <ba_da_h> -}        [ unwords [ ['b','e'], ['h','a','u','g','h','t','y'] ], unwords [ ['b','e'], ['p','r','o','u','d'] ] ]
                              `imperf`     FCaL,

    FaCaL                     `noun`    {- <ba_da_h> -}        [ ['l','u','x','u','r','y'], ['p','r','i','d','e'] ],

    FACiL                     `adj`     {- <bA_di_h> -}        [ ['l','u','x','u','r','i','o','u','s'], ['h','a','u','g','h','t','y'] ]
                              `plural`     FawACiL ]


cluster_69  = cluster

 |> "b _d r" <| [

    FaCaL                     `verb`    {- <ba_dar> -}         [ ['s','o','w'], ['d','i','s','s','e','m','i','n','a','t','e'], ['d','i','s','p','e','r','s','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <ba_d_dar> -}       [ ['w','a','s','t','e'], ['s','q','u','a','n','d','e','r'] ],

    FaCL                      `noun`    {- <ba_dr> -}          [ ['s','p','r','e','a','d'], ['p','r','o','p','a','g','a','t','i','o','n'] ],

    FaCL                      `noun`    {- <ba_dr> -}          [ ['s','e','e','d'] ]
                              `plural`     FiCAL
                              `plural`     FuCUL,

    FiCL |< aT                `noun`    {- <bi_draT> -}        [ ['s','e','e','d'], ['g','e','r','m'] ],

    FuCayL |< aT              `noun`    {- <bu_dayraT> -}      [ ['g','e','r','m'], ['s','e','e','d'] ],

    TaFCIL                    `noun`    {- <tab_dIr> -}        [ ['s','q','u','a','n','d','e','r','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <muba_d_dir> -}     [ ['s','q','u','a','n','d','e','r','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_70  = cluster

 |> "b _d l" <| [

    FaCaL                     `verb`    {- <ba_dal> -}         [ ['s','t','r','i','v','e'], ['e','x','e','r','t'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    TaFaCCaL                  `verb`    {- <taba_d_dal> -}     [ unwords [ ['b','e'], ['s','h','a','m','e','l','e','s','s'] ], unwords [ ['l','o','s','e'], ['s','e','l','f'], ['c','o','n','t','r','o','l'] ] ],

    IFtaCaL                   `verb`    {- <ibta_dal> -}       [ ['n','e','g','l','e','c','t'], unwords [ ['b','e'], ['d','e','b','a','s','e','d'] ] ],

    FaCL                      `noun`    {- <ba_dl> -}          [ ['s','p','e','n','d','i','n','g'], ['d','o','n','a','t','i','n','g'] ],

    FaCL |< aT                `noun`    {- <ba_dlaT> -}        [ ['s','u','i','t'], ['c','o','s','t','u','m','e'] ]
                              `plural`     FaCaL |< At,

    MiFCaL                    `noun`    {- <mib_dal> -}        [ ['s','l','i','p','p','e','r'], unwords [ ['h','o','u','s','e'], ['c','l','o','t','h','e','s'] ] ]
                              `plural`     MaFACiL,

    TaFaCCuL                  `noun`    {- <taba_d_dul> -}     [ ['b','a','n','a','l','i','t','y'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <ibti_dAl> -}       [ ['d','e','g','r','a','d','a','t','i','o','n'], ['v','u','l','g','a','r','i','t','y'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <bA_dil> -}         [ ['s','p','e','n','d','e','r'], ['s','p','e','n','d','i','n','g'] ],

    MaFCUL                    `adj`     {- <mab_dUl> -}        [ ['e','x','e','r','t','e','d'], ['e','x','p','e','n','d','e','d'] ],

    MutaFaCCiL                `adj`     {- <mutaba_d_dil> -}   [ ['v','u','l','g','a','r'] ],

    MuFtaCaL                  `adj`     {- <mubta_dal> -}      [ ['v','u','l','g','a','r'], ['d','e','g','r','a','d','e','d'] ] ]


cluster_71  = cluster

 |> ['b','A','_','d','i','n','^','g','A','n'] <| [

    _____                     `noun`    {- <bA_din^gAn> -}     [ ['e','g','g','p','l','a','n','t'] ] ]


cluster_72  = cluster

 |> ['b','U','r'] <| [

    _____ |<< "U" |<< "^g" |< Iy `noun`    {- <bUrU^gIy> -}       [ ['t','r','u','m','p','e','t','e','r'], ['b','u','g','l','e','r'] ],

    _____ |<< "I"             `noun`    {- <bUrI> -}           [ ['t','r','u','m','p','e','t'], ['b','u','g','l','e'], unwords [ ['s','i','g','n','a','l'], ['h','o','r','n'] ] ] ]


cluster_73  = cluster

 |> ['b','I','r'] <| [

    _____ |<< "A"             `noun`    {- <bIrA> -}           [ ['b','e','e','r'] ],

    _____ |< aT               `noun`    {- <bIraT> -}          [ ['b','e','e','r'] ] ]

 |> ['b','I','r','U'] <| [

    _____                     `xtra`    {- <bIrU> -}           [ ['P','e','r','u'] ],

    _____ |<< "f" |< Iy       `adj`     {- <bIrUfIy> -}        [ ['P','e','r','u','v','i','a','n'] ] ]


cluster_74  = cluster

 |> "b r b" <| [

    FiCL |< aT                `noun`    {- <birbaT> -}         [ ['l','a','b','y','r','i','n','t','h'] ]
                              `plural`     FaCALI,

    FiCLY                     `noun`    {- <birbY> -}          [ ['l','a','b','y','r','i','n','t','h'] ]
                              `plural`     FaCALI ]


cluster_75  = cluster

 |> "b r b _h" <| [

    KaRDaS                    `noun`    {- <barba_h> -}        [ unwords [ ['w','a','t','e','r'], ['p','i','p','e'] ], ['c','u','l','v','e','r','t'] ]
                              `plural`     KaRADiS ]


cluster_76  = cluster

 |> "b r b r" <| [

    KaRDaS                    `verb`    {- <barbar> -}         [ ['b','a','b','b','l','e'], ['j','a','b','b','e','r'] ],

    KaRDaS |< Iy              `noun`    {- <barbarIy> -}       [ ['B','e','r','b','e','r'] ]
                              `plural`     KaRDaS
                              `plural`     KaRADiS |< aT
                              `plural`     KaRDaS |< Iy |< Un
                              `femini`     KaRDaS |< Iy |< aT,

    KaRDaS |< Iy              `adj`     {- <barbarIy> -}       [ ['B','e','r','b','e','r'] ]
                              `plural`     KaRDaS
                              `plural`     KaRADiS |< aT
                              `plural`     KaRDaS |< Iy |< Un,

    KaRDaS |< Iy              `adj`     {- <barbarIy> -}       [ ['b','a','r','b','a','r','i','c'] ],

    KaRDaS |< Iy |< aT        `noun`    {- <barbarIyaT> -}     [ ['b','a','r','b','a','r','i','s','m'], ['s','a','v','a','g','e','r','y'] ],

    MutaKaRDiS                `adj`     {- <mutabarbir> -}     [ ['b','a','r','b','a','r','i','c'] ] ]


cluster_77  = cluster

 |> "b r b s" <| [

    KaRDIS                    `noun`    {- <barbIs> -}         [ ['b','a','r','b','e','l'] ] ]


cluster_78  = cluster

 |> "b r b ^s" <| [

    KaRDUS                    `noun`    {- <barbU^s> -}        [ ['c','o','u','s','c','o','u','s'] ],

    KaRDIS                    `noun`    {- <barbI^s> -}        [ ['t','u','b','e'] ] ]


cluster_79  = cluster

 |> "b r b .t" <| [

    KaRDaS                    `verb`    {- <barba.t> -}        [ ['s','p','l','a','s','h'], ['p','a','d','d','l','e'] ] ]


cluster_80  = cluster

 |> "b r _t n" <| [

    KuRDuS                    `noun`    {- <bur_tun> -}        [ ['c','l','a','w'], ['t','a','l','o','n'] ]
                              `plural`     KaRADiS ]


cluster_81  = cluster

 |> "b r ^g" <| [

    TaFaCCaL                  `verb`    {- <tabarra^g> -}      [ ['a','d','o','r','n'], ['d','e','c','k'] ],

    FuCL                      `noun`    {- <bur^g> -}          [ ['t','o','w','e','r'], ['c','o','n','s','t','e','l','l','a','t','i','o','n'] ]
                              `plural`     FuCUL
                              `plural`     HaFCAL,

    FuCL                      `noun`    {- <bur^g> -}          [ ['B','u','r','j'] ],

    FuCayL                    `noun`    {- <buray^g> -}        [ ['B','u','r','e','i','j'], ['B','o','u','r','e','i','j'] ],

    FuCayL                    `noun`    {- <buray^g> -}        [ unwords [ ['s','m','a','l','l'], ['t','o','w','e','r'] ], unwords [ ['s','m','a','l','l'], ['c','o','n','s','t','e','l','l','a','t','i','o','n'] ] ]
                              `plural`     FuCayL |< At ]

 |> "b r ^g" <| [

    FACiL |< aT               `noun`    {- <bAri^gaT> -}       [ ['b','a','t','t','l','e','s','h','i','p'], ['b','a','r','g','e'] ]
                              `plural`     FawACiL ]


cluster_82  = cluster

 |> "b r ^g z" <| [

    TaKaRDaS                  `verb`    {- <tabar^gaz> -}      [ unwords [ ['b','e','c','o','m','e'], ['b','o','u','r','g','e','o','i','s'] ] ],

    TaKaRDuS                  `noun`    {- <tabar^guz> -}      [ unwords [ ['b','e','c','o','m','i','n','g'], ['b','o','u','r','g','e','o','i','s'] ] ]
                              `plural`     TaKaRDuS |< At,

    MutaKaRDiS                `adj`     {- <mutabar^giz> -}    [ ['b','o','u','r','g','e','o','i','s'] ] ]


cluster_83  = cluster

 |> "b r ^g l" <| [

    KaRDaS                    `noun`    {- <bar^gal> -}        [ ['c','o','m','p','a','s','s'], ['d','i','v','i','d','e','r','s'] ]
                              `plural`     KaRADiS ]


cluster_84  = cluster

 |> "b r ^g m" <| [

    KuRDuS |< aT              `noun`    {- <bur^gumaT> -}      [ ['k','n','u','c','k','l','e'] ]
                              `plural`     KaRADiS ]


cluster_85  = cluster

 |> "b r .h" <| [

    FaCiL                     `verb`    {- <bari.h> -}         [ ['q','u','i','t'], ['l','e','a','v','e'], ['f','i','n','i','s','h'], ['e','n','d'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <barra.h> -}        [ ['o','v','e','r','w','h','e','l','m'], ['a','f','f','l','i','c','t'], ['t','o','r','m','e','n','t'] ],

    FACaL                     `verb`    {- <bAra.h> -}         [ unwords [ ['g','i','v','e'], ['u','p'] ] ],

    HaFCaL                    `verb`    {- <'abra.h> -}        [ unwords [ ['d','o'], ['g','o','o','d'] ] ],

    FaCAL                     `noun`    {- <barA.h> -}         [ unwords [ ['e','m','p','t','y'], ['l','a','n','d'] ], ['c','e','s','s','a','t','i','o','n'] ],

    FaCAL |<< "aN"            `noun`    {- <barA.haN> -}       [ ['o','p','e','n','l','y'], ['p','a','t','e','n','t','l','y'] ],

    TaFACIL                   `noun`    {- <tabArI.h> -}       [ ['a','g','o','n','i','e','s'], ['t','o','r','m','e','n','t','s'] ]
                              `plural`     TaFACIL
                           
    `limited` "-------P--",

    MuFACaL |< aT             `noun`    {- <mubAra.haT> -}     [ ['d','e','p','a','r','t','u','r','e'] ],

    FACiL                     `adj`     {- <bAri.h> -}         [ ['o','m','i','n','o','u','s'] ],

    FACiL |< aT               `noun`    {- <bAri.haT> -}       [ ['y','e','s','t','e','r','d','a','y'], ['y','e','s','t','e','r','y','e','a','r'] ],

    MuFaCCiL                  `adj`     {- <mubarri.h> -}      [ ['a','g','o','n','i','z','i','n','g'], ['v','i','o','l','e','n','t'] ],

    MuFaCCaL                  `adj`     {- <mubarra.h> -}      [ ['a','f','f','l','i','c','t','e','d'], ['t','o','r','m','e','n','t','e','d'] ] ]


cluster_86  = cluster

 |> "b r d" <| [

    FaCL |< Iy |< aT          `noun`    {- <bardIyaT> -}       [ ['p','a','p','y','r','u','s'] ]
                              `plural`     FaCL |< Iy |< At,

    FaCL |< Iy                `adj`     {- <bardIy> -}         [ ['p','a','p','y','r','u','s'] ] ]

 |> "b r d" <| [

    HaFCaL                    `verb`    {- <'abrad> -}         [ ['m','a','i','l'] ],

    FaCIL                     `noun`    {- <barId> -}          [ ['m','a','i','l'], unwords [ ['p','o','s','t'], ['o','f','f','i','c','e'] ] ],

    FaCIL |< Iy               `adj`     {- <barIdIy> -}        [ ['p','o','s','t','a','l'] ] ]

 |> "b r d" <| [

    FuCL                      `noun`    {- <burd> -}           [ ['g','a','r','m','e','n','t'] ]
                              `plural`     HaFCAL,

    FuCayL |< aT              `noun`    {- <buraydaT> -}       [ ['B','u','r','e','i','d','a'] ] ]

 |> "b r d" <| [

    FuCAL |< aT               `noun`    {- <burAdaT> -}        [ unwords [ ['i','r','o','n'], ['f','i','l','i','n','g','s'] ] ],

    FiCAL |< aT               `noun`    {- <birAdaT> -}        [ unwords [ ['t','o','o','l'], ['c','u','t','t','i','n','g'] ] ],

    FaCCAL                    `noun`    {- <barrAd> -}         [ unwords [ ['t','o','o','l'], ['c','u','t','t','e','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MiFCaL                    `noun`    {- <mibrad> -}         [ ['f','i','l','e'], unwords [ ['t','o','o','l'], ['c','u','t','t','e','r'] ] ]
                              `plural`     MaFACiL ]

 |> "b r d" <| [

    FACUL                     `noun`    {- <bArUd> -}          [ ['g','u','n','p','o','w','d','e','r'] ],

    FACUL |< aT               `noun`    {- <bArUdaT> -}        [ ['r','i','f','l','e'], ['c','a','r','b','i','n','e'] ]
                              `plural`     FawACIL,

    FACUL |< Iy               `noun`    {- <bArUdIy> -}        [ ['B','a','r','o','u','d','i'] ] ]

 |> "b r d" <| [

    FaCaL                     `verb`    {- <barad> -}          [ ['c','a','l','m'], ['c','o','o','l'] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <barud> -}          [ unwords [ ['b','e','c','o','m','e'], ['c','o','l','d'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <barrad> -}         [ ['r','e','f','r','i','g','e','r','a','t','e'], unwords [ ['m','a','k','e'], ['c','o','l','d'] ] ],

    TaFaCCaL                  `verb`    {- <tabarrad> -}       [ unwords [ ['b','e'], ['c','o','l','d'] ] ],

    IFtaCaL                   `verb`    {- <ibtarad> -}        [ unwords [ ['c','o','o','l'], ['o','f','f'] ] ],

    FaCL                      `noun`    {- <bard> -}           [ ['c','o','l','d'], ['c','o','o','l','i','n','g'] ],

    FaCaL                     `noun`    {- <barad> -}          [ ['h','a','i','l'], ['h','a','i','l','s','t','o','n','e'] ],

    FaCaL |< aT               `noun`    {- <baradaT> -}        [ ['h','a','i','l','s','t','o','n','e'] ],

    FaCUL                     `noun`    {- <barUd> -}          [ unwords [ ['c','o','l','l','y','r','i','u','m'], "(", ['m','e','d','i','c','a','t','e','d'], ['s','o','l','u','t','i','o','n'], ['f','o','r'], ['t','h','e'], ['e','y','e','s'], ")" ] ],

    FuCUL                     `noun`    {- <burUd> -}          [ ['c','o','l','d','n','e','s','s'] ],

    FaCL |< Iy |< aT          `noun`    {- <bardIyaT> -}       [ ['a','g','u','e'], unwords [ ['f','e','v','e','r'], ['a','t','t','a','c','k'] ] ],

    FuCaLA'                   `noun`    {- <buradA'> -}        [ ['a','g','u','e'], unwords [ ['f','e','v','e','r'], ['a','t','t','a','c','k'] ] ],

    FaCaLY                    `noun`    {- <baradY> -}         [ ['B','a','r','a','d','a'] ],

    FaCCAL                    `noun`    {- <barrAd> -}         [ ['r','e','f','r','i','g','e','r','a','t','o','r'] ],

    FaCCAL                    `noun`    {- <barrAd> -}         [ ['t','e','a','p','o','t'] ],

    FaCCAL |< aT              `noun`    {- <barrAdaT> -}       [ ['r','e','f','r','i','g','e','r','a','t','o','r'] ],

    TaFCIL                    `noun`    {- <tabrId> -}         [ ['r','e','f','r','i','g','e','r','a','t','i','o','n'], ['c','o','o','l','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `adj`     {- <bArid> -}          [ ['c','o','l','d'], ['f','r','i','g','i','d'] ],

    MuFaCCiL                  `noun`    {- <mubarrid> -}       [ ['c','o','o','l','e','r'] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCiL                  `adj`     {- <mubarrid> -}       [ ['r','e','f','r','e','s','h','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <mubarrad> -}       [ ['c','o','o','l','e','d'], ['c','h','i','l','l','e','d'] ] ]


cluster_87  = cluster

 |> "b r d _h" <| [

    KaRDaS                    `verb`    {- <barda_h> -}        [ ['p','o','l','i','s','h'], ['b','u','r','n','i','s','h'] ],

    KaRDaS |< aT              `noun`    {- <barda_haT> -}      [ ['p','o','l','i','s','h','i','n','g'], ['b','u','r','n','i','s','h','i','n','g'] ] ]


cluster_88  = cluster

 |> "b r d r" <| [

    KaRDUS |< aT              `noun`    {- <bardUraT> -}       [ ['c','u','r','b','s','t','o','n','e'], ['c','u','r','b'] ] ]


cluster_89  = cluster

 |> "b r d `" <| [

    KaRDaS |< aT              `noun`    {- <barda`aT> -}       [ unwords [ ['s','a','d','d','l','e'], ['c','l','o','t','h'] ], unwords [ ['p','a','c','k'], "-", ['s','a','d','d','l','e'] ] ]
                              `plural`     KaRADiS,

    KaRADiS |< Iy             `noun`    {- <barAdi`Iy> -}      [ unwords [ ['s','a','d','d','l','e'], ['m','a','k','e','r'] ] ]
                              `plural`     KaRADiS |< Iy |< Un
                              `femini`     KaRADiS |< Iy |< aT ]


cluster_90  = cluster

 |> "b r d q" <| [

    KaRDAS                    `noun`    {- <bardAq> -}         [ ['p','i','t','c','h','e','r'], ['j','u','g'] ]
                              `plural`     KaRADIS ]


cluster_91  = cluster

 |> "b r _d `" <| [

    KaRDaS |< aT              `noun`    {- <bar_da`aT> -}      [ unwords [ ['s','a','d','d','l','e'], ['c','l','o','t','h'] ], unwords [ ['p','a','c','k'], "-", ['s','a','d','d','l','e'] ] ]
                              `plural`     KaRADiS,

    KaRADiS |< Iy             `noun`    {- <barA_di`Iy> -}     [ unwords [ ['s','a','d','d','l','e'], ['m','a','k','e','r'] ] ]
                              `plural`     KaRADiS |< Iy |< Un
                              `femini`     KaRADiS |< Iy |< aT ]


cluster_92  = cluster

 |> "b r z" <| [

    FaCaL                     `verb`    {- <baraz> -}          [ ['a','p','p','e','a','r'], ['e','m','e','r','g','e'] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCuL                     `verb`    {- <baruz> -}          [ ['s','u','r','p','a','s','s'], ['e','x','c','e','l'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <barraz> -}         [ ['e','x','p','o','s','e'], ['h','i','g','h','l','i','g','h','t'] ],

    FACaL                     `verb`    {- <bAraz> -}          [ unwords [ ['c','o','m','p','e','t','e'], ['a','g','a','i','n','s','t'] ] ],

    HaFCaL                    `verb`    {- <'abraz> -}         [ ['h','i','g','h','l','i','g','h','t'], ['e','x','p','o','s','e'] ],

    TaFaCCaL                  `verb`    {- <tabarraz> -}       [ ['d','e','f','e','c','a','t','e'] ],

    TaFACaL                   `verb`    {- <tabAraz> -}        [ unwords [ ['c','o','m','p','e','t','e'], ['a','g','a','i','n','s','t'] ] ],

    IFtaCaL                   `verb`    {- <ibtaraz> -}        [ ['e','x','c','e','l'], ['s','u','r','p','a','s','s'] ],

    FuCUL                     `noun`    {- <burUz> -}          [ ['p','r','o','m','i','n','e','n','c','e'], ['a','p','p','e','a','r','a','n','c','e'] ],

    FiCAL                     `noun`    {- <birAz> -}          [ ['d','u','n','g'], ['c','o','m','p','o','s','t'] ],

    FiCAL                     `noun`    {- <birAz> -}          [ ['c','o','m','p','e','t','i','t','i','o','n'], ['d','u','e','l'] ],

    FaCaLAn                   `noun`    {- <barazAn> -}        [ ['t','r','u','m','p','e','t'] ],

    FaCaLAn |< Iy             `noun`    {- <barazAnIy> -}      [ ['B','a','r','a','z','a','n','i'] ],

    FuCayL |< aT              `noun`    {- <burayzaT> -}       [ unwords [ ['b','u','r','e','i','z','a'], "(", ['1','0'], "-", ['p','i','a','s','t','e','r'], ['c','o','i','n'], ")" ] ],

    HaFCaL                    `adj`     {- <'abraz> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','r','o','m','i','n','e','n','t'] ] ],

    MuFACaL |< aT             `noun`    {- <mubArazaT> -}      [ ['c','o','n','t','e','s','t'], ['d','u','e','l'], ['c','o','m','p','e','t','i','t','i','o','n'] ],

    HiFCAL                    `noun`    {- <'ibrAz> -}         [ ['d','i','s','p','l','a','y','i','n','g'], ['e','m','p','h','a','s','i','z','i','n','g'], ['a','c','c','e','n','t','u','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    FACiL                     `adj`     {- <bAriz> -}          [ ['p','r','o','m','i','n','e','n','t'], ['d','i','s','t','i','n','c','t'] ],

    MuFaCCaL                  `adj`     {- <mubarraz> -}       [ ['e','m','b','o','s','s','e','d'] ],

    MuFaCCiL                  `adj`     {- <mubarriz> -}       [ ['s','u','r','p','a','s','s','i','n','g'] ],

    MuFaCCiL                  `noun`    {- <mubarriz> -}       [ ['w','i','n','n','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFACiL                   `noun`    {- <mubAriz> -}        [ ['c','o','m','p','e','t','i','t','o','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    FaCIL |< aT               `noun`    {- <barIzaT> -}        [ ['s','o','c','k','e','t'], unwords [ ['w','a','l','l'], ['p','l','u','g'] ] ]
                              `plural`     FaCA'iL ]


cluster_93  = cluster

 |> "b r z _h" <| [

    KaRDaS                    `noun`    {- <barza_h> -}        [ ['p','a','r','t','i','t','i','o','n'], ['i','s','t','h','m','u','s'], ['s','t','r','a','i','t','s'] ]
                              `plural`     KaRADiS ]


cluster_94  = cluster

 |> "b r z q" <| [

    KuRDUS                    `noun`    {- <burzUq> -}         [ ['s','i','d','e','w','a','l','k'] ] ]


cluster_95  = cluster

 |> ['b','a','r','A','z','I','l'] <| [

    al >| _____               `xtra`    {- <al-barAzIl> -}     [ ['B','r','a','z','i','l'] ],

    _____ |< Iy               `adj`     {- <barAzIlIy> -}      [ ['B','r','a','z','i','l','i','a','n'] ],

    _____ |< Iy               `noun`    {- <barAzIlIy> -}      [ ['B','r','a','z','i','l','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_96  = cluster

 |> ['b','A','r','I','s'] <| [

    _____                     `xtra`    {- <bArIs> -}          [ ['P','a','r','i','s'] ],

    _____ |< Iy               `adj`     {- <bArIsIy> -}        [ ['P','a','r','i','s','i','a','n'] ],

    _____ |< Iy               `noun`    {- <bArIsIy> -}        [ ['P','a','r','i','s','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_97  = cluster

 |> ['b','U','r','U','s'] <| [

    _____ |< iyA              `xtra`    {- <bUrUsiyA> -}       [ ['B','o','r','u','s','s','i','a'] ] ]

 |> ['b','u','r','U','s'] <| [

    _____ |< iyA              `xtra`    {- <burUsiyA> -}       [ ['P','r','u','s','s','i','a'] ],

    _____ |< Iy               `adj`     {- <burUsIy> -}        [ ['P','r','u','s','s','i','a','n'] ] ]


cluster_98  = cluster

 |> ['b','U','r','-','s','U','d','A','n'] <| [

    _____                     `zero`    {- <bUr-sUdAn> -}      [ unwords [ ['P','o','r','t'], ['S','u','d','a','n'] ] ],

    _____ |< Iy               `adj`     {- <bUr-sUdAnIy> -}    [ unwords [ ['f','r','o','m'], "/", ['o','f'], ['P','o','r','t'], ['S','u','d','a','n'] ] ] ]


cluster_99  = cluster

 |> ['b','U','r','-','s','a','`','I','d'] <| [

    _____                     `zero`    {- <bUr-sa`Id> -}      [ unwords [ ['P','o','r','t'], ['S','a','i','d'] ] ],

    _____ |< Iy               `adj`     {- <bUr-sa`IdIy> -}    [ unwords [ ['f','r','o','m'], "/", ['o','f'], ['P','o','r','t'], ['S','a','i','d'] ] ] ]


cluster_100 = cluster

 |> "b r s m" <| [

    KiRDAS                    `noun`    {- <birsAm> -}         [ unwords [ ['p','l','e','u','r','i','s','y'], "(", ['l','u','n','g'], ['i','n','f','l','a','m','m','a','t','i','o','n'], ")" ] ],

    KiRDIS                    `noun`    {- <birsIm> -}         [ ['c','l','o','v','e','r'] ] ]


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
