
module Elixir.Data.Sunny.Complex.A (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['t','A','\''] <| [

    _____                     `noun`    {- <tA'> -}            [ unwords [ ['t','a','\''], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_2   = cluster

 |> "t ' t '" <| [

    KaRDaS                    `verb`    {- <ta'ta'> -}         [ ['s','t','a','m','m','e','r'], ['s','t','u','t','t','e','r'] ],

    KaRDaS |< aT              `noun`    {- <ta'ta'aT> -}       [ ['s','t','a','m','m','e','r','i','n','g'], ['s','t','u','t','t','e','r','i','n','g'] ] ]


cluster_3   = cluster

 |> "t ' r" <| [

    HaFCaL                    `verb`    {- <'at'ar> -}         [ ['s','t','a','r','e'], unwords [ ['f','i','x'], ['e','y','e','s'], ['o','n'] ] ] ]


cluster_4   = cluster

 |> "t ' q" <| [

    FaCL                      `noun`    {- <ta'q> -}           [ ['a','l','l','e','r','g','y'] ]
                              `plural`     FaCL |< At ]


cluster_5   = cluster

 |> "t ' m" <| [

    FACaL                     `verb`    {- <tA'am> -}          [ ['t','w','i','n'], ['p','a','r','t','n','e','r'] ],

    HaFAL                     `verb`    {- <'atAm> -}          [ unwords [ ['g','i','v','e'], ['b','i','r','t','h'], ['t','o'], ['t','w','i','n','s'] ], unwords [ ['h','a','v','e'], ['t','w','i','n','s'] ] ],

    FawCaL                    `noun`    {- <taw'am> -}         [ ['t','w','i','n'] ]
                              `plural`     FawACiL
                              `femini`     FawCaL |< aT,

    MuFACaL |< aT             `noun`    {- <mutA'amaT> -}      [ ['t','w','i','n','n','i','n','g'], ['p','a','r','t','n','e','r','s','h','i','p'] ],

    HiFCAL                    `noun`    {- <'it'Am> -}         [ unwords [ ['t','w','i','n'], ['b','i','r','t','h'] ], unwords [ ['h','a','v','i','n','g'], ['t','w','i','n','s'] ] ] ]

 |> "t w ' m" <| [

    KaRDaS                    `verb`    {- <taw'am> -}         [ ['p','a','r','t','n','e','r'], ['t','w','i','n'] ],

    KaRDaS |< aT              `noun`    {- <taw'amaT> -}       [ ['p','a','r','t','n','e','r','s','h','i','p'], ['t','w','i','n','n','i','n','g'] ],

    MuKaRDaS                  `adj`     {- <mutaw'am> -}       [ ['t','w','i','n','n','e','d'] ] ]


cluster_6   = cluster

 |> ['t','a','\'','a','n','^','g','l','a','z'] <| [

    _____                     `verb`    {- <ta'an^glaz> -}     [ unwords [ ['b','e'], ['A','n','g','l','i','c','i','z','e','d'] ] ] ]


cluster_7   = cluster

 |> ['t','a','\'','a','n','q','l','a','z'] <| [

    _____                     `verb`    {- <ta'anqlaz> -}      [ unwords [ ['b','e'], ['A','n','g','l','i','c','i','z','e','d'] ] ] ]


cluster_8   = cluster

 |> ['t','a','\'','a','n','k','l','a','z'] <| [

    _____                     `verb`    {- <ta'anklaz> -}      [ unwords [ ['b','e'], ['A','n','g','l','i','c','i','z','e','d'] ] ] ]


cluster_9   = cluster

 |> "t b b" <| [

    FaCL                      `verb`    {- <tabb> -}           [ ['p','e','r','i','s','h'], unwords [ ['b','e'], ['d','e','s','t','r','o','y','e','d'] ] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    IstaFaCL                  `verb`    {- <istatabb> -}       [ ['s','t','a','b','i','l','i','z','e'], unwords [ ['b','e'], ['e','s','t','a','b','l','i','s','h','e','d'] ] ],

    FaCL |<< "aN"             `intj`    {- <tabbaN> -}         [ unwords [ ['p','e','r','i','s','h'], "!" ] ],

    IstiFCAL                  `noun`    {- <istitbAb> -}       [ ['n','o','r','m','a','l','c','y'], ['s','t','a','b','i','l','i','t','y'] ]
                              `plural`     IstiFCAL |< At ]


cluster_10  = cluster

 |> ['t','A','b','i','y','U','k','A'] <| [

    _____                     `noun`    {- <tAbiyUkA> -}       [ ['t','a','p','i','o','c','a'] ] ]


cluster_11  = cluster

 |> ['t','U','t','i','y','A'] <| [

    _____                     `noun`    {- <tUtiyA> -}         [ ['z','i','n','c'] ] ]


cluster_12  = cluster

 |> "t _h _h" <| [

    FaCL                      `verb`    {- <ta_h_h> -}         [ unwords [ ['b','e','c','o','m','e'], ['s','o','u','r'] ], ['f','e','r','m','e','n','t'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL ]


cluster_13  = cluster

 |> ['t','a','_','h','t','a','r','a','w','A','n'] <| [

    _____                     `noun`    {- <ta_htarawAn> -}    [ unwords [ ['s','e','d','a','n'], ['c','h','a','i','r'] ] ] ]


cluster_14  = cluster

 |> "t r y q" <| [

    KiRDAS                    `noun`    {- <tiryAq> -}         [ ['a','n','t','i','d','o','t','e'] ] ]


cluster_15  = cluster

 |> ['t','i','r','w','A','d'] <| [

    _____ |<< "ah"            `xtra`    {- <tirwAdah> -}       [ ['T','r','o','y'] ],

    _____ |< Iy               `adj`     {- <tirwAdIy> -}       [ ['T','r','o','j','a','n'] ] ]


cluster_16  = cluster

 |> ['t','i','.','t','w','A','n'] <| [

    _____                     `noun`    {- <ti.twAn> -}        [ ['T','e','t','o','u','a','n'] ] ]


cluster_17  = cluster

 |> "t f f" <| [

    FaCL                      `verb`    {- <taff> -}           [ ['s','p','i','t'] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    FaCCaL                    `verb`    {- <taffaf> -}         [ unwords [ ['r','e','j','e','c','t'], ['w','i','t','h'], ['d','i','s','g','u','s','t'] ], unwords [ ['s','a','y'], ['"','p','h','e','w','"'] ] ],

    FuCL                      `noun`    {- <tuff> -}           [ unwords [ ['f','i','n','g','e','r','n','a','i','l'], ['d','i','r','t'] ] ],

    FuCL |<< "aN"             `intj`    {- <tuffaN> -}         [ unwords [ ['p','h','e','w'], "!" ] ],

    FaCCAL |< aT              `noun`    {- <taffAfaT> -}       [ ['s','p','i','t','t','o','o','n'] ] ]


cluster_18  = cluster

 |> "t q y" <| [

    FaCY                      `verb`    {- <taqY> -}           [ unwords [ ['b','e'], ['d','e','v','o','u','t'] ], unwords [ ['b','e'], ['p','i','o','u','s'] ] ]
                              `imperf`     FCI,

    FaCIL                     `adj`     {- <taqIy> -}          [ ['p','i','o','u','s'], ['d','e','v','o','u','t'] ]
                              `plural`     HaFCiLA',

    HaFCY                     `adj`     {- <'atqY> -}          [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','i','o','u','s'] ] ],

    FuCY                      `noun`    {- <tuqY> -}           [ ['p','i','e','t','y'] ],

    FaCwY                     `noun`    {- <taqwY> -}          [ ['p','i','e','t','y'] ],

    MuFtaCI                   `adj`     {- <muttaqI> -}        [ ['p','i','o','u','s'], ['d','e','v','o','u','t'] ],

    FaCIL |< aT               `noun`    {- <taqIyaT> -}        [ ['d','i','s','s','i','m','u','l','a','t','i','o','n'] ],

    FaCIL |< aT               `noun`    {- <taqIyaT> -}        [ ['p','r','u','d','e','n','c','e'], ['c','a','u','t','i','o','n'] ] ]


cluster_19  = cluster

 |> "t k k" <| [

    FiCL |< aT                `noun`    {- <tikkaT> -}         [ ['t','i','c','k','i','n','g'] ],

    FaCL                      `verb`    {- <takk> -}           [ ['t','i','c','k'] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL ]

 |> "t k k" <| [

    FiCL |< aT                `noun`    {- <tikkaT> -}         [ ['w','a','i','s','t','b','a','n','d'] ]
                              `plural`     FiCaL ]

 |> "t k k" <| [

    FaCL                      `verb`    {- <takk> -}           [ unwords [ ['t','r','a','m','p','l','e'], ['u','n','d','e','r','f','o','o','t'] ], ['i','n','t','o','x','i','c','a','t','e'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL ]


cluster_20  = cluster

 |> "t k y" <| [

    FaCIL |< aT               `noun`    {- <takIyaT> -}        [ ['m','o','n','a','s','t','e','r','y'], ['h','o','s','p','i','c','e'] ]
                              `plural`     FaCALY,

    FaCIL |< aT               `noun`    {- <takIyaT> -}        [ ['a','s','y','l','u','m'] ]
                              `plural`     FaCALY ]


cluster_21  = cluster

 |> "t l l" <| [

    FaCL                      `xtra`    {- <tall> -}           [ ['T','e','l'] ],

    FaCL                      `noun`    {- <tall> -}           [ ['h','i','l','l'], ['e','l','e','v','a','t','i','o','n'], ['m','o','u','n','t','a','i','n','s'] ]
                              `plural`     FuCUL
                              `plural`     FiCAL
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <tallaT> -}         [ ['h','e','a','p'] ] ]


cluster_22  = cluster

 |> "t l w" <| [

    FaCA                      `verb`    {- <talA> -}           [ ['f','o','l','l','o','w'], unwords [ ['c','o','m','e'], ['a','f','t','e','r'] ] ]
                              `imperf`     FCU
                              `masdar`     FuCUL,

    FaCA                      `verb`    {- <talA> -}           [ ['r','e','c','i','t','e'], unwords [ ['r','e','a','d'], ['a','l','o','u','d'] ] ]
                              `imperf`     FCU
                              `masdar`     FiCAL |< aT,

    HaFCY                     `verb`    {- <'atlY> -}          [ unwords [ ['m','a','k','e'], ['f','o','l','l','o','w'] ], unwords [ ['p','u','t'], ['n','e','x','t'] ] ],

    TaFACY                    `verb`    {- <tatAlY> -}         [ unwords [ ['f','o','l','l','o','w'], ['o','n','e'], ['a','n','o','t','h','e','r'] ], unwords [ ['b','e'], ['s','u','c','c','e','s','s','i','v','e'] ] ],

    IstaFCY                   `verb`    {- <istatlY> -}        [ ['c','o','n','t','i','n','u','e'] ],

    FuCUL                     `noun`    {- <tulUw> -}          [ ['f','o','l','l','o','w','i','n','g'], ['e','n','s','u','i','n','g'] ],

    FiCAL |< aT               `noun`    {- <tilAwaT> -}        [ ['r','e','c','i','t','a','t','i','o','n'] ],

    FiCL |<< "a"              `prep`    {- <tilwa> -}          [ ['a','f','t','e','r'] ],

    FACI                      `adj`     {- <tAlI> -}           [ ['f','o','l','l','o','w','i','n','g'], ['s','u','b','s','e','q','u','e','n','t'] ],

    MutaFACI                  `adj`     {- <mutatAlI> -}       [ ['c','o','n','s','e','c','u','t','i','v','e'], ['s','u','c','c','e','s','s','i','v','e'] ] ]


cluster_23  = cluster

 |> ['t','i','l','f','i','z','y','U','n'] <| [

    _____                     `noun`    {- <tilfizyUn> -}      [ ['t','e','l','e','v','i','s','i','o','n'] ]
                              `plural`     _____ |< At,

    _____ |< Iy               `adj`     {- <tilfizyUnIy> -}    [ ['t','e','l','e','v','i','s','i','o','n'] ] ]


cluster_24  = cluster

 |> "t m m" <| [

    FaCL                      `verb`    {- <tamm> -}           [ ['c','o','n','c','l','u','d','e'], unwords [ ['t','a','k','e'], ['p','l','a','c','e'] ] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL
                              `masdar`     FaCL
                              `masdar`     FaCAL,

    FaCCaL                    `verb`    {- <tammam> -}         [ ['c','o','m','p','l','e','t','e'], ['c','o','n','c','l','u','d','e'] ],

    HaFaCL                    `verb`    {- <'atamm> -}         [ ['c','o','m','p','l','e','t','e'], ['c','o','n','c','l','u','d','e'] ],

    IstaFaCL                  `verb`    {- <istatamm> -}       [ unwords [ ['b','e'], ['c','o','m','p','l','e','t','e','d'] ], unwords [ ['b','e'], ['f','i','n','i','s','h','e','d'] ] ],

    FaCAL                     `noun`    {- <tamAm> -}          [ ['p','e','r','f','e','c','t','i','o','n'], ['c','o','m','p','l','e','t','e','n','e','s','s'] ],

    FaCAL |<< "aN"            `noun`    {- <tamAmaN> -}        [ ['e','x','a','c','t','l','y'], ['c','o','m','p','l','e','t','e','l','y'] ],

    FaCIL                     `noun`    {- <tamIm> -}          [ ['T','a','m','i','m'] ],

    FaCIL |< Iy               `adj`     {- <tamImIy> -}        [ ['T','a','m','i','m','i'] ],

    FaCIL |< aT               `noun`    {- <tamImaT> -}        [ ['a','m','u','l','e','t'] ]
                              `plural`     FaCA'iL,

    HaFaCL                    `adj`     {- <'atamm> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['c','o','m','p','l','e','t','e'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','e','r','f','e','c','t'] ] ],

    TaFCIL                    `noun`    {- <tatmIm> -}         [ ['c','o','m','p','l','e','t','i','o','n'], ['r','e','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFiCL |< aT              `noun`    {- <tatimmaT> -}       [ ['c','o','m','p','l','e','t','i','o','n'], ['c','o','n','c','l','u','s','i','o','n'] ],

    HiFCAL                    `noun`    {- <'itmAm> -}         [ ['c','o','m','p','l','e','t','i','o','n'], ['r','e','a','l','i','z','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    IstiFCAL                  `noun`    {- <istitmAm> -}       [ ['t','e','r','m','i','n','a','t','i','o','n'], ['c','o','n','c','l','u','s','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACL                      `adj`     {- <tAmm> -}           [ ['c','o','m','p','l','e','t','e'], ['c','o','n','c','l','u','d','e','d'] ] ]


cluster_25  = cluster

 |> "t n '" <| [

    FACiL                     `noun`    {- <tAni'> -}          [ ['r','e','s','i','d','e','n','t'] ]
                              `plural`     FuCCAL
                              `femini`     FACiL |< aT ]


cluster_26  = cluster

 |> "t n n" <| [

    FiCCIL                    `noun`    {- <tinnIn> -}         [ ['d','r','a','g','o','n'], ['d','r','a','c','o'] ]
                              `plural`     FaCACIL ]

 |> ['t','u','n','n'] <| [

    _____                     `noun`    {- <tunn> -}           [ ['t','u','n','a'] ] ]


cluster_27  = cluster

 |> "t n w" <| [

    FaCL |< aT                `noun`    {- <tanwaT> -}         [ unwords [ ['c','o','f','f','e','e'], ['d','r','e','g','s'] ] ] ]


cluster_28  = cluster

 |> "t w b" <| [

    FAL                       `verb`    {- <tAb> -}            [ ['r','e','p','e','n','t'] ]
                              `imperf`     FUL,

    FaCCaL                    `verb`    {- <tawwab> -}         [ unwords [ ['m','a','k','e'], ['r','e','p','e','n','t'] ] ],

    IstaFAL                   `verb`    {- <istatAb> -}        [ ['c','o','n','v','e','r','t'], unwords [ ['c','a','l','l'], ['t','o'], ['r','e','p','e','n','t'] ] ],

    FaCL |< aT                `noun`    {- <tawbaT> -}         [ ['r','e','p','e','n','t','a','n','c','e'], ['p','e','n','a','n','c','e'] ],

    FaCCAL                    `noun`    {- <tawwAb> -}         [ ['T','a','w','w','a','b'] ],

    FaCCAL                    `adj`     {- <tawwAb> -}         [ ['r','e','p','e','n','t','a','n','t'], ['m','e','r','c','i','f','u','l'] ],

    FA'iL                     `adj`     {- <tA'ib> -}          [ ['r','e','p','e','n','t','a','n','t'], ['c','o','n','t','r','i','t','e'] ] ]


cluster_29  = cluster

 |> "t w b l" <| [

    KaRDaS                    `verb`    {- <tawbal> -}         [ ['s','p','i','c','e'], ['s','e','a','s','o','n'] ] ]


cluster_30  = cluster

 |> "t w t" <| [

    FUL                       `noun`    {- <tUt> -}            [ ['m','u','l','b','e','r','r','y'] ],

    FUL                       `noun`    {- <tUt> -}            [ ['T','u','t'] ],

    FUL |< Iy                 `adj`     {- <tUtIy> -}          [ ['z','i','n','c'] ] ]


cluster_31  = cluster

 |> "t w ^g" <| [

    FaCCaL                    `verb`    {- <tawwa^g> -}        [ ['c','r','o','w','n'] ],

    TaFaCCaL                  `verb`    {- <tatawwa^g> -}      [ unwords [ ['b','e'], ['c','r','o','w','n','e','d'] ] ],

    FAL                       `noun`    {- <tA^g> -}           [ ['T','a','j'] ],

    FAL                       `noun`    {- <tA^g> -}           [ ['c','r','o','w','n'] ]
                              `plural`     FILAn,

    FILAn |< Iy               `adj`     {- <tI^gAnIy> -}       [ ['T','i','j','a','n','i'] ],

    FAL |< Iy                 `adj`     {- <tA^gIy> -}         [ ['c','o','r','o','n','a','l'] ],

    FuCayL                    `noun`    {- <tuway^g> -}        [ unwords [ ['l','i','t','t','l','e'], ['c','r','o','w','n'] ], ['c','o','r','o','n','e','t'] ]
                              `plural`     FuCayL |< At,

    TaFCIL                    `noun`    {- <tatwI^g> -}        [ ['c','o','r','o','n','a','t','i','o','n'], ['c','r','o','w','n','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mutawwa^g> -}      [ ['c','r','o','w','n','e','d'] ] ]


cluster_32  = cluster

 |> "t w r" <| [

    FAL |< aT |<< "aN"        `noun`    {- <tAraTaN> -}        [ ['o','n','c','e'], ['s','o','m','e','t','i','m','e','s'] ],

    FaCLY |< aT               `noun`    {- <tawrAT> -}         [ ['T','o','r','a','h'] ] ]


cluster_33  = cluster

 |> ['t','u','w','I','s','t'] <| [

    _____                     `noun`    {- <tuwIst> -}         [ ['t','w','i','s','t'] ] ]


cluster_34  = cluster

 |> "t w q" <| [

    FAL                       `verb`    {- <tAq> -}            [ ['y','e','a','r','n'], ['w','i','s','h'], ['d','e','s','i','r','e'] ]
                              `imperf`     FUL,

    FaCL                      `noun`    {- <tawq> -}           [ ['d','e','s','i','r','e'], ['l','o','n','g','i','n','g'], ['y','e','a','r','n','i','n','g'] ],

    FaCaLAn                   `noun`    {- <tawaqAn> -}        [ ['d','e','s','i','r','e'], ['l','o','n','g','i','n','g'], ['y','e','a','r','n','i','n','g'] ],

    FaCCAL                    `adj`     {- <tawwAq> -}         [ ['l','o','n','g','i','n','g'], ['y','e','a','r','n','i','n','g'] ],

    FA'iL                     `adj`     {- <tA'iq> -}          [ ['l','o','n','g','i','n','g'], ['e','a','g','e','r'] ] ]


cluster_35  = cluster

 |> "t w k" <| [

    FUL |< aT                 `noun`    {- <tUkaT> -}          [ unwords [ ['b','e','l','t'], ['b','u','c','k','l','e'] ] ] ]


cluster_36  = cluster

 |> ['t','u','w','A','l','I','t'] <| [

    _____                     `noun`    {- <tuwAlIt> -}        [ ['t','o','i','l','e','t','t','e'] ] ]


cluster_37  = cluster

 |> "t w n s" <| [

    KaRDaS                    `verb`    {- <tawnas> -}         [ unwords [ ['m','a','k','e'], ['T','u','n','i','s','i','a','n'] ], ['T','u','n','i','s','i','a','n','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <tawnasaT> -}       [ ['T','u','n','i','s','i','a','n','i','z','a','t','i','o','n'] ],

    KUDiS                     `noun`    {- <tUnis> -}          [ ['T','u','n','i','s'] ]
                           
    `excepts` Diptote,

    KUDiS                     `noun`    {- <tUnis> -}          [ ['T','u','n','i','s','i','a'] ]
                           
    `excepts` Diptote,

    KUDiS |< Iy               `adj`     {- <tUnisIy> -}        [ ['T','u','n','i','s','i','a','n'] ]
                              `plural`     KaRADiS |< aT
                              `plural`     KUDiS |< Iy |< Un ]


cluster_38  = cluster

 |> "t w h" <| [

    FAL                       `verb`    {- <tAh> -}            [ unwords [ ['g','o'], ['a','s','t','r','a','y'] ], unwords [ ['g','e','t'], ['l','o','s','t'] ] ]
                              `imperf`     FUL,

    FaCCaL                    `verb`    {- <tawwah> -}         [ ['m','i','s','l','e','a','d'], ['c','o','n','f','u','s','e'] ],

    FUL |< aT                 `noun`    {- <tUhaT> -}          [ ['d','a','u','g','h','t','e','r'] ] ]

 |> "t y h" <| [

    FAL                       `verb`    {- <tAh> -}            [ unwords [ ['g','e','t'], ['l','o','s','t'] ], ['p','e','r','i','s','h'] ]
                              `imperf`     FIL
                              `masdar`     FaCL
                              `masdar`     FIL
                              `masdar`     FaCaLAn,

    FaCCaL                    `verb`    {- <tayyah> -}         [ ['m','i','s','l','e','a','d'], ['c','o','n','f','u','s','e'] ],

    HaFAL                     `verb`    {- <'atAh> -}          [ ['m','i','s','l','e','a','d'], ['c','o','n','f','u','s','e'] ],

    FIL                       `noun`    {- <tIh> -}            [ ['d','e','s','e','r','t'], ['l','a','b','y','r','i','n','t','h'] ],

    FaCCAL                    `adj`     {- <tayyAh> -}         [ ['s','t','r','a','y','i','n','g'], ['w','a','n','d','e','r','i','n','g'] ],

    FaCCAL                    `adj`     {- <tayyAh> -}         [ ['h','a','u','g','h','t','y'] ],

    FaCLAn                    `adj`     {- <tayhAn> -}         [ ['s','t','r','a','y','i','n','g'], ['p','e','r','p','l','e','x','e','d'] ],

    FaCLAn                    `adj`     {- <tayhAn> -}         [ ['h','a','u','g','h','t','y'] ],

    FaCLA'                    `noun`    {- <tayhA'> -}         [ ['d','e','s','o','l','a','t','e'], ['w','i','l','d','e','r','n','e','s','s'] ],

    FaCL |< aT                `noun`    {- <tayhaT> -}         [ ['m','a','z','e'], ['l','a','b','y','r','i','n','t','h'] ]
                              `plural`     FaCaL |< At,

    FaCL |< aT                `noun`    {- <tayhaT> -}         [ ['d','e','s','o','l','a','t','e'] ]
                              `plural`     FaCaL |< At,

    FA'iL                     `adj`     {- <tA'ih> -}          [ ['s','t','r','a','y','i','n','g'], ['l','o','s','t'] ] ]


cluster_39  = cluster

 |> "t w w" <| [

    FaCL                      `noun`    {- <taww> -}           [ unwords [ ['t','h','e'], ['v','e','r','y'], ['m','o','m','e','n','t'] ], unwords [ ['j','u','s','t'], ['n','o','w'] ], unwords [ ['t','h','e'], ['v','e','r','y'], ['s','e','l','f'] ] ]
                              `plural`     HaFCA',

    FaCL |<< "aN"             `noun`    {- <tawwaN> -}         [ unwords [ ['r','i','g','h','t'], ['a','w','a','y'] ], unwords [ ['a','t'], ['o','n','c','e'] ], ['i','m','m','e','d','i','a','t','e','l','y'] ] ]


cluster_40  = cluster

 |> ['t','i','y','A','t','r','U'] <| [

    _____                     `noun`    {- <tiyAtrU> -}        [ ['t','h','e','a','t','e','r'] ] ]


cluster_41  = cluster

 |> "t y .h" <| [

    HaFAL                     `verb`    {- <'atA.h> -}         [ ['g','r','a','n','t'], ['p','r','o','v','i','d','e'], unwords [ ['b','e'], ['a','v','a','i','l','a','b','l','e'] ] ],

    HiFAL |< aT               `noun`    {- <'itA.haT> -}       [ ['g','r','a','n','t','i','n','g'], ['p','r','o','v','i','d','i','n','g'] ],

    MuFAL                     `adj`     {- <mutA.h> -}         [ ['p','r','o','v','i','d','e','d'], ['a','v','a','i','l','a','b','l','e'], ['g','r','a','n','t','e','d'] ] ]


cluster_42  = cluster

 |> "t y r" <| [

    FaCCAL                    `noun`    {- <tayyAr> -}         [ ['c','u','r','r','e','n','t'], ['s','t','r','e','a','m'] ]
                              `plural`     FaCCAL |< At ]


cluster_43  = cluster

 |> "t y s" <| [

    FaCL                      `noun`    {- <tays> -}           [ unwords [ ['b','i','l','l','y'], ['g','o','a','t'] ], ['f','o','o','l'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    HaFCaL                    `noun`    {- <'atyas> -}         [ unwords [ ['b','i','l','l','y'], ['g','o','a','t'] ], ['f','o','o','l'] ] ]


cluster_44  = cluster

 |> "t y l" <| [

    FaCCaL                    `verb`    {- <tayyal> -}         [ ['c','a','b','l','e'], unwords [ ['w','i','r','e'], "(", ['t','e','l','e','g','r','a','p','h'], ")" ] ],

    TaFCIL                    `noun`    {- <tatyIl> -}         [ ['t','e','l','e','g','r','a','p','h','i','n','g'], ['w','i','r','i','n','g'], ['c','a','b','l','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_45  = cluster

 |> "t y m" <| [

    FAL                       `verb`    {- <tAm> -}            [ unwords [ ['b','e'], ['i','n','f','a','t','u','a','t','e','d'] ], unwords [ ['b','e'], ['e','n','s','l','a','v','e','d'] ] ]
                              `imperf`     FIL,

    FaCCaL                    `verb`    {- <tayyam> -}         [ ['i','n','f','a','t','u','a','t','e'], ['e','n','s','l','a','v','e'] ],

    FaCLA'                    `noun`    {- <taymA'> -}         [ ['T','a','i','m','a','\''] ],

    FILA' |< Iy               `noun`    {- <tImAwIy> -}        [ ['T','i','m','a','w','i'] ],

    FaCL |< Iy |< aT          `noun`    {- <taymIyaT> -}       [ ['T','a','i','m','i','y','y','a'] ] ]


cluster_46  = cluster

 |> "t y n" <| [

    FIL                       `noun`    {- <tIn> -}            [ ['f','i','g'] ] ]


cluster_47  = cluster

 |> ['t','A','y','l','A','n','d'] <| [

    _____                     `xtra`    {- <tAylAnd> -}        [ ['T','h','a','i','l','a','n','d'] ],

    _____ |< Iy               `adj`     {- <tAylAndIy> -}      [ ['T','h','a','i'] ] ]

 |> ['t','A','y','l','a','n','d'] <| [

    _____                     `xtra`    {- <tAyland> -}        [ ['T','h','a','i','l','a','n','d'] ],

    _____ |< Iy               `adj`     {- <tAylandIy> -}      [ ['T','h','a','i'] ] ]


cluster_48  = cluster

 |> ['t','A','y','w','A','n'] <| [

    _____                     `xtra`    {- <tAywAn> -}         [ ['T','a','i','w','a','n'] ],

    _____ |< Iy               `adj`     {- <tAywAnIy> -}       [ ['T','a','i','w','a','n','e','s','e'] ] ]


cluster_49  = cluster

 |> ['t','r','I','l','i','y','U','n','I','r'] <| [

    _____                     `noun`    {- <trIliyUnIr> -}     [ ['t','r','i','l','l','i','o','n','a','i','r','e'] ] ]


cluster_50  = cluster

 |> ['_','t','A','\''] <| [

    _____                     `noun`    {- <_tA'> -}           [ unwords [ ['v','a','\''], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_51  = cluster

 |> "_t ' b" <| [

    FaCiL                     `verb`    {- <_ta'ib> -}         [ ['y','a','w','n'] ]
                              `imperf`     FCaL,

    TaFACaL                   `verb`    {- <ta_tA'ab> -}       [ ['y','a','w','n'] ],

    FuCaLA'                   `noun`    {- <_tu'abA'> -}       [ ['y','a','w','n','i','n','g'], ['f','a','t','i','g','u','e'] ] ]


cluster_52  = cluster

 |> "_t ' r" <| [

    FaCaL                     `verb`    {- <_ta'ar> -}         [ ['a','v','e','n','g','e'], unwords [ ['t','a','k','e'], ['r','e','v','e','n','g','e'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'a_t'ar> -}        [ unwords [ ['t','a','k','e'], ['r','e','v','e','n','g','e'] ], unwords [ ['b','e'], ['a','v','e','n','g','e','d'] ] ],

    IFtaCaL                   `verb`    {- <i_t_ta'ar> -}      [ unwords [ ['t','a','k','e'], ['r','e','v','e','n','g','e'] ], unwords [ ['b','e'], ['a','v','e','n','g','e','d'] ] ],

    IstaFCaL                  `verb`    {- <ista_t'ar> -}      [ unwords [ ['c','a','l','l'], ['f','o','r'], ['v','e','n','g','e','a','n','c','e'] ] ],

    FaCL                      `noun`    {- <_ta'r> -}          [ ['r','e','v','e','n','g','e'], ['r','e','t','a','l','i','a','t','i','o','n'] ]
                              `plural`     FaCL |< At
                              `plural`     HaFCAL ]


cluster_53  = cluster

 |> "_t ' l l" <| [

    TaKaRDaS                  `verb`    {- <ta_ta'lal> -}      [ unwords [ ['b','e'], ['c','o','v','e','r','e','d'], ['w','i','t','h'], ['w','a','r','t','s'] ] ],

    KuRDUS                    `noun`    {- <_tu'lUl> -}        [ ['w','a','r','t'] ]
                              `plural`     KaRADIS
                              `femini`     KuRDUS |< aT ]


cluster_54  = cluster

 |> "_t ' y" <| [

    FaCY                      `noun`    {- <_ta'Y> -}          [ ['s','c','a','r','s'] ] ]


cluster_55  = cluster

 |> "_t ^g ^g" <| [

    FaCL                      `verb`    {- <_ta^g^g> -}        [ ['f','l','o','w'], ['s','t','r','e','a','m'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCAL                     `noun`    {- <_ta^gA^g> -}       [ ['f','l','o','w','i','n','g'], ['s','t','r','e','a','m','i','n','g'] ] ]


cluster_56  = cluster

 |> "_t d y" <| [

    FaCL                      `noun`    {- <_tady> -}          [ ['b','r','e','a','s','t'] ]
                              `plural`     HaFCA',

    FaCY                      `noun`    {- <_tadY> -}          [ ['b','r','e','a','s','t'] ]
                              `plural`     HaFCA',

    HaFCY                     `adj`     {- <'a_tdY> -}         [ ['b','u','x','o','m'] ]
                              `femini`     FaCLA',

    FaCL |< Iy                `noun`    {- <_tadyIy> -}        [ ['m','a','m','m','a','l'] ]
                              `plural`     FaCL |< Iy |< At,

    FaCL |< Iy                `adj`     {- <_tadyIy> -}        [ ['m','a','m','m','a','l'] ] ]


cluster_57  = cluster

 |> "_t r r" <| [

    FaCL                      `verb`    {- <_tarr> -}          [ unwords [ ['r','a','i','n'], ['h','a','r','d'] ], unwords [ ['t','a','l','k'], "a", ['l','o','t'] ] ]
                              `imperf`     FiCL
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCL                      `noun`    {- <_tarr> -}          [ ['w','e','t'], ['s','o','a','k','e','d'] ] ]


cluster_58  = cluster

 |> "_t r w t" <| [

    KaRDaS                    `noun`    {- <_tarwat> -}        [ ['T','h','a','r','w','a','t'], ['S','a','r','w','a','t'] ] ]


cluster_59  = cluster

 |> "_t r y" <| [

    FaCI                      `verb`    {- <_tarI> -}          [ unwords [ ['b','e','c','o','m','e'], ['w','e','a','l','t','h','y'] ] ]
                              `imperf`     FCY,

    HaFCY                     `verb`    {- <'a_trY> -}         [ ['e','n','r','i','c','h'], unwords [ ['m','a','k','e'], ['r','i','c','h'] ] ],

    FaCA'                     `noun`    {- <_tarA'> -}         [ ['w','e','a','l','t','h'], ['a','b','u','n','d','a','n','c','e'] ],

    FaCw |< aT                `noun`    {- <_tarwaT> -}        [ ['w','e','a','l','t','h'], ['a','b','u','n','d','a','n','c','e'], ['r','i','c','h','e','s'] ]
                              `plural`     FaCA |< At,

    HiFCA'                    `noun`    {- <'i_trA'> -}        [ ['e','n','r','i','c','h','m','e','n','t'] ]
                              `plural`     HiFCA' |< At,

    FaCY                      `noun`    {- <_tarY> -}          [ ['s','o','i','l'] ],

    FaCIL                     `adj`     {- <_tarIy> -}         [ ['w','e','a','l','t','h','y'] ]
                              `plural`     HaFCiLA',

    FuCayL |< aT              `noun`    {- <_turayyaT> -}      [ ['c','h','a','n','d','e','l','i','e','r'] ]
                              `plural`     FuCayL |< At,

    FuCayLY                   `noun`    {- <_turayyY> -}       [ ['P','l','e','i','a','d','e','s'] ],

    FuCayLY                   `noun`    {- <_turayyY> -}       [ ['T','h','u','r','a','y','y','a'], ['S','u','r','a','y','a'] ] ]


cluster_60  = cluster

 |> ['_','t','U','r','i','y','U','m'] <| [

    _____                     `noun`    {- <_tUriyUm> -}       [ ['t','h','o','r','i','u','m'] ] ]


cluster_61  = cluster

 |> "_t .g w" <| [

    FaCA                      `verb`    {- <_ta.gA> -}         [ ['b','l','e','a','t'] ]
                              `imperf`     FCU,

    FuCA'                     `noun`    {- <_tu.gA'> -}        [ ['b','l','e','a','t','i','n','g'] ],

    FACI                      `noun`    {- <_tA.gI> -}         [ ['b','l','e','a','t','i','n','g'] ]
                              `plural`     FACI |< At ]


cluster_62  = cluster

 |> "_t f y" <| [

    HuFCIL |< aT              `noun`    {- <'u_tfIyaT> -}      [ ['t','r','i','v','e','t'], ['t','r','i','p','o','d'] ]
                              `plural`     HaFACI ]


cluster_63  = cluster

 |> "_t l l" <| [

    FaCL                      `verb`    {- <_tall> -}          [ ['o','v','e','r','t','h','r','o','w'], ['d','e','s','t','r','o','y'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    InFaCL                    `verb`    {- <in_tall> -}        [ unwords [ ['b','e'], ['s','u','b','v','e','r','t','e','d'] ], unwords [ ['b','e'], ['o','v','e','r','t','h','r','o','w','n'] ] ],

    FuCL |< aT                `noun`    {- <_tullaT> -}        [ ['t','r','o','o','p'], ['d','e','t','a','c','h','m','e','n','t'] ]
                              `plural`     FuCaL ]


cluster_64  = cluster

 |> "_t m m" <| [

    FuCL |<< "a"              `conj`    {- <_tumma> -}         [ ['t','h','e','n'], ['t','h','e','r','e','u','p','o','n'], ['t','h','e','r','e','f','o','r','e'] ],

    FaCL |<< "a"              `adv`     {- <_tamma> -}         [ unwords [ ['t','h','e','r','e'], "(", ['i','s'], "/", ['a','r','e'], ")" ] ],

    FaCL |< aT |<< "a"        `adv`     {- <_tammaTa> -}       [ unwords [ ['t','h','e','r','e'], "(", ['i','s'], "/", ['a','r','e'], ")" ] ],

    FuCAL                     `noun`    {- <_tumAm> -}         [ ['g','r','a','s','s'], unwords [ ['b','l','a','d','e'], ['o','f'], ['g','r','a','s','s'] ] ] ]


cluster_65  = cluster

 |> "_t n d '" <| [

    KuRDuS |< aT              `noun`    {- <_tundu'aT> -}      [ ['b','r','e','a','s','t'] ]
                              `plural`     KaRADI ]

 |> "_t n d w" <| [

    KuRDuS |< aT              `noun`    {- <_tunduwaT> -}      [ ['b','r','e','a','s','t'] ]
                              `plural`     KaRADI ]


cluster_66  = cluster

 |> "_t n n" <| [

    FuCL |< aT                `noun`    {- <_tunnaT> -}        [ ['f','e','t','l','o','c','k'] ]
                              `plural`     FuCaL ]


cluster_67  = cluster

 |> "_t n y" <| [

    IFC |< An                 `noun`    {- <i_tnAn> -}         [ ['M','o','n','d','a','y'] ],

    FaCY |< Iy                `adj`     {- <_tanawIy> -}       [ ['d','u','a','l','i','s','t'] ],

    FaCY |< Iy |< aT          `noun`    {- <_tanawIyaT> -}     [ ['d','u','a','l','i','s','m'] ],

    FACI |< Iy                `adj`     {- <_tAnawIy> -}       [ ['s','e','c','o','n','d','a','r','y'] ],

    FaCY                      `verb`    {- <_tanY> -}          [ ['f','o','l','d'], ['d','o','u','b','l','e'] ]
                              `imperf`     FCI
                              `imperf`     FCY,

    FaCCY                     `verb`    {- <_tannY> -}         [ ['f','o','l','d'], ['d','o','u','b','l','e'] ],

    HaFCY                     `verb`    {- <'a_tnY> -}         [ ['p','r','a','i','s','e'], ['c','o','m','m','e','n','d'] ],

    TaFaCCY                   `verb`    {- <ta_tannY> -}       [ unwords [ ['b','e'], ['d','o','u','b','l','e','d'] ], unwords [ ['b','e'], ['r','e','p','e','a','t','e','d'] ] ],

    InFaCY                    `verb`    {- <in_tanY> -}        [ unwords [ ['b','e','n','d'], ['o','v','e','r'] ], ['f','o','l','d'] ],

    IstaFCY                   `verb`    {- <ista_tnY> -}       [ ['e','x','c','e','p','t'], ['e','x','c','l','u','d','e'] ],

    FaCL                      `noun`    {- <_tany> -}          [ ['b','e','n','d','i','n','g'], ['f','o','l','d','i','n','g'] ],

    FiCL                      `noun`    {- <_tiny> -}          [ ['f','o','l','d'], ['b','e','n','d'] ]
                              `plural`     HaFCA',

    HaFCA' |<< "a"            `prep`    {- <'a_tnA'a> -}       [ ['d','u','r','i','n','g'], ['m','e','a','n','w','h','i','l','e'] ],

    HaFCA'                    `noun`    {- <'a_tnA'> -}        [ ['m','e','a','n','t','i','m','e'] ],

    FaCL |< aT                `noun`    {- <_tanyaT> -}        [ ['f','o','l','d'], ['c','r','e','a','s','e'] ]
                              `plural`     FaCY |< At,

    FaCL |< aT                `noun`    {- <_tanyaT> -}        [ ['c','u','f','f'] ]
                              `plural`     FaCY |< At,

    FaCIL |< aT               `noun`    {- <_tanIyaT> -}       [ ['i','n','c','i','s','o','r'], ['p','a','t','h'], ['i','n','s','i','d','e'], ['w','i','t','h','i','n'] ]
                              `plural`     FaCALY,

    FaCA'                     `noun`    {- <_tanA'> -}         [ ['a','p','p','r','e','c','i','a','t','i','o','n'], ['p','r','a','i','s','e'] ],

    FaCA' |< Iy               `adj`     {- <_tanA'Iy> -}       [ ['l','a','u','d','a','t','o','r','y'], ['e','u','l','o','g','i','s','t','i','c'] ],

    FuCA' |< Iy               `adj`     {- <_tunA'Iy> -}       [ ['b','i','l','a','t','e','r','a','l'], ['d','u','a','l'] ],

    FACI                      `adj`     {- <_tAnI> -}          [ ['s','e','c','o','n','d'], ['n','e','x','t'] ],

    FACI |< aT                `noun`    {- <_tAniyaT> -}       [ unwords [ ['s','e','c','o','n','d'], "(", ['t','i','m','e'], ['s','p','a','n'], ")" ] ]
                              `plural`     FawACI,

    TaFCI |< aT               `noun`    {- <ta_tniyaT> -}      [ ['r','e','p','e','t','i','t','i','o','n'], ['p','r','a','i','s','e'] ],

    InFiCA'                   `noun`    {- <in_tinA'> -}       [ ['f','o','l','d','i','n','g'], ['b','e','n','d','i','n','g'] ]
                              `plural`     InFiCA' |< At,

    InFiCA' |< aT             `noun`    {- <in_tinA'aT> -}     [ ['b','e','n','d'], ['c','u','r','v','e'] ],

    IstiFCA'                  `noun`    {- <isti_tnA'> -}      [ ['e','x','c','e','p','t','i','o','n'], ['e','x','c','l','u','s','i','o','n'] ]
                              `plural`     IstiFCA' |< At,

    IstiFCA' |< Iy            `adj`     {- <isti_tnA'Iy> -}    [ ['e','x','c','e','p','t','i','o','n','a','l'], ['e','x','t','r','a','o','r','d','i','n','a','r','y'] ],

    MaFCIL                    `adj`     {- <ma_tnIy> -}        [ ['f','o','l','d','e','d'], ['d','o','u','b','l','e','d'] ],

    MuFaCCY                   `adj`     {- <mu_tannY> -}       [ ['d','o','u','b','l','e','d'], ['t','w','o','f','o','l','d'], ['d','u','a','l'] ],

    MustaFCY                  `adj`     {- <musta_tnY> -}      [ ['e','x','c','e','p','t','e','d'], ['e','x','c','l','u','d','e','d'] ] ]


cluster_68  = cluster

 |> "_t w b" <| [

    FAL                       `verb`    {- <_tAb> -}           [ ['r','e','t','u','r','n'], unwords [ ['c','o','m','e'], ['b','a','c','k'] ] ]
                              `imperf`     FUL,

    FaCCaL                    `verb`    {- <_tawwab> -}        [ ['r','e','w','a','r','d'] ],

    HaFAL                     `verb`    {- <'a_tAb> -}         [ ['r','e','t','u','r','n'], ['c','o','m','p','e','n','s','a','t','e'], ['r','e','w','a','r','d'] ],

    TaFACaL                   `verb`    {- <ta_tAwab> -}       [ ['y','a','w','n'] ],

    IstaFAL                   `verb`    {- <ista_tAb> -}       [ unwords [ ['l','a','y'], ['c','l','a','i','m'], ['t','o'] ], unwords [ ['s','e','e','k'], ['r','e','w','a','r','d'] ] ],

    FaCL                      `noun`    {- <_tawb> -}          [ ['g','a','r','m','e','n','t'], ['r','o','b','e'], ['c','l','o','t','h','e','s'] ]
                              `plural`     FiyAL
                              `plural`     HaFCAL,

    FaCAL                     `noun`    {- <_tawAb> -}         [ ['r','e','c','o','m','p','e','n','s','e'], ['r','e','w','a','r','d'] ],

    FaCCAL                    `noun`    {- <_tawwAb> -}        [ unwords [ ['r','e','m','u','n','e','r','a','t','o','r'], "(", ['G','o','d'], ")" ] ],

    FaCCAL                    `noun`    {- <_tawwAb> -}        [ unwords [ ['c','l','o','t','h','e','s'], ['m','e','r','c','h','a','n','t'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    MaFAL                     `noun`    {- <ma_tAb> -}         [ ['r','e','n','d','e','z','v','o','u','s'], ['r','e','s','o','r','t'] ],

    MaFAL |< aT               `noun`    {- <ma_tAbaT> -}       [ ['l','i','k','e'], ['a','s'], ['v','i','r','t','u','a','l','l','y'], unwords [ ['t','a','n','t','a','m','o','u','n','t'], ['t','o'] ] ],

    MaFCaL |< aT              `noun`    {- <ma_twabaT> -}      [ ['r','e','w','a','r','d'], ['r','e','c','o','m','p','e','n','s','e'] ]
                              `plural`     MaFACiL ]


cluster_69  = cluster

 |> "_t w r" <| [

    FAL                       `verb`    {- <_tAr> -}           [ ['r','e','v','o','l','t'], ['a','r','i','s','e'] ]
                              `imperf`     FUL
                              `masdar`     FaCL
                              `masdar`     FaCL |< aT
                              `masdar`     FaCaLAn,

    FaCCaL                    `verb`    {- <_tawwar> -}        [ unwords [ ['s','t','i','r'], ['u','p'] ], ['r','e','v','o','l','u','t','i','o','n','i','z','e'] ],

    HaFAL                     `verb`    {- <'a_tAr> -}         [ ['r','a','i','s','e'], ['p','r','o','v','o','k','e'], ['a','g','i','t','a','t','e'] ],

    IstaFAL                   `verb`    {- <ista_tAr> -}       [ ['i','n','c','i','t','e'], ['e','l','i','c','i','t'] ],

    FaCL                      `noun`    {- <_tawr> -}          [ ['b','u','l','l'], ['o','x'], ['o','x','e','n'] ]
                              `plural`     FILAn,

    FaCL                      `noun`    {- <_tawr> -}          [ ['T','a','u','r','u','s'] ],

    FaCL |< aT                `noun`    {- <_tawraT> -}        [ ['r','e','v','o','l','u','t','i','o','n'], ['u','p','r','i','s','i','n','g'] ]
                              `plural`     FaCL |< At,

    FaCL |< aT                `noun`    {- <_tawraT> -}        [ ['T','h','a','w','r','a'] ],

    FaCL |< Iy                `adj`     {- <_tawrIy> -}        [ ['r','e','v','o','l','u','t','i','o','n','a','r','y'] ],

    FaCLY |< Iy               `adj`     {- <_tawrawIy> -}      [ ['r','e','v','o','l','u','t','i','o','n','a','r','y'] ],

    FaCaLAn                   `noun`    {- <_tawarAn> -}       [ ['a','g','i','t','a','t','i','o','n'], unwords [ ['f','l','a','r','e'], "-", ['u','p'] ] ],

    MaFAL                     `noun`    {- <ma_tAr> -}         [ ['i','n','c','e','n','t','i','v','e'], ['m','o','t','i','v','e'] ],

    HiFAL |< aT               `noun`    {- <'i_tAraT> -}       [ ['p','r','o','v','o','c','a','t','i','o','n'], ['a','g','i','t','a','t','i','o','n'] ],

    FA'iL                     `adj`     {- <_tA'ir> -}         [ ['a','g','i','t','a','t','e','d'], ['e','x','i','t','e','d'] ],

    FA'iL                     `noun`    {- <_tA'ir> -}         [ ['i','n','s','u','r','g','e','n','t'], ['r','e','v','o','l','u','t','i','o','n','a','r','y'] ]
                              `plural`     FuCCAL
                              `femini`     FA'iL |< aT,

    FA'iL |< aT               `noun`    {- <_tA'iraT> -}       [ ['t','u','m','u','l','t'], ['r','a','g','e'] ]
                              `plural`     FawA'iL,

    MuFIL                     `adj`     {- <mu_tIr> -}         [ ['i','n','f','l','u','e','n','t','i','a','l'], ['p','r','o','v','o','c','a','t','i','v','e'] ],

    MuFIL                     `adj`     {- <mu_tIr> -}         [ ['p','r','o','v','o','k','i','n','g'], ['a','g','i','t','a','t','i','n','g'], unwords [ ['s','t','i','r','r','i','n','g'], ['u','p'] ] ],

    MuFIL                     `noun`    {- <mu_tIr> -}         [ ['s','t','i','m','u','l','a','n','t'] ]
                              `plural`     MuFIL |< At ]


cluster_70  = cluster

 |> "_t w l" <| [

    TaFaCCaL                  `verb`    {- <ta_tawwal> -}      [ ['s','w','a','r','m'] ],

    InFAL                     `verb`    {- <in_tAl> -}         [ ['s','w','a','r','m'], ['t','h','r','o','n','g'] ],

    FaCL                      `noun`    {- <_tawl> -}          [ ['s','w','a','r','m'] ] ]


cluster_71  = cluster

 |> "_t w m" <| [

    FUL                       `noun`    {- <_tUm> -}           [ ['g','a','r','l','i','c'], unwords [ ['g','a','r','l','i','c'], ['c','l','o','v','e'] ] ]
                              `plural`     FUL |< At ]


cluster_72  = cluster

 |> "_t w y" <| [

    FaCY                      `verb`    {- <_tawY> -}          [ unwords [ ['s','e','t','t','l','e'], ['d','o','w','n'] ], ['r','e','m','a','i','n'] ]
                              `imperf`     FCI
                              `imperf`     FCY,

    FuCI                      `verb`    {- <_tuwI> -}          [ unwords [ ['b','e'], ['b','u','r','i','e','d'] ] ],

    FaCCY                     `verb`    {- <_tawwY> -}         [ unwords [ ['g','i','v','e'], ['l','o','d','g','i','n','g'] ], unwords [ ['p','r','o','v','i','d','e'], ['h','o','u','s','i','n','g'] ] ],

    HaFCY                     `verb`    {- <'a_twY> -}         [ ['r','e','s','i','d','e'], ['l','o','d','g','e'], unwords [ ['b','e'], ['h','o','u','s','e','d'] ] ],

    FaCIL                     `adj`     {- <_tawIy> -}         [ unwords [ ['g','u','e','s','t'], ['r','o','o','m'] ] ],

    FUw |< aT                 `noun`    {- <_tUwaT> -}         [ unwords [ ['r','o','a','d'], ['s','i','g','n'] ], ['s','i','g','n','p','o','s','t'] ]
                              `plural`     FuCY,

    MaFCY                     `noun`    {- <ma_twY> -}         [ ['a','b','o','d','e'], ['l','o','d','g','i','n','g'] ]
                              `plural`     MaFACI ]


cluster_73  = cluster

 |> "_t y b" <| [

    FaCCiL                    `noun`    {- <_tayyib> -}        [ ['d','i','v','o','r','c','e','e'], ['w','i','d','o','w'] ]
                              `plural`     FaCCiL |< At ]


cluster_74  = cluster

 |> "d ' b" <| [

    FaCaL                     `verb`    {- <da'ab> -}          [ ['p','e','r','s','i','s','t'], unwords [ ['b','e'], ['d','e','v','o','t','e','d'] ] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <da'b> -}           [ ['h','a','b','i','t'] ]
                              `plural`     HaFCuL,

    FaCaL                     `noun`    {- <da'ab> -}          [ ['p','e','r','s','i','s','t','e','n','c','e'], ['e','a','g','e','r','n','e','s','s'] ],

    FuCUL                     `noun`    {- <du'Ub> -}          [ ['p','e','r','s','i','s','t','e','n','c','e'], ['e','a','g','e','r','n','e','s','s'] ],

    FaCiL                     `adj`     {- <da'ib> -}          [ ['d','e','v','o','t','e','d'], ['u','n','t','i','r','i','n','g'] ],

    FACiL                     `adj`     {- <dA'ib> -}          [ ['d','e','v','o','t','e','d'], ['u','n','t','i','r','i','n','g'] ],

    FaCUL                     `adj`     {- <da'Ub> -}          [ ['p','e','r','s','i','s','t','e','n','t'], ['p','e','r','s','e','v','e','r','i','n','g'] ],

    HaFCaL                    `adj`     {- <'ad'ab> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','e','r','s','i','s','t','e','n','t'] ] ] ]


cluster_75  = cluster

 |> "d ' d" <| [

    FAL |< aT                 `noun`    {- <dAdaT> -}          [ ['g','o','v','e','r','n','e','s','s'], ['n','u','r','s','e'] ] ]


cluster_76  = cluster

 |> "d ' y" <| [

    FAL |< aT                 `noun`    {- <dAyaT> -}          [ ['m','i','d','w','i','f','e'], unwords [ ['w','e','t'], ['n','u','r','s','e'] ] ] ]

 |> "d ' y" <| [

    FAL                       `noun`    {- <dAy> -}            [ ['d','e','y'] ]
                              `plural`     FAL |< At ]


cluster_77  = cluster

 |> "d b b" <| [

    FaCL                      `verb`    {- <dabb> -}           [ ['c','r','a','w','l'], ['a','d','v','a','n','c','e'], ['s','p','r','e','a','d'] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    FaCCaL                    `verb`    {- <dabbab> -}         [ ['s','h','a','r','p','e','n'], ['t','a','p','e','r'] ],

    FuCL                      `noun`    {- <dubb> -}           [ ['b','e','a','r'], unwords [ ['s','h','e'], "-", ['b','e','a','r'] ] ]
                              `plural`     FiCaL |< aT
                              `plural`     HaFCAL,

    FuCL                      `noun`    {- <dubb> -}           [ ['U','r','s','a'] ],

    FuCL |< Iy                `adj`     {- <dubbIy> -}         [ ['u','r','s','i','n','e'], unwords [ ['b','e','a','r'], "-", ['l','i','k','e'] ] ],

    FaCL |< aT                `noun`    {- <dabbaT> -}         [ unwords [ ['s','a','n','d'], ['h','i','l','l'] ], ['m','o','u','n','d'] ],

    FaCIL                     `noun`    {- <dabIb> -}          [ ['c','r','e','e','p','i','n','g'], ['c','r','a','w','l','i','n','g'], ['i','n','f','l','u','x'], ['i','n','f','l','o','w'], ['i','n','f','i','l','t','r','a','t','i','o','n'], ['r','e','p','t','i','l','e'] ],

    FaCCAL                    `adj`     {- <dabbAb> -}         [ ['c','r','e','e','p','i','n','g'], ['c','r','a','w','l','i','n','g'] ],

    FaCCAL |< aT              `noun`    {- <dabbAbaT> -}       [ ['t','a','n','k'] ]
                              `plural`     FaCCAL |< At,

    MaFaCL                    `noun`    {- <madabb> -}         [ ['s','o','u','r','c','e'] ],

    FACL |< aT                `noun`    {- <dAbbaT> -}         [ unwords [ ['r','i','d','i','n','g'], ['a','n','i','m','a','l'] ] ]
                              `plural`     FawACL,

    FuwayCL |< aT             `noun`    {- <duwaybbaT> -}      [ unwords [ ['s','m','a','l','l'], ['a','n','i','m','a','l'] ], ['i','n','s','e','c','t'] ]
                              `plural`     FuwayCL |< At,

    MuFaCCaL                  `adj`     {- <mudabbab> -}       [ ['p','o','i','n','t','e','d'], ['t','a','p','e','r','e','d'] ] ]


cluster_78  = cluster

 |> "d b y" <| [

    FuCayL                    `noun`    {- <dubayy> -}         [ ['D','u','b','a','i'] ] ]


cluster_79  = cluster

 |> "d b y h" <| [

    KuRDaS                    `noun`    {- <dubyah> -}         [ unwords [ ['d','o','u','b','l','e'], ['e','n','t','r','y'] ] ]
                              `plural`     KuRDY ]


cluster_80  = cluster

 |> ['d','i','b','r','i','y','A','^','g'] <| [

    _____                     `noun`    {- <dibriyA^g> -}      [ ['c','l','u','t','c','h'] ] ]


cluster_81  = cluster

 |> "d ^g ^g" <| [

    FaCL                      `verb`    {- <da^g^g> -}         [ unwords [ ['w','a','l','k'], ['s','l','o','w','l','y'] ] ]
                              `imperf`     FiCL
                              `pfirst`     FaCaL,

    FaCCaL                    `verb`    {- <da^g^ga^g> -}      [ ['a','r','m'] ],

    TaFaCCaL                  `verb`    {- <tada^g^ga^g> -}    [ unwords [ ['b','e'], ['a','r','m','e','d'] ] ],

    FuCL                      `noun`    {- <du^g^g> -}         [ ['t','h','r','u','s','h'] ],

    FuCL |< aT                `noun`    {- <du^g^gaT> -}       [ unwords [ ['i','n','t','e','n','s','e'], ['d','a','r','k','n','e','s','s'] ] ],

    FaCAL                     `noun`    {- <da^gA^g> -}        [ ['p','o','u','l','t','r','y'], ['f','o','w','l'], ['c','h','i','c','k','e','n'], ['h','e','n'] ],

    MuFaCCaL                  `adj`     {- <muda^g^ga^g> -}    [ unwords [ ['h','e','a','v','i','l','y'], ['a','r','m','e','d'] ], ['b','r','i','s','t','l','i','n','g'] ] ]


cluster_82  = cluster

 |> "d ^g w" <| [

    FaCA                      `verb`    {- <da^gA> -}          [ unwords [ ['b','e'], ['g','l','o','o','m','y'] ] ]
                              `imperf`     FCU,

    FaCA                      `verb`    {- <da^gA> -}          [ ['o','v','e','r','s','h','a','d','o','w'], ['c','o','v','e','r'] ]
                              `imperf`     FCU,

    FACY                      `verb`    {- <dA^gY> -}          [ unwords [ ['p','l','a','y'], ['t','h','e'], ['h','y','p','o','c','r','i','t','e'], ['w','i','t','h'] ], unwords [ ['p','o','s','e'], ['a','s'], "a", ['f','r','i','e','n','d'], ['o','f'] ], ['f','l','a','t','t','e','r'] ],

    FuCY                      `noun`    {- <du^gY> -}          [ ['g','l','o','o','m'], ['d','a','r','k','n','e','s','s'] ],

    MuFACY |< aT              `noun`    {- <mudA^gAT> -}       [ ['h','y','p','o','c','r','i','s','y'], ['f','l','a','t','t','e','r','y'] ]
                              `plural`     MuFACaL |< At,

    FACI                      `adj`     {- <dA^gI> -}          [ ['g','l','o','o','m','y'], ['d','a','r','k'] ],

    FayACI                    `noun`    {- <dayA^gI> -}        [ ['d','a','r','k','n','e','s','s'] ]
                              `plural`     FayACI
                           
    `limited` "-------P--" ]


cluster_83  = cluster

 |> "d .h w" <| [

    HuFCIy |< aT              `noun`    {- <'ud.hIyaT> -}      [ unwords [ ['o','s','t','r','i','c','h'], ['n','e','s','t'] ] ],

    FaCA                      `verb`    {- <da.hA> -}          [ unwords [ ['s','p','r','e','a','d'], ['o','u','t'] ], ['l','e','v','e','l'], ['f','l','a','t','t','e','n'] ]
                              `imperf`     FCU,

    MiFCY                     `noun`    {- <mid.hY> -}         [ ['s','t','e','a','m','r','o','l','l','e','r'], ['r','o','l','l','e','r'] ]
                              `plural`     MaFACI ]


cluster_84  = cluster

 |> "d _h y" <| [

    FACY                      `verb`    {- <dA_hY> -}          [ ['p','a','m','p','e','r'], ['s','p','o','i','l'] ] ]


cluster_85  = cluster

 |> "d r '" <| [

    FaCaL                     `verb`    {- <dara'> -}          [ ['r','e','j','e','c','t'], ['a','v','e','r','t'], unwords [ ['w','a','r','d'], ['o','f','f'] ] ]
                              `imperf`     FCaL,

    TaFACaL                   `verb`    {- <tadAra'> -}        [ ['c','o','n','t','e','n','d'] ],

    FaCL                      `noun`    {- <dar'> -}           [ ['p','r','e','v','e','n','t','i','o','n'], ['a','v','e','r','t','i','n','g'] ],

    FaCIL |< aT               `noun`    {- <darI'aT> -}        [ ['t','a','r','g','e','t'] ]
                              `plural`     FaCIL |< At,

    FiCw |< aT                `noun`    {- <dirwaT> -}         [ ['p','a','r','a','p','e','t'], unwords [ ['p','r','o','t','e','c','t','i','n','g'], ['s','c','r','e','e','n'] ] ],

    FuCCAL                    `noun`    {- <durrA'> -}         [ ['p','e','a','c','h'] ]
                              `plural`     FuCCAL |< At ]


cluster_86  = cluster

 |> ['d','a','r','a','b','u','k','k'] <| [

    _____ |< aT               `noun`    {- <darabukkaT> -}     [ ['d','a','r','a','b','u','k','k','a'] ] ]


cluster_87  = cluster

 |> "d r r" <| [

    FaCL                      `verb`    {- <darr> -}           [ ['s','t','r','e','a','m'], ['a','c','c','r','u','e'], unwords [ ['b','e'], ['a','b','u','n','d','a','n','t'] ] ]
                              `imperf`     FiCL
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    HaFaCL                    `verb`    {- <'adarr> -}         [ unwords [ ['m','a','k','e'], ['f','l','o','w'] ], unwords [ ['b','e','s','t','o','w'], ['l','a','v','i','s','h','l','y'] ], ['y','i','e','l','d'] ],

    IstaFaCL                  `verb`    {- <istadarr> -}       [ ['s','t','r','e','a','m'], unwords [ ['b','e'], ['a','b','u','n','d','a','n','t'] ] ],

    FaCL                      `noun`    {- <darr> -}           [ ['a','c','h','i','e','v','e','m','e','n','t'], ['a','c','c','o','m','p','l','i','s','h','m','e','n','t'] ],

    FuCL                      `noun`    {- <durr> -}           [ ['p','e','a','r','l'] ]
                              `plural`     FuCL |< At,

    FuCL |< Iy                `adj`     {- <durrIy> -}         [ ['g','l','i','t','t','e','r','i','n','g'] ],

    FiCL |< aT                `noun`    {- <dirraT> -}         [ ['t','e','a','t'], ['u','d','d','e','r'] ]
                              `plural`     FiCaL,

    MiFCAL                    `noun`    {- <midrAr> -}         [ ['s','p','o','u','t','i','n','g'], ['s','h','o','w','e','r','i','n','g'] ],

    HiFCAL                    `noun`    {- <'idrAr> -}         [ ['c','o','p','i','o','u','s'], ['u','n','r','e','s','t','r','a','i','n','e','d'] ]
                              `plural`     HiFCAL |< At,

    FACL                      `adj`     {- <dArr> -}           [ ['c','o','p','i','o','u','s'], ['s','h','o','w','e','r','i','n','g'] ],

    MuFiCL                    `adj`     {- <mudirr> -}         [ ['c','o','p','i','o','u','s'], ['u','n','r','e','s','t','r','a','i','n','e','d'] ] ]


cluster_88  = cluster

 |> "d r w s" <| [

    KiRDAS                    `noun`    {- <dirwAs> -}         [ ['m','a','s','t','i','f','f'] ] ]


cluster_89  = cluster

 |> "d r w ^s" <| [

    KaRDIS                    `noun`    {- <darwI^s> -}        [ ['d','e','r','v','i','s','h'] ]
                              `plural`     KaRADIS,

    KaRDIS                    `noun`    {- <darwI^s> -}        [ ['D','a','r','w','e','e','s','h'] ] ]


cluster_90  = cluster

 |> "d r y" <| [

    FaCY                      `verb`    {- <darY> -}           [ ['k','n','o','w'], unwords [ ['b','e'], ['a','w','a','r','e'], ['o','f'] ], ['n','o','t','i','c','e'] ]
                              `imperf`     FCI
                              `masdar`     FiCAL |< aT,

    FACY                      `verb`    {- <dArY> -}           [ ['f','l','a','t','t','e','r'], ['d','e','c','e','i','v','e'], ['s','h','e','l','t','e','r'] ],

    HaFCY                     `verb`    {- <'adrY> -}          [ ['i','n','f','o','r','m'] ],

    TaFACY                    `verb`    {- <tadArY> -}         [ ['h','i','d','e'] ],

    lA >| "'a" >>| FCI |<< "Iy" |< aT `noun`    {- <lA-'adrIyaT> -}    [ ['s','k','e','p','t','i','c','i','s','m'], ['a','g','n','o','s','t','i','c','i','s','m'] ],

    lA >| "'a" >>| FCI |<< "Iy" `adj`     {- <lA-'adrIy> -}      [ ['s','k','e','p','t','i','c'], ['a','g','n','o','s','t','i','c'] ],

    FiCAL |< aT               `noun`    {- <dirAyaT> -}        [ ['k','n','o','w','l','e','d','g','e'], ['k','n','o','w','i','n','g'] ],

    MuFACY |< aT              `noun`    {- <mudArAT> -}        [ ['f','l','a','t','t','e','r','y'], ['a','f','f','a','b','i','l','i','t','y'] ]
                              `plural`     MuFACY |< At,

    HaFCY                     `adj`     {- <'adrY> -}          [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['k','n','o','w','l','e','d','g','e','a','b','l','e'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['i','n','f','o','r','m','e','d'] ] ],

    FACI                      `adj`     {- <dArI> -}           [ ['a','w','a','r','e'], ['k','n','o','w','i','n','g'], ['c','o','g','n','i','z','a','n','t'] ] ]


cluster_91  = cluster

 |> "d r y q" <| [

    KiRDAS                    `noun`    {- <diryAq> -}         [ ['a','n','t','i','d','o','t','e'], ['t','h','e','r','i','a','c','a'] ] ]


cluster_92  = cluster

 |> ['d','i','r','b','a','k','k'] <| [

    _____ |< aT               `noun`    {- <dirbakkaT> -}      [ ['d','a','r','a','b','u','k','k','a'] ] ]


cluster_93  = cluster

 |> "d s s" <| [

    FaCL                      `verb`    {- <dass> -}           [ ['i','n','s','e','r','t'], ['s','t','i','c','k'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCCaL                    `verb`    {- <dassas> -}         [ ['s','h','o','v','e'], ['i','n','s','e','r','t'] ],

    TaFaCCaL                  `verb`    {- <tadassas> -}       [ unwords [ ['b','e'], ['h','i','d','d','e','n'] ] ],

    InFaCL                    `verb`    {- <indass> -}         [ ['s','n','e','a','k'], unwords [ ['b','e'], ['h','i','d','d','e','n'] ] ],

    FaCIL |< aT               `noun`    {- <dasIsaT> -}        [ ['i','n','t','r','i','g','u','e'], ['s','c','h','e','m','e'], ['p','l','o','t'] ]
                              `plural`     FaCA'iL,

    FaCCAL                    `noun`    {- <dassAs> -}         [ ['s','c','h','e','m','e','r'], ['c','o','n','s','p','i','r','a','t','o','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_94  = cluster

 |> "d s w" <| [

    FaCCY                     `verb`    {- <dassY> -}          [ ['i','n','t','r','o','d','u','c','e'], unwords [ ['b','r','i','n','g'], ['i','n'] ] ],

    TaFaCCY                   `verb`    {- <tadassY> -}        [ unwords [ ['b','e'], ['h','i','d','d','e','n'] ], unwords [ ['b','e'], ['c','o','n','c','e','a','l','e','d'] ], ['p','e','n','e','t','r','a','t','e'] ] ]


cluster_95  = cluster

 |> ['d','U','s','i','y','i','h'] <| [

    _____                     `noun`    {- <dUsiyih> -}        [ ['d','o','s','s','i','e','r'], ['f','i','l','e'] ] ]


cluster_96  = cluster

 |> "d ^s ^s" <| [

    FaCL                      `verb`    {- <da^s^s> -}         [ ['c','r','u','s','h'], ['g','r','i','n','d'] ]
                              `imperf`     FuCL
                              `pfirst`     FaCaL,

    FaCIL                     `noun`    {- <da^sI^s> -}        [ ['p','o','r','r','i','d','g','e'] ] ]


cluster_97  = cluster

 |> "d ^s y" <| [

    TaFaCCY                   `verb`    {- <tada^s^sY> -}      [ ['b','e','l','c','h'], ['b','u','r','p'], ['e','r','u','c','t'] ] ]


cluster_98  = cluster

 |> "d ` `" <| [

    FaCL                      `verb`    {- <da``> -}           [ ['r','e','b','u','f','f'], unwords [ ['t','u','r','n'], ['d','o','w','n'] ] ]
                              `imperf`     FaCL
                              `pfirst`     FaCaL,

    FaCIL                     `noun`    {- <da`I`> -}          [ ['D','a','\'','i','i'] ] ]


cluster_99  = cluster

 |> "d ` w" <| [

    FaCA                      `verb`    {- <da`A> -}           [ ['c','a','l','l'], ['i','n','v','i','t','e'] ]
                              `imperf`     FCU,

    FACY                      `verb`    {- <dA`Y> -}           [ ['c','h','a','l','l','e','n','g','e'], ['p','r','o','s','e','c','u','t','e'] ],

    TaFACY                    `verb`    {- <tadA`Y> -}         [ unwords [ ['c','h','a','l','l','e','n','g','e'], ['e','a','c','h'], ['o','t','h','e','r'] ], unwords [ ['e','v','o','k','e'], ['o','n','e'], ['a','n','o','t','h','e','r'] ] ],

    IFtaCY                    `verb`    {- <idda`Y> -}         [ ['a','l','l','e','g','e'], ['c','l','a','i','m'], ['t','e','s','t','i','f','y'] ],

    IstaFCY                   `verb`    {- <istad`Y> -}        [ ['s','u','m','m','o','n'], ['i','n','v','o','k','e'] ],

    FaCL |< aT                `noun`    {- <da`waT> -}         [ ['c','a','l','l'], ['i','n','v','i','t','a','t','i','o','n'], ['s','u','p','p','l','i','c','a','t','i','o','n'] ]
                              `plural`     FaCA |< At,

    FaCL |< aT                `noun`    {- <da`waT> -}         [ unwords [ "(", ['I','s','l','a','m','i','c'], ")", ['m','i','s','s','i','o','n','a','r','y'], ['w','o','r','k'] ], ['D','a','\'','w','a','h'], ['p','r','o','p','a','g','a','n','d','a'] ],

    FaCL |< Iy                `adj`     {- <da`wIy> -}         [ unwords [ "(", ['I','s','l','a','m','i','c'], ")", ['m','i','s','s','i','o','n'] ], unwords [ ['D','a','\'','w','a','h'], "-", ['r','e','l','a','t','e','d'] ], ['p','r','o','p','a','g','a','n','d','i','s','t','i','c'] ],

    FaCLY                     `noun`    {- <da`wY> -}          [ ['l','a','w','s','u','i','t'], ['a','l','l','e','g','a','t','i','o','n'], unwords [ ['l','e','g','a','l'], ['a','c','t','i','o','n'] ] ]
                              `plural`     FaCALY,

    FuCA'                     `noun`    {- <du`A'> -}          [ ['c','a','l','l'], ['r','e','q','u','e','s','t'], ['i','n','v','o','c','a','t','i','o','n'] ]
                              `plural`     HaFCI |< aT,

    FiCAy |< aT               `noun`    {- <di`AyaT> -}        [ ['p','r','o','p','a','g','a','n','d','a'], ['a','d','v','e','r','t','i','s','i','n','g'] ]
                              `plural`     FiCAy |< At,

    FiCA' |< Iy               `adj`     {- <di`A'Iy> -}        [ ['p','r','o','p','a','g','a','n','d','i','s','t','i','c'] ],

    HaFCY                     `adj`     {- <'ad`Y> -}          [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['c','o','n','d','u','c','i','v','e'] ], unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['p','r','o','v','o','k','i','n','g'] ] ],

    FaCAL |< aT               `noun`    {- <da`AwaT> -}        [ ['p','r','o','p','a','g','a','n','d','a'], ['p','u','b','l','i','c','i','t','y'] ],

    MaFCY |< aT               `noun`    {- <mad`AT> -}         [ ['r','e','a','s','o','n'], ['m','o','t','i','v','e'] ],

    TaFACI                    `noun`    {- <tadA`I> -}         [ ['a','s','s','o','c','i','a','t','i','o','n'], unwords [ ['m','u','t','u','a','l'], ['s','u','m','m','o','n','i','n','g'] ] ]
                              `plural`     TaFACI |< At,

    IFtiCA'                   `noun`    {- <iddi`A'> -}        [ ['a','l','l','e','g','a','t','i','o','n'], ['c','l','a','i','m'], ['p','r','o','s','e','c','u','t','i','o','n'] ]
                              `plural`     IFtiCA' |< At,

    IstiFCA'                  `noun`    {- <istid`A'> -}       [ ['s','u','m','m','o','n','s'], ['p','e','t','i','t','i','o','n'] ]
                              `plural`     IstiFCA' |< At,

    FACI                      `noun`    {- <dA`I> -}           [ ['c','a','u','s','e'], ['r','e','a','s','o','n'], ['m','o','t','i','v','e','s'], ['r','e','q','u','i','r','e','m','e','n','t','s'] ]
                              `plural`     FawACI,

    FACI                      `noun`    {- <dA`I> -}           [ ['i','n','v','i','t','e','r'], ['p','r','o','p','a','g','a','n','d','i','s','t'], ['c','a','l','l','e','r'] ]
                              `plural`     FuCY |< aT
                              `femini`     FACI |< aT,

    FACI |< aT                `noun`    {- <dA`iyaT> -}        [ ['p','r','o','p','a','g','a','n','d','i','s','t'], ['m','i','s','s','i','o','n','a','r','y'], ['m','o','t','i','v','e'] ],

    MaFCUL                    `adj`     {- <mad`Uw> -}         [ ['i','n','v','i','t','e','d'], ['c','a','l','l','e','d'], ['n','a','m','e','d'] ],

    MutaFACI                  `adj`     {- <mutadA`I> -}       [ unwords [ ['e','v','o','k','i','n','g'], ['e','a','c','h'], ['o','t','h','e','r'] ], ['d','e','c','l','i','n','i','n','g'] ],

    MuFtaCI                   `adj`     {- <mudda`I> -}        [ ['a','r','r','o','g','a','n','t'], ['p','r','e','s','u','m','p','t','u','o','u','s'] ],

    MuFtaCI                   `noun`    {- <mudda`I> -}        [ ['p','l','a','i','n','t','i','f','f'], ['p','r','o','s','e','c','u','t','o','r'] ]
                              `plural`     MuFtaCI |< Un
                              `femini`     MuFtaCI |< aT,

    MuFtaCY                   `adj`     {- <mudda`Y> -}        [ ['c','l','a','i','m','e','d'] ],

    MuFtaCY                   `noun`    {- <mudda`Y> -}        [ ['d','e','f','e','n','d','a','n','t'] ]
                              `plural`     MuFtaCY |< Un
                              `femini`     MuFtaCY |< aT,

    MuFtaCY                   `noun`    {- <mudda`Y> -}        [ ['c','l','a','i','m'], ['p','r','e','t','e','n','s','i','o','n'] ]
                              `plural`     MuFtaCY |< At,

    MustaFCI                  `noun`    {- <mustad`I> -}       [ ['a','p','p','l','i','c','a','n','t'], ['p','e','t','i','t','i','o','n','e','r'] ]
                              `plural`     MustaFCI |< Un
                              `femini`     MustaFCI |< aT,

    MustaFCY                  `noun`    {- <mustad`Y> -}       [ ['c','o','n','s','c','r','i','p','t'], ['d','r','a','f','t','e','e'] ]
                              `plural`     MustaFCY |< Un
                              `femini`     MustaFCY |< aT ]


cluster_100 = cluster

 |> "d f '" <| [

    FaCiL                     `verb`    {- <dafi'> -}          [ unwords [ ['f','e','e','l'], ['w','a','r','m'] ], unwords [ ['b','e'], ['w','a','r','m'] ] ]
                              `imperf`     FCaL,

    FaCuL                     `verb`    {- <dafu'> -}          [ unwords [ ['f','e','e','l'], ['w','a','r','m'] ], unwords [ ['b','e'], ['w','a','r','m'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <daffa'> -}         [ ['w','a','r','m'], ['h','e','a','t'] ],

    HaFCaL                    `verb`    {- <'adfa'> -}         [ ['w','a','r','m'], ['h','e','a','t'] ],

    TaFaCCaL                  `verb`    {- <tadaffa'> -}       [ unwords [ ['b','e'], ['w','a','r','m','e','d'] ] ],

    IFtaCaL                   `verb`    {- <iddafa'> -}        [ unwords [ ['g','e','t'], ['w','a','r','m'] ] ],

    IstaFCaL                  `verb`    {- <istadfa'> -}       [ unwords [ ['b','e'], ['w','a','r','m','e','d'] ] ],

    FiCL                      `noun`    {- <dif'> -}           [ ['w','a','r','m','t','h'], ['h','e','a','t'] ],

    FaCiL                     `adj`     {- <dafi'> -}          [ ['w','a','r','m'] ],

    FaCIL                     `adj`     {- <dafI'> -}          [ ['w','a','r','m'] ],

    FaCLAn                    `adj`     {- <daf'An> -}         [ ['w','a','r','m'] ]
                              `plural`     FaCLY,

    FiCAL                     `noun`    {- <difA'> -}          [ ['h','e','a','t','i','n','g'] ],

    FaCAL |< aT               `noun`    {- <dafA'aT> -}        [ ['w','a','r','m','t','h'], ['h','e','a','t'] ],

    FaCCAy |< aT              `noun`    {- <daffAyaT> -}       [ ['s','t','o','v','e'], ['h','e','a','t','e','r'] ]
                              `plural`     FaCCAy |< At,

    MiFCaL                    `noun`    {- <midfa'> -}         [ ['s','t','o','v','e'], ['h','e','a','t','e','r'] ]
                              `plural`     MaFACiL,

    TaFCiL |< aT              `noun`    {- <tadfi'aT> -}       [ ['h','e','a','t','i','n','g'] ],

    FACiL                     `adj`     {- <dAfi'> -}          [ ['w','a','r','m'] ] ]


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
