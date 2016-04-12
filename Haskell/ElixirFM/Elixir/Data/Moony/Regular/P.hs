
module Elixir.Data.Moony.Regular.P (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> "q ^s ` m" <| [

    KaRDaS                    `noun`    {- <qa^s`am> -}        [ ['l','i','o','n'] ]
                              `plural`     KaRADiS ]


cluster_2   = cluster

 |> "q ^s f" <| [

    FaCiL                     `verb`    {- <qa^sif> -}         [ unwords [ ['b','e'], ['f','i','l','t','h','y'] ] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <qa^suf> -}         [ unwords [ ['b','e'], ['f','i','l','t','h','y'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qa^s^saf> -}       [ unwords [ ['b','e'], ['c','h','a','p','p','e','d'] ] ],

    TaFaCCaL                  `verb`    {- <taqa^s^saf> -}     [ unwords [ ['b','e'], ['a','u','s','t','e','r','e'] ] ],

    FiCL |< aT                `noun`    {- <qi^sfaT> -}        [ unwords [ ['b','r','e','a','d'], ['c','r','u','s','t'] ] ]
                              `plural`     FiCaL,

    TaFaCCuL                  `noun`    {- <taqa^s^suf> -}     [ ['a','u','s','t','e','r','i','t','y'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <taqa^s^sufIy> -}   [ ['a','u','s','t','e','r','e'], ['a','u','s','t','e','r','i','t','y'] ],

    MutaFaCCiL                `adj`     {- <mutaqa^s^sif> -}   [ ['a','u','s','t','e','r','e'], ['a','s','c','e','t','i','c'] ],

    MutaFaCCiL                `noun`    {- <mutaqa^s^sif> -}   [ ['c','h','a','p','p','e','d'] ] ]


cluster_3   = cluster

 |> "q ^s q ^s" <| [

    KaRDaS                    `verb`    {- <qa^sqa^s> -}       [ ['c','u','r','e'], unwords [ ['s','w','e','e','p'], ['a','w','a','y'] ] ],

    KaRDaS |< aT              `noun`    {- <qa^sqa^saT> -}     [ ['c','u','r','i','n','g'], unwords [ ['s','w','e','e','p','i','n','g'], ['a','w','a','y'] ] ] ]


cluster_4   = cluster

 |> "q ^s l" <| [

    FaCiL                     `verb`    {- <qa^sil> -}         [ unwords [ ['b','e'], ['p','e','n','n','i','l','e','s','s'] ] ]
                              `imperf`     FCaL,

    FaCaL                     `noun`    {- <qa^sal> -}         [ ['d','e','s','t','i','t','u','t','i','o','n'] ],

    FaCL |< aT                `noun`    {- <qa^slaT> -}        [ ['b','a','r','r','a','c','k','s'], ['h','o','s','p','i','t','a','l'] ]
                              `plural`     FiCaL ]


cluster_5   = cluster

 |> "q ^s l q" <| [

    KuRDAS                    `noun`    {- <qu^slAq> -}        [ ['b','a','r','r','a','c','k','s'] ]
                              `plural`     KuRDAS |< At ]


cluster_6   = cluster

 |> "q ^s m ^s" <| [

    KiRDiS                    `noun`    {- <qi^smi^s> -}       [ ['c','u','r','r','a','n','t','s'], unwords [ ['s','e','e','d','l','e','s','s'], ['r','a','i','s','i','n','s'] ] ] ]


cluster_7   = cluster

 |> ['q','A','^','s','A','n','I'] <| [

    _____                     `noun`    {- <qA^sAnI> -}        [ unwords [ ['g','l','a','z','e','d'], ['t','i','l','e','s'] ], ['p','o','r','c','e','l','a','i','n'] ] ]


cluster_8   = cluster

 |> ['q','I','^','s','A','n','I'] <| [

    _____                     `noun`    {- <qI^sAnI> -}        [ unwords [ ['g','l','a','z','e','d'], ['t','i','l','e','s'] ], ['p','o','r','c','e','l','a','i','n'] ] ]


cluster_9   = cluster

 |> "q .s b" <| [

    FaCaL                     `verb`    {- <qa.sab> -}         [ ['b','u','t','c','h','e','r'], ['c','a','r','v','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qa.s.sab> -}       [ ['c','u','r','l'], ['e','m','b','r','o','i','d','e','r'] ],

    FaCL                      `noun`    {- <qa.sb> -}          [ ['b','u','t','c','h','e','r','i','n','g'], ['c','a','r','v','i','n','g'] ],

    FaCaL |< aT               `noun`    {- <qa.sabaT> -}       [ ['c','a','n','e'], ['r','e','e','d'], ['b','r','o','c','a','d','e'], ['t','u','b','e'], ['p','i','p','e'] ]
                              `plural`     FaCaL |< At,

    FiCAL |< aT               `noun`    {- <qi.sAbaT> -}       [ ['b','u','t','c','h','e','r','y'] ],

    FuCayL |< aT              `noun`    {- <qu.saybaT> -}      [ ['o','a','t','s'] ],

    FuCayL |< Iy              `adj`     {- <qu.saybIy> -}      [ ['G','o','s','a','i','b','i'] ],

    FaCCAL                    `noun`    {- <qa.s.sAb> -}       [ ['b','u','t','c','h','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <qa.s.sAb> -}       [ unwords [ ['l','a','n','d'], ['s','u','r','v','e','y','o','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <qa.s.sAb> -}       [ ['Q','a','s','s','a','b'] ],

    FuCCAL |< aT              `noun`    {- <qu.s.sAbaT> -}     [ unwords [ ['r','e','e','d'], ['p','i','p','e'] ] ],

    MuFaCCaL                  `adj`     {- <muqa.s.sab> -}     [ ['e','m','b','r','o','i','d','e','r','e','d'], ['b','r','o','c','a','d','e','d'] ] ]


cluster_10  = cluster

 |> "q .s ^g" <| [

    FuCAL                     `noun`    {- <qu.sA^g> -}        [ ['p','l','i','e','r','s'], ['p','i','n','c','e','r','s'] ]
                              `plural`     FuCAL |< At ]


cluster_11  = cluster

 |> "q .s d" <| [

    FaCaL                     `verb`    {- <qa.sad> -}         [ ['i','n','t','e','n','d'], ['m','e','a','n'], ['p','u','r','s','u','e'] ]
                              `imperf`     FCiL,

    HaFCaL                    `verb`    {- <'aq.sad> -}        [ ['i','n','d','u','c','e'] ],

    TaFaCCaL                  `verb`    {- <taqa.s.sad> -}     [ ['i','n','t','e','n','d'], ['c','o','n','s','i','d','e','r'] ],

    InFaCaL                   `verb`    {- <inqa.sad> -}       [ unwords [ ['b','e'], ['b','r','o','k','e','n'] ] ],

    IFtaCaL                   `verb`    {- <iqta.sad> -}       [ ['e','c','o','n','o','m','i','z','e'], ['s','a','v','e'], unwords [ ['b','e'], ['f','r','u','g','a','l'] ] ],

    FaCL                      `noun`    {- <qa.sd> -}          [ ['i','n','t','e','n','t'], ['p','u','r','p','o','s','e'], ['g','o','a','l'] ],

    FaCL |< Iy                `adj`     {- <qa.sdIy> -}        [ ['i','n','t','e','n','t','i','o','n','a','l'] ],

    FuCAL                     `noun`    {- <qu.sAd> -}         [ unwords [ ['i','n'], ['f','r','o','n','t'], ['o','f'] ], ['o','p','p','o','s','i','t','e'] ],

    FaCIL                     `noun`    {- <qa.sId> -}         [ unwords [ ['m','a','i','n'], ['p','o','i','n','t'] ], ['e','s','s','e','n','c','e'], ['g','i','s','t'] ],

    FaCIL |< aT               `noun`    {- <qa.sIdaT> -}       [ ['p','o','e','m'] ]
                              `plural`     FaCA'iL,

    HaFCaL                    `adj`     {- <'aq.sad> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['d','i','r','e','c','t'] ] ],

    MaFCiL                    `noun`    {- <maq.sid> -}        [ ['p','u','r','p','o','s','e'], ['i','n','t','e','n','t'], ['i','n','t','e','n','t','i','o','n','s'], ['g','o','a','l','s'] ]
                              `plural`     MaFACiL,

    MaFCiL                    `noun`    {- <maq.sid> -}        [ ['d','e','s','t','i','n','a','t','i','o','n'], ['g','o','a','l'] ]
                              `plural`     MaFACiL,

    MaFACiL                   `noun`    {- <maqA.sid> -}       [ ['M','a','q','a','s','i','d'] ],

    TaFaCCuL                  `noun`    {- <taqa.s.sud> -}     [ ['i','n','t','e','n','t','i','o','n'], ['s','t','r','i','v','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    IFtiCAL                   `noun`    {- <iqti.sAd> -}       [ ['e','c','o','n','o','m','y'], ['s','a','v','i','n','g'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `noun`    {- <iqti.sAdIy> -}     [ ['e','c','o','n','o','m','i','s','t'] ]
                              `plural`     IFtiCAL |< Iy |< Un
                              `femini`     IFtiCAL |< Iy |< aT,

    IFtiCAL |< Iy             `adj`     {- <iqti.sAdIy> -}     [ ['e','c','o','n','o','m','i','c'], ['e','c','o','n','o','m','i','c','a','l'] ],

    FACiL                     `adj`     {- <qA.sid> -}         [ ['d','i','r','e','c','t'], ['s','t','r','a','i','g','h','t'] ],

    FACiL                     `noun`    {- <qA.sid> -}         [ ['d','e','l','e','g','a','t','e'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT,

    FiCAL |< aT               `noun`    {- <qi.sAdaT> -}       [ ['l','e','g','a','t','i','o','n'] ],

    MaFCUL                    `noun`    {- <maq.sUd> -}        [ ['p','u','r','p','o','s','e'], ['a','i','m'], ['g','o','a','l'] ],

    MaFCUL                    `adj`     {- <maq.sUd> -}        [ ['d','e','l','i','b','e','r','a','t','e'], ['i','n','t','e','n','t','i','o','n','a','l'] ] ]


cluster_12  = cluster

 |> "q .s d r" <| [

    KaRDaS                    `verb`    {- <qa.sdar> -}        [ unwords [ ['p','l','a','t','e'], ['w','i','t','h'], ['t','i','n'] ] ],

    KaRDIS                    `noun`    {- <qa.sdIr> -}        [ unwords [ ['t','i','n'], ['p','l','a','t','i','n','g'] ] ],

    MuKaRDiS                  `noun`    {- <muqa.sdir> -}      [ ['t','i','n','s','m','i','t','h'] ]
                              `plural`     MuKaRDiS |< Un
                              `femini`     MuKaRDiS |< aT,

    MuKaRDaS                  `adj`     {- <muqa.sdar> -}      [ unwords [ ['t','i','n'], ['p','l','a','t','e','d'] ] ] ]


cluster_13  = cluster

 |> "q .s r" <| [

    FaCuL                     `verb`    {- <qa.sur> -}         [ unwords [ ['b','e'], ['i','n','s','u','f','f','i','c','i','e','n','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FiCaL
                              `masdar`     FaCL
                              `masdar`     FaCAL |< aT,

    FaCaL                     `verb`    {- <qa.sar> -}         [ unwords [ ['f','a','l','l'], ['s','h','o','r','t'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCaL                     `verb`    {- <qa.sar> -}         [ ['s','h','o','r','t','e','n'], ['c','u','r','t','a','i','l'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <qa.s.sar> -}       [ ['s','h','o','r','t','e','n'], ['c','u','r','t','a','i','l'] ],

    FaCCaL                    `verb`    {- <qa.s.sar> -}       [ unwords [ ['f','a','l','l'], ['s','h','o','r','t'] ], unwords [ ['b','e'], ['i','n','f','e','r','i','o','r'] ] ],

    HaFCaL                    `verb`    {- <'aq.sar> -}        [ ['s','h','o','r','t','e','n'], ['c','u','r','t','a','i','l'] ],

    TaFACaL                   `verb`    {- <taqA.sar> -}       [ unwords [ ['b','e','c','o','m','e'], ['s','m','a','l','l','e','r'] ], ['r','e','f','r','a','i','n'] ],

    IFtaCaL                   `verb`    {- <iqta.sar> -}       [ unwords [ ['b','e'], ['l','i','m','i','t','e','d'], ['t','o'] ], ['a','b','b','r','e','v','i','a','t','e'], ['s','h','o','r','t','e','n'] ],

    IstaFCaL                  `verb`    {- <istaq.sar> -}      [ unwords [ ['r','e','g','a','r','d'], ['a','s'], ['d','e','f','i','c','i','e','n','t'] ] ],

    FaCL                      `noun`    {- <qa.sr> -}          [ ['s','h','o','r','t','n','e','s','s'], ['s','m','a','l','l','n','e','s','s'] ],

    FaCL                      `noun`    {- <qa.sr> -}          [ ['l','i','m','i','t','i','n','g'], ['r','e','s','t','r','i','c','t','i','n','g'] ],

    FaCL                      `noun`    {- <qa.sr> -}          [ ['c','a','s','t','l','e'], ['p','a','l','a','c','e'] ]
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <qa.sraT> -}        [ ['Q','a','s','r','a'] ],

    FaCL |< Iy |< aT          `noun`    {- <qa.srIyaT> -}      [ unwords [ ['f','l','o','w','e','r'], ['p','o','t'] ], unwords [ ['c','h','a','m','b','e','r'], ['p','o','t'] ] ]
                              `plural`     FaCALI,

    FiCaL                     `noun`    {- <qi.sar> -}         [ ['s','h','o','r','t','n','e','s','s'], ['b','r','e','v','i','t','y'] ],

    FaCaL                     `noun`    {- <qa.sar> -}         [ ['n','e','g','l','i','g','e','n','c','e'], ['i','n','d','o','l','e','n','c','e'] ],

    FaCAL                     `noun`    {- <qa.sAr> -}         [ ['u','t','m','o','s','t'], ['l','i','m','i','t'] ],

    FuCAL                     `noun`    {- <qu.sAr> -}         [ ['u','t','m','o','s','t'], ['l','i','m','i','t'] ],

    FaCCAL                    `noun`    {- <qa.s.sAr> -}       [ ['f','u','l','l','e','r'], ['b','l','e','a','c','h','e','r'] ],

    FaCCAL                    `noun`    {- <qa.s.sAr> -}       [ ['Q','a','s','s','a','r'] ],

    FuCUL                     `noun`    {- <qu.sUr> -}         [ ['s','h','o','r','t','c','o','m','i','n','g'], ['i','n','s','u','f','f','i','c','i','e','n','c','y'], ['n','e','g','l','i','g','e','n','c','e'] ],

    FaCIL                     `adj`     {- <qa.sIr> -}         [ ['s','h','o','r','t'], ['s','m','a','l','l'] ]
                              `plural`     FiCAL,

    FiCAL |< aT               `noun`    {- <qi.sAraT> -}       [ unwords [ ['b','l','e','a','c','h','e','r','\'','s'], ['t','r','a','d','e'] ] ],

    FuCALY                    `noun`    {- <qu.sArY> -}        [ ['u','t','m','o','s','t'], ['l','i','m','i','t'] ],

    HaFCaL                    `adj`     {- <'aq.sar> -}        [ unwords [ ['s','h','o','r','t','e','r'], "/", ['s','h','o','r','t','e','s','t'] ] ],

    TaFCIL                    `noun`    {- <taq.sIr> -}        [ ['d','e','f','i','c','i','e','n','c','y'], ['i','n','a','d','e','q','u','a','c','y'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL                    `noun`    {- <taq.sIr> -}        [ ['d','i','m','i','n','u','t','i','o','n'], ['c','u','r','t','a','i','l','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `adj`     {- <qA.sir> -}         [ ['l','i','m','i','t','e','d'], ['r','e','s','t','r','i','c','t','e','d'] ],

    FACiL                     `noun`    {- <qA.sir> -}         [ unwords [ ['u','n','d','e','r'], ['a','g','e'] ], ['m','i','n','o','r'] ]
                              `plural`     FuCCaL
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MaFCUL                    `adj`     {- <maq.sUr> -}        [ ['l','i','m','i','t','e','d'], ['r','e','s','t','r','i','c','t','e','d'] ],

    MaFCUL                    `noun`    {- <maq.sUr> -}        [ ['s','h','o','r','t','e','n','e','d'] ],

    MaFCUL |< aT              `noun`    {- <maq.sUraT> -}      [ ['p','a','l','a','c','e'], ['c','a','b','i','n','e','t'], ['c','o','m','p','a','r','t','m','e','n','t'] ]
                              `plural`     MaFACiL,

    MuFaCCiL                  `adj`     {- <muqa.s.sir> -}     [ ['n','e','g','l','i','g','e','n','t'] ],

    MuFtaCiL                  `adj`     {- <muqta.sir> -}      [ ['l','i','m','i','t','e','d'], ['r','e','s','t','r','i','c','t','e','d'], ['c','o','n','f','i','n','e','d'] ],

    MuFtaCaL                  `adj`     {- <muqta.sar> -}      [ ['s','h','o','r','t','e','n','e','d'], ['c','o','n','c','i','s','e'] ] ]

 |> ['\'','u','q','.','s','u','r'] <| [

    _____                     `noun`    {- <'uq.sur> -}        [ ['L','u','x','o','r'] ] ]


cluster_14  = cluster

 |> "q .s r" <| [

    FayCaL                    `noun`    {- <qay.sar> -}        [ ['Q','a','i','s','a','r'] ],

    FayCaL                    `noun`    {- <qay.sar> -}        [ ['C','a','e','s','a','r'] ],

    FayCaL                    `noun`    {- <qay.sar> -}        [ ['E','m','p','e','r','o','r'], ['e','m','p','e','r','o','r'] ]
                              `plural`     FayACiL |< aT,

    FayCaL                    `noun`    {- <qay.sar> -}        [ ['T','z','a','r'] ],

    FayCaL |< Iy              `adj`     {- <qay.sarIy> -}      [ ['c','e','s','a','r','e','a','n'], ['i','m','p','e','r','i','a','l'] ],

    FayCaL |< Iy |< aT        `noun`    {- <qay.sarIyaT> -}    [ unwords [ ['c','e','s','a','r','e','a','n'], ['s','e','c','t','i','o','n'] ] ] ]


cluster_15  = cluster

 |> "q .s `" <| [

    FaCaL                     `verb`    {- <qa.sa`> -}         [ ['g','u','l','p'], ['q','u','e','n','c','h'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <taqa.s.sa`> -}     [ unwords [ ['w','r','i','t','h','e'], ['s','e','d','u','c','t','i','v','e','l','y'] ] ],

    FaCL |< aT                `noun`    {- <qa.s`aT> -}        [ unwords [ ['l','a','r','g','e'], ['b','o','w','l'] ], ['k','e','t','t','l','e'] ]
                              `plural`     FiCAL
                              `plural`     FiCaL
                              `plural`     FaCaL |< At,

    FuCAL                     `noun`    {- <qu.sA`> -}         [ ['c','r','e','t','i','n','i','s','m'] ] ]


cluster_16  = cluster

 |> "q .s f" <| [

    FaCaL                     `verb`    {- <qa.saf> -}         [ ['b','o','m','b'], ['s','h','e','l','l'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    TaFaCCaL                  `verb`    {- <taqa.s.saf> -}     [ unwords [ ['b','e'], ['b','r','o','k','e','n'] ] ],

    InFaCaL                   `verb`    {- <inqa.saf> -}       [ unwords [ ['b','e'], ['b','r','o','k','e','n'] ] ],

    FaCL                      `noun`    {- <qa.sf> -}          [ ['b','o','m','b','a','r','d','m','e','n','t'], ['s','h','e','l','l','i','n','g'] ]
                              `plural`     FaCaL |< At,

    FaCiL                     `adj`     {- <qa.sif> -}         [ ['f','r','a','i','l'], ['f','r','a','g','i','l','e'] ],

    FaCIL                     `adj`     {- <qa.sIf> -}         [ ['f','r','a','i','l'], ['f','r','a','g','i','l','e'] ],

    FuCUL                     `noun`    {- <qu.sUf> -}         [ ['r','e','v','e','l','r','y'], ['c','a','r','o','u','s','a','l'] ],

    MaFCaL                    `noun`    {- <maq.saf> -}        [ unwords [ ['s','n','a','c','k'], ['b','a','r'] ], ['b','u','f','f','e','t'] ]
                              `plural`     MaFACiL ]


cluster_17  = cluster

 |> "q .s q .s" <| [

    KaRDaS                    `verb`    {- <qa.sqa.s> -}       [ ['b','r','e','a','k'], ['s','h','a','t','t','e','r'], ['t','r','i','m'] ],

    KaRDaS |< aT              `noun`    {- <qa.sqa.saT> -}     [ ['b','r','e','a','k','i','n','g'], ['s','h','a','t','t','e','r','i','n','g'], ['t','r','i','m','m','i','n','g'] ] ]


cluster_18  = cluster

 |> "q .s l" <| [

    FaCaL                     `verb`    {- <qa.sal> -}         [ unwords [ ['c','u','t'], ['o','f','f'] ] ]
                              `imperf`     FCiL,

    IFtaCaL                   `verb`    {- <iqta.sal> -}       [ unwords [ ['c','u','t'], ['o','f','f'] ] ],

    FaCaL                     `noun`    {- <qa.sal> -}         [ ['c','h','a','f','f'], ['s','t','a','l','k'] ],

    FaCCAL                    `noun`    {- <qa.s.sAl> -}       [ ['s','h','a','r','p'], ['c','u','t','t','i','n','g'] ],

    FaCIL                     `noun`    {- <qa.sIl> -}         [ unwords [ ['w','i','n','t','e','r'], ['b','a','r','l','e','y'] ] ],

    MiFCaL                    `noun`    {- <miq.sal> -}        [ ['s','h','a','r','p'], ['c','u','t','t','i','n','g'] ],

    MiFCaL |< aT              `noun`    {- <miq.salaT> -}      [ ['g','u','i','l','l','o','t','i','n','e'] ]
                              `plural`     MaFACiL,

    FACiL                     `adj`     {- <qA.sil> -}         [ ['s','h','a','r','p'], ['c','u','t','t','i','n','g'] ] ]


cluster_19  = cluster

 |> "q .s m" <| [

    FaCaL                     `verb`    {- <qa.sam> -}         [ ['b','r','e','a','k'], ['s','h','a','t','t','e','r'] ]
                              `imperf`     FCiL,

    TaFaCCaL                  `verb`    {- <taqa.s.sam> -}     [ unwords [ ['b','e'], ['b','r','o','k','e','n'] ] ],

    InFaCaL                   `verb`    {- <inqa.sam> -}       [ unwords [ ['b','e'], ['b','r','o','k','e','n'] ] ],

    FaCiL                     `adj`     {- <qa.sim> -}         [ ['f','r','a','g','i','l','e'] ],

    FaCIL                     `adj`     {- <qa.sIm> -}         [ ['f','r','a','g','i','l','e'] ],

    FACiL                     `adj`     {- <qA.sim> -}         [ ['b','r','e','a','k','i','n','g'], ['c','r','u','s','h','i','n','g'] ]
                              `plural`     FawACiL ]


cluster_20  = cluster

 |> "q .d b" <| [

    FaCaL                     `verb`    {- <qa.dab> -}         [ unwords [ ['c','u','t'], ['o','f','f'] ], ['t','r','i','m'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qa.d.dab> -}       [ unwords [ ['c','u','t'], ['o','f','f'] ], ['t','r','i','m'] ],

    IFtaCaL                   `verb`    {- <iqta.dab> -}       [ ['t','r','i','m'], ['a','b','r','i','d','g','e'], ['e','x','t','e','m','p','o','r','i','z','e'] ],

    FaCL                      `noun`    {- <qa.db> -}          [ ['h','e','r','b','s'] ],

    FaCIL                     `noun`    {- <qa.dIb> -}         [ ['s','t','i','c','k'], ['b','a','r'], ['r','o','d'] ]
                              `plural`     FuCLAn,

    FaCIL                     `noun`    {- <qa.dIb> -}         [ ['p','e','n','i','s'] ]
                              `plural`     FuCLAn,

    FuCAL |< aT               `noun`    {- <qu.dAbaT> -}       [ ['t','r','i','m','m','i','n','g','s'], unwords [ ['c','u','t'], ['o','f','f'] ] ],

    MiFCaL                    `noun`    {- <miq.dab> -}        [ unwords [ ['p','r','u','n','i','n','g'], ['s','h','e','a','r','s'] ] ],

    IFtiCAL                   `noun`    {- <iqti.dAb> -}       [ ['s','u','m','m','a','r','y'], ['a','b','r','i','d','g','m','e','n','t'] ]
                              `plural`     IFtiCAL |< At,

    MuFtaCaL                  `adj`     {- <muqta.dab> -}      [ ['s','u','m','m','a','r','i','z','e','d'], ['c','o','n','c','i','s','e'], ['s','h','o','r','t','e','n','e','d'] ],

    MuFtaCaL                  `noun`    {- <muqta.dab> -}      [ ['s','u','m','m','a','r','y'] ]
                              `plural`     MuFtaCaL |< At ]


cluster_21  = cluster

 |> "q .d `" <| [

    FaCL                      `noun`    {- <qa.d`> -}          [ ['c','o','l','i','c'], ['g','r','i','p','e','s'] ],

    FuCAL                     `noun`    {- <qu.dA`> -}         [ ['c','o','l','i','c'], ['g','r','i','p','e','s'] ] ]


cluster_22  = cluster

 |> "q .d f" <| [

    FaCuL                     `verb`    {- <qa.duf> -}         [ unwords [ ['b','e','c','o','m','e'], ['s','l','e','n','d','e','r'] ], unwords [ ['b','e','c','o','m','e'], ['n','a','r','r','o','w'] ] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <qa.df> -}          [ ['n','a','r','r','o','w','i','n','g'] ] ]


cluster_23  = cluster

 |> "q .d m" <| [

    FaCiL                     `verb`    {- <qa.dim> -}         [ ['g','n','a','w'], ['n','i','b','b','l','e'] ]
                              `imperf`     FCaL,

    FaCaL                     `verb`    {- <qa.dam> -}         [ ['g','n','a','w'], ['n','i','b','b','l','e'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <qa.dm> -}          [ ['g','n','a','w','i','n','g'], ['n','i','b','b','l','i','n','g'] ],

    FaCL |< aT                `noun`    {- <qa.dmaT> -}        [ ['s','n','a','c','k'] ],

    FaCAL |< aT               `noun`    {- <qa.dAmaT> -}       [ unwords [ ['r','o','a','s','t','e','d'], ['c','h','i','c','k'], "-", ['p','e','a','s'] ], unwords [ ['a','s','s','o','r','t','e','d'], ['n','u','t','s'] ] ],

    FACiL                     `adj`     {- <qA.dim> -}         [ ['r','o','d','e','n','t'] ] ]


cluster_24  = cluster

 |> "q .t b" <| [

    FaCaL                     `verb`    {- <qa.tab> -}         [ unwords [ ['d','r','a','w'], ['t','o','g','e','t','h','e','r'] ], ['c','o','n','c','e','n','t','r','a','t','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qa.t.tab> -}       [ ['f','r','o','w','n'], ['s','c','o','w','l'] ],

    TaFaCCaL                  `verb`    {- <taqa.t.tab> -}     [ unwords [ ['b','e','c','o','m','e'], ['g','l','o','o','m','y'] ] ],

    IstaFCaL                  `verb`    {- <istaq.tab> -}      [ ['u','n','i','t','e'], ['p','o','l','a','r','i','z','e'] ],

    FuCL                      `noun`    {- <qu.tb> -}          [ ['a','x','i','s'], ['p','o','l','e'] ]
                              `plural`     HaFCAL,

    FuCL                      `noun`    {- <qu.tb> -}          [ ['l','e','a','d','e','r'], unwords [ ['t','o','p'], ['f','i','g','u','r','e'] ] ]
                              `plural`     HaFCAL,

    FuCL |< Iy                `adj`     {- <qu.tbIy> -}        [ ['p','o','l','a','r'] ],

    FuCL |< Iy |< aT          `noun`    {- <qu.tbIyaT> -}      [ ['p','o','l','a','r','i','t','y'] ],

    FuCL |< aT                `noun`    {- <qu.tbaT> -}        [ ['s','t','i','t','c','h'] ],

    FaCUL                     `adj`     {- <qa.tUb> -}         [ ['f','r','o','w','n','i','n','g'], ['s','c','o','w','l','i','n','g'] ],

    TaFCIL |< aT              `noun`    {- <taq.tIbaT> -}      [ ['f','r','o','w','n'], ['s','c','o','w','l'] ],

    IstiFCAL                  `noun`    {- <istiq.tAb> -}      [ ['p','o','l','a','r','i','z','a','t','i','o','n'], ['u','n','i','f','i','c','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL |< aT               `noun`    {- <qA.tibaT> -}       [ unwords [ ['a','l','l'], ['w','i','t','h','o','u','t'], ['e','x','c','e','p','t','i','o','n'] ], unwords [ ['o','n','e'], ['a','n','d'], ['a','l','l'] ] ] ]


cluster_25  = cluster

 |> "q .t r" <| [

    FaCaL                     `verb`    {- <qa.tar> -}         [ ['t','r','i','c','k','l','e'], ['d','r','i','p'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qa.t.tar> -}       [ unwords [ ['m','a','k','e'], ['d','r','i','p'] ], unwords [ ['m','a','k','e'], ['t','r','i','c','k','l','e'] ] ],

    TaFaCCaL                  `verb`    {- <taqa.t.tar> -}     [ ['t','r','i','c','k','l','e'], ['d','r','i','p'] ],

    TaFACaL                   `verb`    {- <taqA.tar> -}       [ ['t','r','i','c','k','l','e'], unwords [ ['c','o','m','e'], ['i','n'], ['g','r','o','u','p','s'] ] ],

    IstaFCaL                  `verb`    {- <istaq.tar> -}      [ ['d','i','s','t','i','l','l'] ],

    FaCaL                     `noun`    {- <qa.tar> -}         [ ['Q','a','t','a','r'] ]
                           
    `excepts` Diptote,

    FaCaL |< Iy               `adj`     {- <qa.tarIy> -}       [ ['Q','a','t','a','r','i'] ],

    FaCaL |< Iy               `noun`    {- <qa.tarIy> -}       [ ['Q','a','t','a','r','i'] ]
                              `plural`     FaCaL |< Iy |< Un
                              `femini`     FaCaL |< Iy |< aT,

    FaCL                      `noun`    {- <qa.tr> -}          [ ['d','r','i','p','p','i','n','g'], ['t','r','i','c','k','l','i','n','g'] ],

    FaCL                      `noun`    {- <qa.tr> -}          [ ['d','r','o','p'] ]
                              `plural`     FiCAL,

    FaCL |< aT                `noun`    {- <qa.traT> -}        [ ['d','r','o','p'] ]
                              `plural`     FaCaL |< At,

    FuCayL                    `noun`    {- <qu.tayr> -}        [ ['d','r','o','p','l','e','t'] ]
                              `plural`     FuCayL |< At,

    FaCL                      `noun`    {- <qa.tr> -}          [ ['t','r','a','i','n'] ]
                              `plural`     FuCUL |< At,

    FiCAL                     `noun`    {- <qi.tAr> -}         [ ['t','r','a','i','n'] ]
                              `plural`     FiCAL |< At
                              `plural`     FuCuL
                              `plural`     FuCuL |< At,

    FaCaL |<< "^g" |< Iy      `noun`    {- <qa.tar^gIy> -}     [ ['s','h','u','n','t','e','r'], ['s','w','i','t','c','h','m','a','n'] ]
                              `plural`     FaCaL |<< "^g" |< Iy |< aT,

    FuCL                      `noun`    {- <qu.tr> -}          [ ['r','e','g','i','o','n'], ['d','i','s','t','r','i','c','t'], ['c','o','u','n','t','r','i','e','s'] ]
                              `plural`     HaFCAL,

    FuCL |< Iy                `adj`     {- <qu.trIy> -}        [ ['r','e','g','i','o','n','a','l'] ],

    FaCCAL |< aT              `noun`    {- <qa.t.tAraT> -}     [ ['p','i','p','e','t','t','e'], ['d','r','o','p','p','e','r'] ],

    MiFCaL                    `noun`    {- <miq.tar> -}        [ ['c','e','n','s','e','r'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <taq.tIr> -}        [ ['f','i','l','t','r','a','t','i','o','n'], ['r','e','f','i','n','i','n','g'], ['d','i','s','t','i','l','l','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    IstiFCAL                  `noun`    {- <istiq.tAr> -}      [ ['d','i','s','t','i','l','l','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL |< aT               `noun`    {- <qA.tiraT> -}       [ ['l','o','c','o','m','o','t','i','v','e'], unwords [ ['t','r','a','c','t','o','r'], ['t','r','u','c','k'] ] ]
                              `plural`     FACiL |< At,

    MaFCUL                    `noun`    {- <maq.tUr> -}        [ ['t','r','a','i','l','e','r'] ]
                              `plural`     MaFCUL |< At,

    MuFaCCaL                  `noun`    {- <muqa.t.tar> -}     [ ['d','i','s','t','i','l','l','a','t','e'] ]
                              `plural`     MuFaCCaL |< At,

    MustaFCaL                 `noun`    {- <mustaq.tar> -}     [ ['d','i','s','t','i','l','l','a','t','e'] ]
                              `plural`     MustaFCaL |< At ]


cluster_26  = cluster

 |> "q .t r n" <| [

    KaRDaS                    `verb`    {- <qa.tran> -}        [ unwords [ ['c','o','a','t'], ['w','i','t','h'], ['t','a','r'] ] ],

    KaRDaS |< aT              `noun`    {- <qa.tranaT> -}      [ unwords [ ['c','o','a','t','i','n','g'], ['w','i','t','h'], ['t','a','r'] ] ],

    KaRDAS                    `noun`    {- <qa.trAn> -}        [ ['t','a','r'] ],

    KaRDAS |< Iy              `adj`     {- <qa.trAnIy> -}      [ unwords [ ['t','a','r'], "-", ['l','i','k','e'] ] ] ]


cluster_27  = cluster

 |> "q .t `" <| [

    FaCaL                     `verb`    {- <qa.ta`> -}         [ unwords [ ['c','u','t'], ['o','f','f'] ], ['s','e','v','e','r'], ['i','n','t','e','r','r','u','p','t'], ['s','t','o','p'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <qa.t.ta`> -}       [ unwords [ ['c','u','t'], ['a','p','a','r','t'] ] ],

    FACaL                     `verb`    {- <qA.ta`> -}         [ ['b','o','y','c','o','t','t'] ],

    HaFCaL                    `verb`    {- <'aq.ta`> -}        [ ['s','e','v','e','r'], ['i','n','t','e','r','r','u','p','t'] ],

    TaFaCCaL                  `verb`    {- <taqa.t.ta`> -}     [ unwords [ ['b','e'], ['s','e','v','e','r','e','d'] ], unwords [ ['b','e'], ['i','n','t','e','r','r','u','p','t','e','d'] ] ],

    TaFACaL                   `verb`    {- <taqA.ta`> -}       [ ['s','e','p','a','r','a','t','e'], ['i','n','t','e','r','r','u','p','t'] ],

    InFaCaL                   `verb`    {- <inqa.ta`> -}       [ unwords [ ['b','e'], ['s','e','v','e','r','e','d'] ], unwords [ ['b','e'], ['i','n','t','e','r','r','u','p','t','e','d'] ] ],

    IFtaCaL                   `verb`    {- <iqta.ta`> -}       [ unwords [ ['t','a','k','e'], ['a','p','a','r','t'] ] ],

    IstaFCaL                  `verb`    {- <istaq.ta`> -}      [ ['d','e','d','u','c','t'] ],

    FaCL                      `noun`    {- <qa.t`> -}          [ unwords [ ['b','r','e','a','k','i','n','g'], ['o','f','f'] ], ['i','n','t','e','r','r','u','p','t','i','o','n'] ],

    FaCL |<< "aN"             `noun`    {- <qa.t`aN> -}        [ ['a','b','s','o','l','u','t','e','l','y'] ],

    FaCL |< Iy                `adj`     {- <qa.t`Iy> -}        [ ['d','e','f','i','n','i','t','e'], ['f','i','n','a','l'], ['d','e','f','i','n','i','t','i','v','e'] ],

    FaCL |< Iy |< aT          `noun`    {- <qa.t`IyaT> -}      [ ['c','e','r','t','a','i','n','t','y'], ['d','e','f','i','n','i','t','e','n','e','s','s'] ],

    FiCL |< aT                `noun`    {- <qi.t`aT> -}        [ ['p','i','e','c','e'], ['p','o','r','t','i','o','n'], ['s','e','g','m','e','n','t'] ]
                              `plural`     FiCaL,

    FiCL |< aT                `noun`    {- <qi.t`aT> -}        [ ['u','n','i','t'] ],

    FuCL |< aT                `noun`    {- <qu.t`aT> -}        [ unwords [ ['p','l','o','t'], ['o','f'], ['l','a','n','d'] ], ['l','o','t'] ]
                              `plural`     FuCaL,

    FaCL |< aT                `noun`    {- <qa.t`aT> -}        [ ['s','t','u','m','p'] ]
                              `plural`     FaCaL |< At,

    FiCAL                     `noun`    {- <qi.tA`> -}         [ ['s','e','c','t','o','r'], ['s','e','c','t','i','o','n'], unwords [ ['S','t','r','i','p'], "(", ['G','a','z','a'], ")" ] ]
                              `plural`     FiCAL |< At,

    FiCAL |< Iy               `adj`     {- <qi.tA`Iy> -}       [ ['s','e','c','t','o','r'], ['s','e','c','t','i','o','n'] ],

    FaCCAL                    `noun`    {- <qa.t.tA`> -}       [ unwords [ ['s','t','o','n','e'], "-", ['c','u','t','t','e','r'] ], unwords [ ['w','o','o','d'], "-", ['c','u','t','t','e','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL |< Iy              `adj`     {- <qa.t.tA`Iy> -}     [ ['r','e','t','a','i','l'] ],

    FaCIL                     `noun`    {- <qa.tI`> -}         [ ['g','r','o','u','p'], ['h','e','r','d'], ['f','l','o','c','k'] ]
                              `plural`     FiCAL
                              `plural`     FuCLAn
                              `plural`     HaFCAL,

    FaCIL |< Iy               `adj`     {- <qa.tI`Iy> -}       [ ['g','r','o','u','p'], ['h','e','r','d'] ],

    FaCIL |< aT               `noun`    {- <qa.tI`aT> -}       [ ['b','r','e','a','k','i','n','g'], ['r','u','p','t','u','r','e'], ['r','i','f','t'] ],

    FaCIL |< aT               `noun`    {- <qa.tI`aT> -}       [ unwords [ ['f','e','u','d','a','l'], ['e','s','t','a','t','e'] ], ['f','i','e','f'] ]
                              `plural`     FaCA'iL,

    HaFCaL                    `adj`     {- <'aq.ta`> -}        [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['c','o','n','v','i','n','c','i','n','g'], "/", ['c','o','n','c','l','u','s','i','v','e'] ] ],

    HaFCaL                    `adj`     {- <'aq.ta`> -}        [ ['a','m','p','u','t','e','e'], ['m','u','t','e'] ]
                              `femini`     FaCLA',

    MaFCaL                    `noun`    {- <maq.ta`> -}        [ ['s','e','c','t','i','o','n'], ['s','e','l','e','c','t','i','o','n'], ['e','x','c','e','r','p','t'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <maq.ta`Iy> -}      [ unwords [ ['c','r','o','s','s'], "-", ['s','e','c','t','i','o','n'] ] ],

    MiFCaL                    `noun`    {- <miq.ta`> -}        [ ['c','u','t','t','e','r'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <taq.tI`> -}        [ ['f','r','a','g','m','e','n','t','a','t','i','o','n'], ['p','a','r','t','i','t','i','o','n','i','n','g'], ['i','n','t','e','r','r','u','p','t','i','o','n'], ['s','h','a','p','e','s'], ['f','i','g','u','r','e','s'], ['f','e','a','t','u','r','e','s'] ]
                              `plural`     TaFACIL
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <muqA.ta`aT> -}     [ ['b','o','y','c','o','t','t'] ],

    MuFACaL |< aT             `noun`    {- <muqA.ta`aT> -}     [ ['r','e','g','i','o','n'], ['d','i','s','t','r','i','c','t'], ['c','o','u','n','t','y'] ]
                              `plural`     MuFACaL |< At,

    HiFCAL                    `noun`    {- <'iq.tA`> -}        [ unwords [ ['f','e','u','d','a','l'], ['e','s','t','a','t','e'] ] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< aT              `noun`    {- <'iq.tA`aT> -}      [ unwords [ ['f','e','u','d','a','l'], ['e','s','t','a','t','e'] ] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'iq.tA`Iy> -}      [ ['f','e','u','d','a','l'] ],

    HiFCAL |< Iy              `adj`     {- <'iq.tA`Iy> -}      [ ['f','e','u','d','a','l','i','s','t'], unwords [ ['f','e','u','d','a','l'], ['l','o','r','d'] ] ],

    HiFCAL |< Iy |< aT        `noun`    {- <'iq.tA`IyaT> -}    [ ['f','e','u','d','a','l','i','s','m'], unwords [ ['f','e','u','d','a','l'], ['s','y','s','t','e','m'] ] ],

    TaFaCCuL                  `noun`    {- <taqa.t.tu`> -}     [ ['i','n','t','e','r','r','u','p','t','i','o','n'], ['s','e','v','e','r','a','n','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <taqA.tu`> -}       [ unwords [ ['s','e','v','e','r','a','n','c','e'], ['o','f'], ['r','e','l','a','t','i','o','n','s'] ], ['i','n','t','e','r','s','e','c','t','i','o','n'], ['j','u','n','c','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    InFiCAL                   `noun`    {- <inqi.tA`> -}       [ ['b','r','e','a','k','o','f','f'], ['d','i','s','c','o','n','t','i','n','u','a','t','i','o','n'] ]
                              `plural`     InFiCAL |< At,

    InFiCAL |< Iy |< aT       `noun`    {- <inqi.tA`IyaT> -}   [ ['s','e','p','a','r','a','t','i','s','m'] ],

    IFtiCAL                   `noun`    {- <iqti.tA`> -}       [ ['d','e','d','u','c','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IstiFCAL                  `noun`    {- <istiq.tA`> -}      [ ['d','e','d','u','c','t','i','o','n'], ['r','e','d','u','c','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `adj`     {- <qA.ti`> -}         [ ['d','e','c','i','s','i','v','e'], ['d','e','f','i','n','i','t','i','v','e'], ['c','o','n','v','i','n','c','i','n','g'], ['c','o','n','c','l','u','s','i','v','e'] ],

    FACiL                     `noun`    {- <qA.ti`> -}         [ ['p','a','r','t','i','t','i','o','n'], ['s','c','r','e','e','n'] ]
                              `plural`     FawACiL,

    FACiL                     `noun`    {- <qA.ti`> -}         [ ['c','u','t','t','e','r'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT,

    FACiL |< aT               `noun`    {- <qA.ti`aT> -}       [ ['i','n','t','e','r','r','u','p','t','e','r'], unwords [ ['c','i','r','c','u','i','t'], ['b','r','e','a','k','e','r'] ] ],

    MaFCUL                    `adj`     {- <maq.tU`> -}        [ unwords [ ['c','u','t'], ['o','f','f'] ], ['s','e','v','e','r','e','d'] ],

    MaFCUL |< aT              `noun`    {- <maq.tU`aT> -}      [ ['p','i','e','c','e'], unwords [ ['s','e','l','e','c','t','i','o','n'], "(", ['m','u','s','i','c'], "/", ['p','o','e','t','r','y'], ")" ], unwords [ ['s','h','o','r','t'], ['p','o','e','m'] ] ]
                              `plural`     MaFACIL,

    MaFCUL |< Iy |< aT        `noun`    {- <maq.tU`IyaT> -}    [ unwords [ ['p','i','e','c','e'], ['w','o','r','k'] ] ],

    MuFaCCaL                  `adj`     {- <muqa.t.ta`> -}     [ ['t','o','r','n'], ['s','h','r','e','d','d','e','d'] ],

    MuFACiL                   `adj`     {- <muqA.ti`> -}       [ ['b','o','y','c','o','t','t','i','n','g'] ],

    MuFCiL                    `noun`    {- <muq.ti`> -}        [ unwords [ ['f','e','u','d','a','l'], ['l','o','r','d'] ] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT,

    MuFCaL                    `noun`    {- <muq.ta`> -}        [ unwords [ ['f','e','u','d','a','l'], ['t','e','n','a','n','t'] ], ['v','a','s','s','a','l'] ]
                              `plural`     MuFCaL |< Un
                              `femini`     MuFCaL |< aT,

    MutaFaCCiL                `adj`     {- <mutaqa.t.ti`> -}   [ ['d','i','s','r','u','p','t','e','d'], ['d','i','s','c','o','n','t','i','n','u','o','u','s'] ],

    MutaFACiL                 `adj`     {- <mutaqA.ti`> -}     [ ['i','n','t','e','r','s','e','c','t','i','n','g'] ],

    MunFaCiL                  `adj`     {- <munqa.ti`> -}      [ ['i','n','t','e','r','r','u','p','t','e','d'], ['d','i','s','c','o','n','t','i','n','u','e','d'] ],

    MustaFCaL                 `noun`    {- <mustaq.ta`> -}     [ ['d','e','d','u','c','t','i','o','n'], ['r','e','d','u','c','t','i','o','n'], ['c','u','t'] ]
                              `plural`     MustaFCaL |< At ]


cluster_28  = cluster

 |> "q .t f" <| [

    FaCaL                     `verb`    {- <qa.taf> -}         [ ['h','a','r','v','e','s','t'], unwords [ ['s','k','i','m'], ['o','f','f'] ] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qa.t.taf> -}       [ ['h','a','r','v','e','s','t'], unwords [ ['s','k','i','m'], ['o','f','f'] ] ],

    IFtaCaL                   `verb`    {- <iqta.taf> -}       [ ['h','a','r','v','e','s','t'] ],

    FaCL                      `noun`    {- <qa.tf> -}          [ ['p','r','o','d','u','c','t','i','o','n'], ['h','a','r','v','e','s','t','i','n','g'] ],

    FiCL                      `noun`    {- <qi.tf> -}          [ ['b','u','n','c','h'] ]
                              `plural`     FuCUL,

    FuCaL                     `noun`    {- <qu.taf> -}         [ ['s','i','d','e','b','u','r','n','s'] ],

    FiCAL                     `noun`    {- <qi.tAf> -}         [ ['h','a','r','v','e','s','t'] ],

    FuCUL                     `noun`    {- <qu.tUf> -}         [ ['a','v','a','i','l','a','b','l','e'] ],

    FaCUL                     `adj`     {- <qa.tUf> -}         [ ['s','l','o','w'] ]
                              `plural`     FuCuL,

    FaCIL                     `noun`    {- <qa.tIf> -}         [ ['Q','a','t','i','f'] ],

    FaCIL |< aT               `noun`    {- <qa.tIfaT> -}       [ ['p','a','s','t','r','y'] ],

    FaCA'iL                   `noun`    {- <qa.tA'if> -}       [ unwords [ ['q','a','t','a','y','i','f'], "(", ['p','a','n','c','a','k','e','s'], ['s','t','u','f','f','e','d'], ['w','i','t','h'], ['n','u','t','s'], ['a','n','d'], ['d','r','e','n','c','h','e','d'], ['i','n'], ['s','y','r','u','p'], ")" ] ]
                              `plural`     FaCA'iL
                           
    `limited` "-------P--",

    MiFCaL                    `noun`    {- <miq.taf> -}        [ unwords [ ['f','r','u','i','t'], ['p','i','c','k','e','r'] ] ]
                              `plural`     MaFACiL,

    MaFCaL                    `noun`    {- <maq.taf> -}        [ ['b','a','s','k','e','t'] ]
                              `plural`     MaFACiL,

    IFtiCAL                   `noun`    {- <iqti.tAf> -}       [ ['g','a','t','h','e','r','i','n','g'], ['s','e','l','e','c','t','i','n','g'] ]
                              `plural`     IFtiCAL |< At,

    MuFtaCaL                  `noun`    {- <muqta.taf> -}      [ ['s','e','l','e','c','t','i','o','n'], ['e','x','c','e','r','p','t'], ['s','n','i','p','p','e','t'] ]
                              `plural`     MuFtaCaL |< At ]


cluster_29  = cluster

 |> "q .t q .t" <| [

    KaRDUS |< aT              `noun`    {- <qa.tqU.taT> -}     [ unwords [ ['y','o','u','n','g'], ['g','i','r','l'] ] ] ]


cluster_30  = cluster

 |> "q .t l" <| [

    FaCaL                     `verb`    {- <qa.tal> -}         [ unwords [ ['c','u','t'], ['o','f','f'] ] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qa.t.tal> -}       [ unwords [ ['c','u','t'], ['o','f','f'] ] ],

    FaCL                      `noun`    {- <qa.tl> -}          [ unwords [ ['c','u','t','t','i','n','g'], ['o','f','f'] ] ],

    FaCIL |< aT               `noun`    {- <qa.tIlaT> -}       [ ['t','o','w','e','l'], unwords [ ['f','l','o','o','r'], ['r','a','g'] ] ] ]


cluster_31  = cluster

 |> "q .t m" <| [

    FaCaL                     `verb`    {- <qa.tam> -}         [ unwords [ ['c','u','t'], ['o','f','f'] ], unwords [ ['b','r','e','a','k'], ['o','f','f'] ] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <qa.tm> -}          [ unwords [ ['c','u','t','t','i','n','g'], ['o','f','f'] ], unwords [ ['b','r','e','a','k','i','n','g'], ['o','f','f'] ] ],

    FaCL |< aT                `noun`    {- <qa.tmaT> -}        [ ['p','i','e','c','e'], ['m','o','r','s','e','l'] ]
                              `plural`     FaCaL |< At,

    FiCAL |< Iy               `noun`    {- <qi.tAmIy> -}       [ ['Q','i','t','a','m','i'] ],

    FaCCAL |< Iy              `noun`    {- <qa.t.tAmIy> -}     [ ['Q','a','t','t','a','m','i'] ],

    MuFaCCaL                  `noun`    {- <muqa.t.tam> -}     [ unwords [ ['M','u','q','a','t','t','a','m'], "(", ['h','i','l','l','s'], ['n','e','a','r'], ['C','a','i','r','o'], ")" ] ] ]


cluster_32  = cluster

 |> "q .t m r" <| [

    KiRDIS                    `noun`    {- <qi.tmIr> -}        [ ['p','e','l','l','i','c','l','e'], unwords [ ['r','e','d'], ['c','e','n','t'] ] ] ]


cluster_33  = cluster

 |> "q .t n" <| [

    FaCaL                     `verb`    {- <qa.tan> -}         [ ['r','e','s','i','d','e'], ['d','w','e','l','l'], unwords [ ['b','e'], ['s','e','t','t','l','e','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <qa.t.tan> -}       [ unwords [ ['m','a','k','e'], ['r','e','s','i','d','e'] ], ['s','e','t','t','l','e'] ],

    FuCUL                     `noun`    {- <qu.tUn> -}         [ ['r','e','s','i','d','i','n','g'], ['d','w','e','l','l','i','n','g'] ],

    FaCaL                     `noun`    {- <qa.tan> -}         [ unwords [ ['s','m','a','l','l'], ['o','f'], ['t','h','e'], ['b','a','c','k'] ] ],

    FuCL                      `noun`    {- <qu.tn> -}          [ ['c','o','t','t','o','n'] ]
                              `plural`     HaFCAL,

    FuCL |< Iy                `adj`     {- <qu.tnIy> -}        [ ['c','o','t','t','o','n'] ],

    FuCL |< Iy |< aT          `noun`    {- <qu.tnIyaT> -}      [ ['l','e','g','u','m','e','s'] ],

    FuCAL |< Iy |< aT         `noun`    {- <qu.tAnIyaT> -}     [ ['m','a','i','z','e'] ],

    FICAL                     `noun`    {- <qI.tAn> -}         [ ['c','o','r','d'], ['b','r','a','i','d'], ['l','a','c','e'] ]
                              `plural`     FayACIL,

    YaFCIL                    `noun`    {- <yaq.tIn> -}        [ ['s','q','u','a','s','h'] ],

    FaCCAL                    `noun`    {- <qa.t.tAn> -}       [ unwords [ ['c','o','t','t','o','n'], ['m','a','n','u','f','a','c','t','u','r','e','r'] ], unwords [ ['c','o','t','t','o','n'], ['m','e','r','c','h','a','n','t'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <qa.t.tAn> -}       [ ['Q','a','t','t','a','n'] ],

    MaFCaL |< aT              `noun`    {- <maq.tanaT> -}      [ unwords [ ['c','o','t','t','o','n'], ['p','l','a','n','t','a','t','i','o','n'] ] ],

    FACiL                     `noun`    {- <qA.tin> -}         [ ['r','e','s','i','d','e','n','t'], ['r','e','s','i','d','i','n','g'], ['d','o','m','i','c','i','l','e','d'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT ]


cluster_34  = cluster

 |> ['q','a','.','t','r','a','m','I','z'] <| [

    _____                     `noun`    {- <qa.tramIz> -}      [ unwords [ ['l','a','r','g','e'], ['g','l','a','s','s'], ['b','o','t','t','l','e'] ] ] ]


cluster_35  = cluster

 |> "q ` d" <| [

    FaCaL                     `verb`    {- <qa`ad> -}          [ unwords [ ['s','i','t'], ['d','o','w','n'] ], unwords [ ['b','e'], ['s','e','a','t','e','d'] ], ['r','e','m','a','i','n'] ]
                              `imperf`     FCuL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <qa``ad> -}         [ ['s','e','r','v','e'] ],

    HaFCaL                    `verb`    {- <'aq`ad> -}         [ unwords [ ['m','a','k','e'], ['s','i','t'] ], unwords [ ['m','a','k','e'], ['s','t','a','y'] ] ],

    TaFaCCaL                  `verb`    {- <taqa``ad> -}       [ ['d','e','s','i','s','t'], ['a','b','s','t','a','i','n'] ],

    TaFACaL                   `verb`    {- <taqA`ad> -}        [ ['r','e','t','i','r','e'] ],

    IFtaCaL                   `verb`    {- <iqta`ad> -}        [ unwords [ ['s','i','t'], ['d','o','w','n'] ], ['r','e','m','a','i','n'] ],

    FaCL |< aT                `noun`    {- <qa`daT> -}         [ unwords [ ['s','i','t','t','i','n','g'], ['p','l','a','c','e'] ], ['s','e','a','t'] ],

    FiCL |< aT                `noun`    {- <qi`daT> -}         [ ['p','o','s','t','u','r','e'], unwords [ ['m','a','n','n','e','r'], ['o','f'], ['s','i','t','t','i','n','g'] ] ],

    FuCaL |< aT               `noun`    {- <qu`adaT> -}        [ unwords [ ['s','e','a','t','e','d'], ['f','i','r','m','l','y'] ], unwords [ ['n','o','t'], ['b','u','d','g','i','n','g'] ] ],

    FuCL |< Iy                `adj`     {- <qu`dIy> -}         [ unwords [ ['s','e','a','t','e','d'], ['f','i','r','m','l','y'] ], unwords [ ['n','o','t'], ['b','u','d','g','i','n','g'] ] ],

    FaCUL                     `noun`    {- <qa`Ud> -}          [ unwords [ ['y','o','u','n','g'], ['c','a','m','e','l'] ] ]
                              `plural`     FuCuL
                              `plural`     HaFCiL |< aT
                              `plural`     FaCA'iL
                              `plural`     FiCLAn,

    FuCUL                     `noun`    {- <qu`Ud> -}          [ ['s','i','t','t','i','n','g'], ['a','b','s','t','e','n','t','i','o','n'], ['r','e','n','u','n','c','i','a','t','i','o','n'] ],

    FaCIL                     `noun`    {- <qa`Id> -}          [ ['c','o','m','p','a','n','i','o','n'], ['g','u','a','r','d','i','a','n'], ['c','r','i','p','p','l','e'] ],

    FaCIL |< aT               `noun`    {- <qa`IdaT> -}        [ ['w','i','f','e'], unwords [ ['f','e','m','a','l','e'], ['c','o','m','p','a','n','i','o','n'] ] ]
                              `plural`     FaCA'iL,

    MaFCaL                    `noun`    {- <maq`ad> -}         [ ['s','e','a','t'] ]
                              `plural`     MaFACiL,

    MaFCaL                    `noun`    {- <maq`ad> -}         [ ['b','a','c','k','s','i','d','e'] ]
                              `plural`     MaFACiL,

    HiFCAL                    `noun`    {- <'iq`Ad> -}         [ ['d','i','s','a','b','i','l','i','t','y'] ]
                              `plural`     HiFCAL |< At,

    TaFACuL                   `noun`    {- <taqA`ud> -}        [ ['r','e','t','i','r','e','m','e','n','t'] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `adj`     {- <qA`id> -}          [ ['s','i','t','t','i','n','g'], ['s','e','a','t','e','d'] ]
                              `plural`     FuCUL
                              `plural`     FuCCAL,

    FACiL                     `adj`     {- <qA`id> -}          [ ['l','a','z','y'], ['i','n','a','c','t','i','v','e'], unwords [ ['e','v','a','d','e','r','s'], "(", ['d','r','a','f','t'], ['d','o','d','g','e','r','s'], ")" ] ],

    FACiL |< aT               `noun`    {- <qA`idaT> -}        [ ['Q','a','i','d','a'], ['Q','a','e','d','a'], ['Q','a','\'','i','d','a'] ],

    FACiL |< aT               `noun`    {- <qA`idaT> -}        [ ['b','a','s','e'] ]
                              `plural`     FawACiL,

    FACiL |< aT               `noun`    {- <qA`idaT> -}        [ ['r','u','l','e'], ['p','r','i','n','c','i','p','l','e'], ['b','a','s','i','s'], ['p','r','e','c','e','p','t','s'] ]
                              `plural`     FawACiL,

    FACiL |< Iy               `adj`     {- <qA`idIy> -}        [ ['b','a','s','i','c'], ['f','u','n','d','a','m','e','n','t','a','l'] ],

    MuFCiL                    `adj`     {- <muq`id> -}         [ ['d','i','s','a','b','l','i','n','g'] ],

    MuFCaL                    `adj`     {- <muq`ad> -}         [ ['s','t','o','p','p','e','d'], ['i','n','t','e','r','r','u','p','t','e','d'] ],

    MutaFACiL                 `noun`    {- <mutaqA`id> -}      [ ['p','e','n','s','i','o','n','e','r'] ]
                              `plural`     MutaFACiL |< Un
                              `femini`     MutaFACiL |< aT,

    MutaFACiL                 `adj`     {- <mutaqA`id> -}      [ ['r','e','t','i','r','e','d'] ] ]


cluster_36  = cluster

 |> "q ` r" <| [

    FaCuL                     `verb`    {- <qa`ur> -}          [ unwords [ ['b','e'], ['d','e','e','p'] ], unwords [ ['b','e'], ['h','o','l','l','o','w','e','d'], ['o','u','t'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qa``ar> -}         [ ['d','e','e','p','e','n'], unwords [ ['h','o','l','l','o','w'], ['o','u','t'] ], ['e','x','c','a','v','a','t','e'] ],

    HaFCaL                    `verb`    {- <'aq`ar> -}         [ unwords [ ['m','a','k','e'], ['d','e','e','p'] ], ['e','x','c','a','v','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <taqa``ar> -}       [ unwords [ ['b','e'], ['h','o','l','l','o','w','e','d'], ['o','u','t'] ], unwords [ ['b','e'], ['d','e','e','p'] ] ],

    FaCL                      `noun`    {- <qa`r> -}           [ ['b','o','t','t','o','m'], ['d','e','p','t','h'] ]
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <qa`raT> -}         [ ['h','o','l','e'], ['h','o','l','l','o','w'], ['p','i','t'] ],

    FaCUL                     `noun`    {- <qa`Ur> -}          [ ['d','e','e','p'] ],

    FaCIL                     `adj`     {- <qa`Ir> -}          [ ['d','e','e','p'] ],

    MuFaCCaL                  `noun`    {- <muqa``ar> -}       [ ['d','e','e','p'], ['h','o','l','l','o','w'], ['c','o','n','c','a','v','e'] ] ]


cluster_37  = cluster

 |> "q ` s" <| [

    FaCiL                     `verb`    {- <qa`is> -}          [ unwords [ ['b','e'], ['p','i','g','e','o','n'], "-", ['b','r','e','a','s','t','e','d'] ] ]
                              `imperf`     FCaL,

    TaFACaL                   `verb`    {- <taqA`as> -}        [ unwords [ ['b','e'], ['n','e','g','l','i','g','e','n','t'] ], ['r','e','f','r','a','i','n'], ['d','i','s','r','e','g','a','r','d'] ],

    IFCanLaL                  `verb`    {- <iq`ansas> -}       [ unwords [ ['b','e'], ['p','i','g','e','o','n'], "-", ['b','r','e','a','s','t','e','d'] ] ],

    HaFCaL                    `adj`     {- <'aq`as> -}         [ unwords [ ['p','i','g','e','o','n'], "-", ['b','r','e','a','s','t','e','d'] ], unwords [ ['f','i','r','m','l','y'], ['e','s','t','a','b','l','i','s','h','e','d'] ] ],

    TaFACuL                   `noun`    {- <taqA`us> -}        [ ['n','e','g','l','i','g','e','n','c','e'] ]
                              `plural`     TaFACuL |< At,

    MutaFACiL                 `adj`     {- <mutaqA`is> -}      [ ['n','e','g','l','i','g','e','n','t'], ['h','e','s','i','t','a','n','t'] ] ]


cluster_38  = cluster

 |> "q ` q `" <| [

    KaRDaS                    `verb`    {- <qa`qa`> -}         [ ['c','l','a','t','t','e','r'], ['r','a','t','t','l','e'] ],

    KaRDaS |< aT              `noun`    {- <qa`qa`aT> -}       [ ['n','o','i','s','e'], ['r','a','t','t','l','e'], unwords [ ['h','i','g','h'], "-", ['s','o','u','n','d','i','n','g'], ['w','o','r','d','s'] ] ]
                              `plural`     KaRADiS,

    KaRDaS                    `noun`    {- <qa`qa`> -}         [ ['m','a','g','p','i','e'] ] ]


cluster_39  = cluster

 |> ['q','A','f'] <| [

    _____                     `noun`    {- <qAf> -}            [ unwords [ ['q','a','f'], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_40  = cluster

 |> "q f r" <| [

    FaCaL                     `verb`    {- <qafar> -}          [ ['f','o','l','l','o','w'], ['t','r','a','c','k'] ]
                              `imperf`     FCuL,

    HaFCaL                    `verb`    {- <'aqfar> -}         [ ['a','b','a','n','d','o','n'], ['d','e','v','a','s','t','a','t','e'], unwords [ ['l','e','a','v','e'], ['b','a','r','r','e','n'] ] ],

    IFtaCaL                   `verb`    {- <iqtafar> -}        [ ['f','o','l','l','o','w'], ['t','r','a','c','k'] ],

    FaCL                      `noun`    {- <qafr> -}           [ ['d','e','s','o','l','a','t','e'], ['w','a','s','t','e','l','a','n','d'], ['d','e','p','o','p','u','l','a','t','e','d'] ]
                              `plural`     FiCAL,

    FaCL |< aT                `noun`    {- <qafraT> -}         [ ['d','e','s','e','r','t'], ['w','a','s','t','e','l','a','n','d'] ]
                              `plural`     FaCaL |< At,

    FaCAL                     `noun`    {- <qafAr> -}          [ ['d','r','y'], ['p','l','a','i','n'] ],

    FaCIL                     `noun`    {- <qafIr> -}          [ ['b','e','e','h','i','v','e'] ]
                              `plural`     FuCLAn,

    FaCLA'                    `noun`    {- <qafrA'> -}         [ ['a','r','i','d'] ],

    HiFCAL                    `noun`    {- <'iqfAr> -}         [ ['d','e','s','o','l','a','t','e','n','e','s','s'], ['d','e','v','a','s','t','a','t','i','o','n'], ['d','e','p','o','p','u','l','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    MuFCiL                    `adj`     {- <muqfir> -}         [ ['d','e','s','o','l','a','t','e'], ['d','e','p','o','p','u','l','a','t','e','d'] ] ]


cluster_41  = cluster

 |> "q f z" <| [

    FaCaL                     `verb`    {- <qafaz> -}          [ ['j','u','m','p'], ['l','e','a','p'] ]
                              `imperf`     FCiL,

    TaFaCCaL                  `verb`    {- <taqaffaz> -}       [ unwords [ ['p','u','t'], ['o','n'], ['g','l','o','v','e','s'] ] ],

    FaCL                      `noun`    {- <qafz> -}           [ ['j','u','m','p','i','n','g'], ['l','e','a','p','i','n','g'] ],

    FaCaLAn                   `noun`    {- <qafazAn> -}        [ ['j','u','m','p','i','n','g'], ['l','e','a','p','i','n','g'] ],

    FaCL                      `noun`    {- <qafz> -}           [ ['j','u','m','p'], ['l','e','a','p'], ['b','o','u','n','d'] ]
                              `plural`     FaCaL |< At,

    FuCCAL                    `noun`    {- <quffAz> -}         [ ['g','l','o','v','e','s'] ]
                              `plural`     FaCACIL
                              `plural`     FuCCAL |< At,

    FaCIL                     `noun`    {- <qafIz> -}          [ ['q','a','f','i','z'] ]
                              `plural`     HaFCiL |< aT,

    MaFCiL                    `noun`    {- <maqfiz> -}         [ ['s','p','r','i','n','g','b','o','a','r','d'] ]
                              `plural`     MaFACiL ]


cluster_42  = cluster

 |> "q f ^s" <| [

    FaCaL                     `verb`    {- <qafa^s> -}         [ ['c','o','l','l','e','c','t'], ['c','a','t','c','h'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <qaf^s> -}          [ ['c','o','l','l','e','c','t','i','n','g'], ['c','a','t','c','h','i','n','g'] ],

    FaCL                      `noun`    {- <qaf^s> -}          [ ['p','r','a','t','t','l','e'], ['c','h','a','t','t','e','r'] ],

    FaCL |< aT                `noun`    {- <qaf^saT> -}        [ ['q','u','i','p'], unwords [ ['w','i','t','t','y'], ['a','n','s','w','e','r'] ] ]
                              `plural`     FaCaL |< At ]


cluster_43  = cluster

 |> "q f .s" <| [

    FaCaL                     `noun`    {- <qafa.s> -}         [ ['c','a','g','e'], unwords [ ['p','r','i','s','o','n','e','r','\'','s'], ['d','o','c','k'] ] ]
                              `plural`     HaFCiL |< aT
                              `plural`     HaFCAL,

    TaFCIL |< aT              `noun`    {- <taqfI.saT> -}      [ unwords [ ['p','o','u','l','t','r','y'], ['c','o','o','p'] ] ] ]


cluster_44  = cluster

 |> "q f .t" <| [

    FuCLAn                    `noun`    {- <quf.tAn> -}        [ ['c','a','f','t','a','n'] ]
                              `plural`     FaCALIn ]


cluster_45  = cluster

 |> "q f `" <| [

    FaCiL                     `verb`    {- <qafi`> -}          [ ['s','h','r','i','n','k'], ['c','o','n','t','r','a','c','t'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <qaffa`> -}         [ ['s','h','r','i','v','e','l'] ],

    TaFaCCaL                  `verb`    {- <taqaffa`> -}       [ ['s','h','r','i','n','k'], ['c','o','n','t','r','a','c','t'] ] ]


cluster_46  = cluster

 |> "q f q f" <| [

    KaRDaS                    `verb`    {- <qafqaf> -}         [ ['s','h','i','v','e','r'], ['c','h','a','t','t','e','r'] ],

    TaKaRDaS                  `verb`    {- <taqafqaf> -}       [ ['s','h','i','v','e','r'], ['c','h','a','t','t','e','r'] ],

    KaRDaS |< aT              `noun`    {- <qafqafaT> -}       [ ['s','h','i','v','e','r','i','n','g'], ['c','h','a','t','t','e','r','i','n','g'] ] ]


cluster_47  = cluster

 |> "q f l" <| [

    FaCaL                     `verb`    {- <qafal> -}          [ ['r','e','t','u','r','n'] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <qafal> -}          [ ['l','o','c','k'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <qaffal> -}         [ ['l','o','c','k'] ],

    HaFCaL                    `verb`    {- <'aqfal> -}         [ ['l','o','c','k'] ],

    FuCL                      `noun`    {- <qufl> -}           [ ['l','o','c','k'], ['l','a','t','c','h'], ['b','o','l','t'] ]
                              `plural`     FuCUL
                              `plural`     HaFCAL,

    FaCCAL                    `noun`    {- <qaffAl> -}         [ ['l','o','c','k','s','m','i','t','h'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <qaffAl> -}         [ ['Q','a','f','f','a','l'] ],

    HiFCAL                    `noun`    {- <'iqfAl> -}         [ ['l','o','c','k','i','n','g'], ['c','l','o','s','i','n','g'], ['b','l','o','c','k','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    FACiL                     `adj`     {- <qAfil> -}          [ unwords [ ['c','o','m','i','n','g'], ['h','o','m','e'] ], ['r','e','t','u','r','n','i','n','g'] ]
                              `plural`     FuCCAL,

    FACiL |< aT               `noun`    {- <qAfilaT> -}        [ ['c','o','n','v','o','y'], ['c','o','l','u','m','n'] ]
                              `plural`     FawACiL,

    MuFCaL                    `adj`     {- <muqfal> -}         [ ['l','o','c','k','e','d'], ['c','l','o','s','e','d'], ['b','l','o','c','k','e','d'] ] ]


cluster_48  = cluster

 |> ['q','A','q','u','m'] <| [

    _____                     `noun`    {- <qAqum> -}          [ ['e','r','m','i','n','e'] ] ]


cluster_49  = cluster

 |> "q l b" <| [

    FaCaL                     `verb`    {- <qalab> -}          [ unwords [ ['t','u','r','n'], ['a','r','o','u','n','d'] ], ['r','e','v','e','r','s','e'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCaL                     `verb`    {- <qalab> -}          [ ['o','v','e','r','t','h','r','o','w'], ['t','o','p','p','l','e'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qallab> -}         [ unwords [ ['t','u','r','n'], ['u','p','s','i','d','e'], ['d','o','w','n'] ] ],

    TaFaCCaL                  `verb`    {- <taqallab> -}       [ unwords [ ['t','u','r','n'], ['a','r','o','u','n','d'] ], unwords [ ['b','e'], ['r','e','v','e','r','s','e','d'] ], unwords [ ['b','e'], ['i','n','v','e','r','t','e','d'] ] ],

    InFaCaL                   `verb`    {- <inqalab> -}        [ unwords [ ['t','u','r','n'], ['a','r','o','u','n','d'] ], unwords [ ['b','e'], ['r','e','v','e','r','s','e','d'] ], unwords [ ['b','e'], ['i','n','v','e','r','t','e','d'] ] ],

    FaCL                      `noun`    {- <qalb> -}           [ ['o','v','e','r','t','h','r','o','w','i','n','g'], ['t','o','p','p','l','i','n','g'] ],

    FaCL                      `noun`    {- <qalb> -}           [ ['r','e','v','e','r','s','a','l'], ['i','n','v','e','r','s','i','o','n'] ],

    FaCL                      `noun`    {- <qalb> -}           [ ['h','e','a','r','t'], ['c','e','n','t','e','r'], ['e','s','s','e','n','c','e'] ]
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <qalbIy> -}         [ ['c','a','r','d','i','a','c'], ['h','e','a','r','t','y'] ],

    FaCL |< aT                `noun`    {- <qalbaT> -}         [ ['q','a','l','b','a'] ]
                              `plural`     FaCaL |< At,

    FACiL                     `noun`    {- <qAlib> -}          [ ['f','o','r','m'], ['m','o','d','e','l'], ['m','o','l','d'] ]
                              `plural`     FawACiL,

    FACaL                     `noun`    {- <qAlab> -}          [ ['f','o','r','m'], ['m','o','d','e','l'], ['m','o','l','d'] ]
                              `plural`     FawACiL,

    FaCUL                     `adj`     {- <qalUb> -}          [ ['r','e','s','o','u','r','c','e','f','u','l'], ['v','e','r','s','a','t','i','l','e'] ],

    FaCCAL                    `adj`     {- <qallAb> -}         [ ['v','a','r','i','a','b','l','e'], ['w','a','v','e','r','i','n','g'] ],

    FaCCAL                    `noun`    {- <qallAb> -}         [ ['t','i','l','t','a','b','l','e'], ['d','u','m','p','e','r'] ],

    FaCCAL |< aT              `noun`    {- <qallAbaT> -}       [ unwords [ ['s','t','i','r','r','i','n','g'], ['m','a','c','h','i','n','e'] ] ],

    MaFCaL                    `noun`    {- <maqlab> -}         [ unwords [ ['d','u','m','p','i','n','g'], ['g','r','o','u','n','d'] ] ]
                              `plural`     MaFACiL,

    MiFCaL                    `noun`    {- <miqlab> -}         [ ['h','o','e'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <taqlIb> -}         [ ['t','r','a','n','s','f','o','r','m','a','t','i','o','n'], ['i','n','s','p','e','c','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <taqallub> -}       [ ['a','l','t','e','r','a','t','i','o','n'], ['f','l','u','c','t','u','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    InFiCAL                   `noun`    {- <inqilAb> -}        [ ['c','o','u','p'], ['o','v','e','r','t','h','r','o','w'], ['t','o','p','p','l','i','n','g'] ]
                              `plural`     InFiCAL |< At,

    InFiCAL                   `noun`    {- <inqilAb> -}        [ ['s','o','l','s','t','i','c','e'], ['t','r','o','p','i','c'] ]
                              `plural`     InFiCAL |< At,

    InFiCAL |< Iy             `adj`     {- <inqilAbIy> -}      [ ['r','e','v','o','l','u','t','i','o','n','a','r','y'] ],

    MaFCUL                    `adj`     {- <maqlUb> -}         [ unwords [ ['t','u','r','n','e','d'], ['o','v','e','r'] ], ['i','n','v','e','r','t','e','d'], ['r','e','v','e','r','s','e','d'] ],

    MutaFaCCiL                `adj`     {- <mutaqallib> -}     [ ['w','a','v','e','r','i','n','g'], ['c','h','a','n','g','i','n','g'], ['i','n','c','o','n','s','t','a','n','t'] ],

    MunFaCaL                  `noun`    {- <munqalab> -}       [ ['h','e','r','e','a','f','t','e','r'] ] ]


cluster_50  = cluster

 |> "q l .h" <| [

    FaCaL                     `noun`    {- <qala.h> -}         [ unwords [ ['y','e','l','l','o','w'], ['t','e','e','t','h'] ] ],

    FuCAL                     `noun`    {- <qulA.h> -}         [ unwords [ ['y','e','l','l','o','w'], ['t','e','e','t','h'] ] ],

    FawCaL |< aT              `noun`    {- <qawla.haT> -}      [ unwords [ ['c','o','r','n'], ['c','o','b'] ] ]
                              `plural`     FawACiL ]


cluster_51  = cluster

 |> "q l d" <| [

    FaCCaL                    `verb`    {- <qallad> -}         [ ['i','m','i','t','a','t','e'], ['e','n','t','r','u','s','t'] ],

    TaFaCCaL                  `verb`    {- <taqallad> -}       [ unwords [ ['t','a','k','e'], ['o','v','e','r'] ], ['a','s','s','u','m','e'] ],

    FiCAL |< aT               `noun`    {- <qilAdaT> -}        [ ['n','e','c','k','l','a','c','e'], ['p','o','e','m','s'] ]
                              `plural`     FaCA'iL,

    MiFCaL                    `noun`    {- <miqlad> -}         [ ['k','e','y'] ]
                              `plural`     MaFACiL,

    MiFCAL                    `noun`    {- <miqlAd> -}         [ ['k','e','y'] ]
                              `plural`     MaFACIL,

    MiFCAL                    `noun`    {- <miqlAd> -}         [ ['r','e','i','n'] ]
                              `plural`     MaFACIL,

    TaFCIL                    `noun`    {- <taqlId> -}         [ ['i','m','i','t','a','t','i','o','n'] ],

    TaFCIL                    `noun`    {- <taqlId> -}         [ ['t','r','a','d','i','t','i','o','n'], ['c','u','s','t','o','m'] ]
                              `plural`     TaFACIL,

    TaFCIL |< Iy              `adj`     {- <taqlIdIy> -}       [ ['t','r','a','d','i','t','i','o','n','a','l'], ['c','o','n','v','e','n','t','i','o','n','a','l'] ],

    TaFCIL |< Iy |< aT        `noun`    {- <taqlIdIyaT> -}     [ ['t','r','a','d','i','t','i','o','n','a','l','i','s','m'], ['c','o','n','v','e','n','t','i','o','n','a','l','i','s','m'] ],

    MuFaCCiL                  `noun`    {- <muqallid> -}       [ ['i','m','i','t','a','t','o','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCaL                  `adj`     {- <muqallad> -}       [ ['i','m','i','t','a','t','e','d'], ['f','a','k','e'] ] ]


cluster_52  = cluster

 |> "q l s" <| [

    FaCaL                     `verb`    {- <qalas> -}          [ ['b','e','l','c','h'], ['e','r','u','c','t'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qallas> -}         [ ['r','i','d','i','c','u','l','e'] ],

    FaCL                      `noun`    {- <qals> -}           [ ['b','u','r','p','i','n','g'], ['b','e','l','c','h','i','n','g'], ['e','r','u','c','t','a','t','i','o','n'] ],

    FaCL                      `noun`    {- <qals> -}           [ ['c','a','b','l','e'], ['r','o','p','e'] ]
                              `plural`     FuCUL ]


cluster_53  = cluster

 |> ['q','A','l','U','^','s'] <| [

    _____                     `noun`    {- <qAlU^s> -}         [ ['g','a','l','o','s','h','e','s'] ]
                              `plural`     _____ |< At ]

 |> "q l ^s" <| [

    FaCCaL                    `verb`    {- <qalla^s> -}        [ ['m','o','l','t'] ],

    TaFCIL                    `noun`    {- <taqlI^s> -}        [ ['m','o','l','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FACUL                     `noun`    {- <qAlU^s> -}         [ ['g','a','l','o','s','h','e','s'] ]
                              `plural`     FACUL |< At ]


cluster_54  = cluster

 |> "q l ^s n" <| [

    KaRDIS                    `noun`    {- <qal^sIn> -}        [ ['p','u','t','t','e','e'], ['l','e','g','g','i','n','g'], ['g','a','i','t','e','r'] ]
                              `plural`     KaRADIS ]


cluster_55  = cluster

 |> "q l .s" <| [

    FaCaL                     `verb`    {- <qala.s> -}         [ ['s','h','r','i','n','k'], ['d','i','m','i','n','i','s','h'], ['d','e','c','l','i','n','e'] ]
                              `imperf`     FCiL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <qalla.s> -}        [ ['t','u','c','k'], unwords [ ['d','r','a','w'], ['t','o','g','e','t','h','e','r'] ], ['r','e','d','u','c','e'] ],

    TaFaCCaL                  `verb`    {- <taqalla.s> -}      [ ['s','h','r','i','n','k'], ['d','i','m','i','n','i','s','h'], ['d','e','c','l','i','n','e'] ],

    FaCaL                     `noun`    {- <qala.s> -}         [ unwords [ ['s','m','a','l','l'], ['l','a','u','n','c','h'] ], ['b','a','r','g','e'] ],

    HaFCaL                    `adj`     {- <'aqla.s> -}        [ ['s','h','o','r','t','e','r'] ],

    TaFCIL                    `noun`    {- <taqlI.s> -}        [ ['r','e','d','u','c','i','n','g'], ['s','h','r','i','n','k','i','n','g'], ['c','u','t','b','a','c','k','s'], ['r','e','d','u','c','t','i','o','n','s'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <taqallu.s> -}      [ ['c','o','n','t','r','a','c','t','i','o','n'], ['s','h','r','i','n','k','i','n','g'], ['r','e','c','e','s','s','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCiL                  `noun`    {- <muqalli.s> -}      [ ['f','l','e','x','o','r'] ] ]


cluster_56  = cluster

 |> "q l .t" <| [

    FiCCIL                    `noun`    {- <qillI.t> -}        [ unwords [ ['s','c','r','o','t','a','l'], ['h','e','r','n','i','a'] ] ],

    FaCIL                     `noun`    {- <qalI.t> -}         [ unwords [ ['s','u','f','f','e','r','i','n','g'], ['f','r','o','m'], ['s','c','r','o','t','a','l'], ['h','e','r','n','i','a'] ] ] ]


cluster_57  = cluster

 |> "q l `" <| [

    FaCaL                     `verb`    {- <qala`> -}          [ ['u','p','r','o','o','t'], ['e','x','t','i','r','p','a','t','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <qalla`> -}         [ unwords [ ['p','l','u','c','k'], ['o','u','t'] ], unwords [ ['t','e','a','r'], ['o','u','t'] ] ],

    HaFCaL                    `verb`    {- <'aqla`> -}         [ unwords [ ['t','a','k','e'], ['o','f','f'] ] ],

    IFtaCaL                   `verb`    {- <iqtala`> -}        [ ['u','p','r','o','o','t'], ['e','x','t','e','r','m','i','n','a','t','e'] ],

    FiCL                      `noun`    {- <qil`> -}           [ ['s','a','i','l'] ]
                              `plural`     FiCAL
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <qal`aT> -}         [ ['s','t','r','o','n','g','h','o','l','d'], ['c','i','t','a','d','e','l'], ['f','o','r','t'] ]
                              `plural`     FiCAL
                              `plural`     FuCUL,

    FuCAL |< Iy               `noun`    {- <qulA`Iy> -}        [ unwords [ ['f','o','o','t'], "-", ['a','n','d'], "-", ['m','o','u','t','h'], "(", ['d','i','s','e','a','s','e'], ")" ] ],

    MaFCaL                    `noun`    {- <maqla`> -}         [ unwords [ ['s','t','o','n','e'], ['q','u','a','r','r','y'] ] ]
                              `plural`     MaFACiL,

    MiFCaL |< aT              `noun`    {- <miqla`aT> -}       [ ['b','u','l','l','d','o','z','e','r'] ],

    MiFCAL                    `noun`    {- <miqlA`> -}         [ ['c','a','t','a','p','u','l','t'], ['s','l','i','n','g','s','h','o','t'] ]
                              `plural`     MaFACIL,

    TaFCIL |< aT              `noun`    {- <taqlI`aT> -}       [ ['e','c','c','e','n','t','r','i','c','i','t','y'], ['i','n','n','o','v','a','t','i','o','n'], ['r','a','r','i','t','i','e','s'] ]
                              `plural`     TaFACIL,

    HiFCAL                    `noun`    {- <'iqlA`> -}         [ ['d','e','p','a','r','t','u','r','e'], unwords [ ['t','a','k','e'], "-", ['o','f','f'] ] ]
                              `plural`     HiFCAL |< At,

    IFtiCAL                   `noun`    {- <iqtilA`> -}        [ ['u','p','r','o','o','t','i','n','g'], ['e','x','t','e','r','m','i','n','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At ]


cluster_58  = cluster

 |> "q l ` .t" <| [

    KaRDaS                    `verb`    {- <qal`a.t> -}        [ ['s','u','l','l','y'], ['s','o','i','l'] ],

    KaRDaS |< aT              `noun`    {- <qal`a.taT> -}      [ ['s','u','l','l','y','i','n','g'], ['s','o','i','l','i','n','g'] ],

    KuRDUS                    `noun`    {- <qul`U.t> -}        [ ['h','e','r','e','t','i','c'] ] ]


cluster_59  = cluster

 |> "q l f" <| [

    FaCaL                     `verb`    {- <qalaf> -}          [ unwords [ ['s','t','r','i','p'], ['o','f','f'], ['t','h','e'], ['b','a','r','k'] ] ]
                              `imperf`     FCiL,

    FaCaL                     `verb`    {- <qalaf> -}          [ ['c','i','r','c','u','m','c','i','s','e'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qallaf> -}         [ ['c','a','u','l','k'] ],

    FiCL                      `noun`    {- <qilf> -}           [ ['b','a','r','k'], ['r','i','n','d'] ],

    FuCL |< aT                `noun`    {- <qulfaT> -}         [ ['f','o','r','e','s','k','i','n'], ['p','r','e','p','u','c','e'] ]
                              `plural`     FuCaL,

    FuCAL |< aT               `noun`    {- <qulAfaT> -}        [ ['r','i','n','d'], ['b','a','r','k'] ],

    HaFCaL                    `adj`     {- <'aqlaf> -}         [ ['u','n','c','i','r','c','u','m','c','i','s','e','d'] ],

    FiCAL |< aT               `noun`    {- <qilAfaT> -}        [ ['c','a','u','l','k','i','n','g'] ],

    FaCL |< aT                `noun`    {- <qalfaT> -}         [ ['f','o','r','e','m','a','n'], ['w','o','r','k','m','a','n'] ]
                              `plural`     FaCaL |< At ]


cluster_60  = cluster

 |> "q l f .t" <| [

    KaRDaS                    `verb`    {- <qalfa.t> -}        [ ['c','a','u','l','k'], ['b','u','n','g','l','e'] ],

    KaRDaS |< aT              `noun`    {- <qalfa.taT> -}      [ ['c','a','u','l','k','i','n','g'], ['b','u','n','g','l','i','n','g'] ] ]


cluster_61  = cluster

 |> "q l q" <| [

    FaCiL                     `verb`    {- <qaliq> -}          [ unwords [ ['b','e'], ['w','o','r','r','i','e','d'] ], unwords [ ['b','e'], ['a','g','i','t','a','t','e','d'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    HaFCaL                    `verb`    {- <'aqlaq> -}         [ unwords [ ['m','a','k','e'], ['r','e','s','t','l','e','s','s'] ], ['a','g','i','t','a','t','e'] ],

    FaCaL                     `noun`    {- <qalaq> -}          [ ['u','n','r','e','s','t'], ['c','o','n','c','e','r','n'], ['a','p','p','r','e','h','e','n','s','i','o','n'] ],

    FaCiL                     `adj`     {- <qaliq> -}          [ ['w','o','r','r','i','e','d'], ['c','o','n','c','e','r','n','e','d'], ['d','i','s','t','u','r','b','e','d'] ],

    FaCUL                     `adj`     {- <qalUq> -}          [ ['r','e','s','t','l','e','s','s'] ],

    HiFCAL                    `noun`    {- <'iqlAq> -}         [ ['p','e','r','t','u','r','b','a','t','i','o','n'], ['d','i','s','t','u','r','b','a','n','c','e'] ]
                              `plural`     HiFCAL |< At,

    MuFCiL                    `adj`     {- <muqliq> -}         [ ['d','i','s','t','u','r','b','i','n','g'], ['w','o','r','r','i','s','o','m','e'], ['t','r','o','u','b','l','i','n','g'] ],

    MuFCiL                    `noun`    {- <muqliq> -}         [ ['t','r','o','u','b','l','e','m','a','k','e','r'], ['a','g','i','t','a','t','o','r'] ]
                              `plural`     MuFCiL |< Un
                              `femini`     MuFCiL |< aT ]


cluster_62  = cluster

 |> "q l q b" <| [

    KaRDaS                    `noun`    {- <qalqab> -}         [ unwords [ ['f','u','r'], ['c','a','p'] ] ] ]


cluster_63  = cluster

 |> "q l q s" <| [

    KuRDAS                    `noun`    {- <qulqAs> -}         [ unwords [ ['t','a','r','o'], "(", ['p','l','a','n','t'], ['w','i','t','h'], ['e','d','i','b','l','e'], ['r','o','o','t','s'], ")" ], unwords [ ['e','l','e','p','h','a','n','t','\'','s'], ['e','a','r'] ] ]
                              `plural`     KuRDAS |< At ]


cluster_64  = cluster

 |> "q l q l" <| [

    KaRDaS                    `verb`    {- <qalqal> -}         [ ['a','g','i','t','a','t','e'], ['i','n','c','i','t','e'] ],

    TaKaRDaS                  `verb`    {- <taqalqal> -}       [ unwords [ ['b','e'], ['a','g','i','t','a','t','e','d'] ], unwords [ ['b','e'], ['s','t','i','r','r','e','d'], ['u','p'] ] ],

    KaRDaS |< aT              `noun`    {- <qalqalaT> -}       [ ['u','n','r','e','s','t'], ['a','g','i','t','a','t','i','o','n'], ['d','i','s','t','u','r','b','a','n','c','e'] ]
                              `plural`     KaRADiS,

    KuRDIS |< aT              `noun`    {- <qulqIlaT> -}       [ ['l','u','m','p'], ['c','l','o','d'] ]
                              `plural`     KuRDIS |< At,

    KaRDIS |< Iy              `adj`     {- <qalqIlIy> -}       [ unwords [ ['f','r','o','m'], "/", ['o','f'], ['Q','a','l','q','i','l','y','a'] ] ],

    MuKaRDaS                  `adj`     {- <muqalqal> -}       [ ['a','g','i','t','a','t','e','d'], ['u','n','s','t','a','b','l','e'] ] ]


cluster_65  = cluster

 |> "q l m" <| [

    FaCaL                     `verb`    {- <qalam> -}          [ ['t','r','i','m'], ['c','l','i','p'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qallam> -}         [ ['t','r','i','m'], ['c','l','i','p'] ],

    FaCaL                     `noun`    {- <qalam> -}          [ ['p','e','n','c','i','l'], ['p','e','n'] ]
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <qalamIy> -}        [ ['h','a','n','d','w','r','i','t','t','e','n'], unwords [ ['b','y'], ['p','e','n'] ] ],

    FuCAL |< aT               `noun`    {- <qulAmaT> -}        [ ['c','l','i','p','p','i','n','g','s'], ['s','h','a','v','i','n','g','s'] ],

    MiFCaL |< aT              `noun`    {- <miqlamaT> -}       [ unwords [ ['p','e','n'], ['c','a','s','e'] ] ]
                              `plural`     MiFCaL |< At,

    TaFCIL                    `noun`    {- <taqlIm> -}         [ ['t','r','i','m','m','i','n','g'], ['p','r','u','n','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <muqallam> -}       [ ['c','l','i','p','p','e','d'], ['t','r','i','m','m','e','d'] ] ]


cluster_66  = cluster

 |> ['q','U','l','U','n'] <| [

    _____                     `noun`    {- <qUlUn> -}          [ ['b','o','w','e','l','s'], ['c','o','l','o','n'] ] ]


cluster_67  = cluster

 |> "q l n s" <| [

    TaKaRDaS                  `verb`    {- <taqalnas> -}       [ unwords [ ['w','e','a','r'], "a", ['c','a','p'] ] ],

    KaRaDSU |< aT             `noun`    {- <qalansuwaT> -}     [ ['h','o','o','d'], ['c','a','p'], ['t','i','a','r','a'] ]
                              `plural`     KaRADiS
                              `plural`     KaRADIS,

    KuRaDSI |< aT             `noun`    {- <qulansiyaT> -}     [ ['h','o','o','d'], ['c','a','p'], ['t','i','a','r','a'] ]
                              `plural`     KaRADiS
                              `plural`     KaRADIS,

    KaRaDSU |< aT             `noun`    {- <qalansuwaT> -}     [ ['Q','a','l','a','n','s','u','a'] ] ]


cluster_68  = cluster

 |> ['q','a','l','a','n','d','A','r'] <| [

    _____                     `noun`    {- <qalandAr> -}       [ unwords [ ['w','a','n','d','e','r','i','n','g'], ['d','e','r','v','i','s','h'] ], ['c','a','l','e','n','d','e','r'] ] ]


cluster_69  = cluster

 |> ['q','a','l','q','I','l','I'] <| [

    _____ |< aT               `noun`    {- <qalqIliyaT> -}     [ ['Q','a','l','q','i','l','y','a'] ] ]


cluster_70  = cluster

 |> "q m b z" <| [

    KuRDAS                    `noun`    {- <qumbAz> -}         [ unwords [ ['q','u','m','b','a','z'], "(", ['m','a','l','e'], ['r','o','b','e'], ")" ] ]
                              `plural`     KaRADIS ]


cluster_71  = cluster

 |> "q m .h" <| [

    FaCCaL                    `verb`    {- <qamma.h> -}        [ unwords [ ['p','a','y'], ['i','n'], ['i','n','s','t','a','l','l','m','e','n','t','s'] ], ['a','p','p','o','r','t','i','o','n'] ],

    HaFCaL                    `verb`    {- <'aqma.h> -}        [ ['r','i','p','e','n'] ],

    FaCL                      `noun`    {- <qam.h> -}          [ ['w','h','e','a','t'], ['g','r','a','i','n'] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy                `adj`     {- <qam.hIy> -}        [ ['w','h','e','a','t'] ],

    FuCAL                     `noun`    {- <qumA.h> -}         [ unwords [ ['c','o','l','d','e','s','t'], ['w','i','n','t','e','r'], ['m','o','n','t','h','s'] ] ],

    FaCCAL                    `noun`    {- <qammA.h> -}        [ unwords [ ['g','r','a','i','n'], ['m','e','r','c','h','a','n','t'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <qammA.h> -}        [ ['Q','a','m','m','a','h'] ] ]


cluster_72  = cluster

 |> "q m r" <| [

    FaCaL                     `verb`    {- <qamar> -}          [ ['g','a','m','b','l','e'] ]
                              `imperf`     FCiL,

    FaCiL                     `verb`    {- <qamir> -}          [ unwords [ ['b','e','c','o','m','e'], ['s','n','o','w'], "-", ['b','l','i','n','d'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <qammar> -}         [ ['t','o','a','s','t'] ],

    FACaL                     `verb`    {- <qAmar> -}          [ unwords [ ['g','a','m','b','l','e'], ['w','i','t','h'] ], ['s','p','e','c','u','l','a','t','e'] ],

    HaFCaL                    `verb`    {- <'aqmar> -}         [ unwords [ ['b','e'], ['m','o','o','n','l','i','t'] ] ],

    TaFACaL                   `verb`    {- <taqAmar> -}        [ ['g','a','m','b','l','e'] ],

    FaCaL                     `noun`    {- <qamar> -}          [ ['m','o','o','n'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <qamar> -}          [ ['s','a','t','e','l','l','i','t','e'] ]
                              `plural`     HaFCAL,

    FaCaL |< aT               `noun`    {- <qamaraT> -}        [ ['c','r','e','s','c','e','n','t'], ['m','o','o','n','l','i','g','h','t'] ],

    FaCaL |< Iy               `adj`     {- <qamarIy> -}        [ ['l','u','n','a','r'], ['m','o','o','n'] ],

    FaCaL |< Iy               `adj`     {- <qamarIy> -}        [ ['s','a','t','e','l','l','i','t','e'] ],

    FaCaL |< Iy |< aT         `noun`    {- <qamarIyaT> -}      [ ['s','k','y','l','i','g','h','t'], unwords [ ['s','m','a','l','l'], ['w','i','n','d','o','w'] ] ],

    FaCLA'                    `noun`    {- <qamrA'> -}         [ ['m','o','o','n','l','i','g','h','t'] ],

    FaCIL                     `noun`    {- <qamIr> -}          [ unwords [ ['g','a','m','b','l','i','n','g'], ['p','a','r','t','n','e','r'] ] ]
                              `plural`     HaFCAL
                              `femini`     FaCIL |< aT,

    HaFCaL                    `adj`     {- <'aqmar> -}         [ ['m','o','o','n','l','i','t'] ],

    MaFCaL                    `noun`    {- <maqmar> -}         [ unwords [ ['g','a','m','b','l','i','n','g'], ['h','o','u','s','e'] ] ]
                              `plural`     MaFACiL,

    FiCAL                     `noun`    {- <qimAr> -}          [ ['g','a','m','b','l','i','n','g'] ],

    MuFACaL |< aT             `noun`    {- <muqAmaraT> -}      [ ['g','a','m','b','l','i','n','g'] ],

    MuFaCCiL                  `noun`    {- <muqammir> -}       [ ['t','o','a','s','t','e','r'] ],

    MuFaCCaL                  `noun`    {- <muqammar> -}       [ ['t','o','a','s','t'], ['t','o','a','s','t','e','d'] ],

    MuFACiL                   `noun`    {- <muqAmir> -}        [ ['g','a','m','b','l','e','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFCiL                    `adj`     {- <muqmir> -}         [ ['m','o','o','n','l','i','t'] ],

    FaCaL |< aT               `noun`    {- <qamaraT> -}        [ ['c','a','b','i','n'], ['b','u','n','k'], ['b','e','r','t','h'], ['c','o','c','k','p','i','t'] ] ]


cluster_73  = cluster

 |> ['q','I','m','a','r'] <| [

    _____ |< Iy               `noun`    {- <qImarIy> -}        [ ['Q','i','m','a','r','i'] ] ]


cluster_74  = cluster

 |> "q m r q" <| [

    KuRDuS                    `noun`    {- <qumruq> -}         [ ['c','u','s','t','o','m','s'], unwords [ ['i','m','p','o','r','t'], ['t','a','r','i','f','f'] ] ]
                              `plural`     KaRADiS,

    KuRDuS |< Iy              `adj`     {- <qumruqIy> -}       [ ['c','u','s','t','o','m','s'], unwords [ ['i','m','p','o','r','t'], ['t','a','r','i','f','f'] ] ] ]


cluster_75  = cluster

 |> "q m z" <| [

    FaCaL                     `verb`    {- <qamaz> -}          [ unwords [ ['t','a','k','e'], ['w','i','t','h'], ['t','h','e'], ['f','i','n','g','e','r','t','i','p','s'] ] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <qamz> -}           [ unwords [ ['t','a','k','i','n','g'], ['w','i','t','h'], ['t','h','e'], ['f','i','n','g','e','r','t','i','p','s'] ] ] ]


cluster_76  = cluster

 |> "q m s" <| [

    FaCaL                     `verb`    {- <qamas> -}          [ ['i','m','m','e','r','s','e'], ['s','o','a','k'] ]
                              `imperf`     FCuL,

    FACUL                     `noun`    {- <qAmUs> -}          [ ['d','i','c','t','i','o','n','a','r','y'], ['l','e','x','i','c','o','n'] ]
                              `plural`     FawACIL,

    FACUL                     `noun`    {- <qAmUs> -}          [ ['Q','a','m','u','s'] ],

    FACUL |< Iy               `adj`     {- <qAmUsIy> -}        [ ['l','e','x','i','c','a','l'], ['d','i','c','t','i','o','n','a','r','y'] ],

    FawCaL                    `noun`    {- <qawmas> -}         [ unwords [ ['s','e','a'], ['d','e','p','t','h'] ], ['a','d','v','e','r','s','i','t','i','e','s'] ]
                              `plural`     FawACiL ]


cluster_77  = cluster

 |> ['q','U','m','i','s','I','r'] <| [

    _____                     `noun`    {- <qUmisIr> -}        [ ['c','o','m','m','i','s','s','i','o','n','e','r'] ] ]


cluster_78  = cluster

 |> "q m ^s" <| [

    FaCaL                     `verb`    {- <qama^s> -}         [ ['c','o','l','l','e','c','t'], unwords [ ['p','i','c','k'], ['u','p'] ] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qamma^s> -}        [ ['c','o','l','l','e','c','t'], unwords [ ['p','i','c','k'], ['u','p'] ] ],

    FuCAL                     `noun`    {- <qumA^s> -}         [ ['f','a','b','r','i','c'], ['c','l','o','t','h'] ]
                              `plural`     HaFCiL |< aT,

    FaCCAL                    `noun`    {- <qammA^s> -}        [ ['d','r','a','p','e','r'], unwords [ ['c','l','o','t','h'], ['m','e','r','c','h','a','n','t'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCL |< aT                `noun`    {- <qam^saT> -}        [ ['s','t','r','a','p'], ['t','h','o','n','g'], ['w','h','i','p'] ] ]


cluster_79  = cluster

 |> "q m .s" <| [

    FaCaL                     `verb`    {- <qama.s> -}         [ ['g','a','l','l','o','p'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <qamma.s> -}        [ ['c','l','o','t','h','e'] ],

    TaFaCCaL                  `verb`    {- <taqamma.s> -}      [ unwords [ ['b','e'], ['c','l','o','t','h','e','d'], ['w','i','t','h'] ], unwords [ ['p','u','t'], ['o','n'] ] ],

    FaCIL                     `noun`    {- <qamI.s> -}         [ ['s','h','i','r','t'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     FuCuL
                              `plural`     FuCLAn,

    FuCCuL                    `noun`    {- <qummu.s> -}        [ ['a','r','c','h','p','r','i','e','s','t'] ]
                              `plural`     FaCACiL |< aT,

    TaFCIL                    `noun`    {- <taqmI.s> -}        [ ['c','l','o','t','h','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <taqammu.s> -}      [ unwords [ ['i','d','e','n','t','i','f','i','c','a','t','i','o','n'], ['w','i','t','h'] ] ]
                              `plural`     TaFaCCuL |< At ]


cluster_80  = cluster

 |> "q m .t" <| [

    FaCaL                     `verb`    {- <qama.t> -}         [ ['b','a','n','d','a','g','e'], ['s','w','a','d','d','l','e'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <qamma.t> -}        [ ['b','a','n','d','a','g','e'], ['s','w','a','d','d','l','e'] ],

    FiCL                      `noun`    {- <qim.t> -}          [ ['r','o','p','e'], ['f','e','t','t','e','r'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <qam.taT> -}        [ ['k','e','r','c','h','i','e','f'] ],

    FiCAL                     `noun`    {- <qimA.t> -}         [ ['s','w','a','d','d','l','e'], ['d','i','a','p','e','r'] ]
                              `plural`     FuCuL
                              `plural`     FiCAL |< At
                              `plural`     HaFCiL |< aT ]


cluster_81  = cluster

 |> ['q','i','m','a','.','t','r'] <| [

    _____                     `noun`    {- <qima.tr> -}        [ ['s','a','t','c','h','e','l'] ] ]


cluster_82  = cluster

 |> "q m `" <| [

    FaCaL                     `verb`    {- <qama`> -}          [ ['r','e','p','r','e','s','s'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    HaFCaL                    `verb`    {- <'aqma`> -}         [ ['r','e','p','r','e','s','s'] ],

    FaCL                      `noun`    {- <qam`> -}           [ ['r','e','p','r','e','s','s','i','o','n'] ],

    FaCL |< Iy                `adj`     {- <qam`Iy> -}         [ ['r','e','p','r','e','s','s','i','v','e'] ],

    FuCL                      `noun`    {- <qum`> -}           [ ['f','u','n','n','e','l'], ['c','o','n','e'] ]
                              `plural`     HaFCAL ]


cluster_83  = cluster

 |> "q m q m" <| [

    KaRDaS                    `verb`    {- <qamqam> -}         [ ['g','r','u','m','b','l','e'] ],

    TaKaRDaS                  `verb`    {- <taqamqam> -}       [ ['c','o','m','p','l','a','i','n'], ['g','r','u','m','b','l','e'] ],

    KaRDaS |< aT              `noun`    {- <qamqamaT> -}       [ ['g','r','u','m','b','l','i','n','g'] ],

    KuRDuS                    `noun`    {- <qumqum> -}         [ ['b','o','t','t','l','e'] ]
                              `plural`     KaRADiS ]


cluster_84  = cluster

 |> "q m l" <| [

    FaCiL                     `verb`    {- <qamil> -}          [ unwords [ ['b','e'], ['l','i','c','e'], "-", ['i','n','f','e','s','t','e','d'] ] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <taqammal> -}       [ unwords [ ['b','e'], ['l','i','c','e'], "-", ['i','n','f','e','s','t','e','d'] ] ],

    FaCaL                     `noun`    {- <qamal> -}          [ unwords [ ['l','i','c','e'], ['i','n','f','e','s','t','a','t','i','o','n'] ] ],

    FaCL                      `noun`    {- <qaml> -}           [ ['l','o','u','s','e'] ],

    FaCiL                     `adj`     {- <qamil> -}          [ unwords [ ['l','i','c','e'], "-", ['i','n','f','e','s','t','e','d'] ] ],

    MuFCaL                    `adj`     {- <muqmal> -}         [ unwords [ ['l','i','c','e'], "-", ['i','n','f','e','s','t','e','d'] ] ] ]


cluster_85  = cluster

 |> "q m n" <| [

    TaFaCCaL                  `verb`    {- <taqamman> -}       [ ['i','n','t','e','n','d'], ['p','r','o','p','o','s','e'] ],

    FaCiL                     `adj`     {- <qamin> -}          [ ['d','e','s','e','r','v','i','n','g'], ['w','o','r','t','h','y'] ],

    FaCIL                     `adj`     {- <qamIn> -}          [ ['w','o','r','t','h','y'], ['s','u','i','t','a','b','l','e'], ['a','p','p','r','o','p','r','i','a','t','e'] ],

    MaFCaL                    `noun`    {- <maqman> -}         [ ['a','p','p','r','o','p','r','i','a','t','e'], ['a','d','e','q','u','a','t','e'] ],

    FaCIL                     `noun`    {- <qamIn> -}          [ ['k','i','l','n'], ['f','u','r','n','a','c','e'] ]
                              `plural`     FaCIL |< At ]


cluster_86  = cluster

 |> ['q','U','m','a','n','d','A','n'] <| [

    _____                     `noun`    {- <qUmandAn> -}       [ ['c','o','m','m','a','n','d','a','n','t'] ] ]


cluster_87  = cluster

 |> ['q','A','n','A'] <| [

    _____                     `noun`    {- <qAnA> -}           [ ['Q','a','n','a'] ] ]


cluster_88  = cluster

 |> ['q','U','n','I'] <| [

    _____ |< aT               `noun`    {- <qUniyaT> -}        [ ['K','o','n','y','a'] ] ]


cluster_89  = cluster

 |> "q n b" <| [

    FaCL                      `noun`    {- <qanb> -}           [ ['c','a','l','y','x'] ]
                              `plural`     FuCUL,

    FuCCaL                    `noun`    {- <qunnab> -}         [ ['h','e','m','p'] ],

    MiFCaL                    `noun`    {- <miqnab> -}         [ unwords [ ['t','r','o','o','p'], ['o','f'], ['h','o','r','s','e','m','e','n'] ] ]
                              `plural`     MaFACiL ]


cluster_90  = cluster

 |> "q n b r" <| [

    KuRDAS                    `noun`    {- <qunbAr> -}         [ unwords [ ['b','a','s','t'], ['r','u','g'] ], unwords [ ['b','a','s','t'], ['r','u','n','n','e','r'] ] ],

    KuRDuS                    `noun`    {- <qunbur> -}         [ ['l','a','r','k'] ]
                              `plural`     KaRADiS,

    KuRDUS                    `noun`    {- <qunbUr> -}         [ ['h','u','m','p'], ['h','u','n','c','h'] ] ]


cluster_91  = cluster

 |> "q n b l" <| [

    KaRDaS                    `verb`    {- <qanbal> -}         [ ['b','o','m','b','a','r','d'] ],

    KaRDaS                    `noun`    {- <qanbal> -}         [ unwords [ ['t','r','o','o','p'], ['o','f'], ['h','o','r','s','e','m','e','n'] ] ],

    KaRDaS |< aT              `noun`    {- <qanbalaT> -}       [ ['b','o','m','b','a','r','d','i','n','g'], ['b','o','m','b','a','r','d','m','e','n','t'] ],

    KuRDuS |< aT              `noun`    {- <qunbulaT> -}       [ ['b','o','m','b'], ['s','h','e','l','l'], ['g','r','e','n','a','d','e'] ]
                              `plural`     KaRADiS ]


cluster_92  = cluster

 |> "q n t" <| [

    FaCaL                     `verb`    {- <qanat> -}          [ unwords [ ['b','e'], ['o','b','e','d','i','e','n','t'] ], unwords [ ['b','e'], ['s','u','b','m','i','s','s','i','v','e'] ] ]
                              `imperf`     FCuL,

    FuCUL                     `noun`    {- <qunUt> -}          [ ['o','b','e','d','i','e','n','c','e'], ['d','e','v','o','u','t','n','e','s','s'] ] ]


cluster_93  = cluster

 |> "q n ^g" <| [

    FaCL |< aT                `noun`    {- <qan^gaT> -}        [ unwords [ ['N','i','l','e'], ['b','o','a','t'] ] ]
                              `plural`     FiCAL
                              `plural`     FaCaL |< At ]


cluster_94  = cluster

 |> "q n d" <| [

    FaCL                      `noun`    {- <qand> -}           [ unwords [ ['q','a','n','d'], "(", ['h','a','r','d'], ['s','u','g','a','r'], ")" ] ]
                              `plural`     FuCUL,

    MaFCUL                    `adj`     {- <maqnUd> -}         [ ['s','w','e','e','t','e','n','e','d'] ],

    MuFaCCaL                  `adj`     {- <muqannad> -}       [ ['s','w','e','e','t','e','n','e','d'] ] ]


cluster_95  = cluster

 |> "q n d z" <| [

    KuRDuS                    `noun`    {- <qunduz> -}         [ ['b','e','a','v','e','r'] ],

    KuRDUS                    `noun`    {- <qundUz> -}         [ ['K','u','n','d','u','z'], ['Q','u','n','d','u','z'] ],

    KuRDUS |< Iy              `adj`     {- <qundUzIy> -}       [ unwords [ ['o','f'], "/", ['f','r','o','m'], ['K','u','n','d','u','z'] ], ['Q','u','n','d','u','z'] ] ]


cluster_96  = cluster

 |> "q n d s" <| [

    KuRDuS                    `noun`    {- <qundus> -}         [ ['b','e','a','v','e','r'] ] ]


cluster_97  = cluster

 |> "q n d q" <| [

    KaRDaS                    `noun`    {- <qandaq> -}         [ ['g','u','n','s','t','o','c','k'], unwords [ ['r','i','f','l','e'], ['b','u','t','t'] ] ]
                              `plural`     KaRADiS ]


cluster_98  = cluster

 |> "q n d l" <| [

    KaRDUS                    `noun`    {- <qandUl> -}         [ ['a','s','p','a','l','a','t','h','u','s'] ],

    KiRDIS                    `noun`    {- <qindIl> -}         [ ['l','a','m','p'] ]
                              `plural`     KaRADIS,

    KiRDIS                    `noun`    {- <qindIl> -}         [ ['c','a','n','d','l','e','s','t','i','c','k'], ['c','a','n','d','e','l','a','b','r','u','m'] ]
                              `plural`     KaRADIS ]


cluster_99  = cluster

 |> "q n z `" <| [

    KuRDuS |< aT              `noun`    {- <qunzu`aT> -}       [ unwords [ ['t','u','f','t'], ['o','f'], ['h','a','i','r'] ], unwords [ ['r','o','o','s','t','e','r','\'','s'], ['c','r','e','s','t'] ] ]
                              `plural`     KaRADiS,

    KaRDaS |< aT              `noun`    {- <qanza`aT> -}       [ unwords [ ['t','u','f','t'], ['o','f'], ['h','a','i','r'] ], unwords [ ['r','o','o','s','t','e','r','\'','s'], ['c','r','e','s','t'] ] ]
                              `plural`     KaRADiS,

    KiRDiS |< aT              `noun`    {- <qinzi`aT> -}       [ unwords [ ['t','u','f','t'], ['o','f'], ['h','a','i','r'] ], unwords [ ['r','o','o','s','t','e','r','\'','s'], ['c','r','e','s','t'] ] ]
                              `plural`     KaRADiS ]


cluster_100 = cluster

 |> "q n .s" <| [

    FaCaL                     `verb`    {- <qana.s> -}         [ unwords [ ['t','a','k','e'], ['a','d','v','a','n','t','a','g','e'], ['o','f'] ], unwords [ ['m','a','k','e'], ['u','s','e'], ['o','f'] ] ]
                              `imperf`     FCiL,

    IFtaCaL                   `verb`    {- <iqtana.s> -}       [ unwords [ ['t','a','k','e'], ['a','d','v','a','n','t','a','g','e'], ['o','f'] ], unwords [ ['m','a','k','e'], ['u','s','e'], ['o','f'] ] ],

    FaCL                      `noun`    {- <qan.s> -}          [ ['h','u','n','t','i','n','g'], ['s','h','o','o','t','i','n','g'] ],

    FaCaL                     `noun`    {- <qana.s> -}         [ ['q','u','a','r','r','y'], ['c','a','t','c','h'] ],

    FaCIL                     `noun`    {- <qanI.s> -}         [ ['q','u','a','r','r','y'], ['c','a','t','c','h'] ],

    FaCCAL                    `noun`    {- <qannA.s> -}        [ ['s','n','i','p','e','r'], ['s','h','a','r','p','s','h','o','o','t','e','r'] ]
                              `plural`     FaCCAL |< aT
                              `femini`     FaCCAL |< aT,

    FACiL                     `noun`    {- <qAni.s> -}         [ ['h','u','n','t','e','r'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT,

    FACiL |< aT               `noun`    {- <qAni.saT> -}       [ ['d','e','s','t','r','o','y','e','r'] ]
                              `plural`     FACiL |< At,

    FACiL |< aT               `noun`    {- <qAni.saT> -}       [ ['g','i','z','z','a','r','d'] ]
                              `plural`     FawACiL,

    IFtiCAL                   `noun`    {- <iqtinA.s> -}       [ unwords [ ['t','a','k','i','n','g'], ['a','d','v','a','n','t','a','g','e'], ['o','f'] ], unwords [ ['m','a','k','i','n','g'], ['u','s','e'], ['o','f'] ] ]
                              `plural`     IFtiCAL |< At,

    MaFCUL                    `noun`    {- <maqnU.s> -}        [ ['q','u','a','r','r','y'], ['c','a','t','c','h'] ] ]


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
