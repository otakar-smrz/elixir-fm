
module Elixir.Data.Moony.Regular.Q (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> "q n .s l" <| [

    KuRDuS                    `noun`    {- <qun.sul> -}        [ ['c','o','n','s','u','l'] ]
                              `plural`     KaRADiS,

    KuRDuS |< Iy              `adj`     {- <qun.sulIy> -}      [ ['c','o','n','s','u','l','a','r'] ],

    KuRDuS |< Iy |< aT        `noun`    {- <qun.sulIyaT> -}    [ ['c','o','n','s','u','l','a','t','e'] ]
                              `plural`     KuRDuS |< Iy |< At ]


cluster_2   = cluster

 |> "q n .t" <| [

    FaCiL                     `verb`    {- <qani.t> -}         [ ['d','e','s','p','a','i','r'], unwords [ ['l','o','s','e'], ['c','o','u','r','a','g','e'] ] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <qanu.t> -}         [ ['d','e','s','p','a','i','r'], unwords [ ['l','o','s','e'], ['c','o','u','r','a','g','e'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qanna.t> -}        [ ['d','i','s','c','o','u','r','a','g','e'], unwords [ ['d','r','i','v','e'], ['t','o'], ['d','e','s','p','a','i','r'] ] ],

    HaFCaL                    `verb`    {- <'aqna.t> -}        [ ['d','i','s','c','o','u','r','a','g','e'], unwords [ ['d','r','i','v','e'], ['t','o'], ['d','e','s','p','a','i','r'] ] ],

    FaCaL                     `noun`    {- <qana.t> -}         [ ['d','e','s','p','a','i','r'], ['h','o','p','e','l','e','s','s','n','e','s','s'] ],

    FuCUL                     `noun`    {- <qunU.t> -}         [ ['d','e','s','p','a','i','r'], ['h','o','p','e','l','e','s','s','n','e','s','s'] ],

    FaCiL                     `adj`     {- <qani.t> -}         [ ['d','e','s','p','o','n','d','e','n','t'], ['d','i','s','c','o','u','r','a','g','e','d'] ],

    FaCUL                     `adj`     {- <qanU.t> -}         [ ['d','e','s','p','o','n','d','e','n','t'], ['d','i','s','c','o','u','r','a','g','e','d'] ],

    FACiL                     `adj`     {- <qAni.t> -}         [ ['d','e','s','p','a','i','r','i','n','g'], ['d','i','s','c','o','u','r','a','g','e','d'] ] ]


cluster_3   = cluster

 |> "q n .t r" <| [

    KaRDaS                    `verb`    {- <qan.tar> -}        [ ['a','r','c','h'], ['s','p','a','n'], ['v','a','u','l','t'] ],

    KaRDaS |< aT              `noun`    {- <qan.taraT> -}      [ ['a','q','u','e','d','u','c','t'], ['b','r','i','d','g','e'] ]
                              `plural`     KaRADiS,

    KaRADiS                   `noun`    {- <qanA.tir> -}       [ ['Q','a','n','a','t','i','r'] ],

    KaRDaS |< Iy              `adj`     {- <qan.tarIy> -}      [ ['a','r','c','h','e','d'], ['v','a','u','l','t','e','d'], ['a','r','c','a','d','e','d'] ],

    MuKaRDaS                  `adj`     {- <muqan.tar> -}      [ ['a','r','c','h','e','d'], ['v','a','u','l','t','e','d'], ['a','r','c','a','d','e','d'] ],

    KiRDAS                    `noun`    {- <qin.tAr> -}        [ unwords [ ['q','a','n','t','a','r'], "(", ['w','e','i','g','h','t'], ['m','e','a','s','u','r','e'], ")" ] ]
                              `plural`     KaRADIS,

    KiRDAS |< Iy              `adj`     {- <qin.tArIy> -}      [ unwords [ ['m','u','l','t','i'], "-", ['m','i','l','l','i','o','n','a','i','r','e'] ] ] ]


cluster_4   = cluster

 |> "q n `" <| [

    FaCiL                     `verb`    {- <qani`> -}          [ unwords [ ['b','e'], ['c','o','n','v','i','n','c','e','d'] ], unwords [ ['b','e'], ['s','a','t','i','s','f','i','e','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <qanna`> -}         [ ['c','o','n','v','i','n','c','e'], ['p','e','r','s','u','a','d','e'] ],

    HaFCaL                    `verb`    {- <'aqna`> -}         [ ['p','e','r','s','u','a','d','e'], ['c','o','n','v','i','n','c','e'] ],

    TaFaCCaL                  `verb`    {- <taqanna`> -}       [ unwords [ ['b','e'], ['c','o','n','c','e','a','l','e','d'] ], unwords [ ['b','e'], ['v','e','i','l','e','d'] ] ],

    IFtaCaL                   `verb`    {- <iqtana`> -}        [ unwords [ ['b','e'], ['c','o','n','v','i','n','c','e','d'] ], unwords [ ['b','e'], ['p','e','r','s','u','a','d','e'] ], unwords [ ['b','e'], ['c','o','n','t','e','n','t'] ] ],

    FuCLAn                    `noun`    {- <qun`An> -}         [ ['s','a','t','i','s','f','a','c','t','i','o','n'], ['c','o','n','t','e','n','t','m','e','n','t'] ],

    FuCLAn                    `noun`    {- <qun`An> -}         [ ['b','e','l','i','e','f'], ['c','o','n','v','i','c','t','i','o','n'] ],

    FiCL                      `noun`    {- <qin`> -}           [ ['w','e','a','p','o','n','s'], ['a','r','m','o','r'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <qana`> -}          [ ['c','o','n','t','e','n','t','m','e','n','t'], ['t','e','m','p','e','r','a','n','c','e'] ],

    FaCAL |< aT               `noun`    {- <qanA`aT> -}        [ ['s','a','t','i','s','f','a','c','t','i','o','n'], ['m','o','d','e','r','a','t','i','o','n'] ],

    FaCiL                     `adj`     {- <qani`> -}          [ ['s','a','t','i','s','f','i','e','d'], ['m','o','d','e','r','a','t','e'] ],

    FiCAL                     `noun`    {- <qinA`> -}          [ ['w','e','a','p','o','n','s'], ['a','r','m','o','r'], ['m','a','s','k'] ]
                              `plural`     FuCuL,

    HaFCiL |< aT              `noun`    {- <'aqni`aT> -}       [ ['v','e','i','l','s'], ['m','a','s','k','s'] ]
                              `plural`     FiCAL |< At,

    FaCUL                     `adj`     {- <qanU`> -}          [ ['s','a','t','i','s','f','i','e','d'], ['m','o','d','e','s','t'] ],

    MaFCaL                    `noun`    {- <maqna`> -}         [ ['e','n','o','u','g','h'], ['s','u','f','f','i','c','i','e','n','t'] ],

    HiFCAL                    `noun`    {- <'iqnA`> -}         [ ['p','e','r','s','u','a','s','i','o','n'], ['c','o','n','v','i','n','c','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL                    `noun`    {- <'iqnA`> -}         [ ['b','e','l','i','e','f'], ['c','o','n','v','i','c','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <taqannu`> -}       [ ['m','a','s','q','u','e','r','a','d','e'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <iqtinA`> -}        [ ['b','e','l','i','e','f'], ['c','o','n','v','i','c','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <qAni`> -}          [ ['s','a','t','i','s','f','i','e','d'], ['c','o','n','t','e','n','t'] ],

    MuFaCCaL                  `adj`     {- <muqanna`> -}       [ ['m','a','s','k','e','d'], ['v','e','i','l','e','d'] ],

    MuFCiL                    `adj`     {- <muqni`> -}         [ ['c','o','n','v','i','n','c','i','n','g'], ['p','e','r','s','u','a','s','i','v','e'] ],

    MuFtaCiL                  `adj`     {- <muqtani`> -}       [ ['s','a','t','i','s','f','i','e','d'], ['c','o','n','t','e','n','t'], ['c','o','n','v','i','n','c','e','d'] ] ]


cluster_5   = cluster

 |> "q n f _d" <| [

    KuRDuS                    `noun`    {- <qunfu_d> -}        [ ['h','e','d','g','e','h','o','g'] ]
                              `plural`     KaRADiS ]


cluster_6   = cluster

 |> "q n q r" <| [

    KaRDaS                    `noun`    {- <qanqar> -}         [ ['k','a','n','g','a','r','o','o'] ] ]


cluster_7   = cluster

 |> ['q','a','n','A','l'] <| [

    _____                     `noun`    {- <qanAl> -}          [ unwords [ ['c','h','a','n','n','e','l'], "(", ['T','V'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_8   = cluster

 |> "q n m" <| [

    FaCiL                     `verb`    {- <qanim> -}          [ unwords [ ['b','e','c','o','m','e'], ['r','a','n','c','i','d'] ] ]
                              `imperf`     FCaL,

    FaCaL                     `noun`    {- <qanam> -}          [ ['r','a','n','c','i','d'] ],

    FaCCUL |< aT              `noun`    {- <qannUmaT> -}       [ unwords [ ['q','a','n','n','u','m','a'], "(", ['s','a','c','r','e','d'], ['f','i','s','h'], ['i','n'], ['a','n','c','i','e','n','t'], ['E','g','y','p','t'], ")" ] ],

    HuFCUL                    `noun`    {- <'uqnUm> -}         [ unwords [ ['h','y','p','o','s','t','a','s','i','s'], "(", ['p','e','r','s','o','n'], ['o','f'], ['t','h','e'], ['T','r','i','n','i','t','y'], ")" ], unwords [ ['b','a','s','i','c'], ['e','l','e','m','e','n','t'] ] ]
                              `plural`     HaFACIL ]


cluster_9   = cluster

 |> ['q','a','n','d','a','l','a','f','t'] <| [

    _____                     `noun`    {- <qandalaft> -}      [ ['Q','a','n','d','a','l','a','f','t'] ],

    _____                     `noun`    {- <qandalaft> -}      [ ['s','e','x','t','o','n'], ['s','a','c','r','i','s','t','a','n'] ],

    _____ |< Iy               `noun`    {- <qandalaftIy> -}    [ ['s','e','x','t','o','n'], ['s','a','c','r','i','s','t','a','n'] ] ]


cluster_10  = cluster

 |> ['q','a','n','d','a','h','A','r'] <| [

    _____                     `noun`    {- <qandahAr> -}       [ ['K','a','n','d','a','h','a','r'], ['Q','a','n','d','a','h','a','r'] ],

    _____ |< Iy               `adj`     {- <qandahArIy> -}     [ unwords [ ['f','r','o','m'], "/", ['o','f'], ['K','a','n','d','a','h','a','r'] ] ] ]


cluster_11  = cluster

 |> ['q','u','n','.','s','u','l','A','t','U'] <| [

    _____                     `noun`    {- <qun.sulAtU> -}     [ ['c','o','n','s','u','l','a','t','e'] ] ]


cluster_12  = cluster

 |> ['q','a','n','.','t','a','r','m'] <| [

    _____ |< aT               `noun`    {- <qan.tarmaT> -}     [ ['s','n','a','f','f','l','e'], ['b','r','i','d','l','e'] ] ]


cluster_13  = cluster

 |> ['q','i','n','n','a','b'] <| [

    _____                     `noun`    {- <qinnab> -}         [ ['h','e','m','p'] ],

    _____ |< Iy               `adj`     {- <qinnabIy> -}       [ ['h','e','m','p','e','n'], ['h','e','m','p'] ] ]


cluster_14  = cluster

 |> ['q','u','n','n','a','b','I','.','t'] <| [

    _____                     `noun`    {- <qunnabI.t> -}      [ ['c','a','u','l','i','f','l','o','w','e','r'] ] ]


cluster_15  = cluster

 |> "q h r" <| [

    FaCaL                     `verb`    {- <qahar> -}          [ ['d','e','f','e','a','t'], ['o','v','e','r','p','o','w','e','r'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCL                      `noun`    {- <qahr> -}           [ ['s','u','b','j','u','g','a','t','i','o','n'], ['c','o','e','r','c','i','o','n'] ],

    FaCL |<< "aN"             `noun`    {- <qahraN> -}         [ ['f','o','r','c','i','b','l','y'], unwords [ ['b','y'], ['f','o','r','c','e'] ] ],

    FuCL |< aT                `noun`    {- <quhraT> -}         [ ['c','o','e','r','c','i','o','n'], ['f','o','r','c','e'] ],

    FaCL |< Iy                `adj`     {- <qahrIy> -}         [ ['f','o','r','c','e','d'], ['c','o','m','p','u','l','s','o','r','y'] ],

    FaCL |<< "a" |<< "mAn"    `noun`    {- <qahramAn> -}       [ unwords [ ['h','o','u','s','e','h','o','l','d'], ['m','a','n','a','g','e','r'] ], ['b','u','t','l','e','r'], ['h','o','u','s','e','k','e','e','p','e','r'] ],

    FaCCAL                    `adj`     {- <qahhAr> -}         [ ['c','o','n','q','u','e','r','i','n','g'], unwords [ ['v','a','n','q','u','i','s','h','i','n','g'], "(", ['G','o','d'], ")" ] ],

    FaCCAL                    `noun`    {- <qahhAr> -}         [ ['Q','a','h','h','a','r'] ],

    FACiL                     `adj`     {- <qAhir> -}          [ ['o','v','e','r','p','o','w','e','r','i','n','g'] ],

    FACiL                     `noun`    {- <qAhir> -}          [ ['M','a','r','s'] ],

    FACiL |< aT               `noun`    {- <qAhiraT> -}        [ ['C','a','i','r','o'] ],

    FACiL |< Iy               `adj`     {- <qAhirIy> -}        [ ['C','a','i','r','e','n','e'] ],

    MaFCUL                    `adj`     {- <maqhUr> -}         [ ['d','e','f','e','a','t','e','d'], ['h','u','m','i','l','i','a','t','e','d'], unwords [ ['d','o','w','n'], "-", ['a','n','d'], "-", ['o','u','t'] ] ] ]


cluster_16  = cluster

 |> "q h q r" <| [

    KaRDaS                    `verb`    {- <qahqar> -}         [ ['r','e','t','r','e','a','t'], ['w','i','t','h','d','r','a','w'] ],

    TaKaRDaS                  `verb`    {- <taqahqar> -}       [ ['d','e','t','e','r','i','o','r','a','t','e'], ['d','e','c','l','i','n','e'] ],

    KaRDaS |< aT              `noun`    {- <qahqaraT> -}       [ ['d','e','c','l','i','n','e'], ['r','e','t','r','e','a','t'] ],

    KaRDaSY                   `noun`    {- <qahqarY> -}        [ ['r','e','t','r','e','a','t'], ['w','i','t','h','d','r','a','w','a','l'] ],

    TaKaRDuS                  `noun`    {- <taqahqur> -}       [ ['r','e','c','e','s','s','i','o','n'], ['r','e','t','r','e','a','t'] ]
                              `plural`     TaKaRDuS |< At ]


cluster_17  = cluster

 |> "q h q h" <| [

    KaRDaS                    `verb`    {- <qahqah> -}         [ ['l','a','u','g','h'], ['g','u','f','f','a','w'] ],

    KaRDaS |< aT              `noun`    {- <qahqahaT> -}       [ ['l','a','u','g','h','t','e','r'] ],

    MuKaRDiS                  `adj`     {- <muqahqih> -}       [ ['l','a','u','g','h','i','n','g'] ],

    MuKaRDiS                  `adj`     {- <muqahqih> -}       [ ['h','i','l','a','r','i','o','u','s'] ] ]


cluster_18  = cluster

 |> ['k','a'] <| [

    _____                     `prep`    {- <ka> -}             [ ['a','s'], ['l','i','k','e'] ],

    _____ |<< "mA"            `conj`    {- <kamA> -}           [ ['a','n','d'], ['a','s'], ['a','l','s','o'] ],

    _____ |<< "_d_alika"      `adv`     {- <ka_d_alika> -}     [ ['l','i','k','e','w','i','s','e'], ['a','l','s','o'] ],

    _____ |<< "_dA"           `conj`    {- <ka_dA> -}          [ ['t','h','u','s'] ],

    _____ |<< "_dA"           `pron`    {- <ka_dA> -}          [ ['s','u','c','h'], unwords [ ['a','s'], ['s','u','c','h'] ] ],

    "h_a" >>| _____ |<< "_dA" `conj`    {- <h_aka_dA> -}       [ ['t','h','u','s'] ],

    "h_a" >>| _____ |<< "_dA" `pron`    {- <h_aka_dA> -}       [ ['s','u','c','h'], unwords [ ['a','s'], ['s','u','c','h'] ] ] ]


cluster_19  = cluster

 |> ['k','U','b'] <| [

    _____ |<< "A"             `xtra`    {- <kUbA> -}           [ ['C','u','b','a'] ],

    _____ |< Iy               `adj`     {- <kUbIy> -}          [ ['C','u','b','a','n'] ] ]


cluster_20  = cluster

 |> "k b t" <| [

    FaCaL                     `verb`    {- <kabat> -}          [ ['s','t','i','f','l','e'], ['r','e','p','r','e','s','s'], ['s','u','p','p','r','e','s','s'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <kabt> -}           [ ['s','u','p','p','r','e','s','s','i','o','n'], ['r','e','p','r','e','s','s','i','o','n'] ],

    MaFCUL                    `adj`     {- <makbUt> -}         [ ['s','t','i','f','l','e','d'], ['s','u','b','d','u','e','d'], ['r','e','p','r','e','s','s','e','d'] ],

    FaCCUL                    `noun`    {- <kabbUt> -}         [ ['h','o','o','d'] ]
                              `plural`     FaCACIL ]


cluster_21  = cluster

 |> "k b t l" <| [

    KaRDUS |< aT              `noun`    {- <kabtUlaT> -}       [ ['l','u','m','p'], ['c','h','u','n','k'], ['p','e','l','l','e','t'] ],

    MuKaRDaS                  `adj`     {- <mukabtal> -}       [ ['r','o','u','n','d'] ] ]


cluster_22  = cluster

 |> ['k','I','b','U','t','s'] <| [

    _____                     `noun`    {- <kIbUts> -}         [ ['k','i','b','b','u','t','z'] ] ]


cluster_23  = cluster

 |> "k b .h" <| [

    FaCaL                     `verb`    {- <kaba.h> -}         [ ['c','o','n','t','r','o','l'], ['p','r','e','v','e','n','t'], ['r','e','s','t','r','a','i','n'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <kab.h> -}          [ ['c','u','r','b','i','n','g'], ['c','h','e','c','k','i','n','g'], ['r','e','s','t','r','a','i','n','i','n','g'] ],

    MiFCaL                    `noun`    {- <mikba.h> -}        [ ['b','r','a','k','e'], ['r','e','s','t','r','a','i','n','e','r'] ]
                              `plural`     MiFCaL |< At ]


cluster_24  = cluster

 |> "k b d" <| [

    FaCaL                     `verb`    {- <kabad> -}          [ ['a','f','f','l','i','c','t'], unwords [ ['w','e','a','r'], ['d','o','w','n'] ] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <kabbad> -}         [ ['i','n','f','l','i','c','t'] ],

    TaFaCCaL                  `verb`    {- <takabbad> -}       [ ['s','u','f','f','e','r'], ['s','u','s','t','a','i','n'], ['u','n','d','e','r','g','o'] ],

    FaCiL                     `noun`    {- <kabid> -}          [ ['l','i','v','e','r'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FuCAL                     `noun`    {- <kubAd> -}          [ unwords [ ['l','i','v','e','r'], ['a','i','l','m','e','n','t'] ] ],

    FaCCAL                    `noun`    {- <kabbAd> -}         [ ['c','i','t','r','u','s'] ],

    TaFCIL                    `noun`    {- <takbId> -}         [ ['i','n','f','l','i','c','t','i','n','g'], ['e','x','a','c','t','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_25  = cluster

 |> "k b r" <| [

    FaCaL                     `verb`    {- <kabar> -}          [ unwords [ ['g','r','o','w'], ['o','l','d','e','r'] ], ['i','n','c','r','e','a','s','e'], ['a','u','g','m','e','n','t'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <kabbar> -}         [ ['m','a','g','n','i','f','y'], ['a','m','p','l','i','f','y'] ],

    FACaL                     `verb`    {- <kAbar> -}          [ unwords [ ['c','o','n','t','e','n','d'], ['w','i','t','h'] ] ],

    HaFCaL                    `verb`    {- <'akbar> -}         [ ['m','a','g','n','i','f','y'] ],

    TaFaCCaL                  `verb`    {- <takabbar> -}       [ unwords [ ['b','e'], ['h','a','u','g','h','t','y'] ] ],

    TaFACaL                   `verb`    {- <takAbar> -}        [ unwords [ ['b','e'], ['h','a','u','g','h','t','y'] ] ],

    IstaFCaL                  `verb`    {- <istakbar> -}       [ unwords [ ['b','e'], ['a','r','r','o','g','a','n','t'] ] ],

    FiCL                      `noun`    {- <kibr> -}           [ ['g','r','e','a','t','n','e','s','s'] ],

    FuCL                      `noun`    {- <kubr> -}           [ ['m','a','g','n','i','t','u','d','e'] ],

    FiCaL                     `noun`    {- <kibar> -}          [ ['g','r','a','n','d','e','u','r'] ],

    FaCL |< aT                `noun`    {- <kabraT> -}         [ unwords [ ['o','l','d'], ['a','g','e'] ] ],

    FaCIL                     `adj`     {- <kabIr> -}          [ ['l','a','r','g','e'], ['g','r','e','a','t'], ['i','m','p','o','r','t','a','n','t'], ['s','e','n','i','o','r'], ['a','d','u','l','t','s'] ]
                              `plural`     FiCAL
                              `plural`     FuCaLA',

    FaCIL |< aT               `noun`    {- <kabIraT> -}        [ unwords [ ['g','r','a','v','e'], ['o','f','f','e','n','s','e'] ], unwords [ ['c','a','p','i','t','a','l'], ['c','r','i','m','e','s'] ] ]
                              `plural`     FaCA'iL
                              `plural`     FaCIL |< At,

    HaFCaL                    `adj`     {- <'akbar> -}         [ unwords [ ['l','a','r','g','e','r'], "/", ['l','a','r','g','e','s','t'] ], unwords [ ['g','r','e','a','t','e','r'], "/", ['g','r','e','a','t','e','s','t'] ] ]
                              `plural`     HaFCaL |< Un
                              `plural`     HaFACiL
                              `femini`     FuCLY,

    HaFCaL                    `adj`     {- <'akbar> -}         [ ['s','e','n','i','o','r'], ['i','m','p','o','r','t','a','n','t'], ['l','e','a','d','e','r','s'] ]
                              `plural`     HaFACiL,

    HaFCaL                    `noun`    {- <'akbar> -}         [ ['A','k','b','a','r'] ],

    HaFCaL                    `adj`     {- <'akbar> -}         [ ['g','r','e','a','t'], ['m','a','j','o','r'], ['s','i','g','n','i','f','i','c','a','n','t'] ]
                              `femini`     FuCLY,

    FiCLiyA'                  `noun`    {- <kibriyA'> -}       [ ['a','r','r','o','g','a','n','c','e'] ],

    TaFCIL                    `noun`    {- <takbIr> -}         [ ['i','n','c','r','e','a','s','e'], ['a','m','p','l','i','f','i','c','a','t','i','o','n'], ['e','n','l','a','r','g','e','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'ikbAr> -}         [ ['d','e','f','e','r','e','n','c','e'], ['e','s','t','e','e','m'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <takabbur> -}       [ ['a','r','r','o','g','a','n','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <takAbur> -}        [ ['a','r','r','o','g','a','n','c','e'] ]
                              `plural`     TaFACuL |< At,

    MuFaCCiL                  `noun`    {- <mukabbir> -}       [ ['a','m','p','l','i','f','i','e','r'] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCiL                  `adj`     {- <mukabbir> -}       [ ['m','a','g','n','i','f','y','i','n','g'] ],

    MuFaCCaL                  `adj`     {- <mukabbar> -}       [ ['e','n','l','a','r','g','e','d'], ['m','a','g','n','i','f','i','e','d'] ],

    MuFACiL                   `adj`     {- <mukAbir> -}        [ ['a','r','r','o','g','a','n','t'] ],

    MutaFaCCiL                `adj`     {- <mutakabbir> -}     [ ['a','r','r','o','g','a','n','t'] ],

    MutaFACiL                 `adj`     {- <mutakAbir> -}      [ ['a','r','r','o','g','a','n','t'] ] ]


cluster_26  = cluster

 |> "k b r t" <| [

    KaRDaS                    `verb`    {- <kabrat> -}         [ unwords [ ['c','o','a','t'], ['w','i','t','h'], ['s','u','l','f','u','r'] ], ['s','u','l','f','u','r','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <kabrataT> -}       [ ['s','u','l','f','u','r','i','z','a','t','i','o','n'] ],

    KiRDIS                    `noun`    {- <kibrIt> -}         [ ['s','u','l','f','u','r'] ],

    KiRDIS                    `noun`    {- <kibrIt> -}         [ ['m','a','t','c','h','s','t','i','c','k'], ['m','a','t','c','h'] ]
                              `plural`     KaRADIS,

    KiRDIS |< Iy              `adj`     {- <kibrItIy> -}       [ ['s','u','l','f','u','r','i','c'], ['s','u','l','f','u','r'] ],

    KaRADIS |< Iy             `noun`    {- <kabArItIy> -}      [ ['K','a','b','a','r','i','t','i'] ],

    KiRDIS |< At              `noun`    {- <kibrItAt> -}       [ ['s','u','l','f','a','t','e'] ] ]


cluster_27  = cluster

 |> ['k','a','b','A','r','I','h'] <| [

    _____                     `noun`    {- <kabArIh> -}        [ ['c','a','b','a','r','e','t'] ]
                              `plural`     _____ |< At ]


cluster_28  = cluster

 |> "k b s" <| [

    FaCaL                     `verb`    {- <kabas> -}          [ ['a','t','t','a','c','k'], ['r','a','i','d'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <kabbas> -}         [ ['p','r','e','s','s'], ['s','q','u','e','e','z','e'] ],

    InFaCaL                   `verb`    {- <inkabas> -}        [ unwords [ ['b','e'], ['a','t','t','a','c','k','e','d'] ], unwords [ ['b','e'], ['r','a','i','d','e','d'] ] ],

    FaCL                      `noun`    {- <kabs> -}           [ ['p','r','e','s','s','u','r','e'], ['a','t','t','a','c','k'], ['r','a','i','d'] ],

    FaCL |< aT                `noun`    {- <kabsaT> -}         [ ['r','a','i','d'], unwords [ ['s','u','r','p','r','i','s','e'], ['a','t','t','a','c','k'] ] ],

    FuCayL |< Iy              `noun`    {- <kubaysIy> -}       [ ['K','u','b','a','i','s','i'] ],

    FaCCAL                    `noun`    {- <kabbAs> -}         [ unwords [ ['p','u','m','p'], ['p','i','s','t','o','n'] ], ['r','a','m','r','o','d'] ]
                              `plural`     FaCCAL |< At,

    FaCIL                     `adj`     {- <kabIs> -}          [ ['i','n','t','e','r','c','a','l','a','t','e','d'], ['i','n','t','e','r','p','o','l','a','t','e','d'], ['p','i','c','k','l','e','d'] ],

    FACUL                     `noun`    {- <kAbUs> -}          [ ['n','i','g','h','t','m','a','r','e'] ]
                              `plural`     FawACIL,

    FACUL |< Iy               `adj`     {- <kAbUsIy> -}        [ ['n','i','g','h','t','m','a','r','i','s','h'] ],

    MiFCaL                    `noun`    {- <mikbas> -}         [ ['p','r','e','s','s'], ['c','o','m','p','r','e','s','s','o','r'], unwords [ ['p','u','m','p'], ['p','i','s','t','o','n'] ] ]
                              `plural`     MaFACiL,

    MiFCAL                    `noun`    {- <mikbAs> -}         [ ['p','r','e','s','s'], ['c','o','m','p','r','e','s','s','o','r'], unwords [ ['p','u','m','p'], ['p','i','s','t','o','n'] ] ]
                              `plural`     MaFACIL,

    TaFCIL                    `noun`    {- <takbIs> -}         [ ['m','a','s','s','a','g','e'] ]
                              `plural`     TaFCIL |< At,

    FACiL |< aT               `noun`    {- <kAbisaT> -}        [ ['c','o','m','p','r','e','s','s','o','r'] ],

    MaFCUL                    `adj`     {- <makbUs> -}         [ ['r','a','i','d','e','d'], ['a','t','t','a','c','k','e','d'] ],

    MaFCUL |< At              `noun`    {- <makbUsAt> -}       [ unwords [ ['c','a','n','n','e','d'], ['g','o','o','d','s'] ], ['p','r','e','s','e','r','v','e','s'] ]
                              `plural`     MaFCUL |< At
                           
    `limited` "-------P--" ]


cluster_29  = cluster

 |> "k b ^s" <| [

    FaCaL                     `verb`    {- <kaba^s> -}         [ ['c','l','e','n','c','h'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <kab^s> -}          [ ['g','o','a','t'], ['r','a','m'] ]
                              `plural`     FiCAL
                              `plural`     HaFCAL,

    FaCL                      `noun`    {- <kab^s> -}          [ unwords [ ['b','a','t','t','e','r','i','n','g'], "-", ['r','a','m'] ], unwords [ ['p','i','l','e'], ['d','r','i','v','e','r'] ] ],

    FuCUL                     `noun`    {- <kubU^s> -}         [ ['b','u','t','t','r','e','s','s','e','s'], ['p','i','e','r','s'] ],

    FaCL |< aT                `noun`    {- <kab^saT> -}        [ ['h','a','n','d','f','u','l'], ['l','a','d','l','e'] ],

    FuCL |< aT                `noun`    {- <kub^saT> -}        [ ['h','o','o','k'], ['c','l','a','m','p'] ]
                              `plural`     FuCaL ]


cluster_30  = cluster

 |> "k b k b" <| [

    KaRDaS                    `verb`    {- <kabkab> -}         [ ['c','a','p','s','i','z','e'], ['r','e','v','e','r','t'] ],

    KaRDaS |< aT              `noun`    {- <kabkabaT> -}       [ ['c','a','p','s','i','z','i','n','g'], ['r','e','v','e','r','t','i','n','g'] ] ]


cluster_31  = cluster

 |> ['k','a','b','I','k','a','^','g'] <| [

    _____                     `noun`    {- <kabIka^g> -}       [ unwords [ ['A','s','i','a','n'], ['c','r','o','w','f','o','o','t'] ] ] ]


cluster_32  = cluster

 |> "k b l" <| [

    FaCaL                     `verb`    {- <kabal> -}          [ ['s','h','a','c','k','l','e'], ['f','e','t','t','e','r'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <kabbal> -}         [ ['s','h','a','c','k','l','e'], ['f','e','t','t','e','r'] ],

    FACaL                     `verb`    {- <kAbal> -}          [ unwords [ ['m','a','k','e'], ['w','a','i','t'] ], unwords [ ['k','e','e','p'], ['w','a','i','t','i','n','g'] ] ],

    FaCL                      `noun`    {- <kabl> -}           [ ['s','h','a','c','k','l','e'], ['f','e','t','t','e','r'] ]
                              `plural`     FiCL
                              `plural`     FuCUL,

    FACiL                     `noun`    {- <kAbil> -}          [ ['c','a','b','l','e'] ]
                              `plural`     FawACiL,

    FaCUL |< Iy               `noun`    {- <kabUlIy> -}        [ ['b','r','a','c','k','e','t'], unwords [ ['s','h','e','d'], ['r','o','o','f'] ] ]
                              `plural`     FawACIL ]


cluster_33  = cluster

 |> ['k','A','b','U','l'] <| [

    _____                     `noun`    {- <kAbUl> -}          [ ['K','a','b','u','l'] ],

    _____ |< Iy               `adj`     {- <kAbUlIy> -}        [ unwords [ ['o','f'], "/", ['f','r','o','m'], ['K','a','b','u','l'] ] ],

    _____ |< Iy               `noun`    {- <kAbUlIy> -}        [ ['K','a','b','u','l','i'] ] ]

 |> ['k','A','b','u','l'] <| [

    _____                     `noun`    {- <kAbul> -}          [ ['K','a','b','u','l'] ],

    _____ |< Iy               `adj`     {- <kAbulIy> -}        [ unwords [ ['o','f'], "/", ['f','r','o','m'], ['K','a','b','u','l'] ] ],

    _____ |< Iy               `noun`    {- <kAbulIy> -}        [ ['K','a','b','u','l','i'] ] ]


cluster_34  = cluster

 |> ['k','U','b','I','l'] <| [

    _____                     `noun`    {- <kUbIl> -}          [ ['c','o','b','b','l','e','s','t','o','n','e','s'] ] ]


cluster_35  = cluster

 |> ['k','A','b','I','l','A'] <| [

    _____                     `noun`    {- <kAbIlA> -}         [ ['K','a','b','i','l','a'] ] ]


cluster_36  = cluster

 |> "k b n" <| [

    FACIL                     `noun`    {- <kAbIn> -}          [ ['c','a','b','i','n'] ]
                              `plural`     FaCA'iL
                              `plural`     FaCAyiL ]

 |> ['k','A','b','I','n'] <| [

    _____ |< aT               `noun`    {- <kAbInaT> -}        [ ['c','a','b','i','n','e','t'], unwords [ ['c','a','b','i','n','e','t'], ['p','o','s','t','s'] ] ] ]


cluster_37  = cluster

 |> ['k','U','b','U','n'] <| [

    _____                     `noun`    {- <kUbUn> -}          [ ['c','o','u','p','o','n'] ] ]


cluster_38  = cluster

 |> ['k','U','b','r','I'] <| [

    _____                     `noun`    {- <kUbrI> -}          [ ['b','r','i','d','g','e'], ['o','v','e','r','p','a','s','s'] ] ]


cluster_39  = cluster

 |> ['k','i','b','r','I','t','I','d'] <| [

    _____                     `noun`    {- <kibrItId> -}       [ ['s','u','l','f','i','d','e'] ] ]


cluster_40  = cluster

 |> ['k','i','b','r','I','t','I','k'] <| [

    _____                     `noun`    {- <kibrItIk> -}       [ ['s','u','l','f','u','r','i','c'] ] ]


cluster_41  = cluster

 |> ['k','a','b','s','U','l'] <| [

    _____                     `noun`    {- <kabsUl> -}         [ ['c','a','p','s','u','l','e'] ]
                              `plural`     _____ |< At,

    _____ |< aT               `noun`    {- <kabsUlaT> -}       [ ['c','a','p','s','u','l','e'] ]
                              `plural`     _____ |< At ]


cluster_42  = cluster

 |> "k t b" <| [

    FaCaL                     `verb`    {- <katab> -}          [ ['w','r','i','t','e'], ['i','n','s','c','r','i','b','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL
                              `masdar`     FiCL |< aT
                              `masdar`     FiCAL |< aT,

    FACaL                     `verb`    {- <kAtab> -}          [ unwords [ ['c','o','r','r','e','s','p','o','n','d'], ['w','i','t','h'] ] ],

    HaFCaL                    `verb`    {- <'aktab> -}         [ ['d','i','c','t','a','t','e'], unwords [ ['m','a','k','e'], ['w','r','i','t','e'] ] ],

    TaFACaL                   `verb`    {- <takAtab> -}        [ ['c','o','r','r','e','s','p','o','n','d'] ],

    InFaCaL                   `verb`    {- <inkatab> -}        [ ['s','u','b','s','c','r','i','b','e'] ],

    IFtaCaL                   `verb`    {- <iktatab> -}        [ ['r','e','g','i','s','t','e','r'], ['e','n','r','o','l','l'] ],

    IstaFCaL                  `verb`    {- <istaktab> -}       [ unwords [ ['m','a','k','e'], ['w','r','i','t','e'] ], ['d','i','c','t','a','t','e'] ],

    FiCAL                     `noun`    {- <kitAb> -}          [ ['b','o','o','k'] ]
                              `plural`     FuCuL,

    FiCAL |<< "_hAn" |< aT    `noun`    {- <kitAb_hAnaT> -}    [ ['l','i','b','r','a','r','y'], ['b','o','o','k','s','t','o','r','e'] ],

    FuCayyiL                  `noun`    {- <kutayyib> -}       [ ['b','o','o','k','l','e','t'] ],

    FuCuL |< Iy               `adj`     {- <kutubIy> -}        [ unwords [ ['b','o','o','k'], "-", ['r','e','l','a','t','e','d'] ] ],

    FuCuL |< Iy               `noun`    {- <kutubIy> -}        [ ['b','o','o','k','s','e','l','l','e','r'] ],

    FuCCAL                    `noun`    {- <kuttAb> -}         [ unwords [ ['k','u','t','t','a','b'], "(", ['v','i','l','l','a','g','e'], ['s','c','h','o','o','l'], ")" ], unwords [ ['Q','u','r','a','n'], ['s','c','h','o','o','l'] ] ]
                              `plural`     FaCACIL,

    FiCAL |< aT               `noun`    {- <kitAbaT> -}        [ ['w','r','i','t','i','n','g'] ],

    FiCAL |< aT               `noun`    {- <kitAbaT> -}        [ ['e','s','s','a','y'], unwords [ ['p','i','e','c','e'], ['o','f'], ['w','r','i','t','i','n','g'] ], ['w','r','i','t','i','n','g','s'] ]
                              `plural`     FiCAL |< At,

    FiCAL |< Iy               `adj`     {- <kitAbIy> -}        [ ['w','r','i','t','i','n','g'], ['w','r','i','t','t','e','n'] ],

    FaCIL |< aT               `noun`    {- <katIbaT> -}        [ ['b','r','i','g','a','d','e'], ['s','q','u','a','d','r','o','n'], ['c','o','r','p','s'], ['P','h','a','l','a','n','g','i','s','t','s'] ]
                              `plural`     FaCA'iL,

    FaCA'iL |< Iy             `noun`    {- <katA'ibIy> -}      [ ['b','r','i','g','a','d','e'], ['c','o','r','p','s'] ]
                              `plural`     FaCA'iL |< Iy |< Un
                              `femini`     FaCA'iL |< Iy |< aT,

    FaCA'iL |< Iy             `noun`    {- <katA'ibIy> -}      [ ['P','h','a','l','a','n','g','i','s','t'] ]
                              `plural`     FaCA'iL |< Iy |< Un
                              `femini`     FaCA'iL |< Iy |< aT,

    MaFCaL                    `noun`    {- <maktab> -}         [ ['b','u','r','e','a','u'], ['o','f','f','i','c','e'], ['d','e','p','a','r','t','m','e','n','t'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <maktabIy> -}       [ ['o','f','f','i','c','e'] ],

    MaFCaL |< aT              `noun`    {- <maktabaT> -}       [ ['l','i','b','r','a','r','y'], ['b','o','o','k','s','t','o','r','e'] ]
                              `plural`     MaFACiL
                              `plural`     MaFCaL |< At,

    MiFCAL                    `noun`    {- <miktAb> -}         [ ['p','r','i','n','t','e','r'] ],

    MuFACaL |< aT             `noun`    {- <mukAtabaT> -}      [ ['c','o','r','r','e','s','p','o','n','d','e','n','c','e'] ],

    IFtiCAL                   `noun`    {- <iktitAb> -}        [ ['e','n','r','o','l','l','m','e','n','t'], ['r','e','g','i','s','t','r','a','t','i','o','n'], ['s','u','b','s','c','r','i','p','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IstiFCAL                  `noun`    {- <istiktAb> -}       [ ['d','i','c','t','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `noun`    {- <kAtib> -}          [ ['w','r','i','t','e','r'], ['a','u','t','h','o','r'], ['c','l','e','r','k'] ]
                              `plural`     FuCCAL
                              `plural`     FaCaL |< aT
                              `femini`     FACiL |< aT,

    "bA^s" >>| FACiL          `noun`    {- <bA^skAtib> -}      [ unwords [ ['c','h','i','e','f'], ['c','l','e','r','k'] ] ],

    FACiL                     `adj`     {- <kAtib> -}          [ ['w','r','i','t','i','n','g'] ],

    MaFCUL                    `adj`     {- <maktUb> -}         [ ['w','r','i','t','t','e','n'] ],

    MaFCUL                    `noun`    {- <maktUb> -}         [ ['l','e','t','t','e','r'], ['m','e','s','s','a','g','e'] ]
                              `plural`     MaFACIL,

    MuFACiL                   `noun`    {- <mukAtib> -}        [ ['c','o','r','r','e','s','p','o','n','d','e','n','t'], ['r','e','p','o','r','t','e','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFtaCiL                  `noun`    {- <muktatib> -}       [ ['s','u','b','s','c','r','i','b','e','r'] ]
                              `plural`     MuFtaCiL |< Un
                              `femini`     MuFtaCiL |< aT ]


cluster_43  = cluster

 |> "k t `" <| [

    HaFCaL                    `adj`     {- <'akta`> -}         [ unwords [ ['o','n','e'], "-", ['a','r','m','e','d'] ], ['c','r','i','p','p','l','e','d'] ]
                              `plural`     FuCL
                              `femini`     FaCLA' ]


cluster_44  = cluster

 |> "k t f" <| [

    FaCaL                     `verb`    {- <kataf> -}          [ unwords [ ['c','r','o','s','s'], ['a','r','m','s'] ], ['b','i','n','d'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <kattaf> -}         [ unwords [ ['c','r','o','s','s'], ['a','r','m','s'] ], ['b','i','n','d'] ],

    TaFaCCaL                  `verb`    {- <takattaf> -}       [ unwords [ ['c','r','o','s','s'], ['a','r','m','s'] ], ['b','i','n','d'] ],

    TaFACaL                   `verb`    {- <takAtaf> -}        [ unwords [ ['b','e'], ['i','n'], ['s','o','l','i','d','a','r','i','t','y'], ['w','i','t','h'], ['e','a','c','h'], ['o','t','h','e','r'] ], unwords [ ['s','u','p','p','o','r','t'], ['e','a','c','h'], ['o','t','h','e','r'] ] ],

    IstaFCaL                  `verb`    {- <istaktaf> -}       [ unwords [ ['c','r','o','s','s'], ['a','r','m','s'] ], ['b','i','n','d'] ],

    FaCiL                     `noun`    {- <katif> -}          [ ['s','h','o','u','l','d','e','r'] ]
                              `plural`     HaFCAL
                              `plural`     FiCaL |< aT,

    FiCL                      `noun`    {- <kitf> -}           [ ['b','u','t','t','r','e','s','s'] ]
                              `plural`     HaFCAL,

    FiCAL                     `noun`    {- <kitAf> -}          [ ['s','h','a','c','k','l','e'], ['h','a','n','d','c','u','f','f'] ]
                              `plural`     FuCuL,

    HaFCaL                    `adj`     {- <'aktaf> -}         [ unwords [ ['b','r','o','a','d'], "-", ['s','h','o','u','l','d','e','r','e','d'] ] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    TaFACuL                   `noun`    {- <takAtuf> -}        [ ['s','o','l','i','d','a','r','i','t','y'] ]
                              `plural`     TaFACuL |< At,

    MutaFACiL                 `adj`     {- <mutakAtif> -}      [ unwords [ ['m','u','t','u','a','l','l','y'], ['s','u','p','p','o','r','t','i','v','e'] ], unwords [ ['i','n'], ['m','u','t','u','a','l'], ['s','o','l','i','d','a','r','i','t','y'] ] ],

    MaFCUL                    `adj`     {- <maktUf> -}         [ ['f','o','l','d','e','d'], ['c','r','o','s','s','e','d'], ['t','i','e','d'] ] ]


cluster_45  = cluster

 |> "k t k t" <| [

    KaRDaS                    `noun`    {- <katkat> -}         [ ['f','l','o','s','s'], unwords [ ['s','i','l','k'], ['w','a','s','t','e'] ] ],

    KaRDUS                    `noun`    {- <katkUt> -}         [ ['c','h','i','c','k','e','n'] ]
                              `plural`     KaRADIS ]


cluster_46  = cluster

 |> "k t l" <| [

    FaCaL                     `verb`    {- <katal> -}          [ ['a','g','g','l','o','m','e','r','a','t','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <kattal> -}         [ ['a','g','g','l','o','m','e','r','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <takattal> -}       [ unwords [ ['f','o','r','m'], "a", ['b','l','o','c'] ] ],

    FaCL                      `noun`    {- <katl> -}           [ ['a','g','g','l','o','m','e','r','a','t','i','o','n'] ],

    FuCL |< aT                `noun`    {- <kutlaT> -}         [ ['b','l','o','c'], ['g','r','o','u','p'], ['m','a','s','s'] ]
                              `plural`     FuCaL,

    FuCLY                     `noun`    {- <kutlY> -}          [ ['m','a','s','s'] ],

    FuCLY |< Iy               `adj`     {- <kutlawIy> -}       [ ['b','l','o','c'] ],

    MiFCaL                    `noun`    {- <miktal> -}         [ unwords [ ['l','a','r','g','e'], ['b','a','s','k','e','t'] ] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <taktIl> -}         [ ['a','g','g','l','o','m','e','r','a','t','i','o','n'], unwords [ ['b','l','o','c'], ['f','o','r','m','a','t','i','o','n'] ] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <takattul> -}       [ ['b','l','o','c'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <mutakattil> -}     [ ['a','g','g','l','o','m','e','r','a','t','e','d'], unwords [ ['f','o','r','m','i','n','g'], ['b','l','o','c','s'] ] ] ]


cluster_47  = cluster

 |> ['k','a','t','A','l','U','^','g'] <| [

    _____                     `noun`    {- <katAlU^g> -}       [ ['c','a','t','a','l','o','g','u','e'] ] ]


cluster_48  = cluster

 |> "k t m" <| [

    FaCaL                     `verb`    {- <katam> -}          [ ['c','o','n','c','e','a','l'], ['m','u','f','f','l','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL
                              `masdar`     FiCAL,

    FaCCaL                    `verb`    {- <kattam> -}         [ ['c','o','n','c','e','a','l'] ],

    FACaL                     `verb`    {- <kAtam> -}          [ ['c','o','n','c','e','a','l'] ],

    TaFaCCaL                  `verb`    {- <takattam> -}       [ unwords [ ['k','e','e','p'], ['q','u','i','e','t'] ] ],

    IFtaCaL                   `verb`    {- <iktatam> -}        [ ['c','o','n','c','e','a','l'] ],

    IstaFCaL                  `verb`    {- <istaktam> -}       [ unwords [ ['c','o','n','f','i','d','e'], ['i','n'] ] ],

    FaCL                      `noun`    {- <katm> -}           [ ['c','o','n','c','e','a','l','m','e','n','t'], ['s','i','l','e','n','c','e'] ],

    FiCLAn                    `noun`    {- <kitmAn> -}         [ ['c','o','n','c','e','a','l','m','e','n','t'], ['s','i','l','e','n','c','e'] ],

    FaCIL                     `adj`     {- <katIm> -}          [ unwords [ ['s','h','u','t'], ['t','i','g','h','t'] ], ['s','e','a','l','e','d'] ],

    FaCUL                     `adj`     {- <katUm> -}          [ ['s','e','c','r','e','t','i','v','e'], ['s','i','l','e','n','t'] ],

    FiCAL                     `noun`    {- <kitAm> -}          [ ['c','o','n','s','t','i','p','a','t','i','o','n'] ],

    TaFaCCuL                  `noun`    {- <takattum> -}       [ ['s','e','c','r','e','c','y'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <iktitAm> -}        [ ['s','e','c','r','e','c','y'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `noun`    {- <kAtim> -}          [ ['c','o','n','f','i','d','a','n','t'] ],

    FACiL                     `noun`    {- <kAtim> -}          [ ['m','u','f','f','l','e','r'], ['s','i','l','e','n','c','e','r'] ],

    MaFCUL                    `noun`    {- <maktUm> -}         [ ['M','a','k','t','o','u','m'] ],

    MaFCUL                    `adj`     {- <maktUm> -}         [ ['h','i','d','d','e','n'], ['s','e','c','r','e','t'], ['c','o','n','c','e','a','l','e','d'] ] ]


cluster_49  = cluster

 |> "k t n" <| [

    FaCiL                     `verb`    {- <katin> -}          [ unwords [ ['b','e'], ['s','o','i','l','e','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <kattan> -}         [ ['s','o','i','l'] ],

    FaCaL                     `noun`    {- <katan> -}          [ ['d','i','r','t','y'], ['s','o','o','t'], ['s','o','i','l','i','n','g'] ],

    FaCCAL                    `noun`    {- <kattAn> -}         [ ['f','l','a','x'], ['l','i','n','e','n'] ],

    FaCCAL |< Iy              `adj`     {- <kattAnIy> -}       [ ['l','i','n','e','n'] ] ]


cluster_50  = cluster

 |> ['k','U','t','^','s','I','n'] <| [

    _____ |< aT               `noun`    {- <kUt^sInaT> -}      [ unwords [ ['c','a','r','d'], ['g','a','m','e'] ] ] ]

 |> ['k','u','t','^','s','I','n'] <| [

    _____ |< aT               `noun`    {- <kut^sInaT> -}      [ unwords [ ['c','a','r','d'], ['g','a','m','e'] ] ] ]


cluster_51  = cluster

 |> "k _t b" <| [

    FaCaL                     `noun`    {- <ka_tab> -}         [ ['p','r','o','x','i','m','i','t','y'], ['v','i','c','i','n','i','t','y'], ['n','e','a','r','n','e','s','s'] ],

    FaCIL                     `noun`    {- <ka_tIb> -}         [ ['s','a','n','d','h','i','l','l'], ['d','u','n','e'] ]
                              `plural`     FuCuL
                              `plural`     HaFCiL |< aT
                              `plural`     FuCLAn ]


cluster_52  = cluster

 |> ['k','A','_','t','U','d'] <| [

    _____                     `noun`    {- <kA_tUd> -}         [ ['c','a','t','h','o','d','e'] ] ]


cluster_53  = cluster

 |> "k _t r" <| [

    FaCuL                     `verb`    {- <ka_tur> -}         [ unwords [ ['b','e'], ['n','u','m','e','r','o','u','s'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <ka_t_tar> -}       [ ['i','n','c','r','e','a','s','e'] ],

    FACaL                     `verb`    {- <kA_tar> -}         [ ['o','u','t','n','u','m','b','e','r'] ],

    HaFCaL                    `verb`    {- <'ak_tar> -}        [ ['i','n','c','r','e','a','s','e'], unwords [ ['d','o'], ['f','r','e','q','u','e','n','t','l','y'] ] ],

    TaFACaL                   `verb`    {- <takA_tar> -}       [ unwords [ ['b','e','c','o','m','e'], ['n','u','m','e','r','o','u','s'] ], ['i','n','c','r','e','a','s','e'] ],

    IstaFCaL                  `verb`    {- <istak_tar> -}      [ unwords [ ['b','e','c','o','m','e'], ['n','u','m','e','r','o','u','s'] ], ['i','n','c','r','e','a','s','e'] ],

    FuCL                      `noun`    {- <ku_tr> -}          [ ['a','b','u','n','d','a','n','c','e'], ['f','r','e','q','u','e','n','c','y'] ],

    FaCL |< aT                `noun`    {- <ka_traT> -}        [ ['a','b','u','n','d','a','n','c','e'], ['f','r','e','q','u','e','n','c','y'] ],

    FaCIL                     `adj`     {- <ka_tIr> -}         [ ['m','a','n','y'], ['m','u','c','h'], ['n','u','m','e','r','o','u','s'], unwords [ "a", ['l','o','t'] ], ['v','e','r','y'] ]
                              `plural`     FiCAL
                              `plural`     FaCIL |< Un,

    HaFCaL                    `adj`     {- <'ak_tar> -}        [ ['m','o','r','e'], ['m','o','s','t'] ],

    HaFCaL |< Iy |< aT        `noun`    {- <'ak_tarIyaT> -}    [ ['m','a','j','o','r','i','t','y'] ],

    FaCILA'                   `noun`    {- <ka_tIrA'> -}       [ unwords [ ['t','r','a','g','a','c','a','n','t','h'], "(", ['g','u','m'], ['p','l','a','n','t'], ")" ] ],

    FawCaL                    `noun`    {- <kaw_tar> -}        [ ['K','a','w','t','h','a','r'] ],

    FawCaL                    `adj`     {- <kaw_tar> -}        [ ['a','m','p','l','e'], ['a','b','u','n','d','a','n','t'] ],

    MiFCAL                    `adj`     {- <mik_tAr> -}        [ ['g','a','r','r','u','l','o','u','s'] ],

    TaFCIL                    `noun`    {- <tak_tIr> -}        [ ['i','n','c','r','e','a','s','e'], ['a','c','c','u','m','u','l','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'ik_tAr> -}        [ ['i','n','c','r','e','a','s','e'], ['f','r','e','q','u','e','n','t','n','e','s','s'] ]
                              `plural`     HiFCAL |< At,

    TaFACuL                   `noun`    {- <takA_tur> -}       [ ['i','n','c','r','e','a','s','e'], ['g','r','o','w','t','h'], ['p','r','o','l','i','f','e','r','a','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    MuFCiL                    `adj`     {- <muk_tir> -}        [ ['w','e','a','l','t','h','y'] ],

    MutaFaCCiL                `adj`     {- <mutaka_t_tir> -}   [ ['p','l','u','r','a','l','i','s','t','i','c'] ],

    MutaFACiL                 `adj`     {- <mutakA_tir> -}     [ ['n','u','m','e','r','o','u','s'], ['e','x','t','e','n','s','i','v','e'] ] ]


cluster_54  = cluster

 |> "k _t f" <| [

    FaCuL                     `verb`    {- <ka_tuf> -}         [ unwords [ ['b','e'], ['t','h','i','c','k'] ], unwords [ ['b','e'], ['d','e','n','s','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <ka_t_taf> -}       [ ['c','o','n','c','e','n','t','r','a','t','e'], ['c','o','m','p','r','e','s','s'], unwords [ ['m','a','k','e'], ['i','n','t','e','n','s','i','v','e'] ] ],

    TaFaCCaL                  `verb`    {- <taka_t_taf> -}     [ unwords [ ['g','r','o','w'], ['d','e','n','s','e'] ], unwords [ ['b','e'], ['c','o','m','p','r','e','s','s','e','d'] ], unwords [ ['b','e'], ['i','n','t','e','n','s','i','v','e'] ] ],

    TaFACaL                   `verb`    {- <takA_taf> -}       [ unwords [ ['g','r','o','w'], ['d','e','n','s','e'] ], unwords [ ['b','e'], ['c','o','m','p','r','e','s','s','e','d'] ], unwords [ ['b','e'], ['i','n','t','e','n','s','i','v','e'] ] ],

    FaCIL                     `adj`     {- <ka_tIf> -}         [ ['i','n','t','e','n','s','e'], ['i','n','t','e','n','s','i','v','e'], ['c','o','n','c','e','n','t','r','a','t','e','d'], ['t','h','i','c','k'], ['d','e','n','s','e'] ],

    HaFCaL                    `adj`     {- <'ak_taf> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['i','n','t','e','n','s','e'], "/", ['c','o','n','c','e','n','t','r','a','t','e','d'] ] ],

    FaCAL |< aT               `noun`    {- <ka_tAfaT> -}       [ ['d','e','n','s','i','t','y'], ['c','o','m','p','a','c','t','n','e','s','s'] ],

    TaFCIL                    `noun`    {- <tak_tIf> -}        [ ['c','o','m','p','r','e','s','s','i','o','n'], ['c','o','n','d','e','n','s','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFACuL                   `noun`    {- <takA_tuf> -}       [ ['c','o','n','c','e','n','t','r','a','t','i','o','n'], ['c','o','n','d','e','n','s','a','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    MuFaCCiL                  `noun`    {- <muka_t_tif> -}     [ ['c','a','p','a','c','i','t','o','r'], ['c','o','n','d','e','n','s','e','r'] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCaL                  `adj`     {- <muka_t_taf> -}     [ ['i','n','t','e','n','s','i','v','e'], ['c','o','n','c','e','n','t','r','a','t','e','d'] ],

    MutaFACiL                 `adj`     {- <mutakA_tif> -}     [ ['g','a','t','h','e','r','i','n','g'], ['c','o','n','c','e','n','t','r','a','t','i','n','g'] ] ]


cluster_55  = cluster

 |> "k _t l" <| [

    FawCaL                    `noun`    {- <kaw_tal> -}        [ unwords [ ['s','h','i','p'], ['s','t','e','r','n'] ] ] ]


cluster_56  = cluster

 |> "k _t l k" <| [

    TaKaRDaS                  `verb`    {- <taka_tlak> -}      [ unwords [ ['b','e','c','o','m','e'], ['C','a','t','h','o','l','i','c'] ] ],

    KaRDaS |< aT              `noun`    {- <ka_tlakaT> -}      [ ['C','a','t','h','o','l','i','c','i','s','m'], ['C','a','t','h','o','l','i','c','s'] ] ]


cluster_57  = cluster

 |> ['k','A','_','t','U','l','I','k'] <| [

    _____ |< Iy               `adj`     {- <kA_tUlIkIy> -}     [ ['C','a','t','h','o','l','i','c'] ]
                              `plural`     _____,

    _____ |< Iy               `noun`    {- <kA_tUlIkIy> -}     [ ['C','a','t','h','o','l','i','c'] ]
                              `plural`     _____
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_58  = cluster

 |> "k .h t" <| [

    FaCaL                     `verb`    {- <ka.hat> -}         [ unwords [ ['s','c','r','a','p','e'], ['o','f','f'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <ka.h.hat> -}       [ unwords [ ['s','c','r','a','p','e'], ['o','f','f'] ] ] ]


cluster_59  = cluster

 |> "k .h k .h" <| [

    KaRDaS                    `verb`    {- <ka.hka.h> -}       [ ['c','o','u','g','h'] ],

    KaRDaS |< aT              `noun`    {- <ka.hka.haT> -}     [ ['c','o','u','g','h','i','n','g'] ],

    KaRDaS |< aT              `noun`    {- <ka.hka.haT> -}     [ ['c','o','u','g','h'] ]
                              `plural`     KaRDaS |< At ]


cluster_60  = cluster

 |> "k .h l" <| [

    FaCCaL                    `verb`    {- <ka.h.hal> -}       [ unwords [ ['p','a','i','n','t'], ['w','i','t','h'], ['k','o','h','l'] ] ],

    TaFaCCaL                  `verb`    {- <taka.h.hal> -}     [ unwords [ ['p','u','t'], ['o','n'], ['k','o','h','l'] ] ],

    IFtaCaL                   `verb`    {- <ikta.hal> -}       [ unwords [ ['p','u','t'], ['o','n'], ['k','o','h','l'] ] ],

    FuCL                      `noun`    {- <ku.hl> -}          [ ['k','o','h','l'], ['a','n','t','i','m','o','n','y'] ]
                              `plural`     HaFCAL,

    FaCiL                     `adj`     {- <ka.hil> -}         [ unwords [ ['p','a','i','n','t','e','d'], ['w','i','t','h'], ['k','o','h','l'] ] ],

    FuCL |< Iy                `adj`     {- <ku.hlIy> -}        [ unwords [ ['a','q','u','a'], ['b','l','u','e'] ] ],

    FuCL |< aT                `noun`    {- <ku.hlaT> -}        [ ['p','o','i','n','t','i','n','g'], ['f','i','l','l','i','n','g'], ['g','r','o','u','t','i','n','g'] ],

    HaFCaL                    `adj`     {- <'ak.hal> -}        [ ['b','l','a','c','k'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FaCLA'                    `noun`    {- <ka.hlA'> -}        [ ['b','l','u','e','w','e','e','d'] ],

    FaCIL                     `adj`     {- <ka.hIl> -}         [ unwords [ ['b','l','a','c','k','e','n','e','d'], ['w','i','t','h'], ['k','o','h','l'] ] ],

    FaCIL                     `noun`    {- <ka.hIl> -}         [ ['K','a','h','i','l'] ],

    FaCIL                     `noun`    {- <ka.hIl> -}         [ unwords [ ['t','h','o','r','o','u','g','h','b','r','e','d'], ['h','o','r','s','e'] ] ]
                              `plural`     FaCA'iL,

    FuCayL |< Iy              `noun`    {- <ku.haylIy> -}      [ unwords [ ['t','h','o','r','o','u','g','h','b','r','e','d'], ['h','o','r','s','e'] ] ],

    FuCayLAn                  `noun`    {- <ku.haylAn> -}      [ unwords [ ['t','h','o','r','o','u','g','h','b','r','e','d'], ['h','o','r','s','e'] ] ],

    FuCUL                     `noun`    {- <ku.hUl> -}         [ ['a','l','c','o','h','o','l'] ],

    FuCUL |< Iy               `adj`     {- <ku.hUlIy> -}       [ ['a','l','c','o','h','o','l','i','c'], unwords [ ['a','l','c','o','h','o','l','i','c'], ['b','e','v','e','r','a','g','e','s'] ] ],

    FiCAL                     `noun`    {- <ki.hAl> -}         [ unwords [ ['e','y','e'], ['p','o','w','d','e','r'] ], ['a','n','t','i','m','o','n','y'] ],

    FaCCAL                    `noun`    {- <ka.h.hAl> -}       [ ['o','c','u','l','i','s','t'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <ka.h.hAl> -}       [ ['K','a','h','h','a','l'] ],

    MiFCaL                    `noun`    {- <mik.hal> -}        [ unwords [ ['k','o','h','l'], ['p','e','n','c','i','l'] ] ],

    MiFCAL                    `noun`    {- <mik.hAl> -}        [ unwords [ ['k','o','h','l'], ['p','e','n','c','i','l'] ] ],

    MuFCuL |< aT              `noun`    {- <muk.hulaT> -}      [ unwords [ ['k','o','h','l'], ['c','o','n','t','a','i','n','e','r'] ] ],

    TaFCIL                    `noun`    {- <tak.hIl> -}        [ unwords [ ['t','r','e','a','t','m','e','n','t'], ['w','i','t','h'], ['k','o','h','l'] ] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `noun`    {- <kA.hil> -}         [ unwords [ ['a','n','k','l','e'], ['b','o','n','e'] ] ]
                              `plural`     FawACiL ]


cluster_61  = cluster

 |> ['k','a','.','h','l','U','t'] <| [

    _____                     `noun`    {- <ka.hlUt> -}        [ ['K','a','h','l','o','u','t'], ['K','a','h','l','u','t'] ] ]


cluster_62  = cluster

 |> "k d .h" <| [

    FaCaL                     `verb`    {- <kada.h> -}         [ unwords [ ['w','o','r','k'], ['h','a','r','d'] ], ['t','o','i','l'] ]
                              `imperf`     FCaL,

    IFtaCaL                   `verb`    {- <iktada.h> -}       [ unwords [ ['e','a','r','n'], "a", ['l','i','v','i','n','g'] ] ],

    FaCL                      `noun`    {- <kad.h> -}          [ ['e','x','e','r','t','i','o','n'], ['t','o','i','l'] ],

    FACiL                     `adj`     {- <kAdi.h> -}         [ ['t','o','i','l','i','n','g'], unwords [ ['w','o','r','k','i','n','g'], ['h','a','r','d'] ] ] ]


cluster_63  = cluster

 |> "k d r" <| [

    FaCuL                     `verb`    {- <kadur> -}          [ unwords [ ['b','e'], ['m','u','d','d','y'] ] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <kadir> -}          [ unwords [ ['b','e'], ['m','u','d','d','y'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <kaddar> -}         [ ['d','i','s','t','u','r','b'], ['i','r','r','i','t','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <takaddar> -}       [ unwords [ ['b','e'], ['d','i','s','t','u','r','b','e','d'] ], unwords [ ['b','e'], ['a','n','n','o','y','e','d'] ] ],

    InFaCaL                   `verb`    {- <inkadar> -}        [ unwords [ ['b','e','c','o','m','e'], ['m','u','d','d','y'] ] ],

    FaCaL                     `noun`    {- <kadar> -}          [ ['m','u','d','d','i','n','e','s','s'] ],

    FaCaL                     `noun`    {- <kadar> -}          [ ['d','i','s','t','r','e','s','s'] ],

    FuCL |< aT                `noun`    {- <kudraT> -}         [ ['m','u','d','d','i','n','e','s','s'], ['i','m','p','u','r','i','t','y'] ],

    FaCaL |< aT               `noun`    {- <kadaraT> -}        [ ['d','i','r','t'], ['f','i','l','t','h'] ],

    FaCiL                     `adj`     {- <kadir> -}          [ ['m','u','d','d','y'], ['w','o','r','r','i','e','d'] ],

    FaCIL                     `adj`     {- <kadIr> -}          [ ['m','u','d','d','y'], ['w','o','r','r','i','e','d'] ],

    HaFCaL                    `adj`     {- <'akdar> -}         [ ['d','i','n','g','y'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    TaFCIL                    `noun`    {- <takdIr> -}         [ ['d','i','s','t','u','r','b','i','n','g'], ['t','r','o','u','b','l','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL                    `noun`    {- <takdIr> -}         [ ['a','f','f','r','o','n','t'], ['i','n','d','i','g','n','i','t','y'], ['o','f','f','e','n','c','e'] ]
                              `plural`     TaFCIL |< At,

    MutaFaCCiL                `adj`     {- <mutakaddir> -}     [ ['a','n','g','r','y'], ['a','n','n','o','y','e','d'], ['o','f','f','e','n','d','e','d'] ] ]

 |> "k d r" <| [

    FACiL                     `noun`    {- <kAdir> -}          [ ['c','a','d','r','e'], ['f','u','n','c','t','i','o','n','a','r','i','e','s'], ['s','t','a','f','f'] ]
                              `plural`     FawACiL ]


cluster_64  = cluster

 |> "k d s" <| [

    FaCaL                     `verb`    {- <kadas> -}          [ unwords [ ['c','r','a','m'], ['t','o','g','e','t','h','e','r'] ], ['s','t','o','r','e'], ['a','c','c','u','m','u','l','a','t','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <kaddas> -}         [ unwords [ ['c','r','a','m'], ['t','o','g','e','t','h','e','r'] ], ['s','t','o','r','e'], ['a','c','c','u','m','u','l','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <takaddas> -}       [ unwords [ ['p','i','l','e'], ['u','p'] ], ['a','c','c','u','m','u','l','a','t','e'] ],

    FuCL                      `noun`    {- <kuds> -}           [ ['h','e','a','p'], ['p','i','l','e'], ['s','t','a','c','k'] ]
                              `plural`     HaFCAL,

    FuCCAL                    `noun`    {- <kuddAs> -}         [ ['h','e','a','p'], ['p','i','l','e'], ['s','t','a','c','k'] ]
                              `plural`     FaCACIL,

    FuCAL |< aT               `noun`    {- <kudAsaT> -}        [ ['h','e','a','p'], ['p','i','l','e'], ['s','t','a','c','k'] ],

    TaFCIL                    `noun`    {- <takdIs> -}         [ ['a','c','c','u','m','u','l','a','t','i','o','n'], ['s','t','a','c','k','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_65  = cluster

 |> "k d ^s" <| [

    FaCaL                     `verb`    {- <kada^s> -}         [ ['g','a','i','n'], ['e','a','r','n'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <kad^s> -}          [ ['g','a','i','n','i','n','g'], ['e','a','r','n','i','n','g'] ],

    FaCIL                     `noun`    {- <kadI^s> -}         [ unwords [ ['c','a','r','t'], ['h','o','r','s','e'] ] ]
                              `plural`     FuCL,

    FaCIL                     `noun`    {- <kadI^s> -}         [ ['n','i','t','w','i','t'], ['b','l','o','c','k','h','e','a','d'] ]
                              `plural`     FuCL ]


cluster_66  = cluster

 |> "k d m" <| [

    FaCaL                     `verb`    {- <kadam> -}          [ ['b','i','t','e'], ['b','r','u','i','s','e'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <kadm> -}           [ ['b','i','t','i','n','g'], ['b','r','u','i','s','i','n','g'] ],

    FaCL |< aT                `noun`    {- <kadmaT> -}         [ ['b','i','t','e'], ['w','o','u','n','d'], ['b','r','u','i','s','e'] ]
                              `plural`     FaCaL |< At ]


cluster_67  = cluster

 |> "k _d b" <| [

    FaCaL                     `verb`    {- <ka_dab> -}         [ ['l','i','e'], ['d','e','c','e','i','v','e'] ]
                              `imperf`     FCiL
                              `masdar`     FaCiL
                              `masdar`     FiCL
                              `masdar`     FaCL |< aT,

    FaCCaL                    `verb`    {- <ka_d_dab> -}       [ ['d','e','n','y'], ['r','e','f','u','t','e'], ['c','o','n','t','r','a','d','i','c','t'], ['b','e','l','i','e'] ],

    HaFCaL                    `verb`    {- <'ak_dab> -}        [ ['r','e','f','u','t','e'], ['c','o','n','t','r','a','d','i','c','t'], ['d','i','s','b','e','l','i','e','v','e'] ],

    FiCL                      `noun`    {- <ki_db> -}          [ ['l','y','i','n','g'], ['f','a','l','s','e','h','o','o','d'] ],

    FiCL |< aT                `noun`    {- <ki_dbaT> -}        [ ['l','i','e'], ['u','n','t','r','u','t','h'] ],

    FaCUL                     `adj`     {- <ka_dUb> -}         [ ['l','i','a','r'] ],

    FaCCAL                    `noun`    {- <ka_d_dAb> -}       [ ['l','i','a','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    HuFCUL |< aT              `noun`    {- <'uk_dUbaT> -}      [ ['l','i','e'] ]
                              `plural`     HaFACIL,

    HaFCaL                    `adj`     {- <'ak_dab> -}        [ unwords [ ['b','i','g','g','e','r'], "/", ['b','i','g','g','e','s','t'], ['l','i','a','r'] ] ],

    TaFCIL                    `noun`    {- <tak_dIb> -}        [ ['d','e','n','i','a','l'], ['r','e','f','u','t','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `noun`    {- <kA_dib> -}         [ ['l','i','a','r'], ['l','y','i','n','g'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    FACiL                     `adj`     {- <kA_dib> -}         [ ['f','a','l','s','e'], ['u','n','t','r','u','e'] ],

    MaFCUL                    `adj`     {- <mak_dUb> -}        [ ['f','a','l','s','e'], unwords [ ['t','r','u','m','p','e','d'], ['u','p'] ] ] ]


cluster_68  = cluster

 |> ['k','U','r'] <| [

    _____ |< iyA              `xtra`    {- <kUriyA> -}         [ ['K','o','r','e','a'] ],

    _____ |< Iy               `adj`     {- <kUrIy> -}          [ ['K','o','r','e','a','n'] ] ]


cluster_69  = cluster

 |> ['k','A','r','U'] <| [

    _____                     `noun`    {- <kArU> -}           [ ['c','a','r','t'], ['w','a','g','o','n'] ]
                              `plural`     _____ |< At ]


cluster_70  = cluster

 |> "k r b" <| [

    FaCaL                     `verb`    {- <karab> -}          [ ['o','p','p','r','e','s','s'], ['w','o','r','r','y'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    HaFCaL                    `verb`    {- <'akrab> -}         [ ['h','a','s','t','e','n'] ],

    InFaCaL                   `verb`    {- <inkarab> -}        [ unwords [ ['b','e'], ['w','o','r','r','i','e','d'] ], unwords [ ['f','e','e','l'], ['c','o','n','c','e','r','n'] ] ],

    IFtaCaL                   `verb`    {- <iktarab> -}        [ unwords [ ['b','e'], ['w','o','r','r','i','e','d'] ], unwords [ ['f','e','e','l'], ['c','o','n','c','e','r','n'] ] ],

    FaCL                      `noun`    {- <karb> -}           [ ['w','o','r','r','y'], ['f','e','a','r'] ]
                              `plural`     FuCUL,

    FuCL |< aT                `noun`    {- <kurbaT> -}         [ ['w','o','r','r','y'], ['f','e','a','r'] ]
                              `plural`     FuCaL,

    MaFCUL                    `adj`     {- <makrUb> -}         [ ['w','o','r','r','i','e','d'], ['a','l','a','r','m','e','d'] ],

    MuFtaCiL                  `adj`     {- <muktarib> -}       [ ['w','o','r','r','i','e','d'], ['a','l','a','r','m','e','d'] ] ]

 |> "k r b" <| [

    "karUb"                   `noun`    {- <karUb> -}          [ ['c','h','e','r','u','b'] ]
                              `plural`     "karUbIm",

    "karUb" |< Iy             `adj`     {- <karUbIy> -}        [ ['c','h','e','r','u','b','i','m'] ] ]


cluster_71  = cluster

 |> ['k','A','r','I','b'] <| [

    _____ |< Iy               `adj`     {- <kArIbIy> -}        [ ['C','a','r','i','b','b','e','a','n'] ] ]


cluster_72  = cluster

 |> "k r b ^g" <| [

    KuRDAS                    `noun`    {- <kurbA^g> -}        [ ['w','h','i','p'], ['l','a','s','h'] ]
                              `plural`     KaRADIS,

    KiRDAS                    `noun`    {- <kirbA^g> -}        [ ['w','h','i','p'], ['l','a','s','h'] ]
                              `plural`     KaRADIS,

    KaRDUS |< aT              `noun`    {- <karbU^gaT> -}      [ ['p','a','s','t','r','y'] ]
                              `plural`     KaRADIS ]


cluster_73  = cluster

 |> "k r b s" <| [

    KiRDAS                    `noun`    {- <kirbAs> -}         [ unwords [ ['w','h','i','t','e'], ['c','o','t','t','o','n'], ['f','a','b','r','i','c'] ] ]
                              `plural`     KaRADIS ]


cluster_74  = cluster

 |> "k r b l" <| [

    KiRDAS                    `noun`    {- <kirbAl> -}         [ ['s','i','e','v','e'], unwords [ ['t','e','a','s','i','n','g'], ['b','o','w'] ] ]
                              `plural`     KaRADIS,

    KaRDaS |< aT              `noun`    {- <karbalaT> -}       [ ['s','i','f','t','i','n','g'] ],

    KaRDaS |< aT              `noun`    {- <karbalaT> -}       [ ['s','i','e','v','e'], ['m','e','s','h'] ] ]


cluster_75  = cluster

 |> "k r b n" <| [

    KaRDaS                    `verb`    {- <karban> -}         [ ['c','a','r','b','o','n','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <karbanaT> -}       [ ['c','a','r','b','o','n','i','z','a','t','i','o','n'] ],

    KaRDUS                    `noun`    {- <karbUn> -}         [ ['c','o','a','l'], ['c','a','r','b','o','n'] ],

    MuKaRDiS                  `noun`    {- <mukarbin> -}       [ ['c','a','r','b','u','r','e','t','o','r'] ]
                              `plural`     MuKaRDiS |< At ]

 |> ['k','a','r','b','U','n'] <| [

    _____                     `noun`    {- <karbUn> -}         [ ['c','o','a','l'], ['c','a','r','b','o','n'] ] ]


cluster_76  = cluster

 |> "k r t" <| [

    FACL                      `noun`    {- <kArt> -}           [ ['c','a','r','d'] ]
                              `plural`     FuCUL ]


cluster_77  = cluster

 |> "k r t n" <| [

    KaRDaS                    `verb`    {- <kartan> -}         [ ['q','u','a','r','a','n','t','i','n','e'] ],

    TaKaRDaS                  `verb`    {- <takartan> -}       [ unwords [ ['b','e'], ['q','u','a','r','a','n','t','i','n','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <kartanaT> -}       [ ['q','u','a','r','a','n','t','i','n','e'] ] ]

 |> "k r t n" <| [

    KaRDUS                    `noun`    {- <kartUn> -}         [ ['c','a','r','t','o','n'], ['c','a','r','d','b','o','a','r','d'] ]
                              `plural`     KaRADIS
                              `plural`     KaRDUS |< At ]


cluster_78  = cluster

 |> ['k','A','r','A','t','I','h'] <| [

    _____                     `noun`    {- <kArAtIh> -}        [ ['k','a','r','a','t','e'] ] ]


cluster_79  = cluster

 |> "k r _t" <| [

    FaCaL                     `verb`    {- <kara_t> -}         [ ['o','p','p','r','e','s','s'], ['w','o','r','r','y'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL
                              `masdar`     FaCL,

    HaFCaL                    `verb`    {- <'akra_t> -}        [ ['o','p','p','r','e','s','s'], ['w','o','r','r','y'] ],

    IFtaCaL                   `verb`    {- <iktara_t> -}       [ unwords [ ['b','e','a','r'], ['i','n'], ['m','i','n','d'] ], unwords [ ['p','a','y'], ['a','t','t','e','n','t','i','o','n'] ] ],

    FaCIL                     `noun`    {- <karI_t> -}         [ ['o','p','p','r','e','s','s','e','d'], ['w','o','r','r','i','e','d'] ],

    FaCCAL                    `noun`    {- <karrA_t> -}        [ ['l','e','e','k'] ],

    IFtiCAL                   `noun`    {- <iktirA_t> -}       [ ['c','o','n','c','e','r','n'], ['a','t','t','e','n','t','i','o','n'], ['h','e','e','d'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <kAri_t> -}         [ ['o','p','p','r','e','s','s','i','v','e'], ['p','a','i','n','f','u','l'] ],

    FACiL |< aT               `noun`    {- <kAri_taT> -}       [ ['c','a','t','a','s','t','r','o','p','h','e'], ['t','r','a','g','e','d','y'] ]
                              `plural`     FawACiL,

    MuFtaCiL                  `adj`     {- <muktari_t> -}      [ ['a','t','t','e','n','t','i','v','e'], ['i','n','t','e','r','e','s','t','e','d'] ] ]


cluster_80  = cluster

 |> "k r ^g" <| [

    FawCaL |< aT              `noun`    {- <kawra^gaT> -}      [ ['b','u','l','k'], ['w','h','o','l','e','s','a','l','e'] ] ]

 |> "k r ^g" <| [

    FuCL |< Iy                `adj`     {- <kur^gIy> -}        [ ['G','e','o','r','g','i','a','n'] ],

    FuCL |< Iy                `noun`    {- <kur^gIy> -}        [ ['G','e','o','r','g','i','a','n'] ]
                              `plural`     FuCL
                              `femini`     FuCL |< Iy |< aT ]


cluster_81  = cluster

 |> ['k','a','r','A','^','g'] <| [

    _____                     `noun`    {- <karA^g> -}         [ ['g','a','r','a','g','e'] ]
                              `plural`     _____ |< At ]


cluster_82  = cluster

 |> "k r .h" <| [

    FiCL                      `noun`    {- <kir.h> -}          [ unwords [ ['m','o','n','k','\'','s'], ['c','e','l','l'] ] ]
                              `plural`     HaFCAL ]


cluster_83  = cluster

 |> "k r _h n" <| [

    "kar" |<< "_hAn" |< aT    `noun`    {- <kar_hAnaT> -}      [ ['w','o','r','k','s','h','o','p'], ['f','a','c','t','o','r','y'], ['l','a','b','o','r','a','t','o','r','y'], ['b','r','o','t','h','e','l'] ]
                              `plural`     "kar" |<< "_hAn" |< At
                              `plural`     "karA_hIn",

    "kar" |<< "_hAn" |<< "^g" |< Iy `noun`    {- <kar_hAn^gIy> -}    [ ['a','r','t','i','s','a','n'], ['c','r','a','f','t','s','m','a','n'], ['w','o','r','k','e','r'] ] ]


cluster_84  = cluster

 |> "k r d" <| [

    FuCL |< Iy                `adj`     {- <kurdIy> -}         [ ['K','u','r','d','i','s','h'], ['K','u','r','d','s'] ]
                              `plural`     FuCL
                              `plural`     HaFCAL,

    FuCL |< Iy                `noun`    {- <kurdIy> -}         [ ['K','u','r','d','i','s','h'], ['K','u','r','d','s'] ]
                              `plural`     FuCL
                              `plural`     HaFCAL
                              `femini`     FuCL |< Iy |< aT ]


cluster_85  = cluster

 |> "k r d s" <| [

    KaRDaS                    `verb`    {- <kardas> -}         [ unwords [ ['p','i','l','e'], ['u','p'] ], unwords [ ['c','r','a','m'], ['t','o','g','e','t','h','e','r'] ] ],

    TaKaRDaS                  `verb`    {- <takardas> -}       [ unwords [ ['b','e'], ['p','i','l','e','d'], ['u','p'] ], unwords [ ['c','r','o','w','d'], ['t','o','g','e','t','h','e','r'] ] ],

    KaRDaS |< aT              `noun`    {- <kardasaT> -}       [ unwords [ ['p','i','l','i','n','g'], ['u','p'] ], unwords [ ['c','r','a','m','m','i','n','g'], ['t','o','g','e','t','h','e','r'] ] ] ]


cluster_86  = cluster

 |> "k r d l" <| [

    "kardinAl"                `noun`    {- <kardinAl> -}       [ ['c','a','r','d','i','n','a','l'] ]
                              `plural`     "karAdil" |< aT ]


cluster_87  = cluster

 |> "k r d n" <| [

    KiRDAS                    `noun`    {- <kirdAn> -}         [ ['n','e','c','k','l','a','c','e'] ]
                              `plural`     KaRADIS ]


cluster_88  = cluster

 |> "k r z" <| [

    FaCaL                     `verb`    {- <karaz> -}          [ unwords [ ['s','e','e','k'], ['r','e','f','u','g','e'] ], ['p','r','e','a','c','h'], ['s','p','r','e','a','d'] ]
                              `imperf`     FCiL,

    FuCUL                     `noun`    {- <kurUz> -}          [ unwords [ ['s','e','e','k','i','n','g'], ['r','e','f','u','g','e'] ] ],

    FaCL                      `noun`    {- <karz> -}           [ ['p','r','e','a','c','h','i','n','g'], ['s','p','r','e','a','d','i','n','g'] ],

    FaCL                      `noun`    {- <karz> -}           [ ['s','e','r','m','o','n'], unwords [ ['m','i','s','s','i','o','n','a','r','y'], ['p','r','o','v','i','n','c','e'] ] ],

    FaCAL |< aT               `noun`    {- <karAzaT> -}        [ ['s','e','r','m','o','n'], unwords [ ['m','i','s','s','i','o','n','a','r','y'], ['p','r','o','v','i','n','c','e'] ] ],

    TaFCIL                    `noun`    {- <takrIz> -}         [ ['c','o','n','s','e','c','r','a','t','i','o','n'], ['b','e','n','e','d','i','c','t','i','o','n'] ]
                              `plural`     TaFACIL,

    FACiL                     `noun`    {- <kAriz> -}          [ ['p','r','e','a','c','h','e','r'] ] ]

 |> "k r z" <| [

    FaCaL                     `noun`    {- <karaz> -}          [ ['c','h','e','r','r','y'] ]
                              `plural`     FaCaL |< At,

    FaCaL |< aT               `noun`    {- <karazaT> -}        [ unwords [ ['c','h','e','r','r','y'], ['t','r','e','e'] ] ],

    FaCaL |< Iy               `adj`     {- <karazIy> -}        [ unwords [ ['c','h','e','r','r','y'], "-", ['r','e','d'] ] ],

    FuCayL                    `noun`    {- <kurayz> -}         [ ['c','h','e','r','r','y'] ]
                              `plural`     FuCayL |< At ]


cluster_89  = cluster

 |> "k r s" <| [

    FaCCaL                    `verb`    {- <karras> -}         [ ['d','e','d','i','c','a','t','e'], ['d','e','v','o','t','e'] ],

    TaFCIL                    `noun`    {- <takrIs> -}         [ ['d','e','d','i','c','a','t','i','o','n'], ['d','e','v','o','t','i','o','n'], ['c','o','n','s','e','c','r','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL                    `noun`    {- <takrIs> -}         [ ['p','e','r','p','e','t','u','a','t','i','o','n'], ['e','n','t','r','e','n','c','h','m','e','n','t'], ['l','e','g','i','t','i','m','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mukarras> -}       [ ['c','o','n','s','e','c','r','a','t','e','d'], ['d','e','d','i','c','a','t','e','d'] ] ]

 |> "k r s" <| [

    FaCCaL                    `verb`    {- <karras> -}         [ unwords [ ['l','a','y'], ['f','o','u','n','d','a','t','i','o','n'] ], ['e','s','t','a','b','l','i','s','h'] ],

    TaFaCCaL                  `verb`    {- <takarras> -}       [ unwords [ ['s','t','i','c','k'], ['t','o','g','e','t','h','e','r'] ], ['c','o','h','e','r','e'] ],

    FuCL |< Iy                `noun`    {- <kursIy> -}         [ ['c','h','a','i','r'], ['s','e','a','t'] ]
                              `plural`     FaCALI
                              `plural`     FaCALIy,

    FuCCAL                    `noun`    {- <kurrAs> -}         [ ['b','o','o','k','l','e','t'], ['n','o','t','e','b','o','o','k'] ]
                              `plural`     FaCACIL
                              `plural`     FuCCAL |< At,

    FaCUL |< aT               `noun`    {- <karUsaT> -}        [ unwords [ ['s','t','a','t','e'], ['c','a','r','r','i','a','g','e'] ], ['c','o','a','c','h'] ] ]


cluster_90  = cluster

 |> "k r s `" <| [

    KaRDUS                    `noun`    {- <karsU`> -}         [ ['K','a','r','s','u','a'] ],

    KuRDUS                    `noun`    {- <kursU`> -}         [ unwords [ ['w','r','i','s','t'], ['b','o','n','e'] ] ]
                              `plural`     KaRADIS ]


cluster_91  = cluster

 |> "k r s f" <| [

    KaRDaS                    `verb`    {- <karsaf> -}         [ ['h','a','m','s','t','r','i','n','g'], ['h','o','c','k'] ],

    KaRDaS |< aT              `noun`    {- <karsafaT> -}       [ ['h','a','m','s','t','r','i','n','g','i','n','g'], ['h','o','c','k','i','n','g'] ] ]


cluster_92  = cluster

 |> ['k','I','r','U','s','I','n'] <| [

    _____                     `noun`    {- <kIrUsIn> -}        [ ['k','e','r','o','s','e','n','e'] ] ]


cluster_93  = cluster

 |> "k r ^s" <| [

    FaCiL                     `verb`    {- <kari^s> -}         [ unwords [ ['b','e'], ['w','r','i','n','k','l','e','d'] ], ['s','h','r','i','v','e','l'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <karra^s> -}        [ ['f','r','o','w','n'] ],

    TaFaCCaL                  `verb`    {- <takarra^s> -}      [ unwords [ ['b','e'], ['w','r','i','n','k','l','e','d'] ], ['s','h','r','i','v','e','l'], unwords [ ['b','e'], ['p','o','t'], "-", ['b','e','l','l','i','e','d'] ] ],

    FiCL                      `noun`    {- <kir^s> -}          [ ['p','a','u','n','c','h'], ['b','e','l','l','y'] ]
                              `plural`     FuCUL
                              `plural`     HaFCAL,

    FiCL |< aT                `noun`    {- <kir^saT> -}        [ unwords [ ['t','r','i','p','e'], "(", ['d','i','s','h'], ")" ] ]
                              `plural`     FuCUL,

    FuCayL |< aT              `noun`    {- <kuray^saT> -}      [ unwords [ ['c','r','e','p','e'], "(", ['f','a','b','r','i','c'], ")" ] ],

    HaFCaL                    `adj`     {- <'akra^s> -}        [ unwords [ ['p','o','t'], "-", ['b','e','l','l','i','e','d'] ], ['p','a','u','n','c','h','y'] ],

    MuFCiL                    `adj`     {- <mukri^s> -}        [ unwords [ ['p','o','t'], "-", ['b','e','l','l','i','e','d'] ], ['p','a','u','n','c','h','y'] ],

    MutaFaCCiL                `adj`     {- <mutakarri^s> -}    [ unwords [ ['p','o','t'], "-", ['b','e','l','l','i','e','d'] ], ['p','a','u','n','c','h','y'] ] ]


cluster_94  = cluster

 |> "k r ^s n" <| [

    KaRDUS |< Iy              `noun`    {- <kar^sUnIy> -}      [ unwords [ ['K','a','r','s','h','o','u','n','i'], "(", ['A','r','a','b','i','c'], ['i','n'], ['S','y','r','i','a','c'], ['s','c','r','i','p','t'], ")" ] ] ]


cluster_95  = cluster

 |> "k r .t" <| [

    FaCACiL |< Iy             `noun`    {- <karAri.tIy> -}     [ ['c','a','r','r','i','e','r'], ['d','r','a','y','m','a','n'] ]
                              `plural`     FaCACiL |< Iy |< Un
                              `femini`     FaCACiL |< Iy |< aT ]


cluster_96  = cluster

 |> "k r `" <| [

    FaCaL                     `verb`    {- <kara`> -}          [ ['s','i','p'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <takarra`> -}       [ unwords [ ['p','e','r','f','o','r','m'], ['a','b','l','u','t','i','o','n','s'] ], ['e','r','u','c','t'], ['b','e','l','c','h'] ],

    FaCL                      `noun`    {- <kar`> -}           [ ['s','i','p','p','i','n','g'], ['s','i','p'], ['s','w','a','l','l','o','w'] ]
                              `plural`     FuCUL,

    FuCAL                     `noun`    {- <kurA`> -}          [ ['l','e','g'], ['t','r','o','t','t','e','r'], ['e','x','t','r','e','m','i','t','y'] ]
                              `plural`     HaFCuL
                              `plural`     HaFACiL,

    TaFCIL |< aT              `noun`    {- <takrI`aT> -}       [ ['b','e','l','c','h','i','n','g'], ['e','r','u','c','t','a','t','i','o','n'] ],

    FACiL                     `noun`    {- <kAri`> -}          [ ['f','o','o','t'], ['a','n','k','l','e'], ['t','r','o','t','t','e','r'] ]
                              `plural`     FawACiL ]


cluster_97  = cluster

 |> ['k','a','r','a','f','s'] <| [

    _____                     `noun`    {- <karafs> -}         [ ['c','e','l','e','r','y'] ] ]


cluster_98  = cluster

 |> "k r k" <| [

    FuCL                      `noun`    {- <kurk> -}           [ ['f','u','r'] ] ]

 |> "k r k" <| [

    FuCL |< Iy                `noun`    {- <kurkIy> -}         [ unwords [ ['c','r','a','n','e'], "(", ['z','o','o','l','.'], ")" ] ]
                              `plural`     FaCALI ]

 |> "k r k" <| [

    FaCaL |< aT               `noun`    {- <karakaT> -}        [ unwords [ ['d','i','s','t','i','l','l','i','n','g'], ['a','p','p','a','r','a','t','u','s'] ] ],

    FaCCAL |< aT              `noun`    {- <karrAkaT> -}       [ unwords [ ['d','r','e','d','g','i','n','g'], ['m','a','c','h','i','n','e'] ], ['p','e','n','i','t','e','n','t','i','a','r','y'] ]
                              `plural`     FaCCAL |< At ]

 |> ['k','u','r','I','k'] <| [

    _____                     `noun`    {- <kurIk> -}          [ ['s','h','o','v','e','l'] ]
                              `plural`     _____ |< At ]

 |> ['k','U','r','i','k'] <| [

    _____                     `noun`    {- <kUrik> -}          [ unwords [ ['f','o','r','c','e','d'], ['l','a','b','o','r'] ] ] ]


cluster_99  = cluster

 |> "k r k b" <| [

    KaRDaS                    `verb`    {- <karkab> -}         [ ['c','o','n','f','u','s','e'], ['d','i','s','t','u','r','b'] ],

    KaRDaS |< aT              `noun`    {- <karkabaT> -}       [ ['d','i','s','o','r','d','e','r'], ['c','o','n','f','u','s','i','o','n'] ] ]


cluster_100 = cluster

 |> ['k','A','r','I','k','A','t','U','r'] <| [

    _____                     `noun`    {- <kArIkAtUr> -}      [ ['c','a','r','i','c','a','t','u','r','e'], ['c','a','r','t','o','o','n'] ],

    _____ |< Iy               `adj`     {- <kArIkAtUrIy> -}    [ ['c','a','r','i','c','a','t','u','r','e'], ['c','a','r','t','o','o','n'] ] ]


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
