
module Elixir.Data.Moony.Complex.E (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['\'','a','n','t','I','m','U','n'] <| [

    _____                     `noun`    {- <'antImUn> -}       [ ['a','n','t','i','m','o','n','y'] ] ]


cluster_2   = cluster

 |> ['\'','a','n','_','t','r','U','b','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <'an_trUbUlU^giyA> -} [ ['a','n','t','h','r','o','p','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <'an_trUbUlU^gIy> -} [ ['a','n','t','h','r','o','p','o','l','o','g','i','c','a','l'] ] ]


cluster_3   = cluster

 |> ['\'','a','n','^','g','u','_','d','A','n'] <| [

    _____                     `noun`    {- <'an^gu_dAn> -}     [ unwords [ ['a','s','a','f','e','t','i','d','a'], "(", ['p','l','a','n','t'], ")" ] ] ]


cluster_4   = cluster

 |> ['\'','a','n','^','g','U','l'] <| [

    _____ |<< "A"             `xtra`    {- <'an^gUlA> -}       [ ['A','n','g','o','l','a'] ],

    _____ |< Iy               `adj`     {- <'an^gUlIy> -}      [ ['A','n','g','o','l','a','n'] ] ]


cluster_5   = cluster

 |> ['\'','a','n','^','g','i','l','U','s','a','k','s','U','n'] <| [

    _____                     `noun`    {- <'an^gilUsaksUn> -} [ unwords [ ['A','n','g','l','o'], "-", ['S','a','x','o','n','s'] ] ],

    _____ |< Iy               `adj`     {- <'an^gilUsaksUnIy> -} [ unwords [ ['A','n','g','l','o'], "-", ['S','a','x','o','n'] ] ] ]


cluster_6   = cluster

 |> ['\'','a','n','^','g','l','a','z'] <| [

    _____                     `verb`    {- <'an^glaz> -}       [ ['A','n','g','l','i','c','i','z','e'] ],

    _____ |< aT               `noun`    {- <'an^glazaT> -}     [ ['A','n','g','l','i','c','i','z','a','t','i','o','n'] ] ]


cluster_7   = cluster

 |> ['\'','i','n','^','g','l','I','z'] <| [

    _____ |< Iy               `noun`    {- <'in^glIzIy> -}     [ ['E','n','g','l','i','s','h'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy               `adj`     {- <'in^glIzIy> -}     [ ['E','n','g','l','i','s','h'] ]
                              `plural`     _____,

    _____ |< Iy |< aT         `noun`    {- <'in^glIzIyaT> -}   [ unwords [ ['E','n','g','l','i','s','h'], "(", ['l','a','n','g','u','a','g','e'], ")" ] ] ]


cluster_8   = cluster

 |> ['\'','a','n','^','g','l','I','k','A','n'] <| [

    _____ |< Iy               `adj`     {- <'an^glIkAnIy> -}   [ ['A','n','g','l','i','c','a','n'] ] ]


cluster_9   = cluster

 |> ['\'','a','n','d','U','r','r'] <| [

    _____ |<< "A"             `xtra`    {- <'andUrrA> -}       [ ['A','n','d','o','r','r','a'] ],

    _____ |< Iy               `adj`     {- <'andUrrIy> -}      [ ['A','n','d','o','r','r','a','n'] ] ]


cluster_10  = cluster

 |> ['\'','a','n','d','a','l','u','s'] <| [

    _____                     `noun`    {- <'andalus> -}       [ ['A','n','d','a','l','u','s','i','a'] ],

    _____ |< Iy               `adj`     {- <'andalusIy> -}     [ ['A','n','d','a','l','u','s','i','a','n'] ],

    _____ |< Iy               `noun`    {- <'andalusIy> -}     [ ['A','n','d','a','l','u','s','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_11  = cluster

 |> ['\'','i','n','d','U','n','I','s'] <| [

    _____ |< iyA              `xtra`    {- <'indUnIsiyA> -}    [ ['I','n','d','o','n','e','s','i','a'] ],

    _____ |< Iy               `adj`     {- <'indUnIsIy> -}     [ ['I','n','d','o','n','e','s','i','a','n'] ],

    _____ |< Iy               `noun`    {- <'indUnIsIy> -}     [ ['I','n','d','o','n','e','s','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_12  = cluster

 |> ['\'','a','n','z','I','m'] <| [

    _____                     `noun`    {- <'anzIm> -}         [ ['e','n','z','y','m','e'] ]
                              `plural`     _____ |< At ]


cluster_13  = cluster

 |> ['\'','U','n','s'] <| [

    _____ |< aT               `noun`    {- <'UnsaT> -}         [ ['o','u','n','c','e'] ] ]


cluster_14  = cluster

 |> ['\'','i','n','^','s'] <| [

    _____                     `noun`    {- <'in^s> -}          [ ['i','n','c','h'] ]
                              `plural`     _____ |< At ]


cluster_15  = cluster

 |> ['\'','a','n','^','s','U','^','g'] <| [

    _____ |< aT               `noun`    {- <'an^sU^gaT> -}     [ ['a','n','c','h','o','v','y'] ] ]


cluster_16  = cluster

 |> ['\'','a','n','.','t','A','k'] <| [

    _____ |<< "I" |< aT       `noun`    {- <'an.tAkiyaT> -}    [ ['A','n','t','a','k','y','a'], ['A','n','t','i','o','c','h'] ] ]


cluster_17  = cluster

 |> ['\'','u','n','.','t','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <'un.tUlU^giyA> -}  [ ['o','n','t','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <'un.tUlU^gIy> -}   [ ['o','n','t','o','l','o','g','i','c','a','l'] ] ]


cluster_18  = cluster

 |> ['\'','a','n','.','g','U','l'] <| [

    _____ |<< "A"             `xtra`    {- <'an.gUlA> -}       [ ['A','n','g','o','l','a'] ],

    _____ |< Iy               `adj`     {- <'an.gUlIy> -}      [ ['A','n','g','o','l','a','n'] ] ]


cluster_19  = cluster

 |> ['\'','i','n','f','l','u','w','a','n','z'] <| [

    _____ |<< "A"             `noun`    {- <'influwanzA> -}    [ ['i','n','f','l','u','e','n','z','a'] ] ]


cluster_20  = cluster

 |> ['\'','a','n','q','a','r'] <| [

    _____ |< aT               `noun`    {- <'anqaraT> -}       [ ['A','n','k','a','r','a'] ]
                           
    `excepts` Diptote ]

 |> ['\'','a','n','q','a','r'] <| [

    _____ |< Iy               `adj`     {- <'anqarIy> -}       [ ['a','n','g','o','r','a'] ] ]


cluster_21  = cluster

 |> ['\'','a','n','q','a','l','I','s'] <| [

    _____                     `noun`    {- <'anqalIs> -}       [ ['e','e','l'] ] ]


cluster_22  = cluster

 |> ['\'','a','n','q','l','a','z'] <| [

    _____                     `verb`    {- <'anqlaz> -}        [ ['A','n','g','l','i','c','i','z','e'] ],

    _____ |< aT               `noun`    {- <'anqlazaT> -}      [ ['A','n','g','l','i','c','i','z','a','t','i','o','n'] ] ]


cluster_23  = cluster

 |> ['\'','i','n','q','l','I','z'] <| [

    _____ |< Iy               `adj`     {- <'inqlIzIy> -}      [ ['E','n','g','l','i','s','h'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <'inqlIzIy> -}      [ ['E','n','g','l','i','s','h'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <'inqlIzIyaT> -}    [ unwords [ ['E','n','g','l','i','s','h'], "(", ['l','a','n','g','u','a','g','e'], ")" ] ] ]


cluster_24  = cluster

 |> ['\'','i','n','k','i','^','s','A','r'] <| [

    _____ |< Iy               `adj`     {- <'inki^sArIy> -}    [ ['J','a','n','i','s','s','a','r','y'] ] ]


cluster_25  = cluster

 |> ['\'','a','n','k','U','l'] <| [

    _____ |<< "A"             `xtra`    {- <'ankUlA> -}        [ ['A','n','g','o','l','a'] ],

    _____ |< Iy               `adj`     {- <'ankUlIy> -}       [ ['A','n','g','o','l','a','n'] ] ]


cluster_26  = cluster

 |> ['\'','a','n','k','i','l','U','s','a','k','s','U','n'] <| [

    _____                     `noun`    {- <'ankilUsaksUn> -}  [ unwords [ ['A','n','g','l','o'], "-", ['S','a','x','o','n','s'] ] ],

    _____ |< Iy               `adj`     {- <'ankilUsaksUnIy> -} [ unwords [ ['A','n','g','l','o'], "-", ['S','a','x','o','n'] ] ] ]


cluster_27  = cluster

 |> ['\'','i','n','k','i','l','t','i','r','A'] <| [

    _____                     `noun`    {- <'inkiltirA> -}     [ ['E','n','g','l','a','n','d'] ] ]


cluster_28  = cluster

 |> ['\'','a','n','k','l','a','z'] <| [

    _____                     `verb`    {- <'anklaz> -}        [ ['A','n','g','l','i','c','i','z','e'] ],

    _____ |< aT               `noun`    {- <'anklazaT> -}      [ ['A','n','g','l','i','c','i','z','a','t','i','o','n'] ] ]


cluster_29  = cluster

 |> ['\'','i','n','k','l','I','z'] <| [

    _____ |< Iy               `adj`     {- <'inklIzIy> -}      [ ['E','n','g','l','i','s','h'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <'inklIzIy> -}      [ ['E','n','g','l','i','s','h'] ]
                              `plural`     _____
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <'inklIzIyaT> -}    [ unwords [ ['E','n','g','l','i','s','h'], "(", ['l','a','n','g','u','a','g','e'], ")" ] ] ]


cluster_30  = cluster

 |> ['\'','A','h'] <| [

    _____                     `intj`    {- <'Ah> -}            [ unwords [ ['a','h'], "!" ], unwords [ ['o','u','c','h'], "!" ] ],

    _____ |<< "aN"            `intj`    {- <'AhaN> -}          [ unwords [ ['a','h'], "!" ], unwords [ ['o','u','c','h'], "!" ] ] ]


cluster_31  = cluster

 |> "' h b" <| [

    FaCCaL                    `verb`    {- <'ahhab> -}         [ ['e','q','u','i','p'], unwords [ ['p','u','t'], ['o','n'], ['a','l','e','r','t'] ] ],

    TaFaCCaL                  `verb`    {- <ta'ahhab> -}       [ unwords [ ['b','e'], ['r','e','a','d','y'] ], unwords [ ['b','e'], ['o','n'], ['a','l','e','r','t'] ], unwords [ ['b','e'], ['e','q','u','i','p','e','d'] ] ],

    FuCL |< aT                `noun`    {- <'uhbaT> -}         [ ['p','r','e','p','a','r','a','t','i','o','n'], ['a','l','e','r','t'] ]
                              `plural`     FuCaL,

    TaFaCCuL                  `noun`    {- <ta'ahhub> -}       [ ['a','l','e','r','t'], ['p','r','e','p','a','r','e','d','n','e','s','s'], ['p','r','e','p','a','r','a','t','i','o','n','s'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta'ahhib> -}     [ ['p','r','e','p','a','r','e','d'], unwords [ ['o','n'], ['a','l','e','r','t'] ] ],

    FiCAL                     `noun`    {- <'ihAb> -}          [ ['s','k','i','n'], ['h','i','d','e'] ]
                              `plural`     FuCuL ]


cluster_32  = cluster

 |> "' h l" <| [

    FaCaL                     `verb`    {- <'ahal> -}          [ unwords [ ['g','e','t'], ['m','a','r','r','i','e','d'] ] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCiL                     `verb`    {- <'ahil> -}          [ unwords [ ['b','e'], ['f','a','m','i','l','i','a','r'] ] ]
                              `imperf`     FCaL,

    FuCiL                     `verb`    {- <'uhil> -}          [ unwords [ ['b','e'], ['p','o','p','u','l','a','t','e','d'] ] ],

    FaCCaL                    `verb`    {- <'ahhal> -}         [ ['t','r','a','i','n'], ['c','e','r','t','i','f','y'], ['q','u','a','l','i','f','y'], ['c','a','p','a','c','i','t','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <ta'ahhal> -}       [ unwords [ ['b','e'], ['q','u','a','l','i','f','i','e','d'] ], ['m','e','r','i','t'] ],

    IstaFCaL                  `verb`    {- <ista'hal> -}       [ ['m','e','r','i','t'], unwords [ ['c','o','n','s','i','d','e','r'], ['w','o','r','t','h','y'] ] ],

    FaCL                      `noun`    {- <'ahl> -}           [ ['f','a','m','i','l','y'], ['p','e','o','p','l','e'], ['f','o','l','k'], unwords [ ['i','n','d','i','g','e','n','o','u','s'], ['p','e','o','p','l','e'] ] ]
                              `plural`     FaCALI,

    FaCL                      `adj`     {- <'ahl> -}           [ ['q','u','a','l','i','f','i','e','d'] ],

    FaCL |<< "aN"             `intj`    {- <'ahlaN> -}         [ unwords [ ['w','e','l','c','o','m','e'], "!" ] ],

    FaCL |< Iy                `noun`    {- <'ahlIy> -}         [ ['A','h','l','y'], ['A','h','l','i'] ],

    FaCL |< Iy                `adj`     {- <'ahlIy> -}         [ ['c','i','v','i','l'], ['d','o','m','e','s','t','i','c'], ['f','a','m','i','l','y'] ],

    FaCL |< Iy |< aT          `noun`    {- <'ahlIyaT> -}       [ ['a','p','t','i','t','u','d','e'], ['c','o','m','p','e','t','e','n','c','e'], ['q','u','a','l','i','f','i','c','a','t','i','o','n'] ],

    FACiL                     `adj`     {- <'Ahil> -}          [ ['p','o','p','u','l','a','t','e','d'] ],

    MaFCUL                    `adj`     {- <ma'hUl> -}         [ ['p','o','p','u','l','a','t','e','d'], ['m','a','n','n','e','d'] ],

    TaFCIL                    `noun`    {- <ta'hIl> -}         [ ['c','e','r','t','i','f','y','i','n','g'], ['q','u','a','l','i','f','y','i','n','g'], ['t','r','a','i','n','i','n','g'], ['h','a','b','i','l','i','t','a','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <mu'ahhil> -}       [ ['q','u','a','l','i','f','i','c','a','t','i','o','n'], ['c','e','r','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCiL                  `adj`     {- <mu'ahhil> -}       [ ['q','u','a','l','i','f','y','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <mu'ahhal> -}       [ ['q','u','a','l','i','f','i','e','d'], ['c','o','m','p','e','t','e','n','t'], ['c','e','r','t','i','f','i','e','d'] ],

    TaFaCCuL                  `noun`    {- <ta'ahhul> -}       [ ['q','u','a','l','i','f','i','c','a','t','i','o','n'], ['s','u','i','t','a','b','i','l','i','t','y'], ['c','o','m','p','e','t','e','n','c','y'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta'ahhil> -}     [ ['q','u','a','l','i','f','i','e','d'], ['m','a','r','r','i','e','d'] ],

    MustaFCiL                 `adj`     {- <musta'hil> -}      [ ['w','o','r','t','h','y'], ['e','n','t','i','t','l','e','d'], ['q','u','a','l','i','f','i','e','d'] ] ]


cluster_33  = cluster

 |> ['\'','i','h','l','a','y','l','a','^','g'] <| [

    _____                     `noun`    {- <'ihlayla^g> -}     [ ['e','l','l','i','p','s','e'] ],

    _____ |< Iy               `adj`     {- <'ihlayla^gIy> -}   [ ['e','l','l','i','p','t','i','c','a','l'] ] ]

 |> ['\'','i','h','l','I','l','a','^','g'] <| [

    _____                     `noun`    {- <'ihlIla^g> -}      [ ['e','l','l','i','p','s','e'] ],

    _____ |< Iy               `adj`     {- <'ihlIla^gIy> -}    [ ['e','l','l','i','p','t','i','c','a','l'] ] ]


cluster_34  = cluster

 |> ['\'','a','w'] <| [

    _____                     `conj`    {- <'aw> -}            [ ['o','r'] ] ]


cluster_35  = cluster

 |> "' w b" <| [

    FAL                       `verb`    {- <'Ab> -}            [ ['r','e','t','u','r','n'] ]
                              `imperf`     FUL
                              `masdar`     FaCL
                              `masdar`     FaCL |< aT
                              `masdar`     FiyAL,

    FaCCaL                    `verb`    {- <'awwab> -}         [ ['r','e','p','e','a','t'] ],

    FaCL                      `noun`    {- <'awb> -}           [ ['r','e','t','u','r','n'], ['a','s','p','e','c','t'] ],

    FaCL |< aT                `noun`    {- <'awbaT> -}         [ ['r','e','t','u','r','n'] ],

    FiyAL                     `noun`    {- <'iyAb> -}          [ ['r','e','t','u','r','n'] ],

    FAyiL                     `adj`     {- <'Ayib> -}          [ ['c','o','m','i','n','g'], ['r','e','t','u','r','n','i','n','g'] ],

    FaCCAL                    `noun`    {- <'awwAb> -}         [ ['p','e','n','i','t','e','n','t'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MaFAL                     `noun`    {- <ma'Ab> -}          [ ['r','e','s','o','r','t'], unwords [ ['r','e','s','t','i','n','g'], ['p','l','a','c','e'] ] ]
                              `plural`     MaFACiL ]


cluster_36  = cluster

 |> "' w ^g" <| [

    FaCL                      `noun`    {- <'aw^g> -}          [ ['c','l','i','m','a','x'], ['m','a','x','i','m','u','m'], ['h','e','i','g','h','t'], ['s','u','m','m','i','t'] ] ]


cluster_37  = cluster

 |> "' w d" <| [

    FAL                       `verb`    {- <'Ad> -}            [ ['b','u','r','d','e','n'], unwords [ ['m','a','k','e'], ['d','i','f','f','i','c','u','l','t'] ] ]
                              `imperf`     FUL,

    FaCiL                     `verb`    {- <'awid> -}          [ ['b','e','n','d'], unwords [ ['b','e'], ['b','e','n','t'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <'awwad> -}         [ ['b','e','n','d'], ['f','o','l','d'], unwords [ ['b','e'], ['b','e','n','t'] ] ],

    TaFaCCaL                  `verb`    {- <ta'awwad> -}       [ unwords [ ['b','e'], ['b','e','n','t'] ], unwords [ ['b','e'], ['f','o','l','d','e','d'] ] ],

    FaCL |< aT                `noun`    {- <'awdaT> -}         [ ['b','u','r','d','e','n'], ['l','o','a','d'] ]
                              `plural`     FiCAL,

    FaCaL                     `noun`    {- <'awad> -}          [ ['s','u','b','s','i','s','t','e','n','c','e'] ] ]


cluster_38  = cluster

 |> "' w r" <| [

    FuCAL                     `noun`    {- <'uwAr> -}          [ ['b','l','a','z','e'], ['t','h','i','r','s','t'] ],

    FuCAL |< Iy               `adj`     {- <'uwArIy> -}        [ unwords [ ['b','l','a','z','i','n','g'], ['t','h','i','r','s','t'] ] ] ]


cluster_39  = cluster

 |> "' w r b" <| [

    KaRDaS                    `verb`    {- <'awrab> -}         [ ['E','u','r','o','p','e','a','n','i','z','e'] ],

    TaKaRDaS                  `verb`    {- <ta'awrab> -}       [ unwords [ ['b','e'], ['E','u','r','o','p','e','a','n','i','z','e','d'] ] ],

    MuKaRDaS                  `adj`     {- <mu'awrab> -}       [ ['E','u','r','o','p','e','a','n','i','z','e','d'] ],

    MutaKaRDiS                `adj`     {- <muta'awrib> -}     [ ['E','u','r','o','p','e','a','n','i','z','e','d'] ] ]


cluster_40  = cluster

 |> "' w z" <| [

    FaCCaL                    `verb`    {- <'awwaz> -}         [ ['r','i','d','i','c','u','l','e'] ],

    FiCaLL |< aT              `noun`    {- <'iwazzaT> -}       [ ['g','o','o','s','e'] ] ]


cluster_41  = cluster

 |> "' w s" <| [

    FaCL                      `noun`    {- <'aws> -}           [ ['l','y','n','x'] ] ]


cluster_42  = cluster

 |> "' w .d" <| [

    FUL |< aT                 `noun`    {- <'U.daT> -}         [ ['r','o','o','m'] ]
                              `plural`     FuCaL ]


cluster_43  = cluster

 |> "' w f" <| [

    FAL |< aT                 `noun`    {- <'AfaT> -}          [ ['v','i','c','e'], ['p','l','a','g','u','e'] ]
                              `plural`     FAL |< At,

    MaFUL                     `adj`     {- <ma'Uf> -}          [ ['d','a','m','a','g','e','d'], ['e','p','i','d','e','m','i','c','a','l'] ] ]


cluster_44  = cluster

 |> "' w q" <| [

    FAL                       `verb`    {- <'Aq> -}            [ unwords [ ['b','r','i','n','g'], ['b','a','d'], ['l','u','c','k'] ], unwords [ ['c','a','u','s','e'], ['h','a','r','d','s','h','i','p'] ] ]
                              `imperf`     FUL,

    FaCCaL                    `verb`    {- <'awwaq> -}         [ ['b','u','r','d','e','n'], ['i','m','p','o','s','e'] ] ]


cluster_45  = cluster

 |> "' w l" <| [

    FayLUL                    `noun`    {- <'aylUl> -}         [ ['S','e','p','t','e','m','b','e','r'] ]
                           
    `excepts` Diptote,

    FayyiL                    `noun`    {- <'ayyil> -}         [ ['s','t','a','g'], ['d','e','e','r'] ]
                              `plural`     FayA'iL,

    FayyiL |< aT              `noun`    {- <'ayyilaT> -}       [ ['d','o','e'], ['d','e','e','r'] ]
                              `plural`     FayyiL |< At,

    FayyiL |< Iy              `adj`     {- <'ayyilIy> -}       [ ['c','e','r','v','i','d'], unwords [ ['d','e','e','r'], "-", ['r','e','l','a','t','e','d'] ] ] ]

 |> "' w l" <| [

    FAL                       `verb`    {- <'Al> -}            [ ['a','r','r','i','v','e'], ['l','e','a','d'], ['r','e','t','u','r','n'] ]
                              `imperf`     FUL
                              `masdar`     FaCL
                              `masdar`     MaFAL,

    FaCCaL                    `verb`    {- <'awwal> -}         [ ['e','x','p','l','a','i','n'], ['i','n','t','e','r','p','r','e','t'] ],

    FayLUL |< aT              `noun`    {- <'aylUlaT> -}       [ ['r','e','v','e','r','s','a','l'], ['d','e','v','o','l','u','t','i','o','n'], unwords [ ['t','i','t','l','e'], ['d','e','e','d'] ] ],

    FA'iL                     `adj`     {- <'A'il> -}          [ ['r','e','v','e','r','s','i','b','l','e'], ['r','e','a','d','y'] ],

    TaFCIL                    `noun`    {- <ta'wIl> -}         [ ['e','x','p','l','a','n','a','t','i','o','n'], ['i','n','t','e','r','p','r','e','t','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    FuCayyiL                  `noun`    {- <'uwayyil> -}       [ ['p','r','o','t','o','n'] ],

    FiyAL |< aT               `noun`    {- <'iyAlaT> -}        [ ['a','d','m','i','n','i','s','t','r','a','t','i','o','n'], ['m','a','n','a','g','e','m','e','n','t'], ['d','i','s','t','r','i','c','t'] ]
                              `plural`     FiyAL |< At,

    MaFAL                     `noun`    {- <ma'Al> -}          [ ['o','u','t','c','o','m','e'], ['r','e','s','u','l','t'] ]
                              `plural`     MaFAL |< At,

    FaCCaL                    `noun`    {- <'awwal> -}         [ ['b','e','g','i','n','n','i','n','g'] ]
                              `plural`     FaCA'iL,

    FaCCaL |< Iy              `adj`     {- <'awwalIy> -}       [ ['f','i','r','s','t'], ['i','n','i','t','i','a','l'], ['p','r','i','m','a','r','y'] ],

    FaCCaL |< Iy |< aT        `noun`    {- <'awwalIyaT> -}     [ ['p','r','i','o','r','i','t','y'], ['p','r','e','c','e','d','e','n','c','e'], ['p','r','i','m','a','c','y'], ['a','x','i','o','m'] ]
                              `plural`     FaCCaL |< Iy |< At,

    FAL                       `noun`    {- <'Al> -}            [ ['f','a','m','i','l','y'], ['c','l','a','n'] ],

    FAL |< aT                 `noun`    {- <'AlaT> -}          [ ['i','n','s','t','r','u','m','e','n','t'], ['a','p','p','a','r','a','t','u','s'], ['a','p','p','l','i','a','n','c','e'], ['m','a','c','h','i','n','e'] ]
                              `plural`     FAL |< At,

    FAL |< Iy                 `adj`     {- <'AlIy> -}          [ ['m','e','c','h','a','n','i','c','a','l'], ['a','u','t','o','m','a','t','i','c'] ],

    FAL |< Iy |< aT           `noun`    {- <'AlIyaT> -}        [ ['a','u','t','o','m','a','t','i','o','n'], ['m','e','c','h','a','n','i','s','m'] ]
                              `plural`     FAL |< Iy |< At,

    FiCAL |< aT               `noun`    {- <'iwAlaT> -}        [ ['m','e','c','h','a','n','i','s','m'] ],

    FiCAL |< Iy               `adj`     {- <'iwAlIy> -}        [ ['m','e','c','h','a','n','i','c','a','l'] ],

    FiCAL |< Iy |< aT         `noun`    {- <'iwAlIyaT> -}      [ ['m','e','c','h','a','n','i','s','m'] ] ]


cluster_46  = cluster

 |> "' w m" <| [

    FuCAL                     `noun`    {- <'uwAm> -}          [ ['t','h','i','r','s','t'] ] ]


cluster_47  = cluster

 |> ['\'','I','w','A','n'] <| [

    _____                     `noun`    {- <'IwAn> -}          [ ['p','a','l','a','c','e'], ['h','a','l','l'] ]
                              `plural`     _____ |< At ]


cluster_48  = cluster

 |> "' w n" <| [

    FAL                       `verb`    {- <'An> -}            [ ['a','r','r','i','v','e'], ['a','p','p','r','o','a','c','h'] ]
                              `imperf`     FUL,

    FAL                       `noun`    {- <'An> -}            [ ['t','i','m','e'], ['m','o','m','e','n','t'] ],

    al >| FAL |<< "a"         `adv`     {- <al-'Ana> -}        [ ['n','o','w'] ],

    FAL |<< "a" |<< "'i_diN"  `adv`     {- <'Ana'i_diN> -}     [ ['t','h','e','n'], unwords [ ['a','t'], ['t','h','a','t'], ['t','i','m','e'] ] ],

    FAL |<< "a" |<< "_dAka"   `adv`     {- <'Ana_dAka> -}      [ ['t','h','e','n'], unwords [ ['a','t'], ['t','h','a','t'], ['t','i','m','e'] ] ],

    FAL |< Iy                 `adj`     {- <'AnIy> -}          [ ['a','c','t','u','a','l'], ['p','r','e','s','e','n','t'], ['s','i','m','u','l','t','a','n','e','o','u','s'] ],

    FaCL                      `noun`    {- <'awn> -}           [ ['a','r','r','i','v','a','l'], ['a','p','p','r','o','a','c','h'] ],

    FaCL                      `noun`    {- <'awn> -}           [ ['c','a','l','m'], ['s','e','r','e','n','i','t','y'] ],

    FaCAL                     `noun`    {- <'awAn> -}          [ ['t','i','m','e'], ['m','o','m','e','n','t'] ]
                              `plural`     HACiL |< aT ]

 |> "' y n" <| [

    FAL                       `verb`    {- <'An> -}            [ ['a','r','r','i','v','e'], ['a','p','p','r','o','a','c','h'] ]
                              `imperf`     FIL
                              `masdar`     FaCL ]


cluster_49  = cluster

 |> ['\'','a','w','a','n','.','t'] <| [

    _____ |< aT               `noun`    {- <'awan.taT> -}      [ ['s','w','i','n','d','l','e'], ['d','e','c','e','i','t'] ],

    _____ |<< "a" |<< "^g" |< Iy `noun`    {- <'awan.ta^gIy> -}   [ ['s','w','i','n','d','l','e','r'], ['i','m','p','o','s','t','o','r'] ]
                              `plural`     _____ |<< "a" |<< "^g" |< Iy |< Un
                              `femini`     _____ |<< "a" |<< "^g" |< Iy |< aT ]


cluster_50  = cluster

 |> "' w h" <| [

    FAL                       `verb`    {- <'Ah> -}            [ ['m','o','a','n'], ['s','i','g','h'] ]
                              `imperf`     FUL,

    FaCCaL                    `verb`    {- <'awwah> -}         [ ['m','o','a','n'], ['s','i','g','h'] ],

    TaFaCCaL                  `verb`    {- <ta'awwah> -}       [ ['e','x','c','l','a','i','m'], ['s','i','g','h'] ],

    FAL |< aT                 `noun`    {- <'AhaT> -}          [ ['e','x','c','l','a','m','a','t','i','o','n'], ['s','i','g','h'], ['a','c','c','l','a','i','m'] ]
                              `plural`     FAL |< At,

    FaCCaL                    `intj`    {- <'awwah> -}         [ unwords [ ['o','h'], "!" ] ],

    FuCAL                     `intj`    {- <'uwAh> -}          [ unwords [ ['o','h'], "!" ] ],

    TaFaCCuL                  `noun`    {- <ta'awwuh> -}       [ ['s','i','g','h'], ['e','x','c','l','a','m','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <muta'awwih> -}     [ ['s','i','g','h','i','n','g'], ['e','x','c','l','a','i','m','i','n','g'] ] ]


cluster_51  = cluster

 |> "' w y" <| [

    FaCY                      `verb`    {- <'awY> -}           [ ['r','e','t','i','r','e'], unwords [ ['s','e','e','k'], ['s','h','e','l','t','e','r'] ] ]
                              `imperf`     FCY
                              `imperf`     FCI
                              `masdar`     FuCI
                              `masdar`     FiCA',

    FaCCY                     `verb`    {- <'awwY> -}          [ ['s','h','e','l','t','e','r'], ['l','o','d','g','e'] ],

    HACY                      `verb`    {- <'AwY> -}           [ unwords [ ['s','e','e','k'], ['s','h','e','l','t','e','r'] ], unwords [ ['p','r','o','v','i','d','e'], ['a','s','y','l','u','m'] ] ],

    FiCA'                     `noun`    {- <'iwA'> -}          [ ['s','h','e','l','t','e','r','i','n','g'], ['h','a','r','b','o','r','i','n','g'], ['l','o','d','g','i','n','g'] ]
                              `plural`     FiCA' |< At,

    HICA'                     `noun`    {- <'IwA'> -}          [ ['a','c','c','o','m','m','o','d','a','t','i','o','n'], ['h','o','u','s','i','n','g'] ]
                              `plural`     HICA' |< At,

    MaFCY                     `noun`    {- <ma'wY> -}          [ ['r','e','f','u','g','e'], ['s','h','e','l','t','e','r'] ]
                              `plural`     MaFACI ]


cluster_52  = cluster

 |> ['\'','a','w','d','i','y','U'] <| [

    _____                     `noun`    {- <'awdiyU> -}        [ ['a','u','d','i','o'] ] ]


cluster_53  = cluster

 |> ['\'','a','y'] <| [

    _____                     `conj`    {- <'ay> -}            [ ['i','.','e','.'], unwords [ ['i','n'], ['o','t','h','e','r'], ['w','o','r','d','s'] ] ] ]

 |> ['\'','I','y','A'] <| [

    _____                     `part`    {- <'IyA> -}           [ ['o','h'], ['t','o'], ['f','o','r'] ] ]


cluster_54  = cluster

 |> "' y b" <| [

    FaCCUL                    `noun`    {- <'ayyUb> -}         [ ['A','y','u','b'], ['A','y','y','o','u','b'], ['J','o','b'] ],

    FaCCUL |< Iy              `adj`     {- <'ayyUbIy> -}       [ ['A','y','u','b','i'], ['A','y','u','b','i','t','e'] ] ]


cluster_55  = cluster

 |> "' y d" <| [

    FaCCaL                    `verb`    {- <'ayyad> -}         [ ['s','u','p','p','o','r','t'], ['a','s','s','i','s','t'] ],

    TaFaCCaL                  `verb`    {- <ta'ayyad> -}       [ unwords [ ['b','e'], ['c','o','n','f','i','r','m','e','d'] ] ],

    TaFCIL                    `noun`    {- <ta'yId> -}         [ ['s','u','p','p','o','r','t'], ['a','p','p','r','o','v','a','l'], ['a','s','s','i','s','t','a','n','c','e'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |< Iy              `adj`     {- <ta'yIdIy> -}       [ ['c','o','n','f','i','r','m','a','t','o','r','y'], ['a','p','p','r','o','v','i','n','g'] ],

    MuFaCCiL                  `noun`    {- <mu'ayyid> -}       [ ['s','u','p','p','o','r','t','e','r'], ['p','a','r','t','i','s','a','n'], ['s','u','p','p','o','r','t','i','n','g'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_56  = cluster

 |> "' y r" <| [

    FaCCAL                    `noun`    {- <'ayyAr> -}         [ ['M','a','y'] ]
                           
    `excepts` Diptote ]


cluster_57  = cluster

 |> "' y s" <| [

    FaCiL                     `verb`    {- <'ayis> -}          [ unwords [ ['l','o','s','e'], ['h','o','p','e'] ], ['d','e','s','p','a','i','r'] ]
                              `imperf`     FCaL,

    FaCaL                     `noun`    {- <'ayas> -}          [ ['d','e','s','p','a','i','r'] ],

    FiCAL                     `noun`    {- <'iyAs> -}          [ ['d','e','s','p','a','i','r'] ] ]


cluster_58  = cluster

 |> "' y .d" <| [

    FaCL |<< "aN"             `adv`     {- <'ay.daN> -}        [ ['a','l','s','o'] ],

    FAL                       `verb`    {- <'A.d> -}           [ ['r','e','t','u','r','n'], ['r','e','v','e','r','t'] ]
                              `imperf`     FIL,

    FaCCaL                    `verb`    {- <'ayya.d> -}        [ ['m','e','t','a','b','o','l','i','z','e'] ],

    FaCL                      `noun`    {- <'ay.d> -}          [ ['m','e','t','a','b','o','l','i','s','m'] ],

    FaCL |< Iy                `adj`     {- <'ay.dIy> -}        [ ['m','e','t','a','b','o','l','i','c'] ] ]


cluster_59  = cluster

 |> "' y k" <| [

    FaCL |< aT                `noun`    {- <'aykaT> -}         [ ['j','u','n','g','l','e'], ['t','h','i','c','k','e','t'] ] ]


cluster_60  = cluster

 |> "' y m" <| [

    FAL                       `verb`    {- <'Am> -}            [ unwords [ ['b','e'], ['w','i','d','o','w','e','d'] ] ]
                              `imperf`     FIL,

    TaFaCCaL                  `verb`    {- <ta'ayyam> -}       [ unwords [ ['b','e'], ['w','i','d','o','w','e','d'] ] ],

    FaCCiL                    `noun`    {- <'ayyim> -}         [ ['w','i','d','o','w','e','d'], ['w','i','d','o','w','e','r'], ['w','i','d','o','w'] ]
                              `plural`     FaCA'iL
                              `plural`     FaCALY
                              `femini`     FaCCiL |< aT,

    FaCL |< aT                `noun`    {- <'aymaT> -}         [ ['w','i','d','o','w','h','o','o','d'] ],

    FuCUL                     `noun`    {- <'uyUm> -}          [ ['w','i','d','o','w','h','o','o','d'] ],

    TaFaCCuL                  `noun`    {- <ta'ayyum> -}       [ ['w','i','d','o','w','h','o','o','d'] ]
                              `plural`     TaFaCCuL |< At ]


cluster_61  = cluster

 |> "' y n" <| [

    FaCCaL                    `verb`    {- <'ayyan> -}         [ ['i','o','n','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <ta'ayyan> -}       [ unwords [ ['b','e'], ['i','o','n','i','z','e','d'] ] ],

    FuCUL                     `noun`    {- <'uyUn> -}          [ ['i','o','n'] ]
                              `plural`     FuCUL |< At,

    TaFCIL                    `noun`    {- <ta'yIn> -}         [ ['i','o','n','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `adj`     {- <mu'ayyin> -}       [ ['i','o','n','i','z','e','d'] ],

    MutaFaCCiL                `adj`     {- <muta'ayyin> -}     [ ['i','o','n','i','z','e','d'] ] ]


cluster_62  = cluster

 |> "' y y" <| [

    FAL |< aT                 `noun`    {- <'AyaT> -}          [ unwords [ ['Q','u','r','a','n','i','c'], ['v','e','r','s','e'] ], ['m','i','r','a','c','l','e'], ['s','i','g','n'], ['w','o','n','d','e','r'] ]
                              `plural`     FAL |< At ]

 |> "' y y" <| [

    FaCL                      `adj`     {- <'ayy> -}           [ ['a','n','y'], ['w','h','a','t'], ['w','h','i','c','h'], ['w','h','a','t','e','v','e','r'], ['w','h','i','c','h','e','v','e','r'] ]
                           
    `limited` "A------S-[IRA]",

    FaCL |<< "u" |<< "hA"     `part`    {- <'ayyuhA> -}        [ unwords [ "O", "!" ] ],

    FaCL |< aT |<< "u" |<< "hA" `part`    {- <'ayyaTuhA> -}      [ unwords [ "O", "!" ] ] ]


cluster_63  = cluster

 |> ['\'','U','y','.','g','U','r'] <| [

    _____ |< Iy               `adj`     {- <'Uy.gUrIy> -}      [ ['U','y','g','h','u','r'] ],

    _____                     `noun`    {- <'Uy.gUr> -}        [ ['U','y','g','h','u','r'] ]
                              `plural`     _____ |< Un
                              `femini`     _____ |< aT ]

 |> ['\'','u','y','.','g','U','r'] <| [

    _____ |< Iy               `adj`     {- <'uy.gUrIy> -}      [ ['U','y','g','h','u','r'] ],

    _____                     `noun`    {- <'uy.gUr> -}        [ ['U','y','g','h','u','r'] ]
                              `plural`     _____ |< Un
                              `femini`     _____ |< aT ]


cluster_64  = cluster

 |> ['\'','a','y','n'] <| [

    _____ |<< "a"             `pron`    {- <'ayna> -}          [ ['w','h','e','r','e'] ],

    _____ |<< "a" |<< "mA"    `conj`    {- <'aynamA> -}        [ ['w','h','e','r','e','v','e','r'] ],

    al >| _____               `noun`    {- <al-'ayn> -}        [ unwords [ ['t','h','e'], ['w','h','e','r','e'] ], ['s','p','a','c','e'] ] ]


cluster_65  = cluster

 |> ['b','A','\''] <| [

    _____                     `noun`    {- <bA'> -}            [ unwords [ ['b','a','\''], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_66  = cluster

 |> "b ' b '" <| [

    KaRDaS                    `verb`    {- <ba'ba'> -}         [ ['b','a','b','b','l','e'] ],

    KuRDuS                    `noun`    {- <bu'bu'> -}         [ ['p','u','p','i','l'], ['s','o','u','r','c','e'] ] ]


cluster_67  = cluster

 |> "b ' r" <| [

    FaCaL                     `verb`    {- <ba'ar> -}          [ unwords [ ['d','i','g'], "a", ['w','e','l','l'] ], ['f','o','c','u','s'] ]
                              `imperf`     FCaL,

    FiCL                      `noun`    {- <bi'r> -}           [ ['w','e','l','l'], ['s','p','r','i','n','g'] ]
                              `plural`     FiCAL
                              `plural`     HAFAL,

    FuwayL |< aT              `noun`    {- <buwayraT> -}       [ unwords [ ['s','m','a','l','l'], ['w','e','l','l'] ], unwords [ ['s','m','a','l','l'], ['s','p','r','i','n','g'] ] ],

    FuwayL |< aT              `noun`    {- <buwayraT> -}       [ ['B','o','u','a','i','r','a'] ],

    FuCL |< aT                `noun`    {- <bu'raT> -}         [ ['c','e','n','t','e','r'], ['f','o','c','u','s'] ]
                              `plural`     FuCaL,

    FuCL |< Iy                `adj`     {- <bu'rIy> -}         [ ['f','o','c','a','l'] ] ]


cluster_68  = cluster

 |> "b ' z" <| [

    FaCL                      `noun`    {- <ba'z> -}           [ ['f','a','l','c','o','n'] ]
                              `plural`     FuCUL
                              `plural`     FiCLAn ]


cluster_69  = cluster

 |> "b ' s" <| [

    FaCuL                     `verb`    {- <ba'us> -}          [ unwords [ ['b','e'], ['s','t','r','o','n','g'] ], unwords [ ['b','e'], ['b','r','a','v','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCiL                     `verb`    {- <ba'is> -}          [ unwords [ ['b','e'], ['d','e','j','e','c','t','e','d'] ], unwords [ ['b','e'], ['m','i','s','e','r','a','b','l','e'] ] ]
                              `imperf`     FCaL
                              `masdar`     FuCL,

    TaFACaL                   `verb`    {- <tabA'as> -}        [ unwords [ ['f','e','i','g','n'], ['m','i','s','e','r','y'] ], unwords [ ['f','e','i','g','n'], ['d','e','j','e','c','t','i','o','n'] ] ],

    IFtaCaL                   `verb`    {- <ibta'as> -}        [ unwords [ ['b','e'], ['d','e','j','e','c','t','e','d'] ], unwords [ ['b','e'], ['w','o','r','r','i','e','d'] ] ],

    FiCL |<< "a"              `noun`    {- <bi'sa> -}          [ ['b','a','d'], ['e','v','i','l'], ['p','o','o','r'], ['u','n','f','o','r','t','u','n','a','t','e'] ],

    FiCL |<< "a" |<< "mA"     `intj`    {- <bi'samA> -}        [ unwords [ ['h','o','w'], ['b','a','d'] ], unwords [ ['h','o','w'], ['e','v','i','l'] ], unwords [ ['h','o','w'], ['p','o','o','r'] ], unwords [ ['h','o','w'], ['u','n','f','o','r','t','u','n','a','t','e'] ] ],

    FaCL                      `noun`    {- <ba's> -}           [ ['b','a','d'], ['o','b','j','e','c','t','i','o','n'] ],

    FiCL                      `noun`    {- <bi's> -}           [ ['m','i','s','f','o','r','t','u','n','e'] ],

    FuCL                      `noun`    {- <bu's> -}           [ ['d','e','j','e','c','t','i','o','n'], ['m','i','s','e','r','y'] ]
                              `plural`     FaCLA'
                              `plural`     HaFCuL
                              `plural`     FuCLY
                              `plural`     FuCUL,

    FaCIL                     `adj`     {- <ba'Is> -}          [ ['d','e','j','e','c','t','e','d'], ['m','i','s','e','r','a','b','l','e'] ]
                              `plural`     FuCaLA',

    FACiL                     `adj`     {- <bA'is> -}          [ ['d','e','j','e','c','t','e','d'], ['m','i','s','e','r','a','b','l','e'] ] ]


cluster_70  = cluster

 |> "b ' .g" <| [

    FAL |< aT                 `noun`    {- <bA.gaT> -}         [ ['c','e','l','l','u','l','o','i','d'], unwords [ ['t','o','r','t','o','i','s','e'], ['s','h','e','l','l'] ] ] ]


cluster_71  = cluster

 |> ['b','a','\'','U','n'] <| [

    _____ |< aT               `noun`    {- <ba'UnaT> -}        [ ['B','a','\'','u','n','a'] ]
                           
    `excepts` Diptote ]


cluster_72  = cluster

 |> ['b','a','b','.','g','A','\''] <| [

    _____                     `noun`    {- <bab.gA'> -}        [ ['p','a','r','r','o','t'] ]
                              `plural`     _____ |< At ]

 |> ['b','a','b','b','a','.','g','A','\''] <| [

    _____                     `noun`    {- <babba.gA'> -}      [ ['p','a','r','r','o','t'] ]
                              `plural`     _____ |< At ]


cluster_73  = cluster

 |> "b t t" <| [

    FaCL                      `verb`    {- <batt> -}           [ ['d','e','t','e','r','m','i','n','e'], ['c','o','m','p','l','e','t','e'] ]
                              `imperf`     FuCL
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    FaCCaL                    `verb`    {- <battat> -}         [ ['a','c','c','o','m','p','l','i','s','h'], ['a','d','j','u','d','i','c','a','t','e'] ],

    InFaCL                    `verb`    {- <inbatt> -}         [ unwords [ ['b','e'], ['d','e','c','i','d','e','d'] ], unwords [ ['b','e'], ['r','u','l','e','d'] ] ],

    FaCL                      `noun`    {- <batt> -}           [ ['s','e','t','t','l','e','m','e','n','t'], ['d','e','c','i','s','i','o','n'] ],

    FaCL |<< "aN"             `noun`    {- <battaN> -}         [ ['d','e','f','i','n','i','t','e','l','y'], unwords [ ['o','n','c','e'], ['a','n','d'], ['f','o','r'], ['a','l','l'] ] ],

    FaCL |< aT                `noun`    {- <battaT> -}         [ ['a','d','j','u','d','i','c','a','t','i','o','n'], unwords [ ['f','i','n','a','l'], ['d','e','c','i','s','i','o','n'] ] ],

    FaCL |< aT |<< "aN"       `noun`    {- <battaTaN> -}       [ ['a','b','s','o','l','u','t','e','l','y'] ],

    FaCL |< Iy                `adj`     {- <battIy> -}         [ ['d','e','f','i','n','i','t','e'] ],

    FaCAL |<< "aN"            `noun`    {- <batAtaN> -}        [ ['a','b','s','o','l','u','t','e','l','y'] ],

    FiCL |< Iy |< aT          `noun`    {- <bittIyaT> -}       [ ['b','a','r','r','e','l'], ['t','u','b'] ]
                              `plural`     FaCALI,

    TaFCIL                    `noun`    {- <tabtIt> -}         [ ['a','d','j','u','d','i','c','a','t','i','o','n'], ['a','w','a','r','d'] ]
                              `plural`     TaFCIL |< At,

    FACL                      `adj`     {- <bAtt> -}           [ ['c','a','t','e','g','o','r','i','c','a','l'], ['d','e','f','i','n','i','t','i','v','e'] ],

    MaFCUL                    `adj`     {- <mabtUt> -}         [ ['s','e','v','e','r','e','d'], ['t','e','r','m','i','n','a','t','e','d'] ] ]


cluster_74  = cluster

 |> ['b','i','t','r','A','\''] <| [

    _____                     `noun`    {- <bitrA'> -}         [ ['P','e','t','r','a'] ] ]

 |> ['b','a','t','r','A','\''] <| [

    _____                     `noun`    {- <batrA'> -}         [ ['P','e','t','r','a'] ] ]


cluster_75  = cluster

 |> ['b','i','t','r','U','k','I','m','A','\''] <| [

    _____ |< Iy               `adj`     {- <bitrUkImA'Iy> -}   [ ['p','e','t','r','o','c','h','e','m','i','c','a','l'] ] ]


cluster_76  = cluster

 |> ['b','i','t','r','U','l','i','y','U','m'] <| [

    _____                     `noun`    {- <bitrUliyUm> -}     [ ['p','e','t','r','o','l','e','u','m'] ] ]


cluster_77  = cluster

 |> "b _t _t" <| [

    FaCL                      `verb`    {- <ba_t_t> -}         [ ['t','r','a','n','s','m','i','t'], ['d','i','s','s','e','m','i','n','a','t','e'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL
                              `masdar`     FaCL,

    InFaCL                    `verb`    {- <inba_t_t> -}       [ unwords [ ['b','e'], ['t','r','a','n','s','m','i','t','t','e','d'] ], unwords [ ['b','e'], ['d','i','s','s','e','m','i','n','a','t','e','d'] ] ],

    FaCL                      `noun`    {- <ba_t_t> -}         [ ['b','r','o','a','d','c','a','s','t'], ['t','r','a','n','s','m','i','s','s','i','o','n'], ['d','i','s','s','e','m','i','n','a','t','i','o','n'] ],

    MunFaCL                   `adj`     {- <munba_t_t> -}      [ ['b','r','o','a','d','c','a','s','t'], ['t','r','a','n','s','m','i','t','t','e','d'], ['d','i','s','s','e','m','i','n','a','t','e','d'] ] ]


cluster_78  = cluster

 |> "b .h .h" <| [

    FaCL                      `verb`    {- <ba.h.h> -}         [ unwords [ ['b','e'], ['h','o','a','r','s','e'] ], unwords [ ['b','e'], ['h','a','r','s','h'] ] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL
                              `masdar`     FaCL
                              `masdar`     FaCaL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <ba.h.ha.h> -}      [ unwords [ ['m','a','k','e'], ['h','o','a','r','s','e'] ] ],

    HaFaCL                    `verb`    {- <'aba.h.h> -}       [ unwords [ ['m','a','k','e'], ['h','o','a','r','s','e'] ] ],

    FuCL |< aT                `noun`    {- <bu.h.haT> -}       [ ['h','o','a','r','s','e','n','e','s','s'] ],

    FuCAL                     `noun`    {- <bu.hA.h> -}        [ ['h','o','a','r','s','e','n','e','s','s'] ],

    FaCAL |< aT               `noun`    {- <ba.hA.haT> -}      [ ['h','o','a','r','s','e','n','e','s','s'] ],

    FuCUL |< aT               `noun`    {- <bu.hU.haT> -}      [ ['h','o','a','r','s','e','n','e','s','s'] ],

    HaFaCL                    `adj`     {- <'aba.h.h> -}       [ ['h','o','a','r','s','e'] ]
                              `femini`     FaCLA',

    MaFCUL                    `adj`     {- <mab.hU.h> -}       [ ['h','o','a','r','s','e'] ] ]


cluster_79  = cluster

 |> ['b','a','.','h','r','a','y','n'] <| [

    al >| _____               `noun`    {- <al-ba.hrayn> -}    [ ['B','a','h','r','a','i','n'] ],

    _____ |< Iy               `adj`     {- <ba.hraynIy> -}     [ ['B','a','h','r','a','i','n','i'] ],

    _____ |< Iy               `noun`    {- <ba.hraynIy> -}     [ ['B','a','h','r','a','i','n','i'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_80  = cluster

 |> "b _h _h" <| [

    FaCL                      `verb`    {- <ba_h_h> -}         [ ['s','p','r','i','n','k','l','e'], ['s','p','l','a','t','t','e','r'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCCAL                    `noun`    {- <ba_h_hA_h> -}      [ ['n','o','z','z','l','e'] ]
                              `plural`     FaCCAL |< At,

    FaCCAL |< aT              `noun`    {- <ba_h_hA_haT> -}    [ ['n','o','z','z','l','e'] ]
                              `plural`     FaCCAL |< At,

    FuCayL |< aT              `noun`    {- <bu_hay_haT> -}     [ ['s','q','u','i','r','t'], ['s','y','r','i','n','g','e'] ],

    MiFaCL |< aT              `noun`    {- <miba_h_haT> -}     [ ['n','o','z','z','l','e'], ['s','p','r','a','y','e','r'] ] ]


cluster_81  = cluster

 |> "b d '" <| [

    FaCaL                     `verb`    {- <bada'> -}          [ ['s','t','a','r','t'], ['b','e','g','i','n'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FACaL                     `verb`    {- <bAda'> -}          [ ['i','n','i','t','i','a','t','e'], ['l','e','a','d'] ],

    HaFCaL                    `verb`    {- <'abda'> -}         [ ['i','n','i','t','i','a','t','e'], ['b','e','g','i','n'] ],

    IFtaCaL                   `verb`    {- <ibtada'> -}        [ ['b','e','g','i','n'], ['s','t','a','r','t'] ],

    FaCL                      `noun`    {- <bad'> -}           [ ['s','t','a','r','t'], ['b','e','g','i','n','n','i','n','g'] ],

    FaCL |< aT                `noun`    {- <bad'aT> -}         [ ['b','e','g','i','n','n','i','n','g'], ['s','t','a','r','t'] ],

    FaCIL |< aT               `noun`    {- <badI'aT> -}        [ ['b','e','g','i','n','n','i','n','g'], ['s','t','a','r','t'] ],

    FaCAL |< aT               `noun`    {- <badA'aT> -}        [ ['b','e','g','i','n','n','i','n','g'], ['s','t','a','r','t'] ],

    FiCAy |< aT               `noun`    {- <bidAyaT> -}        [ ['b','e','g','i','n','n','i','n','g'], ['s','t','a','r','t'] ],

    FaCAL |< Iy               `adj`     {- <badA'Iy> -}        [ ['i','n','i','t','i','a','l'], ['o','r','i','g','i','n','a','l'] ],

    FiCAL |< Iy               `adj`     {- <bidA'Iy> -}        [ ['p','r','i','m','i','t','i','v','e'], ['o','r','i','g','i','n','a','l'] ],

    FaCAL |< Iy |< aT         `noun`    {- <badA'IyaT> -}      [ ['p','r','i','m','i','t','i','v','e','n','e','s','s'] ],

    MaFCaL                    `noun`    {- <mabda'> -}         [ ['p','r','i','n','c','i','p','l','e'], ['b','a','s','i','s'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <mabda'Iy> -}       [ ['f','u','n','d','a','m','e','n','t','a','l'], ['b','a','s','i','c'] ],

    MaFCaL |< Iy |<< "aN"     `adj`     {- <mabda'IyaN> -}     [ unwords [ ['i','n'], ['p','r','i','n','c','i','p','l','e'] ] ],

    IFtiCAL                   `noun`    {- <ibtidA'> -}        [ ['b','e','g','i','n','n','i','n','g'], ['s','t','a','r','t'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |<< "aN"          `noun`    {- <ibtidA'aN> -}      [ unwords [ ['b','e','g','i','n','n','i','n','g'], ['f','r','o','m'] ], unwords [ ['a','s'], ['o','f'] ] ],

    IFtiCAL |< Iy             `adj`     {- <ibtidA'Iy> -}      [ ['e','l','e','m','e','n','t','a','r','y'], ['p','r','e','p','a','r','a','t','o','r','y'] ],

    FACiL                     `adj`     {- <bAdi'> -}          [ ['b','e','g','i','n','n','i','n','g'] ],

    MuFtaCiL                  `noun`    {- <mubtadi'> -}       [ ['b','e','g','i','n','n','e','r'] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT,

    MuFtaCiL                  `adj`     {- <mubtadi'> -}       [ ['b','e','g','i','n','n','i','n','g'] ],

    MuFtaCaL                  `noun`    {- <mubtada'> -}       [ ['s','u','b','j','e','c','t'], ['t','o','p','i','c'] ]
                              `plural`     MuFtaCaL |< At,

    MuFtaCaL                  `adj`     {- <mubtada'> -}       [ ['b','e','g','u','n'] ] ]


cluster_82  = cluster

 |> "b d d" <| [

    FaCL                      `verb`    {- <badd> -}           [ ['d','i','s','p','e','r','s','e'], ['d','i','s','t','r','i','b','u','t','e'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCCaL                    `verb`    {- <baddad> -}         [ ['s','q','u','a','n','d','e','r'], ['d','i','s','p','e','r','s','e'] ],

    TaFaCCaL                  `verb`    {- <tabaddad> -}       [ unwords [ ['b','e'], ['s','q','u','a','n','d','e','r','e','d'] ], unwords [ ['b','e'], ['d','i','s','p','e','r','s','e','d'] ] ],

    IstaFaCL                  `verb`    {- <istabadd> -}       [ ['t','y','r','a','n','n','i','z','e'], ['m','o','n','o','p','o','l','i','z','e'] ],

    FuCL                      `noun`    {- <budd> -}           [ ['e','s','c','a','p','e'], ['a','v','o','i','d','i','n','g'] ],

    HaFACIL                   `adj`     {- <'abAdId> -}        [ ['s','c','a','t','t','e','r','e','d'] ],

    TaFCIL                    `noun`    {- <tabdId> -}         [ ['d','e','f','u','s','i','n','g'], ['s','q','u','a','n','d','e','r','i','n','g'], ['d','i','s','p','e','r','s','a','l'] ]
                              `plural`     TaFCIL |< At,

    IstiFCAL                  `noun`    {- <istibdAd> -}       [ ['d','e','s','p','o','t','i','s','m'], ['m','o','n','o','p','o','l','i','z','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    IstiFCAL |< Iy            `adj`     {- <istibdAdIy> -}     [ ['a','r','b','i','t','r','a','r','y'], ['a','u','t','h','o','r','i','t','a','r','i','a','n'] ],

    IstiFCAL |< Iy |< aT      `noun`    {- <istibdAdIyaT> -}   [ ['a','u','t','h','o','r','i','t','a','r','i','a','n','i','s','m'], ['a','u','t','o','c','r','a','c','y'] ],

    MuFaCCiL                  `noun`    {- <mubaddid> -}       [ ['s','q','u','a','n','d','e','r','e','r'], ['s','c','a','t','t','e','r','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MustaFiCL                 `adj`     {- <mustabidd> -}      [ ['a','u','t','o','c','r','a','t','i','c'], ['a','r','b','i','t','r','a','r','y'], ['d','e','s','p','o','t','i','c'] ] ]


cluster_83  = cluster

 |> "b d w" <| [

    FaCA                      `verb`    {- <badA> -}           [ ['a','p','p','e','a','r'], ['s','e','e','m'] ]
                              `imperf`     FCU
                              `masdar`     FuCUL,

    FACY                      `verb`    {- <bAdY> -}           [ ['r','e','v','e','a','l'], ['s','h','o','w'] ],

    HaFCY                     `verb`    {- <'abdY> -}          [ ['e','x','p','r','e','s','s'], ['d','e','m','o','n','s','t','r','a','t','e'], ['s','h','o','w'] ],

    TaFaCCY                   `verb`    {- <tabaddY> -}        [ ['a','p','p','e','a','r'], unwords [ ['b','e'], ['m','a','n','i','f','e','s','t','e','d'] ] ],

    FaCA |< aT                `noun`    {- <badAT> -}          [ ['w','h','i','m'], ['c','a','p','r','i','c','e'] ]
                              `plural`     FaCA |< At,

    FaCA |< Iy                `adj`     {- <badawIy> -}        [ ['B','e','d','o','u','i','n'] ]
                              `plural`     FaCA |< Iy |< Un
                              `plural`     FaCL
                              `plural`     FuCA |< aT,

    FaCAL |< aT               `noun`    {- <badAwaT> -}        [ unwords [ ['d','e','s','e','r','t'], ['l','i','f','e'] ], ['n','o','m','a','d','i','s','m'], unwords [ ['B','e','d','o','u','i','n'], ['l','i','f','e'] ] ],

    HiFCA'                    `noun`    {- <'ibdA'> -}         [ ['e','x','p','r','e','s','s','i','o','n'], ['m','a','n','i','f','e','s','t','a','t','i','o','n'] ]
                              `plural`     HiFCA' |< At,

    FACI                      `adj`     {- <bAdI> -}           [ ['a','p','p','a','r','e','n','t'], ['o','b','v','i','o','u','s'] ],

    FACI |< aT                `noun`    {- <bAdiyaT> -}        [ ['d','e','s','e','r','t'] ],

    FawACI                    `noun`    {- <bawAdI> -}         [ ['n','o','m','a','d','s'], ['B','e','d','o','u','i','n','s'] ]
                              `plural`     FawACI
                           
    `limited` "-------P--",

    MuFCI                     `adj`     {- <mubdI> -}          [ ['e','x','p','r','e','s','s','i','n','g'], ['s','h','o','w','i','n','g'], ['d','e','m','o','n','s','t','r','a','t','i','n','g'] ] ]


cluster_84  = cluster

 |> "b _d '" <| [

    FaCaL                     `verb`    {- <ba_da'> -}         [ ['r','e','v','i','l','e'], ['a','b','u','s','e'] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <ba_di'> -}         [ unwords [ ['b','e'], ['s','h','a','m','e','l','e','s','s'] ], unwords [ ['b','e'], ['o','b','s','c','e','n','e'] ] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <ba_du'> -}         [ unwords [ ['b','e'], ['s','h','a','m','e','l','e','s','s'] ], unwords [ ['b','e'], ['o','b','s','c','e','n','e'] ] ]
                              `imperf`     FCuL,

    FaCIL                     `adj`     {- <ba_dI'> -}         [ ['d','i','s','g','u','s','t','i','n','g'], ['o','b','s','c','e','n','e'] ],

    FaCAL                     `noun`    {- <ba_dA'> -}         [ ['o','b','s','c','e','n','i','t','y'], ['c','o','n','t','e','m','p','t'] ] ]


cluster_85  = cluster

 |> "b _d _d" <| [

    FaCL                      `verb`    {- <ba_d_d> -}         [ ['s','u','r','p','a','s','s'], ['b','e','a','t'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCL                      `adj`     {- <ba_d_d> -}         [ ['s','l','o','v','e','n','l','y'], ['s','q','u','a','l','i','d'] ],

    FACL                      `adj`     {- <bA_d_d> -}         [ ['s','l','o','v','e','n','l','y'], ['s','q','u','a','l','i','d'] ],

    FaCAL |< aT               `noun`    {- <ba_dA_daT> -}      [ ['s','l','o','v','e','n','l','i','n','e','s','s'], ['s','q','u','a','l','o','r'] ] ]


cluster_86  = cluster

 |> "b r '" <| [

    FaCaL                     `verb`    {- <bara'> -}          [ ['c','r','e','a','t','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FACiL                     `adj`     {- <bAri'> -}          [ ['c','r','e','a','t','i','n','g'] ],

    FACiL                     `noun`    {- <bAri'> -}          [ ['C','r','e','a','t','o','r'] ],

    FaCL                      `noun`    {- <bar'> -}           [ ['c','r','e','a','t','i','o','n'] ] ]

 |> "b r '" <| [

    FuCUL                     `noun`    {- <burU'> -}          [ ['r','e','c','o','v','e','r','y'], ['c','o','n','v','a','l','e','s','c','e','n','c','e'] ],

    FaCiL                     `verb`    {- <bari'> -}          [ unwords [ ['b','e'], ['a','b','s','o','l','v','e','d'] ], ['r','e','c','o','v','e','r'] ]
                              `imperf`     FCaL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <barra'> -}         [ ['a','b','s','o','l','v','e'], ['e','x','o','n','e','r','a','t','e'], ['p','a','r','d','o','n'] ],

    HaFCaL                    `verb`    {- <'abra'> -}         [ ['a','c','q','u','i','t'], ['a','b','s','o','l','v','e'], ['e','x','o','n','e','r','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <tabarra'> -}       [ unwords [ ['b','e'], ['a','b','s','o','l','v','e','d'] ], unwords [ ['b','e'], ['i','n','n','o','c','e','n','t'] ] ],

    IstaFCaL                  `verb`    {- <istabra'> -}       [ unwords [ ['r','e','s','t','o','r','e'], ['t','o'], ['h','e','a','l','t','h'] ], unwords [ ['b','e'], ['e','m','a','n','c','i','p','a','t','e','d'] ] ],

    FuCL                      `noun`    {- <bur'> -}           [ ['r','e','c','o','v','e','r','y'], ['c','o','n','v','a','l','e','s','c','e','n','c','e'] ]
                              `plural`     FuCUL,

    FaCIL                     `adj`     {- <barI'> -}          [ ['i','n','n','o','c','e','n','t'], ['e','x','e','m','p','t'] ]
                              `plural`     FuCAL
                              `plural`     FaCAL
                              `plural`     FaCIL |< Un
                              `plural`     HaFCiyA',

    FaCAL |< aT               `noun`    {- <barA'aT> -}        [ ['i','n','n','o','c','e','n','c','e'] ]
                              `plural`     FaCAL |< At,

    FaCAL |< aT               `noun`    {- <barA'aT> -}        [ ['l','i','c','e','n','s','e'], ['p','a','t','e','n','t'] ]
                              `plural`     FaCAL |< At,

    TaFCiL |< aT              `noun`    {- <tabri'aT> -}       [ ['e','x','e','m','p','t','i','o','n'], ['a','c','q','u','i','t','t','a','l'] ],

    MuFACaL |< aT             `noun`    {- <mubAra'aT> -}      [ ['d','i','v','o','r','c','e'] ]
                              `plural`     MuFACaL |< At,

    HiFCAL                    `noun`    {- <'ibrA'> -}         [ ['a','c','q','u','i','t','t','a','l'], ['e','x','o','n','e','r','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    IstiFCAL                  `noun`    {- <istibrA'> -}       [ ['p','u','r','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At ]


cluster_87  = cluster

 |> ['b','A','r','a','^','g','u','w','A','y'] <| [

    _____                     `xtra`    {- <bAra^guwAy> -}     [ ['P','a','r','a','g','u','a','y'] ] ]

 |> ['b','A','r','a','^','g','u','w','A','\''] <| [

    _____ |< Iy               `adj`     {- <bAra^guwA'Iy> -}   [ ['P','a','r','a','g','u','a','y','a','n'] ] ]


cluster_88  = cluster

 |> "b r r" <| [

    FuCL                      `noun`    {- <burr> -}           [ ['w','h','e','a','t'] ] ]

 |> "b r r" <| [

    FaCLAn |< Iy              `adj`     {- <barrAnIy> -}       [ ['e','x','t','e','r','i','o','r'], ['e','x','t','e','r','n','a','l'] ],

    FaCL |< Iy |< aT          `noun`    {- <barrIyaT> -}       [ unwords [ ['o','p','e','n'], ['c','o','u','n','t','r','y'] ], ['s','t','e','p','p','e'] ],

    FaCL |< Iy                `adj`     {- <barrIy> -}         [ ['l','a','n','d'], ['r','u','r','a','l'] ],

    FaCL                      `noun`    {- <barr> -}           [ ['l','a','n','d'], ['e','a','r','t','h'] ],

    FaCL |<< "aN"             `noun`    {- <barraN> -}         [ unwords [ ['b','y'], ['l','a','n','d'] ] ] ]

 |> "b r r" <| [

    FaCL                      `verb`    {- <barr> -}           [ unwords [ ['b','e'], ['c','h','a','r','i','t','a','b','l','e'] ], unwords [ ['b','e'], ['d','e','v','o','t','e','d'] ] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL
                              `masdar`     FiCL,

    FaCCaL                    `verb`    {- <barrar> -}         [ ['j','u','s','t','i','f','y'], ['w','a','r','r','a','n','t'], ['v','i','n','d','i','c','a','t','e'], ['a','c','q','u','i','t'] ],

    HaFaCL                    `verb`    {- <'abarr> -}         [ ['f','u','l','f','i','l','l'] ],

    TaFaCCaL                  `verb`    {- <tabarrar> -}       [ unwords [ ['b','e'], ['j','u','s','t','i','f','i','e','d'] ], unwords [ ['b','e'], ['l','e','g','i','t','i','m','i','z','e','d'] ] ],

    FiCL                      `noun`    {- <birr> -}           [ ['c','h','a','r','i','t','y'], ['p','i','e','t','y'] ],

    FACL                      `adj`     {- <bArr> -}           [ ['p','i','o','u','s'], ['c','h','a','r','i','t','a','b','l','e'] ]
                              `plural`     FACL |< Un
                              `plural`     HaFCAL
                              `plural`     FaCaL |< aT,

    MaFaCL |< aT              `noun`    {- <mabarraT> -}       [ ['c','h','a','r','i','t','y'], ['b','e','n','e','f','a','c','t','i','o','n'] ]
                              `plural`     MaFACL,

    TaFCIL                    `noun`    {- <tabrIr> -}         [ ['j','u','s','t','i','f','i','c','a','t','i','o','n'], ['p','r','e','t','e','x','t'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL |<< "aN"           `noun`    {- <tabrIraN> -}       [ unwords [ ['i','n'], ['j','u','s','t','i','f','i','c','a','t','i','o','n'] ], unwords [ ['a','s'], "a", ['p','r','e','t','e','x','t'] ] ],

    TaFCIL |< Iy              `adj`     {- <tabrIrIy> -}       [ ['j','u','s','t','i','f','y','i','n','g'], ['e','x','t','e','n','u','a','t','i','n','g'] ],

    MaFCUL                    `adj`     {- <mabrUr> -}         [ ['b','l','e','s','s','e','d'] ],

    MuFaCCiL                  `noun`    {- <mubarrir> -}       [ ['e','x','c','u','s','e'], ['j','u','s','t','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCiL                  `adj`     {- <mubarrir> -}       [ ['j','u','s','t','i','f','y','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <mubarrar> -}       [ ['j','u','s','t','i','f','i','e','d'] ] ]


cluster_89  = cluster

 |> "b r .g y" <| [

    KuRDI                     `noun`    {- <bur.gI> -}         [ ['s','c','r','e','w'] ]
                              `plural`     KaRADI ]


cluster_90  = cluster

 |> ['b','A','r','A','n','U','y','A'] <| [

    _____                     `noun`    {- <bArAnUyA> -}       [ ['p','a','r','a','n','o','i','a'] ] ]


cluster_91  = cluster

 |> "b r w" <| [

    FaCL |< aT                `noun`    {- <barwaT> -}         [ ['w','a','s','t','e'], ['s','c','r','a','p'] ]
                              `plural`     FaCA |< At ]


cluster_92  = cluster

 |> "b r w z" <| [

    KaRDaS                    `verb`    {- <barwaz> -}         [ ['f','r','a','m','e'] ],

    KaRDAS                    `noun`    {- <barwAz> -}         [ ['f','r','a','m','e'] ]
                              `plural`     KaRADIS ]


cluster_93  = cluster

 |> "b r y" <| [

    FaCY                      `verb`    {- <barY> -}           [ ['s','h','a','r','p','e','n'], ['t','r','i','m'], unwords [ ['w','e','a','r'], ['o','u','t'] ] ]
                              `imperf`     FCI,

    FACY                      `verb`    {- <bArY> -}           [ ['c','h','a','l','l','e','n','g','e'], ['c','o','n','f','r','o','n','t'] ],

    TaFACY                    `verb`    {- <tabArY> -}         [ ['c','h','a','l','l','e','n','g','e'], ['c','o','n','f','r','o','n','t'] ],

    InFaCY                    `verb`    {- <inbarY> -}         [ unwords [ ['b','e'], ['s','h','a','r','p','e','n','e','d'] ], unwords [ ['b','e'], ['t','i','r','e','d'] ] ],

    FaCIL |< aT               `noun`    {- <barIyaT> -}        [ ['c','r','e','a','t','i','o','n'], ['c','r','e','a','t','u','r','e'] ]
                              `plural`     FaCALY,

    FaCY                      `noun`    {- <barY> -}           [ ['d','u','s','t'], ['e','a','r','t','h'] ],

    FaCCAL |< aT              `noun`    {- <barrAyaT> -}       [ ['s','h','a','r','p','e','n','e','r'] ],

    MiFCY |< aT               `noun`    {- <mibrAT> -}         [ ['s','h','a','r','p','e','n','e','r'], unwords [ ['p','o','c','k','e','t'], "-", ['k','n','i','f','e'] ] ],

    MuFACY |< aT              `noun`    {- <mubArAT> -}        [ ['m','a','t','c','h'], ['g','a','m','e'], ['c','o','m','p','e','t','i','t','i','o','n'] ]
                              `plural`     MuFACY |< At,

    MutaFACI                  `noun`    {- <mutabArI> -}       [ ['p','a','r','t','i','c','i','p','a','n','t'], ['c','o','m','p','e','t','i','t','o','r'] ]
                              `plural`     MutaFACI |< Un
                              `femini`     MutaFACI |< aT ]


cluster_94  = cluster

 |> ['b','U','r','I','y'] <| [

    _____                     `noun`    {- <bUrIy> -}          [ ['b','u','g','l','e'], unwords [ ['s','i','g','n','a','l'], ['h','o','r','n'] ] ]
                              `plural`     _____ |< At ]


cluster_95  = cluster

 |> ['b','A','r','i','y','U','m'] <| [

    _____                     `noun`    {- <bAriyUm> -}        [ ['b','a','r','i','u','m'] ] ]


cluster_96  = cluster

 |> ['b','U','r','^','g','u','w','A','z'] <| [

    _____ |< Iy               `adj`     {- <bUr^guwAzIy> -}    [ ['b','o','u','r','g','e','o','i','s'] ],

    _____ |< Iy |< aT         `noun`    {- <bUr^guwAzIyaT> -}  [ ['b','o','u','r','g','e','o','i','s','i','e'] ] ]


cluster_97  = cluster

 |> ['b','i','r','_','d','a','w','n'] <| [

    _____                     `noun`    {- <bir_dawn> -}       [ unwords [ ['w','o','r','k'], ['h','o','r','s','e'] ], ['n','a','g'] ] ]


cluster_98  = cluster

 |> ['b','a','r','m','A','\''] <| [

    _____ |< Iy               `adj`     {- <barmA'Iy> -}       [ ['a','m','p','h','i','b','i','o','u','s'] ] ]


cluster_99  = cluster

 |> ['b','u','r','n','a','y','.','t'] <| [

    _____ |< aT               `noun`    {- <burnay.taT> -}     [ unwords [ "(", ['W','e','s','t','e','r','n'], ")", ['h','a','t'] ] ] ]


cluster_100 = cluster

 |> ['b','I','r','w','A','n'] <| [

    _____ |< Iy               `adj`     {- <bIrwAnIy> -}       [ ['P','e','r','u','v','i','a','n'] ],

    _____ |< Iy               `noun`    {- <bIrwAnIy> -}       [ ['P','e','r','u','v','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


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
