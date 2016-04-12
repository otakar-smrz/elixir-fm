
module Elixir.Data.Moony.Complex.A (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['\'','a'] <| [

    _____                     `part`    {- <'a> -}             [ ['w','h','e','t','h','e','r'], ['i','n','d','e','e','d'] ] ]


cluster_2   = cluster

 |> ['\'','A','b'] <| [

    _____                     `noun`    {- <'Ab> -}            [ ['A','u','g','u','s','t'] ] ]


cluster_3   = cluster

 |> "' b b" <| [

    FaCL                      `verb`    {- <'abb> -}           [ ['d','e','s','i','r','e'], ['a','s','p','i','r','e'] ]
                              `imperf`     FuCL
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    FaCAL |< aT               `noun`    {- <'abAbaT> -}        [ ['n','o','s','t','a','l','g','i','a'], ['h','o','m','e','s','i','c','k','n','e','s','s'] ] ]


cluster_4   = cluster

 |> "' b ^g d" <| [

    KaRDaS                    `noun`    {- <'ab^gad> -}        [ ['a','l','p','h','a','b','e','t'] ],

    KaRDaS |< Iy              `adj`     {- <'ab^gadIy> -}      [ ['a','l','p','h','a','b','e','t','i','c','a','l'], ['e','l','e','m','e','n','t','a','r','y'] ],

    KaRDaS |< Iy |< aT        `noun`    {- <'ab^gadIyaT> -}    [ ['a','l','p','h','a','b','e','t'] ] ]


cluster_5   = cluster

 |> ['\'','a','b','A','^','g','U','r'] <| [

    _____                     `noun`    {- <'abA^gUr> -}       [ ['l','a','m','p','s','h','a','d','e'] ] ]


cluster_6   = cluster

 |> "' b d" <| [

    FaCaL                     `verb`    {- <'abad> -}          [ ['p','e','r','s','i','s','t'], ['r','e','m','a','i','n'], ['s','t','a','y'] ]
                              `imperf`     FCiL,

    FaCaL                     `verb`    {- <'abad> -}          [ unwords [ ['b','e'], ['u','n','t','a','m','e','d'] ], ['e','s','c','a','p','e'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FuCUL                     `noun`    {- <'ubUd> -}          [ ['p','e','r','s','i','s','t','i','n','g'], ['r','e','m','a','i','n','i','n','g'], ['s','t','a','y','i','n','g'] ],

    FaCCaL                    `verb`    {- <'abbad> -}         [ ['p','e','r','p','e','t','u','a','t','e'], ['i','m','m','o','r','t','a','l','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <ta'abbad> -}       [ unwords [ ['s','e','l','f'], "-", ['p','e','r','p','e','t','u','a','t','e'] ], unwords [ ['s','e','l','f'], "-", ['i','m','m','o','r','t','a','l','i','z','e'] ] ],

    FaCaL                     `noun`    {- <'abad> -}          [ ['e','t','e','r','n','i','t','y'], unwords [ ['a','l','l'], ['t','i','m','e'] ], ['f','o','r','e','v','e','r'] ],

    HACAL                     `noun`    {- <'AbAd> -}          [ ['e','t','e','r','n','i','t','y'], ['f','o','r','e','v','e','r'] ],

    FaCaL |<< "aN"            `noun`    {- <'abadaN> -}        [ ['n','e','v','e','r'], unwords [ ['n','o','t'], ['a','t'], ['a','l','l'] ] ],

    FaCaL |< Iy               `adj`     {- <'abadIy> -}        [ ['e','t','e','r','n','a','l'], ['i','n','f','i','n','i','t','e'] ],

    FaCaL |< Iy |< aT         `noun`    {- <'abadIyaT> -}      [ ['e','t','e','r','n','i','t','y'], ['f','o','r','e','v','e','r'] ],

    FACiL                     `adj`     {- <'Abid> -}          [ unwords [ ['n','o','n'], "-", ['m','i','g','r','a','t','o','r','y'] ], ['s','e','d','e','n','t','a','r','y'] ],

    FACiL |< aT               `noun`    {- <'AbidaT> -}        [ ['a','r','c','h','a','i','s','m'], ['s','e','d','e','n','t','a','r','y'] ]
                              `plural`     FawACiL,

    TaFCIL                    `noun`    {- <ta'bId> -}         [ ['p','e','r','p','e','t','u','a','t','i','o','n'], ['i','m','m','o','r','t','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mu'abbad> -}       [ unwords [ ['l','i','f','e'], "-", ['l','o','n','g'] ], ['p','e','r','p','e','t','u','a','l'] ],

    TaFaCCuL                  `noun`    {- <ta'abbud> -}       [ ['p','e','r','p','e','t','u','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At ]


cluster_7   = cluster

 |> "' b r" <| [

    FaCaL                     `verb`    {- <'abar> -}          [ ['s','t','i','n','g'], ['p','o','l','l','i','n','a','t','e'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <'abbar> -}         [ unwords [ ['p','r','a','c','t','i','c','e'], ['a','c','u','p','u','n','c','t','u','r','e'] ], ['p','o','l','l','i','n','a','t','e'] ],

    FiCL |< aT                `noun`    {- <'ibraT> -}         [ ['i','n','d','i','c','a','t','o','r'], ['n','e','e','d','l','e'] ]
                              `plural`     FiCaL,

    FiCL |< aT                `noun`    {- <'ibraT> -}         [ ['n','e','e','d','l','e'], ['i','n','j','e','c','t','i','o','n'] ]
                              `plural`     FiCaL,

    FiCaL |< Iy               `adj`     {- <'ibarIy> -}        [ unwords [ ['n','e','e','d','l','e'], "-", ['l','i','k','e'] ] ],

    MiFCaL                    `noun`    {- <mi'bar> -}         [ ['n','e','e','d','l','e','c','a','s','e'], ['a','n','t','h','e','r'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta'bIr> -}         [ ['a','c','u','p','u','n','c','t','u','r','e'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <mu'abbir> -}       [ ['a','c','u','p','u','n','c','t','u','r','i','s','t'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_8   = cluster

 |> ['\'','U','b','i','r'] <| [

    _____ |<< "A"             `noun`    {- <'UbirA> -}         [ ['o','p','e','r','a'] ]
                              `plural`     _____ |< At ]


cluster_9   = cluster

 |> "' b r z" <| [

    KiRDIS                    `noun`    {- <'ibrIz> -}         [ unwords [ ['p','u','r','e'], ['g','o','l','d'] ] ],

    KiRDIS |< Iy              `adj`     {- <'ibrIzIy> -}       [ ['g','o','l','d','e','n'] ] ]


cluster_10  = cluster

 |> "' b r q" <| [

    KiRDIS                    `noun`    {- <'ibrIq> -}         [ ['p','i','t','c','h','e','r'], ['j','u','g'] ]
                              `plural`     KaRADiS |< aT
                              `plural`     KaRADIS ]


cluster_11  = cluster

 |> ['\'','U','b','i','r','^','g'] <| [

    _____                     `noun`    {- <'Ubir^g> -}        [ ['a','u','b','e','r','g','e'], ['i','n','n'] ] ]


cluster_12  = cluster

 |> ['\'','I','b','a','r','^','s'] <| [

    _____ |< Iy |< aT         `noun`    {- <'Ibar^sIyaT> -}    [ ['d','i','o','c','e','s','e'], ['b','i','s','h','o','p','r','i','c'] ]
                              `plural`     _____ |< Iy |< At ]


cluster_13  = cluster

 |> "' b z m" <| [

    KiRDIS                    `noun`    {- <'ibzIm> -}         [ ['b','u','c','k','l','e'], ['c','l','a','s','p'] ]
                              `plural`     KaRADIS ]


cluster_14  = cluster

 |> "' b z n" <| [

    KaRDaS                    `noun`    {- <'abzan> -}         [ ['w','a','s','h','b','o','w','l'] ]
                              `plural`     KaRADiS ]


cluster_15  = cluster

 |> ['\'','i','b','i','s','t','I','m','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <'ibistImUlU^giyA> -} [ ['e','p','i','s','t','e','m','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <'ibistImUlU^gIy> -} [ ['e','p','i','s','t','e','m','o','l','o','g','i','c','a','l'] ] ]


cluster_16  = cluster

 |> "' b .d" <| [

    FuCL                      `noun`    {- <'ub.d> -}          [ unwords [ ['k','n','e','e'], ['p','i','t'] ] ]
                              `plural`     HACAL,

    MaFCiL                    `noun`    {- <ma'bi.d> -}        [ unwords [ ['k','n','e','e'], ['p','i','t'] ] ]
                              `plural`     MaFACiL,

    FuCL |< Iy                `adj`     {- <'ub.dIy> -}        [ unwords [ ['p','o','p','l','i','t','e','a','l'], "(", ['a','r','m','p','i','t'], ")" ] ],

    MaFCiL |< Iy              `adj`     {- <ma'bi.dIy> -}      [ unwords [ ['p','o','p','l','i','t','e','a','l'], "(", ['a','r','m','p','i','t'], ")" ] ],

    FiCAL |< Iy               `adj`     {- <'ibA.dIy> -}       [ ['I','b','a','d','i'] ],

    FiCAL |< Iy |< aT         `noun`    {- <'ibA.dIyaT> -}     [ ['I','b','a','d','i','t','e','s'] ],

    FaCAL |< Iy               `adj`     {- <'abA.dIy> -}       [ ['I','b','a','d','i'] ],

    FaCAL |< Iy |< aT         `noun`    {- <'abA.dIyaT> -}     [ ['I','b','a','d','i','t','e','s'] ] ]


cluster_17  = cluster

 |> "' b .t" <| [

    TaFaCCaL                  `verb`    {- <ta'abba.t> -}      [ unwords [ ['p','u','t'], "/", ['c','a','r','r','y'], ['u','n','d','e','r'], ['t','h','e'], ['a','r','m'] ] ],

    FiCL                      `noun`    {- <'ib.t> -}          [ ['a','r','m','p','i','t'] ]
                              `plural`     HACAL,

    FiCL |< Iy                `adj`     {- <'ib.tIy> -}        [ ['a','x','i','l','l','a','r','y'], ['a','r','m','p','i','t'] ] ]


cluster_18  = cluster

 |> "' b .t r" <| [

    "'imbirA.tUr"             `noun`    {- <'imbirA.tUr> -}    [ ['e','m','p','e','r','o','r'] ]
                              `plural`     "'abA.tir" |< aT
                              `femini`     "'imbirA.tUr" |< aT,

    "'imbirA.tUr" |< Iy       `adj`     {- <'imbirA.tUrIy> -}  [ ['i','m','p','e','r','i','a','l'] ],

    "'imbirA.tUr" |< Iy |< aT `noun`    {- <'imbirA.tUrIyaT> -} [ ['e','m','p','i','r','e'] ]
                              `plural`     "'imbirA.tUr" |< Iy |< At ]


cluster_19  = cluster

 |> "' b q" <| [

    FaCaL                     `verb`    {- <'abaq> -}          [ ['e','s','c','a','p','e'], ['f','l','e','e'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCaL                     `noun`    {- <'abaq> -}          [ ['e','s','c','a','p','e'], ['f','l','e','e','i','n','g'], ['f','l','i','g','h','t'] ]
                              `plural`     FaCaL |< At,

    FACiL                     `noun`    {- <'Abiq> -}          [ ['f','u','g','i','t','i','v','e'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT ]


cluster_20  = cluster

 |> "' b l" <| [

    FiCAL |< aT               `noun`    {- <'ibAlaT> -}        [ ['b','u','n','d','l','e'], ['a','d','m','i','n','i','s','t','r','a','t','i','o','n'] ] ]

 |> "' b l" <| [

    FiCL                      `noun`    {- <'ibl> -}           [ ['c','a','m','e','l','s'] ],

    FiCL |< Iy                `adj`     {- <'iblIy> -}         [ ['d','r','o','m','e','d','a','r','y'] ] ]


cluster_21  = cluster

 |> "' b l z" <| [

    KiRDIS                    `noun`    {- <'iblIz> -}         [ unwords [ ['a','l','l','u','v','i','a','l'], ['d','e','p','o','s','i','t','s'] ] ] ]


cluster_22  = cluster

 |> "' b l s" <| [

    KiRDIS                    `noun`    {- <'iblIs> -}         [ ['d','e','v','i','l'], ['d','e','m','o','n'] ]
                              `plural`     KaRADiS
                              `plural`     KaRADiS |< aT ]


cluster_23  = cluster

 |> ['\'','u','b','u','l','l'] <| [

    _____ |< aT               `noun`    {- <'ubullaT> -}       [ ['t','r','i','b','e'], ['c','o','m','p','a','n','i','o','n','s'] ] ]


cluster_24  = cluster

 |> "' b n" <| [

    FaCCaL                    `verb`    {- <'abban> -}         [ ['e','u','l','o','g','i','z','e'] ],

    FiCCAL                    `noun`    {- <'ibbAn> -}         [ ['d','u','r','i','n','g'], ['t','i','m','e'] ],

    TaFCIL                    `noun`    {- <ta'bIn> -}         [ ['f','u','n','e','r','a','l'], ['o','b','i','t','u','a','r','y'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta'bInIy> -}       [ ['f','u','n','e','r','a','r','y'], ['c','o','m','m','e','m','o','r','a','t','i','v','e'] ] ]


cluster_25  = cluster

 |> "' b h" <| [

    FaCaL                     `verb`    {- <'abah> -}          [ unwords [ ['b','e'], ['i','n','t','e','r','e','s','t','e','d'] ], unwords [ ['b','e'], ['s','e','n','s','i','t','i','v','e'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <'abih> -}          [ unwords [ ['b','e'], ['i','n','t','e','r','e','s','t','e','d'] ], unwords [ ['b','e'], ['s','e','n','s','i','t','i','v','e'] ] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <ta'abbah> -}       [ unwords [ ['b','e'], ['h','a','u','g','h','t','y'] ], unwords [ ['b','e'], ['a','l','o','o','f'] ] ],

    FaCaL                     `noun`    {- <'abah> -}          [ ['i','n','t','e','r','e','s','t'], ['s','e','n','s','i','t','i','v','i','t','y'] ]
                              `plural`     FaCaL |< At,

    FACiL                     `adj`     {- <'Abih> -}          [ ['c','o','n','c','e','r','n','e','d'] ],

    FuCCaL |< aT              `noun`    {- <'ubbahaT> -}       [ ['p','o','m','p'], ['s','p','l','e','n','d','o','r'] ] ]


cluster_26  = cluster

 |> "' b w" <| [

    FiCAL |< aT               `noun`    {- <'ibAwaT> -}        [ ['f','a','t','h','e','r','h','o','o','d'] ],

    FuCUL |< aT               `noun`    {- <'ubUwaT> -}        [ ['p','a','t','e','r','n','i','t','y'] ],

    FaCA |< Iy                `adj`     {- <'abawIy> -}        [ ['p','a','t','e','r','n','a','l'], ['f','a','t','h','e','r','l','y'] ],

    FaCA |< Iy |< aT          `noun`    {- <'abawIyaT> -}      [ ['p','a','t','r','i','a','r','c','h','y'] ] ]

 |> ['b','U'] <| [

    _____                     `zero`    {- <bU> -}             [ ['B','o','u'] ] ]


cluster_27  = cluster

 |> "' b y" <| [

    FaCY                      `verb`    {- <'abY> -}           [ ['d','e','n','y'], ['r','e','f','u','s','e'] ]
                              `imperf`     FCY
                              `masdar`     FiCA'
                              `masdar`     FiCA' |< aT,

    TaFaCCY                   `verb`    {- <ta'abbY> -}        [ ['d','e','c','l','i','n','e'] ],

    FiCA'                     `noun`    {- <'ibA'> -}          [ ['r','e','f','u','s','a','l'], ['d','e','n','i','a','l'] ]
                              `plural`     FiCA' |< At,

    FiCA' |< aT               `noun`    {- <'ibA'aT> -}        [ ['r','e','f','u','s','a','l'], ['d','e','n','i','a','l'] ],

    FaCIL                     `adj`     {- <'abIy> -}          [ ['p','r','o','u','d'], ['d','i','g','n','i','f','i','e','d'] ],

    FACI                      `adj`     {- <'AbI> -}           [ ['r','e','l','u','c','t','a','n','t'], ['u','n','w','i','l','l','i','n','g'] ]
                              `plural`     FuCY |< aT ]


cluster_28  = cluster

 |> ['\'','i','b','r','I','s','a','m'] <| [

    _____                     `noun`    {- <'ibrIsam> -}       [ ['s','i','l','k'] ] ]


cluster_29  = cluster

 |> ['\'','a','b','r','a','^','s'] <| [

    _____ |< Iy |< aT         `noun`    {- <'abra^sIyaT> -}    [ ['d','i','o','c','e','s','e'], ['b','i','s','h','o','p','r','i','c'] ] ]


cluster_30  = cluster

 |> ['\'','a','b','r','I','l'] <| [

    _____                     `noun`    {- <'abrIl> -}         [ ['A','p','r','i','l'], ['A','p','r','i','l','i','a'] ] ]

 |> ['\'','i','b','r','I','l'] <| [

    _____                     `noun`    {- <'ibrIl> -}         [ ['A','p','r','i','l'], ['A','p','r','i','l','i','a'] ] ]


cluster_31  = cluster

 |> ['\'','a','b','r','A','m','I','s'] <| [

    _____                     `noun`    {- <'abrAmIs> -}       [ ['b','r','e','a','m'] ] ]


cluster_32  = cluster

 |> ['\'','i','b','r','A','h','I','m'] <| [

    _____                     `noun`    {- <'ibrAhIm> -}       [ ['I','b','r','a','h','i','m'] ],

    _____ |< Iy               `noun`    {- <'ibrAhImIy> -}     [ ['I','b','r','a','h','i','m','i'] ] ]


cluster_33  = cluster

 |> ['\'','a','b','^','s','I','r'] <| [

    _____                     `noun`    {- <'ab^sIr> -}        [ ['A','b','s','h','i','r'] ] ]


cluster_34  = cluster

 |> ['\'','a','b','n','U','s'] <| [

    _____                     `noun`    {- <'abnUs> -}         [ ['e','b','o','n','y'] ] ]


cluster_35  = cluster

 |> ['\'','a','b','w','A'] <| [

    _____                     `noun`    {- <'abwA> -}          [ ['o','b','o','e'] ] ]


cluster_36  = cluster

 |> ['\'','U','t'] <| [

    _____                     `noun`    {- <'Ut> -}            [ ['A','u','g','u','s','t'] ] ]


cluster_37  = cluster

 |> ['\'','U','t','U','b','I','s'] <| [

    _____                     `noun`    {- <'UtUbIs> -}        [ ['b','u','s'] ]
                              `plural`     _____ |< At ]


cluster_38  = cluster

 |> ['\'','U','t','U','^','g','r','A','f'] <| [

    _____                     `noun`    {- <'UtU^grAf> -}      [ ['a','u','t','o','g','r','a','p','h'] ]
                              `plural`     _____ |< At ]


cluster_39  = cluster

 |> ['\'','U','t','U','q','r','A','.','t'] <| [

    _____ |< Iy               `adj`     {- <'UtUqrA.tIy> -}    [ ['a','u','t','o','c','r','a','t','i','c'] ],

    _____ |< Iy |< aT         `noun`    {- <'UtUqrA.tIyaT> -}  [ ['a','u','t','o','c','r','a','c','y'] ] ]


cluster_40  = cluster

 |> ['\'','U','t','I','l'] <| [

    _____                     `noun`    {- <'UtIl> -}          [ ['h','o','t','e','l'] ]
                              `plural`     _____ |< At ]


cluster_41  = cluster

 |> "' t m" <| [

    MaFCaL                    `noun`    {- <ma'tam> -}         [ ['f','u','n','e','r','a','l'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <ma'tamIy> -}       [ ['f','u','n','e','r','a','r','y'] ],

    MaFCaL |< aT              `noun`    {- <ma'tamaT> -}       [ ['m','o','u','r','n','e','r','s'] ] ]


cluster_42  = cluster

 |> ['\'','U','t','U','m','A','t'] <| [

    _____ |< Iy               `adj`     {- <'UtUmAtIy> -}      [ ['a','u','t','o','m','a','t','i','c'], ['a','u','t','o','m','a','t','e','d'] ] ]

 |> ['\'','U','t','U','m','A','t','I','k'] <| [

    _____ |< Iy               `adj`     {- <'UtUmAtIkIy> -}    [ ['a','u','t','o','m','a','t','i','c'] ] ]


cluster_43  = cluster

 |> "' t n" <| [

    FaCCUL                    `noun`    {- <'attUn> -}         [ ['f','u','r','n','a','c','e'], ['o','v','e','n'] ]
                              `plural`     FaCACIL ]

 |> "' t n" <| [

    FaCAL                     `noun`    {- <'atAn> -}          [ unwords [ ['s','h','e'], "-", ['a','s','s'] ] ]
                              `plural`     FuCuL ]


cluster_44  = cluster

 |> "' t y" <| [

    FaCY                      `verb`    {- <'atY> -}           [ ['a','r','r','i','v','e'], ['c','o','m','e'], ['r','e','a','c','h'] ]
                              `imperf`     FCI
                              `masdar`     FiCLAn,

    FACY                      `verb`    {- <'AtY> -}           [ ['g','i','v','e'], ['o','f','f','e','r'] ],

    HACY                      `verb`    {- <'AtY> -}           [ ['b','r','i','n','g'], ['g','i','v','e'] ],

    TaFaCCY                   `verb`    {- <ta'attY> -}        [ ['h','a','p','p','e','n'], ['r','e','s','u','l','t'] ],

    IstaFCY                   `verb`    {- <ista'tY> -}        [ unwords [ ['a','s','k'], ['t','o'], ['c','o','m','e'] ], unwords [ ['i','n','d','u','c','e'], ['t','o'], ['c','o','m','e'] ] ],

    FiCLAn                    `noun`    {- <'ityAn> -}         [ ['a','r','r','i','v','a','l'], ['p','e','r','f','o','r','m','a','n','c','e'] ],

    FiCAw |< aT               `noun`    {- <'itAwaT> -}        [ ['t','a','x'], ['t','r','i','b','u','t','e'], ['p','a','y','m','e','n','t'] ]
                              `plural`     FaCAwY
                              `plural`     FiCAw |< At,

    FACI                      `adj`     {- <'AtI> -}           [ ['c','o','m','i','n','g'], ['f','o','l','l','o','w','i','n','g'] ],

    MaFCY                     `noun`    {- <ma'tY> -}          [ unwords [ ['p','l','a','c','e'], ['o','f'], ['o','r','i','g','i','n'] ], ['s','o','u','r','c','e'] ]
                              `plural`     MaFACI,

    MuFACI                    `adj`     {- <mu'AtI> -}         [ ['f','a','v','o','r','a','b','l','e'], ['s','u','i','t','a','b','l','e'] ],

    MutaFaCCI                 `adj`     {- <muta'attI> -}      [ ['d','e','r','i','v','e','d'], ['p','r','o','c','e','e','d','i','n','g'] ] ]


cluster_45  = cluster

 |> ['\'','i','t','n'] <| [

    _____ |< Iy |< aT         `noun`    {- <'itnIyaT> -}       [ ['e','t','h','n','i','c','i','t','y'], unwords [ ['e','t','h','n','i','c'], ['b','a','c','k','g','r','o','u','n','d'] ] ],

    _____ |< Iy               `adj`     {- <'itnIy> -}         [ ['e','t','h','n','i','c'] ] ]


cluster_46  = cluster

 |> "' _t _t" <| [

    FaCL                      `verb`    {- <'a_t_t> -}         [ unwords [ ['b','e'], ['l','u','x','u','r','i','a','n','t'] ], unwords [ ['g','r','o','w'], ['p','r','o','f','u','s','e','l','y'] ] ]
                              `imperf`     FuCL
                              `imperf`     FiCL
                              `pfirst`     FaCaL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <'a_t_ta_t> -}      [ ['f','u','r','n','i','s','h'] ],

    TaFaCCaL                  `verb`    {- <ta'a_t_ta_t> -}    [ unwords [ ['b','e'], ['f','u','r','n','i','s','h','e','d'] ], unwords [ ['b','e'], ['w','e','a','l','t','h','y'] ] ],

    FaCAL |< aT               `noun`    {- <'a_tA_taT> -}      [ ['p','r','o','f','u','s','i','o','n'] ],

    FaCIL                     `adj`     {- <'a_tI_t> -}        [ ['a','b','u','n','d','a','n','t'] ],

    FaCAL                     `noun`    {- <'a_tA_t> -}        [ ['f','u','r','n','i','t','u','r','e'], ['e','q','u','i','p','m','e','n','t'] ]
                              `plural`     FaCAL |< At,

    MuFaCCaL                  `adj`     {- <mu'a_t_ta_t> -}    [ ['f','u','r','n','i','s','h','e','d'] ],

    TaFCIL                    `noun`    {- <ta'_tI_t> -}       [ ['f','u','r','n','i','s','h','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_47  = cluster

 |> "' _t r" <| [

    FaCaL                     `verb`    {- <'a_tar> -}         [ ['r','e','p','o','r','t'], ['t','r','a','n','s','m','i','t'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <'a_t_tar> -}       [ ['a','f','f','e','c','t'], ['i','n','f','l','u','e','n','c','e'] ],

    HACaL                     `verb`    {- <'A_tar> -}         [ ['p','r','e','f','e','r'] ],

    TaFaCCaL                  `verb`    {- <ta'a_t_tar> -}     [ unwords [ ['b','e'], ['i','n','f','l','u','e','n','c','e','d'] ], unwords [ ['b','e'], ['a','f','f','e','c','t','e','d'] ] ],

    IstaFCaL                  `verb`    {- <ista'_tar> -}      [ ['m','o','n','o','p','o','l','i','z','e'], ['a','p','p','r','o','p','r','i','a','t','e'] ],

    FiCL |<< "a"              `prep`    {- <'i_tra> -}         [ unwords [ ['r','i','g','h','t'], ['a','f','t','e','r'] ] ],

    FaCL                      `noun`    {- <'a_tr> -}          [ ['r','e','p','o','r','t','i','n','g'], ['t','r','a','n','s','m','i','t','t','i','n','g'] ],

    FaCAL |< aT               `noun`    {- <'a_tAraT> -}       [ ['r','e','p','o','r','t','i','n','g'], ['t','r','a','n','s','m','i','t','t','i','n','g'] ],

    FaCaL                     `noun`    {- <'a_tar> -}         [ ['e','f','f','e','c','t'], ['t','r','a','c','e'] ]
                              `plural`     HACAL,

    HACAL                     `noun`    {- <'A_tAr> -}         [ ['a','n','t','i','q','u','i','t','i','e','s'], ['m','o','n','u','m','e','n','t','s'] ]
                              `plural`     HACAL
                           
    `limited` "-------P--",

    FaCaL |< Iy               `adj`     {- <'a_tarIy> -}       [ ['a','r','c','h','e','o','l','o','g','i','c','a','l'], ['h','i','s','t','o','r','i','c','a','l'] ],

    HACAL |< Iy               `adj`     {- <'A_tArIy> -}       [ ['a','r','c','h','e','o','l','o','g','i','c','a','l'], ['h','i','s','t','o','r','i','c','a','l'] ],

    FaCaL |< Iy |< At         `noun`    {- <'a_tarIyAt> -}     [ ['a','n','t','i','q','u','i','t','i','e','s'], ['r','e','l','i','c','s'] ]
                              `plural`     FaCaL |< Iy |< At
                           
    `limited` "-------P--",

    FaCiL                     `adj`     {- <'a_tir> -}         [ ['e','g','o','i','s','t','i','c'] ],

    FaCIL                     `adj`     {- <'a_tIr> -}         [ ['f','a','v','o','r','e','d'], ['f','a','v','o','r','i','t','e'] ],

    FaCIL                     `noun`    {- <'a_tIr> -}         [ ['e','t','h','e','r'] ],

    FaCIL |< Iy               `adj`     {- <'a_tIrIy> -}       [ ['e','t','h','e','r','e','a','l'] ],

    MaFCaL |< aT              `noun`    {- <ma'_taraT> -}      [ ['f','e','a','t'], ['e','x','p','l','o','i','t'] ]
                              `plural`     MaFACiL,

    MaFCUL                    `adj`     {- <ma'_tUr> -}        [ ['t','r','a','n','s','m','i','t','t','e','d'], ['m','e','m','o','r','a','b','l','e'] ],

    TaFCIL                    `noun`    {- <ta'_tIr> -}        [ ['e','f','f','e','c','t'], ['i','n','f','l','u','e','n','c','e'], ['i','m','p','a','c','t'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta'_tIrIy> -}      [ ['e','f','f','i','c','a','c','i','o','u','s'], ['i','n','d','u','c','t','i','v','e'] ],

    HICAL                     `noun`    {- <'I_tAr> -}         [ ['p','r','e','f','e','r','e','n','c','e'], ['a','f','f','e','c','t','i','o','n'] ]
                              `plural`     HICAL |< At,

    HICAL |< Iy |< aT         `noun`    {- <'I_tArIyaT> -}     [ ['a','l','t','r','u','i','s','m'] ],

    TaFaCCuL                  `noun`    {- <ta'a_t_tur> -}     [ ['i','m','p','r','e','s','s','i','o','n'], ['s','e','n','s','i','t','i','v','i','t','y'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <ta'a_t_turIy> -}   [ ['i','m','p','r','e','s','s','i','o','n','i','s','t','i','c'] ],

    IstiFCAL                  `noun`    {- <isti'_tAr> -}      [ ['m','o','n','o','p','o','l','i','z','a','t','i','o','n'], ['a','p','p','r','o','p','r','i','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    MuFaCCiL                  `adj`     {- <mu'a_t_tir> -}     [ ['i','n','f','l','u','e','n','t','i','a','l'], ['i','m','p','r','e','s','s','i','v','e'] ],

    MutaFaCCiL                `adj`     {- <muta'a_t_tir> -}   [ unwords [ ['b','e','c','a','u','s','e'], ['o','f'] ], unwords [ ['d','u','e'], ['t','o'] ], unwords [ ['a','s'], "a", ['r','e','s','u','l','t'], ['o','f'] ] ],

    MutaFaCCiL                `adj`     {- <muta'a_t_tir> -}   [ ['i','n','f','l','u','e','n','c','e','d'], ['a','f','f','e','c','t','e','d'] ] ]


cluster_48  = cluster

 |> "' _t l" <| [

    FaCaL                     `verb`    {- <'a_tal> -}         [ ['c','o','n','s','o','l','i','d','a','t','e'], ['r','e','i','n','f','o','r','c','e'] ]
                              `imperf`     FCiL,

    FuCUL                     `noun`    {- <'u_tUl> -}         [ ['c','o','n','s','o','l','i','d','a','t','i','o','n'], ['r','e','i','n','f','o','r','c','e','m','e','n','t'] ],

    FaCCaL                    `verb`    {- <'a_t_tal> -}       [ ['c','o','n','s','o','l','i','d','a','t','e'], unwords [ ['b','e','c','o','m','e'], ['r','i','c','h'] ] ],

    TaFaCCaL                  `verb`    {- <ta'a_t_tal> -}     [ unwords [ ['b','e'], ['c','o','n','s','o','l','i','d','a','t','e','d'] ], unwords [ ['b','e','c','o','m','e'], ['r','i','c','h'] ] ],

    FaCL                      `noun`    {- <'a_tl> -}          [ ['t','a','m','a','r','i','s','k'] ]
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <'a_tlaT> -}        [ ['t','a','m','a','r','i','s','k'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `adj`     {- <'a_tIl> -}         [ unwords [ ['d','e','e','p'], "-", ['r','o','o','t','e','d'] ], ['h','i','g','h','b','o','r','n'] ],

    MuFaCCaL                  `adj`     {- <mu'a_t_tal> -}     [ unwords [ ['d','e','e','p'], "-", ['r','o','o','t','e','d'] ], ['h','i','g','h','b','o','r','n'] ] ]


cluster_49  = cluster

 |> ['\'','a','_','t','I','l'] <| [

    _____ |< Iy               `adj`     {- <'a_tIlIy> -}       [ ['e','t','h','y','l'] ],

    _____                     `noun`    {- <'a_tIl> -}         [ ['e','t','h','y','l'] ] ]

 |> ['\'','a','_','t','I','l','I','n'] <| [

    _____                     `noun`    {- <'a_tIlIn> -}       [ ['e','t','h','y','l','e','n','e'] ] ]


cluster_50  = cluster

 |> "' _t m" <| [

    FaCiL                     `verb`    {- <'a_tim> -}         [ unwords [ ['d','o'], ['w','r','o','n','g'] ], unwords [ ['c','o','m','m','i','t'], "a", ['s','i','n'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <'a_t_tam> -}       [ ['t','r','a','n','s','g','r','e','s','s'], unwords [ ['a','c','c','u','s','e'], ['o','f'], ['s','i','n'] ] ],

    TaFaCCaL                  `verb`    {- <ta'a_t_tam> -}     [ ['r','e','s','t','r','a','i','n'], unwords [ ['s','h','u','n'], ['e','v','i','l'] ] ],

    FiCL                      `noun`    {- <'i_tm> -}          [ ['o','f','f','e','n','s','e'], ['m','i','s','d','e','e','d'], ['s','i','n'] ]
                              `plural`     HACAL,

    FaCaL                     `noun`    {- <'a_tam> -}         [ ['s','i','n'], ['e','r','r','o','r'] ],

    MaFCaL                    `noun`    {- <ma'_tam> -}        [ ['o','f','f','e','n','s','e'], ['s','i','n'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <ta'_tIm> -}        [ ['s','i','n'], ['o','f','f','e','n','s','e'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `adj`     {- <'A_tim> -}         [ ['s','i','n','f','u','l'], ['e','v','i','l'] ]
                              `plural`     FaCaL |< aT,

    FaCIL                     `adj`     {- <'a_tIm> -}         [ ['s','i','n','f','u','l'], ['e','v','i','l'] ]
                              `plural`     FuCaLA' ]


cluster_51  = cluster

 |> "' _t m d" <| [

    KiRDiS                    `noun`    {- <'i_tmid> -}        [ ['a','n','t','i','m','o','n','y'] ] ]


cluster_52  = cluster

 |> ['\'','i','_','t','n','U','^','g','r','A','f'] <| [

    _____ |< iyA              `noun`    {- <'i_tnU^grAfiyA> -} [ ['e','t','h','n','o','g','r','a','p','h','y'] ],

    _____ |< Iy               `adj`     {- <'i_tnU^grAfIy> -}  [ ['e','t','h','n','o','g','r','a','p','h','i','c'] ] ]


cluster_53  = cluster

 |> ['\'','i','_','t','n','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <'i_tnUlU^giyA> -}  [ ['e','t','h','n','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <'i_tnUlU^gIy> -}   [ ['e','t','h','n','o','l','o','g','i','c','a','l'] ] ]


cluster_54  = cluster

 |> ['\'','a','_','t','y','U','b'] <| [

    _____ |< iyA              `xtra`    {- <'a_tyUbiyA> -}     [ ['E','t','h','i','o','p','i','a'] ],

    _____ |< Iy               `adj`     {- <'a_tyUbIy> -}      [ ['E','t','h','i','o','p','i','a','n'] ],

    _____ |< Iy               `noun`    {- <'a_tyUbIy> -}      [ ['E','t','h','i','o','p','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_55  = cluster

 |> "' ^g b" <| [

    FaCaL |< Iy |< aT         `noun`    {- <'a^gabIyaT> -}     [ ['h','o','r','o','l','o','g','i','u','m'] ] ]


cluster_56  = cluster

 |> "' ^g ^g" <| [

    FaCL                      `verb`    {- <'a^g^g> -}         [ ['b','u','r','n'], ['b','l','a','z','e'] ]
                              `imperf`     FuCL
                              `imperf`     FiCL
                              `pfirst`     FaCaL
                              `masdar`     FaCIL,

    FaCCaL                    `verb`    {- <'a^g^ga^g> -}      [ ['k','i','n','d','l','e'], ['l','i','g','h','t'] ],

    TaFaCCaL                  `verb`    {- <ta'a^g^ga^g> -}    [ unwords [ ['b','l','a','z','e'], ['u','p'] ], unwords [ ['b','e'], ['k','i','n','d','l','e','d'] ] ],

    FaCIL                     `noun`    {- <'a^gI^g> -}        [ ['b','u','r','n','i','n','g'], ['b','l','a','z','i','n','g'] ],

    FaCAL                     `noun`    {- <'a^gA^g> -}        [ unwords [ ['s','a','l','t','e','d'], ['f','i','s','h'] ] ],

    FuCAL                     `noun`    {- <'u^gA^g> -}        [ ['b','i','t','t','e','r'], ['s','a','l','t','y'] ],

    FaCCAL                    `noun`    {- <'a^g^gA^g> -}      [ ['b','u','r','n','i','n','g'], ['b','l','a','z','i','n','g'] ],

    TaFCIL                    `noun`    {- <ta'^gI^g> -}       [ ['l','i','g','h','t','i','n','g'], ['k','i','n','d','l','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <ta'a^g^gu^g> -}    [ ['b','l','a','z','i','n','g'], ['b','u','r','n','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta'a^g^gi^g> -}  [ ['b','u','r','n','i','n','g'], ['b','l','a','z','i','n','g'] ] ]


cluster_57  = cluster

 |> "' ^g r" <| [

    FaCaL                     `verb`    {- <'a^gar> -}         [ ['r','e','m','u','n','e','r','a','t','e'], ['r','e','w','a','r','d'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <'a^g^gar> -}       [ ['l','e','a','s','e'], ['l','e','n','d'] ],

    HACaL                     `verb`    {- <'A^gar> -}         [ ['l','e','n','d'], unwords [ ['h','i','r','e'], ['o','u','t'] ] ],

    TaFaCCaL                  `verb`    {- <ta'a^g^gar> -}     [ unwords [ ['h','i','r','e'], ['o','u','t'] ] ],

    IstaFCaL                  `verb`    {- <ista'^gar> -}      [ ['h','i','r','e'], ['r','e','n','t'] ],

    FaCL                      `noun`    {- <'a^gr> -}          [ ['r','e','m','u','n','e','r','a','t','i','o','n'], ['r','e','c','o','m','p','e','n','s','e'] ],

    FaCL                      `noun`    {- <'a^gr> -}          [ ['w','a','g','e'], ['f','e','e'] ]
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <'a^grIy> -}        [ ['s','a','l','a','r','i','e','d'], ['r','e','m','u','n','e','r','a','t','e','d'] ],

    FuCL |< aT                `noun`    {- <'u^graT> -}        [ ['f','e','e'], ['c','h','a','r','g','e'] ]
                              `plural`     FuCaL,

    FaCIL                     `noun`    {- <'a^gIr> -}         [ ['l','a','b','o','r','e','r'], ['e','m','p','l','o','y','e','e'] ]
                              `plural`     FuCaLA'
                              `femini`     FaCIL |< aT,

    FaCIL |< aT               `noun`    {- <'a^gIraT> -}       [ ['m','a','i','d'], ['s','e','r','v','a','n','t'] ]
                              `plural`     FaCIL |< At,

    MaFCUL                    `adj`     {- <ma'^gUr> -}        [ ['s','a','l','a','r','i','e','d'] ],

    MaFCUL                    `adj`     {- <ma'^gUr> -}        [ ['b','r','i','b','e','d'], ['m','e','r','c','e','n','a','r','y'] ],

    MaFCUL |< Iy              `adj`     {- <ma'^gUrIy> -}      [ ['s','a','l','a','r','i','e','d'] ],

    MaFCUL |< Iy              `adj`     {- <ma'^gUrIy> -}      [ ['b','r','i','b','e','d'], ['m','e','r','c','e','n','a','r','y'] ],

    FaCAL |< aT               `noun`    {- <'a^gAraT> -}       [ ['s','a','l','a','r','i','e','d'] ],

    FiCAL |< aT               `noun`    {- <'i^gAraT> -}       [ ['r','e','n','t'], ['l','e','a','s','i','n','g'] ],

    TaFCIL                    `noun`    {- <ta'^gIr> -}        [ ['l','e','a','s','i','n','g'], ['l','e','a','s','e'] ]
                              `plural`     TaFCIL |< At,

    HICAL                     `noun`    {- <'I^gAr> -}         [ ['r','e','n','t'], ['l','e','a','s','i','n','g'] ]
                              `plural`     HICAL |< At,

    HICAL |< Iy               `adj`     {- <'I^gArIy> -}       [ ['r','e','n','t','a','l'] ],

    TaFaCCuL                  `noun`    {- <ta'a^g^gur> -}     [ ['l','e','a','s','e'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <ta'a^g^gurIy> -}   [ ['r','e','n','t','a','l'] ],

    IstiFCAL                  `noun`    {- <isti'^gAr> -}      [ ['h','i','r','i','n','g'], ['r','e','n','t','a','l'] ]
                              `plural`     IstiFCAL |< At,

    MuFaCCiL                  `noun`    {- <mu'a^g^gir> -}     [ ['l','e','s','s','o','r'], ['l','a','n','d','l','o','r','d'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MustaFCiL                 `noun`    {- <musta'^gir> -}     [ ['l','e','a','s','e','h','o','l','d','e','r'], ['l','e','s','s','e','e'] ]
                              `plural`     MustaFCiL |< Un
                              `femini`     MustaFCiL |< aT,

    MustaFCaL                 `adj`     {- <musta'^gar> -}     [ ['r','e','n','t','e','d'], ['s','a','l','a','r','i','e','d'] ] ]


cluster_58  = cluster

 |> ['\'','U','^','g','A','r','I','t'] <| [

    _____                     `xtra`    {- <'U^gArIt> -}       [ ['U','g','a','r','i','t'] ],

    _____ |< Iy               `adj`     {- <'U^gArItIy> -}     [ ['U','g','a','r','i','t','i','c'] ],

    _____ |< Iy               `noun`    {- <'U^gArItIy> -}     [ ['U','g','a','r','i','t','i','c'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_59  = cluster

 |> "' ^g .s" <| [

    FiCCAL |< aT              `noun`    {- <'i^g^gA.saT> -}    [ ['p','e','a','r'] ],

    FiCCAL                    `noun`    {- <'i^g^gA.s> -}      [ ['p','e','a','r'] ] ]


cluster_60  = cluster

 |> "' ^g l" <| [

    FaCaL                     `verb`    {- <'a^gal> -}         [ ['h','e','s','i','t','a','t','e'], ['l','i','n','g','e','r'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <'a^g^gal> -}       [ ['p','o','s','t','p','o','n','e'], ['d','e','l','a','y'] ],

    TaFaCCaL                  `verb`    {- <ta'a^g^gal> -}     [ unwords [ ['b','e'], ['p','o','s','t','p','o','n','e','d'] ], unwords [ ['b','e'], ['a','d','j','o','u','r','n','e','d'] ] ],

    IstaFCaL                  `verb`    {- <ista'^gal> -}      [ unwords [ ['r','e','q','u','e','s','t'], ['p','o','s','t','p','o','n','e','m','e','n','t'] ], unwords [ ['s','e','e','k'], "a", ['r','e','p','r','i','e','v','e'] ] ],

    FaCL                      `noun`    {- <'a^gl> -}          [ unwords [ ['f','o','r'], ['s','a','k','e'], ['o','f'] ], unwords [ ['b','e','c','a','u','s','e'], ['o','f'] ] ],

    FaCaL                     `noun`    {- <'a^gal> -}         [ ['p','e','r','i','o','d'], ['t','e','r','m'] ]
                              `plural`     HACAL,

    FACiL                     `adj`     {- <'A^gil> -}         [ ['f','u','t','u','r','e'], ['d','e','f','e','r','r','e','d'] ],

    FACiL |< aT               `noun`    {- <'A^gilaT> -}       [ ['h','e','r','e','a','f','t','e','r'] ],

    TaFCIL                    `noun`    {- <ta'^gIl> -}        [ ['p','o','s','t','p','o','n','e','m','e','n','t'], ['d','e','l','a','y'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta'^gIlIy> -}      [ ['d','e','l','a','y','i','n','g'], ['d','i','l','a','t','o','r','y'] ],

    MuFaCCaL                  `adj`     {- <mu'a^g^gal> -}     [ ['p','o','s','t','p','o','n','e','d'], ['d','e','l','a','y','e','d'] ] ]


cluster_61  = cluster

 |> "' ^g m" <| [

    FaCaL |< aT               `noun`    {- <'a^gamaT> -}       [ ['t','h','i','c','k','e','t'], ['b','u','s','h'] ]
                              `plural`     FuCuL
                              `plural`     HACAL,

    FaCaL                     `noun`    {- <'a^gam> -}         [ ['t','h','i','c','k','e','t'], ['b','u','s','h'] ],

    FaCaL |< Iy |< aT         `noun`    {- <'a^gamIyaT> -}     [ ['m','a','l','a','r','i','a'] ] ]


cluster_62  = cluster

 |> "' ^g n" <| [

    FuCUL                     `noun`    {- <'u^gUn> -}         [ ['s','t','e','n','c','h'] ],

    FACiL                     `adj`     {- <'A^gin> -}         [ ['p','u','t','r','i','d'], ['b','r','a','c','k','i','s','h'] ] ]


cluster_63  = cluster

 |> ['\'','a','^','g','a','n','d'] <| [

    _____ |< aT               `noun`    {- <'a^gandaT> -}      [ ['a','g','e','n','d','a'], ['s','c','h','e','d','u','l','e'] ]
                              `plural`     _____ |< At ]


cluster_64  = cluster

 |> "' .h .h" <| [

    FaCL                      `verb`    {- <'a.h.h> -}         [ ['c','o','u','g','h'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCL                      `noun`    {- <'a.h.h> -}         [ ['c','o','u','g','h'] ] ]


cluster_65  = cluster

 |> "' .h d" <| [

    FaCCaL                    `verb`    {- <'a.h.had> -}       [ ['u','n','i','t','e'], ['u','n','i','f','y'] ],

    FaCaL                     `noun`    {- <'a.had> -}         [ ['o','n','e'], ['s','o','m','e','o','n','e'] ]
                              `plural`     HACAL
                              `femini`     FiCLY,

    FaCaL                     `noun`    {- <'a.had> -}         [ ['u','n','i','t'] ]
                              `plural`     HACAL,

    FaCaL                     `noun`    {- <'a.had> -}         [ ['S','u','n','d','a','y'] ],

    FaCaL |< Iy |< aT         `noun`    {- <'a.hadIyaT> -}     [ ['u','n','i','t','y'], ['o','n','e','n','e','s','s'] ],

    FuCAL |<< "a"             `adv`     {- <'u.hAda> -}        [ unwords [ ['o','n','e'], "-", ['b','y'], "-", ['o','n','e'] ] ],

    FuCAL |< Iy               `adj`     {- <'u.hAdIy> -}       [ ['s','i','n','g','l','e'] ],

    FuCAL |< Iy |< aT         `noun`    {- <'u.hAdIyaT> -}     [ ['s','i','n','g','l','e','n','e','s','s'] ] ]


cluster_66  = cluster

 |> ['\'','A','.','h','I','n'] <| [

    _____                     `noun`    {- <'A.hIn> -}         [ ['a','l','b','u','m','e','n'], ['a','l','b','u','m','i','n'] ],

    _____ |< Iy               `adj`     {- <'A.hInIy> -}       [ ['a','l','b','u','m','i','n','o','u','s'] ] ]


cluster_67  = cluster

 |> "' _h _d" <| [

    FaCaL                     `verb`    {- <'a_ha_d> -}        [ ['t','a','k','e'], ['b','e','g','i','n'], ['a','d','o','p','t'], ['o','b','s','e','r','v','e'], ['f','o','l','l','o','w'] ]
                              `imperf`     FCuL
                              `second`     CuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <'a_h_ha_d> -}      [ ['e','n','c','h','a','n','t'], ['b','e','w','i','t','c','h'] ],

    FACaL                     `verb`    {- <'A_ha_d> -}        [ ['b','l','a','m','e'], ['r','e','p','r','o','a','c','h'] ],

    IFtaCaL                   `verb`    {- <itta_ha_d> -}      [ ['t','a','k','e'], ['a','d','o','p','t'] ],

    FaCL                      `noun`    {- <'a_h_d> -}         [ ['s','e','i','z','u','r','e'], ['t','a','k','i','n','g'] ],

    FACiL                     `adj`     {- <'A_hi_d> -}        [ ['t','a','k','i','n','g'], ['c','a','p','t','i','v','a','t','i','n','g'], ['e','n','g','r','o','s','s','i','n','g'] ],

    FaCCAL                    `adj`     {- <'a_h_hA_d> -}      [ ['f','a','s','c','i','n','a','t','i','n','g'], ['c','a','p','t','i','v','a','t','i','n','g'] ],

    FaCIL                     `noun`    {- <'a_hI_d> -}        [ ['p','r','i','s','o','n','e','r'], ['c','a','p','t','i','v','e'] ]
                              `plural`     FaCLY
                              `plural`     FaCIL |< Un
                              `femini`     FaCIL |< aT,

    FaCIL |< aT               `noun`    {- <'a_hI_daT> -}      [ ['b','o','o','t','y'], ['s','p','o','i','l','s'] ],

    MaFCUL                    `adj`     {- <ma'_hU_d> -}       [ ['t','a','k','e','n'], ['s','e','i','z','e','d'] ],

    MaFCUL                    `noun`    {- <ma'_hU_d> -}       [ ['r','e','c','e','i','p','t'], ['r','e','t','u','r','n'] ]
                              `plural`     MaFCUL |< At,

    MuFACaL                   `adj`     {- <mu'A_ha_d> -}      [ ['r','e','s','p','o','n','s','i','b','l','e'], ['a','c','c','o','u','n','t','a','b','l','e'] ],

    MuFtaCaL                  `adj`     {- <mutta_ha_d> -}     [ ['t','a','k','e','n'], ['a','d','o','p','t','e','d'] ],

    MaFCaL                    `noun`    {- <ma'_ha_d> -}       [ ['s','o','u','r','c','e'], ['m','e','t','h','o','d'], ['p','r','o','c','e','d','u','r','e'], ['r','e','f','e','r','e','n','c','e','s'] ]
                              `plural`     MaFACiL,

    MuFACaL |< aT             `noun`    {- <mu'A_ha_daT> -}    [ ['o','f','f','e','n','s','e'] ],

    IFtiCAL                   `noun`    {- <itti_hA_d> -}      [ ['t','a','k','i','n','g'], ['a','d','o','p','t','i','o','n'] ] ]


cluster_68  = cluster

 |> "' _h r" <| [

    FaCCaL                    `verb`    {- <'a_h_har> -}       [ ['d','e','l','a','y'], ['p','o','s','t','p','o','n','e'] ],

    TaFaCCaL                  `verb`    {- <ta'a_h_har> -}     [ unwords [ ['b','e'], ['d','e','l','a','y','e','d'] ], unwords [ ['b','e'], ['p','o','s','t','p','o','n','e','d'] ] ],

    HACaL                     `adj`     {- <'A_har> -}         [ ['o','t','h','e','r'], ['a','n','o','t','h','e','r'] ]
                              `plural`     HACaL |< Un
                              `plural`     FuCaL
                              `femini`     FuCLY,

    FuCLY |< Iy               `adj`     {- <'u_hrawIy> -}      [ ['e','s','c','h','a','t','o','l','o','g','i','c','a','l'] ],

    FuCLY |< Iy |< aT         `noun`    {- <'u_hrawIyaT> -}    [ ['e','s','c','h','a','t','o','l','o','g','y'] ],

    FACiL                     `noun`    {- <'A_hir> -}         [ ['e','n','d'], ['c','o','n','c','l','u','s','i','o','n'] ]
                              `plural`     FawACiL,

    FACiL                     `adj`     {- <'A_hir> -}         [ ['l','a','s','t'], ['u','l','t','i','m','a','t','e'], ['u','t','m','o','s','t'] ]
                              `plural`     FACiL |< Un
                              `plural`     FawACiL,

    FACiL |< aT               `noun`    {- <'A_hiraT> -}       [ ['h','e','r','e','a','f','t','e','r'] ],

    FaCIL                     `adj`     {- <'a_hIr> -}         [ ['l','a','s','t'], ['l','a','t','e','s','t'], ['r','e','c','e','n','t'], ['l','a','t','t','e','r'] ],

    FaCIL |<< "aN"            `adj`     {- <'a_hIraN> -}       [ ['f','i','n','a','l','l','y'], ['r','e','c','e','n','t','l','y'] ],

    TaFCIL                    `noun`    {- <ta'_hIr> -}        [ ['d','e','l','a','y'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `noun`    {- <mu'a_h_har> -}     [ ['r','e','a','r'], ['b','a','c','k'] ],

    MuFaCCaL                  `adj`     {- <mu'a_h_har> -}     [ ['d','e','l','a','y','e','d'], ['d','e','f','e','r','r','e','d'] ],

    MuFaCCaL |<< "aN"         `adj`     {- <mu'a_h_haraN> -}   [ ['r','e','c','e','n','t','l','y'], ['f','i','n','a','l','l','y'] ],

    MuFaCCaL |< aT            `noun`    {- <mu'a_h_haraT> -}   [ ['r','e','a','r'], unwords [ ['r','e','a','r'], ['p','o','s','i','t','i','o','n','s'] ] ],

    MuFCiL                    `noun`    {- <mu'_hir> -}        [ ['c','o','r','n','e','r'] ]
                              `plural`     MuFCiL |< At,

    TaFaCCuL                  `noun`    {- <ta'a_h_hur> -}     [ ['d','e','l','a','y'], ['u','n','d','e','r','d','e','v','e','l','o','p','m','e','n','t'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta'a_h_hir> -}   [ ['l','a','t','e'], ['d','e','l','a','y','e','d'] ],

    MutaFaCCiL |< At          `noun`    {- <muta'a_h_hirAt> -} [ ['a','r','r','e','a','r','s'] ]
                              `plural`     MutaFaCCiL |< At
                           
    `limited` "-------P--",

    FaCUL                     `noun`    {- <'a_hUr> -}         [ ['b','a','r','n'], ['s','t','a','b','l','e'] ] ]


cluster_69  = cluster

 |> ['\'','a','_','h','I','n','U','s'] <| [

    _____                     `noun`    {- <'a_hInUs> -}       [ unwords [ ['s','e','a'], ['u','r','c','h','i','n'] ] ] ]


cluster_70  = cluster

 |> "' _h w" <| [

    FACY                      `verb`    {- <'A_hY> -}          [ ['f','r','a','t','e','r','n','i','z','e'], unwords [ ['b','e'], ['f','r','a','t','e','r','n','i','z','e','d'], ['w','i','t','h'] ] ],

    TaFaCCY                   `verb`    {- <ta'a_h_hY> -}      [ unwords [ ['b','e'], ['f','r','a','t','e','r','n','a','l'] ] ],

    TaFACY                    `verb`    {- <ta'A_hY> -}        [ ['f','r','a','t','e','r','n','i','z','e'] ],

    FuC |<< "t"               `noun`    {- <'u_ht> -}          [ ['s','i','s','t','e','r'], ['c','o','u','n','t','e','r','p','a','r','t'] ]
                              `plural`     FaCA |< At,

    FaCA |< Iy                `adj`     {- <'a_hawIy> -}       [ ['f','r','a','t','e','r','n','a','l'], ['b','r','o','t','h','e','r','l','y'] ],

    FaCA |< Iy |< aT          `noun`    {- <'a_hawIyaT> -}     [ ['f','r','a','t','e','r','n','i','t','y'], ['b','r','o','t','h','e','r','h','o','o','d'] ],

    FiCLAn |< Iy |< aT        `noun`    {- <'i_hwAnIyaT> -}    [ ['f','r','a','t','e','r','n','i','t','y'], ['b','r','o','t','h','e','r','h','o','o','d'] ],

    FuCUL |< aT               `noun`    {- <'u_hUwaT> -}       [ ['f','r','a','t','e','r','n','i','t','y'], ['b','r','o','t','h','e','r','h','o','o','d'] ],

    FACI |< aT                `noun`    {- <'A_hiyaT> -}       [ ['a','t','t','a','c','h','m','e','n','t'], ['b','o','n','d'], ['t','i','e','s'] ]
                              `plural`     FawACI,

    FiCA'                     `noun`    {- <'i_hA'> -}         [ ['f','r','a','t','e','r','n','i','t','y'] ],

    FiCAL |< aT               `noun`    {- <'i_hAwaT> -}       [ ['f','r','a','t','e','r','n','i','z','a','t','i','o','n'], ['b','r','o','t','h','e','r','l','i','n','e','s','s'] ],

    TaFACI                    `noun`    {- <ta'A_hI> -}        [ ['f','r','a','t','e','r','n','i','t','y'] ]
                              `plural`     TaFACI |< At,

    MuFACY |< aT              `noun`    {- <mu'A_hAT> -}       [ ['f','r','a','t','e','r','n','i','z','a','t','i','o','n'] ]
                              `plural`     MuFACaL |< At ]


cluster_71  = cluster

 |> ['\'','u','_','h','.','t','u','b','U','.','t'] <| [

    _____                     `noun`    {- <'u_h.tubU.t> -}    [ ['o','c','t','o','p','u','s'] ]
                              `plural`     _____ |< At ]


cluster_72  = cluster

 |> "' d b" <| [

    MaFCuL |< aT              `noun`    {- <ma'dubaT> -}       [ ['b','a','n','q','u','e','t'], ['r','e','c','e','p','t','i','o','n'], unwords [ ['f','o','r','m','a','l'], ['d','i','n','n','e','r'] ] ]
                              `plural`     MaFACiL,

    FaCuL                     `verb`    {- <'adub> -}          [ unwords [ ['b','e'], ['u','r','b','a','n','e'] ], unwords [ ['b','e'], ['c','o','u','r','t','e','o','u','s'] ] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <'adab> -}          [ ['i','n','v','i','t','e'], ['e','n','t','e','r','t','a','i','n'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <'addab> -}         [ ['d','i','s','c','i','p','l','i','n','e'], ['e','d','u','c','a','t','e'] ],

    HACaL                     `verb`    {- <'Adab> -}          [ ['i','n','v','i','t','e'] ],

    TaFaCCaL                  `verb`    {- <ta'addab> -}       [ unwords [ ['b','e'], ['d','i','s','c','i','p','l','i','n','e','d'] ], unwords [ ['b','e'], ['e','d','u','c','a','t','e','d'] ] ],

    FaCL                      `noun`    {- <'adb> -}           [ ['i','n','v','i','t','a','t','i','o','n'], ['e','n','t','e','r','t','a','i','n','m','e','n','t'] ],

    FaCaL                     `noun`    {- <'adab> -}          [ ['l','i','t','e','r','a','t','u','r','e'], unwords [ ['g','o','o','d'], ['m','a','n','n','e','r','s'] ], ['e','t','i','q','u','e','t','t','e'] ]
                              `plural`     HACAL,

    FaCaL |< Iy               `adj`     {- <'adabIy> -}        [ ['l','i','t','e','r','a','r','y'] ],

    FaCaL |< Iy               `adj`     {- <'adabIy> -}        [ ['e','t','h','i','c','a','l'], ['m','o','r','a','l'] ],

    FaCIL                     `noun`    {- <'adIb> -}          [ ['w','r','i','t','e','r'], ['a','u','t','h','o','r'] ]
                              `plural`     FuCaLA'
                              `femini`     FaCIL |< aT,

    FaCIL                     `noun`    {- <'adIb> -}          [ ['A','d','e','e','b'], ['A','d','i','b'] ],

    FACiL                     `noun`    {- <'Adib> -}          [ ['h','o','s','t'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    TaFCIL                    `noun`    {- <ta'dIb> -}         [ ['c','h','a','s','t','i','s','e','m','e','n','t'], ['e','d','u','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta'dIbIy> -}       [ ['p','u','n','i','t','i','v','e'], ['d','i','s','c','i','p','l','i','n','a','r','y'] ],

    MuFaCCiL                  `noun`    {- <mu'addib> -}       [ ['e','d','u','c','a','t','o','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <mu'addab> -}       [ unwords [ ['w','e','l','l'], "-", ['b','r','e','d'] ], ['u','r','b','a','n','e'] ],

    TaFaCCuL                  `noun`    {- <ta'addub> -}       [ ['c','i','v','i','l','i','t','y'], ['c','o','u','r','t','e','s','y'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta'addib> -}     [ ['c','o','u','r','t','e','o','u','s'] ] ]


cluster_73  = cluster

 |> ['\'','U','d','I','b'] <| [

    _____                     `noun`    {- <'UdIb> -}          [ ['O','e','d','i','p','u','s'] ] ]


cluster_74  = cluster

 |> "' d d" <| [

    FaCL                      `verb`    {- <'add> -}           [ ['b','e','f','a','l','l'], ['a','f','f','l','i','c','t'] ]
                              `imperf`     FuCL
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    FiCL                      `noun`    {- <'idd> -}           [ ['h','o','r','r','i','b','l','e'], ['e','v','i','l'] ] ]


cluster_75  = cluster

 |> "' d r s" <| [

    KiRDIS                    `noun`    {- <'idrIs> -}         [ ['I','d','r','i','s'], ['E','d','r','i','s'] ],

    KiRDIS |< Iy              `adj`     {- <'idrIsIy> -}       [ ['I','d','r','i','s','i','d'] ]
                              `plural`     KaRADiS |< aT
                              `plural`     KiRDIS |< Iy |< Un ]


cluster_76  = cluster

 |> ['\'','a','d','i','r','n'] <| [

    _____ |< aT               `noun`    {- <'adirnaT> -}       [ ['E','d','i','r','n','e'], ['A','d','r','i','a','n','o','p','l','e'] ] ]


cluster_77  = cluster

 |> ['\'','U','d','I','s'] <| [

    _____ |< aT               `noun`    {- <'UdIsaT> -}        [ ['O','d','y','s','s','e','y'] ] ]


cluster_78  = cluster

 |> "' d m" <| [

    FACaL                     `noun`    {- <'Adam> -}          [ ['A','d','a','m'] ]
                           
    `excepts` Diptote,

    FACaL |< Iy               `noun`    {- <'AdamIy> -}        [ ['h','u','m','a','n'], unwords [ ['h','u','m','a','n'], ['b','e','i','n','g'] ] ]
                              `plural`     FACaL |< Iy |< Un
                              `plural`     FawACiL,

    FACaL |< Iy               `adj`     {- <'AdamIy> -}        [ ['h','u','m','a','n'], ['h','u','m','a','n','e'] ]
                              `plural`     FACaL |< Iy |< Un
                              `plural`     FawACiL,

    FACaL |< Iy |< aT         `noun`    {- <'AdamIyaT> -}      [ ['h','u','m','a','n','i','t','y'], ['h','u','m','a','n','e','n','e','s','s'], ['h','u','m','a','n','i','s','m'] ] ]

 |> "' d m" <| [

    FaCCAL                    `noun`    {- <'addAm> -}         [ ['t','a','n','n','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCIL                     `noun`    {- <'adIm> -}          [ ['s','u','r','f','a','c','e'] ],

    FaCIL                     `noun`    {- <'adIm> -}          [ ['s','k','i','n'], ['l','e','a','t','h','e','r'] ]
                              `plural`     FuCuL,

    FaCaL |< aT               `noun`    {- <'adamaT> -}        [ ['s','k','i','n'] ] ]

 |> "' d m" <| [

    FiCAL                     `noun`    {- <'idAm> -}          [ ['f','a','t'], ['s','a','u','c','e'] ] ]


cluster_79  = cluster

 |> "' d w" <| [

    FaCA |< aT                `noun`    {- <'adAT> -}          [ ['t','o','o','l'], ['i','n','s','t','r','u','m','e','n','t'], ['a','p','p','a','r','a','t','u','s'] ]
                              `plural`     FaCA |< At ]


cluster_80  = cluster

 |> "' d y" <| [

    FaCCY                     `verb`    {- <'addY> -}          [ ['d','i','r','e','c','t'], ['g','u','i','d','e'], ['l','e','a','d'] ],

    TaFaCCY                   `verb`    {- <ta'addY> -}        [ ['c','o','n','t','r','i','b','u','t','e'], ['a','r','r','i','v','e'] ],

    IstaFCY                   `verb`    {- <ista'dY> -}        [ ['d','e','m','a','n','d'], ['c','l','a','i','m'] ],

    FaCA'                     `noun`    {- <'adA'> -}          [ ['p','e','r','f','o','r','m','a','n','c','e'], ['f','u','l','f','i','l','l','m','e','n','t'] ],

    FaCA' |< Iy               `adj`     {- <'adA'Iy> -}        [ ['f','u','n','c','t','i','o','n','a','l'], unwords [ ['p','e','r','f','o','r','m','a','n','c','e'], "-", ['r','e','l','a','t','e','d'] ] ],

    TaFCI |< aT               `noun`    {- <ta'diyaT> -}       [ ['a','c','c','o','m','p','l','i','s','h','m','e','n','t'], ['p','e','r','f','o','r','m','a','n','c','e'] ],

    MuFaCCI                   `adj`     {- <mu'addI> -}        [ ['l','e','a','d','i','n','g'], ['c','a','u','s','i','n','g'] ],

    MuFaCCY                   `noun`    {- <mu'addY> -}        [ ['t','a','s','k'], ['c','o','n','t','e','n','t'], ['s','i','g','n','i','f','i','c','a','n','c','e'] ] ]


cluster_81  = cluster

 |> ['\'','I','d','r','U','^','g','I','n'] <| [

    _____                     `noun`    {- <'IdrU^gIn> -}      [ ['h','y','d','r','o','g','e','n'] ],

    _____ |< Iy               `adj`     {- <'IdrU^gInIy> -}    [ ['h','y','d','r','o','g','e','n'] ] ]


cluster_82  = cluster

 |> ['\'','I','d','y','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <'IdyUlU^giyA> -}   [ ['i','d','e','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <'IdyUlU^gIy> -}    [ ['i','d','e','o','l','o','g','i','c','a','l'] ],

    _____ |< Iy               `noun`    {- <'IdyUlU^gIy> -}    [ ['i','d','e','o','l','o','g','i','s','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]

 |> ['\'','i','d','y','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <'idyUlU^giyA> -}   [ ['i','d','e','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <'idyUlU^gIy> -}    [ ['i','d','e','o','l','o','g','i','c','a','l'] ],

    _____ |< Iy               `noun`    {- <'idyUlU^gIy> -}    [ ['i','d','e','o','l','o','g','i','s','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_83  = cluster

 |> ['\'','i','_','d'] <| [

    _____                     `conj`    {- <'i_d> -}           [ ['b','e','c','a','u','s','e'] ],

    _____ |<< "A"             `conj`    {- <'i_dA> -}          [ ['i','f'], ['w','h','e','t','h','e','r'] ],

    _____ |<< "aN"            `adv`     {- <'i_daN> -}         [ ['t','h','e','r','e','f','o','r','e'], ['s','o'], ['t','h','e','n'] ],

    _____ |<< "an"            `adv`     {- <'i_dan> -}         [ ['t','h','e','r','e','f','o','r','e'], ['s','o'], ['t','h','e','n'] ] ]


cluster_84  = cluster

 |> ['\'','A','_','d','A','r'] <| [

    _____                     `noun`    {- <'A_dAr> -}         [ ['M','a','r','c','h'] ] ]


cluster_85  = cluster

 |> ['\'','a','_','d','a','r','b','a','y','^','g','A','n'] <| [

    _____                     `noun`    {- <'a_darbay^gAn> -}  [ ['A','z','e','r','b','e','i','j','a','n'] ],

    _____ |< Iy               `adj`     {- <'a_darbay^gAnIy> -} [ ['A','z','e','r','b','e','i','j','a','n','i'] ],

    _____ |< Iy               `noun`    {- <'a_darbay^gAnIy> -} [ ['A','z','e','r','b','e','i','j','a','n','i'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_86  = cluster

 |> "' _d n" <| [

    FaCiL                     `verb`    {- <'a_din> -}         [ ['a','u','t','h','o','r','i','z','e'], ['l','i','s','t','e','n'] ]
                              `imperf`     FCaL
                              `masdar`     FiCL,

    FaCCaL                    `verb`    {- <'a_d_dan> -}       [ ['a','n','n','o','u','n','c','e'], ['f','o','r','e','s','e','e'] ],

    HACaL                     `verb`    {- <'A_dan> -}         [ ['a','n','n','o','u','n','c','e'], ['w','a','r','n'] ],

    TaFaCCaL                  `verb`    {- <ta'a_d_dan> -}     [ unwords [ ['b','e'], ['i','n','f','o','r','m','e','d'] ], ['l','e','a','r','n'] ],

    IstaFCaL                  `verb`    {- <ista'_dan> -}      [ unwords [ ['r','e','q','u','e','s','t'], ['a','u','t','h','o','r','i','z','a','t','i','o','n'] ] ],

    FaCAL                     `noun`    {- <'a_dAn> -}         [ unwords [ ['c','a','l','l'], ['t','o'], ['p','r','a','y','e','r'] ] ],

    FuCuL                     `noun`    {- <'u_dun> -}         [ ['e','a','r'] ]
                              `plural`     HACAL,

    FuCuL |< Iy               `adj`     {- <'u_dunIy> -}       [ ['a','u','r','i','c','u','l','a','r'] ],

    FuCayL                    `noun`    {- <'u_dayn> -}        [ ['a','u','r','i','c','l','e'] ],

    FuCayL |< aT              `noun`    {- <'u_daynaT> -}      [ unwords [ ['e','a','r'], ['l','o','b','e'] ] ],

    FiCL                      `noun`    {- <'i_dn> -}          [ ['p','e','r','m','i','s','s','i','o','n'], ['a','u','t','h','o','r','i','z','a','t','i','o','n'] ]
                              `plural`     FuCUL,

    FuCUL |< At               `noun`    {- <'u_dUnAt> -}       [ ['b','o','n','d'] ]
                              `plural`     FuCUL |< At
                           
    `limited` "-------P--",

    FACiL                     `noun`    {- <'A_din> -}         [ unwords [ ['d','o','o','r'], "-", ['k','e','e','p','e','r'] ], ['p','o','r','t','e','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MaFCUL                    `adj`     {- <ma'_dUn> -}        [ ['a','u','t','h','o','r','i','z','e','d'], ['l','i','c','e','n','s','e','d'] ],

    MaFCUL |< Iy |< aT        `noun`    {- <ma'_dUnIyaT> -}    [ ['l','e','a','v','e'], ['f','u','r','l','o','u','g','h'] ],

    MiFCaL |< aT              `noun`    {- <mi'_danaT> -}      [ ['m','i','n','a','r','e','t'] ]
                              `plural`     MaFACiL,

    MuFaCCiL                  `noun`    {- <mu'a_d_din> -}     [ ['m','u','e','z','z','i','n'], unwords [ ['c','a','l','l','e','r'], ['t','o'], ['p','r','a','y','e','r'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    HICAL                     `noun`    {- <'I_dAn> -}         [ ['d','e','c','l','a','r','a','t','i','o','n'], ['p','r','o','c','l','a','m','a','t','i','o','n'] ]
                              `plural`     HICAL |< At,

    IstiFCAL                  `noun`    {- <isti'_dAn> -}      [ unwords [ ['r','e','q','u','e','s','t'], ['f','o','r'], ['a','u','t','h','o','r','i','z','a','t','i','o','n'] ] ]
                              `plural`     IstiFCAL |< At ]


cluster_87  = cluster

 |> "' _d y" <| [

    FaCI                      `verb`    {- <'a_dI> -}          [ unwords [ ['s','u','f','f','e','r'], ['d','a','m','a','g','e'] ] ]
                              `imperf`     FCY,

    HACY                      `verb`    {- <'A_dY> -}          [ ['i','n','j','u','r','e'], ['p','r','e','j','u','d','i','c','e'] ],

    TaFaCCY                   `verb`    {- <ta'a_d_dY> -}      [ unwords [ ['b','e'], ['i','n','j','u','r','e','d'] ], unwords [ ['b','e'], ['o','f','f','e','n','d','e','d'] ] ],

    FaCY                      `noun`    {- <'a_dY> -}          [ ['i','n','j','u','r','y'], ['d','a','m','a','g','e'], ['o','f','f','e','n','s','e'] ],

    FaCY |< aT                `noun`    {- <'a_dAT> -}         [ ['i','n','j','u','r','y'], ['o','f','f','e','n','s','e'] ],

    FaCIL |< aT               `noun`    {- <'a_dIyaT> -}       [ ['m','a','l','i','c','e'], ['p','r','e','j','u','d','i','c','e'] ],

    FiCAL |< aT               `noun`    {- <'i_dAyaT> -}       [ ['i','n','j','u','r','y'], ['o','f','f','e','n','s','e'] ],

    HICA'                     `noun`    {- <'I_dA'> -}         [ ['d','a','m','a','g','e'], ['i','n','j','u','r','y'] ]
                              `plural`     HICA' |< At,

    MuFCI                     `adj`     {- <mu'_dI> -}         [ ['h','a','r','m','f','u','l'], ['o','f','f','e','n','s','i','v','e'] ] ]


cluster_88  = cluster

 |> ['\'','A','r'] <| [

    _____                     `noun`    {- <'Ar> -}            [ unwords [ ['a','r','e','a'], "(", ['s','u','r','f','a','c','e'], ['m','e','a','s','u','r','e'], ")" ] ]
                              `plural`     _____ |< At ]

 |> ['\'','A','r'] <| [

    _____ |< Iy               `adj`     {- <'ArIy> -}          [ ['A','r','y','a','n'] ] ]


cluster_89  = cluster

 |> ['\'','U','r','U'] <| [

    _____ |< Iy               `adj`     {- <'UruwIy> -}        [ ['E','u','r','o'] ] ]


cluster_90  = cluster

 |> "' r b" <| [

    FaCiL                     `verb`    {- <'arib> -}          [ unwords [ ['b','e'], ['p','r','o','f','i','c','i','e','n','t'] ], unwords [ ['b','e'], ['s','k','i','l','l','f','u','l'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCaL                     `verb`    {- <'arab> -}          [ ['t','i','g','h','t','e','n'] ]
                              `imperf`     FCiL,

    FACaL                     `verb`    {- <'Arab> -}          [ unwords [ ['t','r','y'], ['t','o'], ['o','u','t','w','i','t'] ] ],

    FaCaL                     `noun`    {- <'arab> -}          [ ['d','e','s','i','r','e'], ['g','o','a','l'] ]
                              `plural`     HACAL,

    FiCL                      `noun`    {- <'irb> -}           [ ['l','i','m','b'] ]
                              `plural`     HACAL,

    FiCL |<< "aN"             `noun`    {- <'irbaN> -}         [ unwords [ ['p','i','e','c','e'], ['b','y'], ['p','i','e','c','e'] ], unwords [ ['t','o'], ['s','h','r','e','d','s'] ] ],

    FuCL                      `noun`    {- <'urb> -}           [ ['k','n','o','t'], ['a','d','v','e','r','s','i','t','y'] ]
                              `plural`     FuCaL,

    FaCIL                     `adj`     {- <'arIb> -}          [ ['a','s','t','u','t','e'], ['i','n','d','u','s','t','r','i','o','u','s'] ],

    FaCiL                     `adj`     {- <'arib> -}          [ ['a','s','t','u','t','e'], ['i','n','d','u','s','t','r','i','o','u','s'] ],

    MaFCaL                    `noun`    {- <ma'rab> -}         [ ['d','e','s','i','r','e'], ['i','n','t','e','n','t'] ]
                              `plural`     MaFACiL,

    FuCL |< Iy |< aT          `noun`    {- <'urbIyaT> -}       [ ['g','r','o','i','n'] ],

    FuCL |< Iy                `adj`     {- <'urbIy> -}         [ ['i','n','g','u','i','n','a','l'] ] ]


cluster_91  = cluster

 |> ['\'','U','r','U','b'] <| [

    _____ |<< "A"             `xtra`    {- <'UrUbA> -}         [ ['E','u','r','o','p','e'] ],

    _____ |< Iy               `adj`     {- <'UrUbIy> -}        [ ['E','u','r','o','p','e','a','n'] ],

    _____ |< Iy               `noun`    {- <'UrUbIy> -}        [ ['E','u','r','o','p','e','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_92  = cluster

 |> ['\'','U','r','u','b','b'] <| [

    _____ |<< "A"             `xtra`    {- <'UrubbA> -}        [ ['E','u','r','o','p','e'] ],

    _____ |< Iy               `adj`     {- <'UrubbIy> -}       [ ['E','u','r','o','p','e','a','n'] ],

    _____ |< Iy               `noun`    {- <'UrubbIy> -}       [ ['E','u','r','o','p','e','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_93  = cluster

 |> "' r t q" <| [

    KaRDaS |< aT              `noun`    {- <'artaqaT> -}       [ ['h','e','r','e','s','y'] ],

    KaRADIS |< Iy             `adj`     {- <'arAtIqIy> -}      [ ['h','e','r','e','t','i','c'] ] ]


cluster_94  = cluster

 |> ['\'','i','r','I','t','r'] <| [

    _____ |< iyA              `xtra`    {- <'irItriyA> -}      [ ['E','r','i','t','r','e','a'] ],

    _____ |< Iy               `adj`     {- <'irItrIy> -}       [ ['E','r','i','t','r','e','a','n'] ],

    _____ |< Iy               `noun`    {- <'irItrIy> -}       [ ['E','r','i','t','r','e','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_95  = cluster

 |> "' r _t" <| [

    FaCCaL                    `verb`    {- <'arra_t> -}        [ ['i','g','n','i','t','e'], unwords [ ['s','o','w'], "(", ['d','i','s','c','o','r','d'], ")" ] ] ]


cluster_96  = cluster

 |> "' r ^g" <| [

    FaCL                      `noun`    {- <'ar^g> -}          [ ['e','r','g'] ]
                              `plural`     FaCL |< At ]

 |> "' r ^g" <| [

    FaCAL                     `noun`    {- <'arA^g> -}         [ ['A','r','a','j'] ],

    FaCiL                     `verb`    {- <'ari^g> -}         [ unwords [ ['b','e'], ['a','r','o','m','a','t','i','c'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FaCIL,

    TaFaCCaL                  `verb`    {- <ta'arra^g> -}      [ unwords [ ['b','e'], ['a','r','o','m','a','t','i','c'] ] ],

    FaCaL                     `noun`    {- <'ara^g> -}         [ ['f','r','a','g','r','a','n','c','e'] ],

    FaCiL                     `adj`     {- <'ari^g> -}         [ ['f','r','a','g','r','a','n','t'] ],

    FaCIL                     `noun`    {- <'arI^g> -}         [ ['f','r','a','g','r','a','n','c','e'] ]
                              `plural`     FaCA'iL ]


cluster_97  = cluster

 |> "' r ^g .h" <| [

    TaKaRDaS                  `verb`    {- <ta'ar^ga.h> -}     [ ['s','w','i','n','g'], ['o','s','c','i','l','l','a','t','e'] ],

    TaKaRDuS                  `noun`    {- <ta'ar^gu.h> -}     [ ['o','s','c','i','l','l','a','t','i','o','n'], ['f','l','u','c','t','u','a','t','i','o','n'] ]
                              `plural`     TaKaRDuS |< At,

    MutaKaRDiS                `adj`     {- <muta'ar^gi.h> -}   [ ['f','l','u','c','t','u','a','t','i','n','g'], ['o','s','c','i','l','l','a','t','i','n','g'] ],

    KaRDUS |< aT              `noun`    {- <'ar^gU.haT> -}     [ ['s','w','i','n','g'], ['s','e','e','s','a','w'] ]
                              `plural`     KaRADIS ]


cluster_98  = cluster

 |> ['\'','a','r','A','^','g','U','z'] <| [

    _____                     `noun`    {- <'arA^gUz> -}       [ ['p','u','p','p','e','t','e','e','r'], ['A','r','a','z','i'] ] ]


cluster_99  = cluster

 |> "' r ^g l" <| [

    KaRDIS |< aT              `noun`    {- <'ar^gIlaT> -}      [ ['n','a','r','g','h','i','l','e'], ['h','o','o','k','a','h'] ]
                              `plural`     KaRADIS ]


cluster_100 = cluster

 |> ['\'','U','r','u','^','g','w','A','\''] <| [

    _____ |< Iy               `adj`     {- <'Uru^gwA'Iy> -}    [ ['U','r','u','g','u','a','y','a','n'] ],

    _____ |< Iy               `noun`    {- <'Uru^gwA'Iy> -}    [ ['U','r','u','g','u','a','y','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]

 |> ['\'','U','r','U','^','g','w','A','y'] <| [

    _____                     `xtra`    {- <'UrU^gwAy> -}      [ ['U','r','u','g','u','a','y'] ],

    al >| _____               `xtra`    {- <al-'UrU^gwAy> -}   [ ['U','r','u','g','u','a','y'] ] ]

 |> ['\'','U','r','u','^','g','w','A','y'] <| [

    _____                     `xtra`    {- <'Uru^gwAy> -}      [ ['U','r','u','g','u','a','y'] ],

    al >| _____               `xtra`    {- <al-'Uru^gwAy> -}   [ ['U','r','u','g','u','a','y'] ] ]


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
