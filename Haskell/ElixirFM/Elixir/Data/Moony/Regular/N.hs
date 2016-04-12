
module Elixir.Data.Moony.Regular.N (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> "f .t s" <| [

    FaCaL                     `verb`    {- <fa.tas> -}         [ ['d','i','e'], ['s','u','f','f','o','c','a','t','e'] ]
                              `imperf`     FCiL
                              `masdar`     FuCUL,

    FaCCaL                    `verb`    {- <fa.t.tas> -}       [ unwords [ ['c','h','o','k','e'], ['t','o'], ['d','e','a','t','h'] ] ],

    InFaCaL                   `verb`    {- <infa.tas> -}       [ unwords [ ['b','e'], ['f','l','a','t','t','e','n','e','d'] ] ],

    FaCaL                     `noun`    {- <fa.tas> -}         [ ['f','l','a','t','n','e','s','s'] ],

    FaCL |< aT                `noun`    {- <fa.tsaT> -}        [ ['f','l','a','t','n','e','s','s'] ],

    FuCUL                     `noun`    {- <fu.tUs> -}         [ ['d','e','a','t','h'] ],

    FaCIL                     `adj`     {- <fa.tIs> -}         [ ['s','u','f','f','o','c','a','t','e','d'] ],

    FaCIL |< aT               `noun`    {- <fa.tIsaT> -}       [ ['c','o','r','p','s','e'], ['c','a','r','c','a','s','s'] ]
                              `plural`     FaCA'iL,

    HaFCaL                    `adj`     {- <'af.tas> -}        [ unwords [ ['s','n','u','b'], "-", ['n','o','s','e','d'] ] ]
                              `femini`     FaCLA' ]


cluster_2   = cluster

 |> "f .t f .t" <| [

    KaRADiS |< aT             `noun`    {- <fa.tAfi.taT> -}    [ ['F','a','t','a','f','t','a'], ['F','a','t','a','f','i','t','a'] ] ]


cluster_3   = cluster

 |> "f .t m" <| [

    FaCaL                     `verb`    {- <fa.tam> -}         [ ['w','e','a','n'] ]
                              `imperf`     FCiL,

    InFaCaL                   `verb`    {- <infa.tam> -}       [ unwords [ ['b','e'], ['w','e','a','n','e','d'], ['f','r','o','m'] ], unwords [ ['a','b','s','t','a','i','n'], ['f','r','o','m'] ] ],

    FaCL                      `noun`    {- <fa.tm> -}          [ ['w','e','a','n','i','n','g'], ['a','b','l','a','c','t','a','t','i','o','n'] ],

    FiCAL                     `noun`    {- <fi.tAm> -}         [ ['w','e','a','n','i','n','g'], ['a','b','l','a','c','t','a','t','i','o','n'] ],

    FaCIL                     `adj`     {- <fa.tIm> -}         [ ['w','e','a','n','e','d'] ]
                              `plural`     FuCuL,

    FACiL |< aT               `noun`    {- <fA.timaT> -}       [ ['F','a','t','i','m','a'] ]
                           
    `excepts` Diptote,

    FACiL |< Iy               `adj`     {- <fA.timIy> -}       [ ['F','a','t','i','m','i','d'] ],

    FACiL |< Iy               `noun`    {- <fA.timIy> -}       [ ['F','a','t','i','m','i'] ],

    MaFCUL                    `adj`     {- <maf.tUm> -}        [ ['w','e','a','n','e','d'] ] ]


cluster_4   = cluster

 |> "f .t n" <| [

    FaCaL                     `verb`    {- <fa.tan> -}         [ ['p','e','r','c','e','i','v','e'], unwords [ ['b','e'], ['a','w','a','r','e'] ] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <fa.tun> -}         [ unwords [ ['b','e'], ['a','s','t','u','t','e'] ] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <fa.tin> -}         [ unwords [ ['b','e'], ['a','s','t','u','t','e'] ] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <tafa.t.tan> -}     [ ['p','e','r','c','e','i','v','e'], unwords [ ['b','e'], ['a','w','a','r','e'] ] ],

    FaCiL                     `noun`    {- <fa.tin> -}         [ ['c','l','e','v','e','r'], ['p','e','r','s','p','i','c','a','c','i','o','u','s'] ],

    FiCL |< aT                `noun`    {- <fi.tnaT> -}        [ ['c','l','e','v','e','r','n','e','s','s'], ['a','c','u','m','e','n'] ],

    FiCaL                     `noun`    {- <fi.tan> -}         [ ['c','l','e','v','e','r','n','e','s','s'], ['a','c','u','m','e','n'] ],

    FaCIL                     `adj`     {- <fa.tIn> -}         [ ['c','l','e','v','e','r'] ]
                              `plural`     FuCaLA',

    FaCAL |< aT               `noun`    {- <fa.tAnaT> -}       [ ['c','l','e','v','e','r','n','e','s','s'] ],

    TaFaCCuL                  `noun`    {- <tafa.t.tun> -}     [ ['i','n','t','e','l','l','i','g','e','n','c','e'] ]
                              `plural`     TaFaCCuL |< At ]


cluster_5   = cluster

 |> "f .z `" <| [

    FaCuL                     `verb`    {- <fa.zu`> -}         [ unwords [ ['b','e'], ['h','i','d','e','o','u','s'] ], unwords [ ['b','e'], ['d','i','s','g','u','s','t','i','n','g'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    IstaFCaL                  `verb`    {- <istaf.za`> -}      [ unwords [ ['f','i','n','d'], ['d','i','s','g','u','s','t','i','n','g'] ], unwords [ ['r','e','g','a','r','d'], ['a','s'], ['a','t','r','o','c','i','o','u','s'] ] ],

    FaCiL                     `adj`     {- <fa.zi`> -}         [ ['h','i','d','e','o','u','s'], ['h','e','i','n','o','u','s'] ],

    FaCIL                     `adj`     {- <fa.zI`> -}         [ ['h','i','d','e','o','u','s'], ['h','e','i','n','o','u','s'] ],

    FaCIL |< aT               `noun`    {- <fa.zI`aT> -}       [ ['a','t','r','o','c','i','t','y'], unwords [ ['h','e','i','n','o','u','s'], ['a','c','t'] ] ]
                              `plural`     FaCA'iL,

    FaCAL |< aT               `noun`    {- <fa.zA`aT> -}       [ ['r','e','p','u','l','s','i','v','e','n','e','s','s'], ['a','t','r','o','c','i','t','y'] ],

    MuFCiL                    `adj`     {- <muf.zi`> -}        [ ['r','e','p','u','l','s','i','v','e'], ['d','i','s','g','u','s','t','i','n','g'] ] ]


cluster_6   = cluster

 |> "f ` l" <| [

    FaCaL                     `verb`    {- <fa`al> -}          [ ['d','o'], ['a','c','t'], ['p','e','r','f','o','r','m'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FiCL,

    FACaL                     `verb`    {- <fA`al> -}          [ unwords [ ['h','a','v','e'], ['a','n'], ['e','f','f','e','c','t'], ['o','n'] ] ],

    TaFACaL                   `verb`    {- <tafA`al> -}        [ ['i','n','t','e','r','a','c','t'], ['r','e','a','c','t'] ],

    InFaCaL                   `verb`    {- <infa`al> -}        [ unwords [ ['b','e'], ['a','f','f','e','c','t','e','d'] ], unwords [ ['b','e'], ['m','o','v','e','d'] ] ],

    IFtaCaL                   `verb`    {- <ifta`al> -}        [ ['p','r','o','v','o','k','e'], ['i','n','c','i','t','e'], ['c','o','n','c','o','c','t'] ],

    FiCL                      `noun`    {- <fi`l> -}           [ ['d','o','i','n','g'], ['a','c','t'], ['a','c','t','i','o','n'], ['a','c','t','i','v','i','t','y'], ['d','e','e','d'] ]
                              `plural`     HaFCAL
                              `plural`     FiCAL
                              `plural`     HaFACIL,

    FiCL |<< "aN"             `noun`    {- <fi`laN> -}         [ ['a','c','t','u','a','l','l','y'], unwords [ ['i','n'], ['e','f','f','e','c','t'] ], unwords [ ['i','n'], ['f','a','c','t'] ] ],

    FiCL                      `noun`    {- <fi`l> -}           [ ['v','e','r','b'] ]
                              `plural`     HaFCAL,

    FiCL |< Iy                `adj`     {- <fi`lIy> -}         [ ['a','c','t','u','a','l'], ['r','e','a','l'], unwords [ ['d','e'], ['f','a','c','t','o'] ] ],

    FaCL |< aT                `noun`    {- <fa`laT> -}         [ ['d','e','e','d'], ['a','c','t','i','o','n'] ]
                              `plural`     FaCaL |< At,

    FaCCAL                    `adj`     {- <fa``Al> -}         [ ['e','f','f','e','c','t','i','v','e'], ['e','f','f','i','c','i','e','n','t'] ],

    FaCCAL                    `adj`     {- <fa``Al> -}         [ ['a','c','t','i','v','e'], unwords [ ['i','n'], ['o','p','e','r','a','t','i','o','n'] ] ],

    FaCCAL |< Iy              `adj`     {- <fa``AlIy> -}       [ ['e','f','f','e','c','t','i','v','e'], ['e','f','f','i','c','i','e','n','t'], ['a','c','t','i','v','e'] ],

    FaCCAL |< Iy |< aT        `noun`    {- <fa``AlIyaT> -}     [ ['e','f','f','e','c','t','i','v','e','n','e','s','s'], ['e','f','f','i','c','i','e','n','c','y'], ['a','c','t','i','v','i','t','y'] ],

    FaCAL |< Iy |< At         `noun`    {- <fa`AlIyAt> -}      [ ['e','v','e','n','t','s'] ]
                              `plural`     FaCAL |< Iy |< At
                           
    `limited` "-------P--",

    HaFCaL                    `adj`     {- <'af`al> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['e','f','f','e','c','t','i','v','e'], "/", ['e','f','f','i','c','i','e','n','t'] ] ],

    TaFCIL                    `noun`    {- <taf`Il> -}         [ ['s','c','a','n','s','i','o','n'], ['a','c','t','i','v','a','t','i','o','n'] ],

    TaFCIL                    `noun`    {- <taf`Il> -}         [ unwords [ ['p','o','e','t','i','c'], ['m','e','t','e','r'] ] ]
                              `plural`     TaFCIL |< At
                              `plural`     TaFACIL,

    TaFACuL                   `noun`    {- <tafA`ul> -}        [ ['i','n','t','e','r','a','c','t','i','o','n'], ['r','e','a','c','t','i','o','n'], ['r','e','c','i','p','r','o','c','i','t','y'] ]
                              `plural`     TaFACuL |< At,

    TaFACuL |< Iy             `adj`     {- <tafA`ulIy> -}      [ ['i','n','t','e','r','a','c','t','i','v','e'], ['r','e','a','c','t','i','v','e'] ],

    TaFACuL |< Iy |< aT       `noun`    {- <tafA`ulIyaT> -}    [ ['i','n','t','e','r','a','c','t','i','o','n'], ['r','e','a','c','t','i','o','n'], ['r','e','c','i','p','r','o','c','i','t','y'] ],

    InFiCAL                   `noun`    {- <infi`Al> -}        [ ['e','m','o','t','i','o','n'], ['e','x','c','i','t','a','t','i','o','n'] ]
                              `plural`     InFiCAL |< At,

    InFiCAL |< Iy             `adj`     {- <infi`AlIy> -}      [ ['e','m','o','t','i','o','n','a','l'], ['e','x','c','i','t','a','b','l','e'] ],

    InFiCAL |< Iy |< aT       `noun`    {- <infi`AlIyaT> -}    [ ['e','x','c','i','t','a','b','i','l','i','t','y'], ['i','m','p','r','e','s','s','i','o','n','a','b','i','l','i','t','y'] ],

    IFtiCAL                   `noun`    {- <ifti`Al> -}        [ ['p','r','o','v','o','k','i','n','g'], ['i','n','c','i','t','i','n','g'], ['c','o','n','c','o','c','t','i','n','g'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `noun`    {- <fA`il> -}          [ ['d','o','e','r'], ['a','g','e','n','t'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    FACiL                     `adj`     {- <fA`il> -}          [ ['e','f','f','e','c','t','i','v','e'], ['a','c','t','i','v','e'] ],

    FACiL |< Iy |< aT         `noun`    {- <fA`ilIyaT> -}      [ ['a','c','t','i','v','i','t','y'], ['e','f','f','e','c','t','i','v','e','n','e','s','s'] ]
                              `plural`     FACiL |< Iy |< At,

    MaFCUL                    `adj`     {- <maf`Ul> -}         [ ['a','f','f','e','c','t','e','d'], ['p','a','s','s','i','v','e'] ],

    MaFCUL                    `noun`    {- <maf`Ul> -}         [ ['o','b','j','e','c','t'] ]
                              `plural`     MaFACIL,

    MaFCUL                    `noun`    {- <maf`Ul> -}         [ ['i','m','p','a','c','t'], ['e','f','f','e','c','t'] ]
                              `plural`     MaFACIL,

    MuFACiL                   `noun`    {- <mufA`il> -}        [ ['r','e','a','c','t','o','r'] ]
                              `plural`     MuFACiL |< At,

    MunFaCiL                  `adj`     {- <munfa`il> -}       [ ['a','g','i','t','a','t','e','d'], ['e','x','c','i','t','e','d'] ],

    MunFaCiL |< Iy |< aT      `noun`    {- <munfa`ilIyaT> -}   [ ['p','a','s','s','i','v','i','t','y'] ],

    MuFtaCaL                  `adj`     {- <mufta`al> -}       [ ['f','a','l','s','i','f','i','e','d'], ['s','p','u','r','i','o','u','s'] ] ]


cluster_7   = cluster

 |> "f ` m" <| [

    HaFCaL                    `verb`    {- <'af`am> -}         [ unwords [ ['p','a','c','k'], ['f','u','l','l'] ], ['s','t','u','f','f'], unwords [ ['m','a','k','e'], ['o','v','e','r','f','l','o','w'] ] ],

    MuFCaL                    `adj`     {- <muf`am> -}         [ ['s','t','u','f','f','e','d'], unwords [ ['j','a','m'], "-", ['p','a','c','k','e','d'] ], ['o','v','e','r','f','l','o','w','i','n','g'] ] ]


cluster_8   = cluster

 |> "f .g r" <| [

    FaCaL                     `verb`    {- <fa.gar> -}         [ ['o','p','e','n'] ]
                              `imperf`     FCuL
                              `imperf`     FCaL,

    InFaCaL                   `verb`    {- <infa.gar> -}       [ unwords [ ['b','e'], ['o','p','e','n'] ], unwords [ ['b','e'], ['a','g','a','p','e'] ] ],

    FuCL |< aT                `noun`    {- <fu.graT> -}        [ ['m','o','u','t','h'] ]
                              `plural`     FuCaL,

    FACiL                     `adj`     {- <fA.gir> -}         [ ['g','a','p','i','n','g'], unwords [ ['w','i','d','e'], ['o','p','e','n'] ] ],

    MunFaCiL                  `adj`     {- <munfa.gir> -}      [ ['g','a','p','i','n','g'], unwords [ ['w','i','d','e'], ['o','p','e','n'] ] ] ]


cluster_9   = cluster

 |> "f .g f r" <| [

    KaRDUS |< Iy              `adj`     {- <fa.gfUrIy> -}      [ ['p','o','r','c','e','l','a','i','n'] ],

    KaRDUS |< Iy              `noun`    {- <fa.gfUrIy> -}      [ ['F','a','g','h','f','o','u','r','i'] ] ]


cluster_10  = cluster

 |> "f .g m" <| [

    FaCaL                     `verb`    {- <fa.gam> -}         [ ['p','e','r','m','e','a','t','e'] ]
                              `imperf`     FCaL,

    FACiL                     `adj`     {- <fA.gim> -}         [ ['p','e','r','m','e','a','t','i','n','g'], unwords [ ['f','i','l','l','i','n','g'], ['t','h','e'], ['n','o','s','e'] ] ] ]


cluster_11  = cluster

 |> ['f','I','f','r','I'] <| [

    _____                     `noun`    {- <fIfrI> -}          [ ['F','e','b','r','u','a','r','y'] ] ]


cluster_12  = cluster

 |> "f q .h" <| [

    FaCL |< aT                `noun`    {- <faq.haT> -}        [ unwords [ ['a','n','a','l'], ['s','p','h','i','n','c','t','e','r'] ] ]
                              `plural`     FiCAL ]


cluster_13  = cluster

 |> "f q d" <| [

    FaCaL                     `verb`    {- <faqad> -}          [ ['l','o','s','e'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL
                              `masdar`     FuCLAn
                              `masdar`     FiCLAn,

    HaFCaL                    `verb`    {- <'afqad> -}         [ ['d','i','s','p','o','s','s','e','s','s'] ],

    TaFaCCaL                  `verb`    {- <tafaqqad> -}       [ ['i','n','v','e','s','t','i','g','a','t','e'], ['e','x','a','m','i','n','e'], ['r','e','v','i','e','w'], ['i','n','s','p','e','c','t'] ],

    IFtaCaL                   `verb`    {- <iftaqad> -}        [ ['m','i','s','s'], unwords [ ['f','e','e','l'], ['t','h','e'], ['l','o','s','s'], ['o','f'] ] ],

    IstaFCaL                  `verb`    {- <istafqad> -}       [ ['m','i','s','s'], unwords [ ['f','e','e','l'], ['t','h','e'], ['l','o','s','s'], ['o','f'] ] ],

    FaCL                      `noun`    {- <faqd> -}           [ ['l','o','s','s'], ['b','e','r','e','a','v','e','m','e','n','t'] ],

    FaCIL                     `noun`    {- <faqId> -}          [ ['d','e','c','e','a','s','e','d'] ]
                              `plural`     FaCLY,

    FiCLAn                    `noun`    {- <fiqdAn> -}         [ ['l','o','s','s'], ['b','e','r','e','a','v','e','m','e','n','t'] ],

    FuCLAn                    `noun`    {- <fuqdAn> -}         [ ['l','o','s','s'], ['b','e','r','e','a','v','e','m','e','n','t'] ],

    TaFaCCuL                  `noun`    {- <tafaqqud> -}       [ ['e','x','a','m','i','n','a','t','i','o','n'], ['r','e','v','i','e','w'], ['i','n','s','p','e','c','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFaCCuL |< Iy            `adj`     {- <tafaqqudIy> -}     [ ['i','n','s','p','e','c','t','i','o','n'], ['r','e','v','i','e','w'] ],

    TaFaCCuL |< Iy |< aT      `noun`    {- <tafaqqudIyaT> -}   [ ['i','n','s','p','e','c','t','o','r','a','t','e'] ],

    IFtiCAL                   `noun`    {- <iftiqAd> -}        [ ['m','i','s','s','i','n','g'], unwords [ ['f','e','e','l','i','n','g'], ['t','h','e'], ['l','o','s','s'], ['o','f'] ] ],

    IFtiCAL                   `noun`    {- <iftiqAd> -}        [ ['r','e','v','i','e','w'], ['i','n','s','p','e','c','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <fAqid> -}          [ unwords [ ['d','e','p','r','i','v','e','d'], ['o','f'] ], unwords [ ['b','e','r','e','f','t'], ['o','f'] ] ],

    MaFCUL                    `adj`     {- <mafqUd> -}         [ ['l','o','s','t'], ['m','i','s','s','i','n','g'], ['a','b','s','e','n','t'] ],

    MutaFaCCiL                `noun`    {- <mutafaqqid> -}     [ ['c','o','n','t','r','o','l','l','e','r'], ['i','n','s','p','e','c','t','o','r'] ]
                              `plural`     MutaFaCCiL |< Un
                              `femini`     MutaFaCCiL |< aT ]


cluster_14  = cluster

 |> "f q r" <| [

    FaCuL                     `verb`    {- <faqur> -}          [ unwords [ ['b','e'], ['d','e','s','t','i','t','u','t','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    HaFCaL                    `verb`    {- <'afqar> -}         [ ['i','m','p','o','v','e','r','i','s','h'] ],

    IFtaCaL                   `verb`    {- <iftaqar> -}        [ unwords [ ['b','e'], ['i','n'], ['n','e','e','d'], ['o','f'] ], ['l','a','c','k'] ],

    FaCL                      `noun`    {- <faqr> -}           [ ['p','o','v','e','r','t','y'] ],

    FaCL |< aT                `noun`    {- <faqraT> -}         [ ['p','a','r','a','g','r','a','p','h'], ['c','l','a','u','s','e'] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy                `adj`     {- <faqrIy> -}         [ ['s','p','i','n','a','l'], ['v','e','r','t','e','b','r','a','l'] ],

    FaCL |< Iy |< At          `noun`    {- <faqrIyAt> -}       [ ['v','e','r','t','e','b','r','a','t','e','s'] ]
                              `plural`     FaCL |< Iy |< At
                           
    `limited` "-------P--",

    lA >| FaCL |< Iy          `adj`     {- <lA-faqrIy> -}      [ ['i','n','v','e','r','t','e','b','r','a','t','e'] ],

    FaCAL                     `noun`    {- <faqAr> -}          [ ['v','e','r','t','e','b','r','a'], unwords [ ['s','p','i','n','a','l'], ['c','o','l','u','m','n'] ] ],

    FaCAL                     `noun`    {- <faqAr> -}          [ ['F','a','q','a','r'] ],

    FaCAL |< aT               `noun`    {- <faqAraT> -}        [ ['v','e','r','t','e','b','r','a'] ],

    FaCAL |< Iy               `adj`     {- <faqArIy> -}        [ ['s','p','i','n','a','l'], ['v','e','r','t','e','b','r','a','l'] ],

    FaCAL |< Iy |< At         `noun`    {- <faqArIyAt> -}      [ ['v','e','r','t','e','b','r','a','t','e','s'] ]
                              `plural`     FaCAL |< Iy |< At
                           
    `limited` "-------P--",

    FaCIL                     `adj`     {- <faqIr> -}          [ ['p','o','o','r'], ['d','e','s','t','i','t','u','t','e'] ]
                              `plural`     FuCaLA',

    TaFCIL                    `noun`    {- <tafqIr> -}         [ ['i','m','p','o','v','e','r','i','s','h','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'ifqAr> -}         [ ['i','m','p','o','v','e','r','i','s','h','m','e','n','t'] ]
                              `plural`     HiFCAL |< At,

    IFtiCAL                   `noun`    {- <iftiqAr> -}        [ ['n','e','e','d','i','n','g'], ['r','e','q','u','i','r','i','n','g'], ['n','e','e','d'], ['r','e','q','u','i','r','e','m','e','n','t'] ]
                              `plural`     IFtiCAL |< At,

    MuFtaCiL                  `adj`     {- <muftaqir> -}       [ unwords [ ['i','n'], ['n','e','e','d'], ['o','f'] ], unwords [ ['i','n'], ['s','h','o','r','t'], ['s','u','p','p','l','y'], ['o','f'] ] ] ]


cluster_15  = cluster

 |> "f q s" <| [

    FaCaL                     `verb`    {- <faqas> -}          [ unwords [ ['b','r','e','a','k'], ['o','p','e','n'] ], ['h','a','t','c','h'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <faqqas> -}         [ ['h','a','t','c','h'], ['i','n','c','u','b','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <tafaqqas> -}       [ unwords [ ['b','e'], ['h','a','t','c','h','e','d'] ], unwords [ ['b','e'], ['i','n','c','u','b','a','t','e','d'] ] ],

    InFaCaL                   `verb`    {- <infaqas> -}        [ unwords [ ['b','e'], ['h','a','t','c','h','e','d'] ], unwords [ ['b','e'], ['i','n','c','u','b','a','t','e','d'] ] ],

    FaCCUL                    `noun`    {- <faqqUs> -}         [ ['c','u','c','u','m','b','e','r'] ]
                              `plural`     FaCCUL |< At,

    MiFCaL                    `noun`    {- <mifqas> -}         [ ['i','n','c','u','b','a','t','o','r'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <tafqIs> -}         [ ['i','n','c','u','b','a','t','i','o','n'], ['h','a','t','c','h','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_16  = cluster

 |> "f q ^s" <| [

    FaCaL                     `verb`    {- <faqa^s> -}         [ ['b','r','e','a','k'], ['c','r','u','s','h'] ]
                              `imperf`     FCiL,

    FaCL                      `noun`    {- <faq^s> -}          [ ['b','r','e','a','k','i','n','g'], ['c','r','u','s','h','i','n','g'] ] ]


cluster_17  = cluster

 |> "f q .s" <| [

    FaCaL                     `verb`    {- <faqa.s> -}         [ unwords [ ['b','r','e','a','k'], ['o','p','e','n'] ], ['h','a','t','c','h'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <faqqa.s> -}        [ ['h','a','t','c','h'], ['i','n','c','u','b','a','t','e'] ],

    TaFaCCaL                  `verb`    {- <tafaqqa.s> -}      [ unwords [ ['b','e'], ['h','a','t','c','h','e','d'] ], unwords [ ['b','e'], ['i','n','c','u','b','a','t','e','d'] ] ],

    InFaCaL                   `verb`    {- <infaqa.s> -}       [ unwords [ ['b','e'], ['h','a','t','c','h','e','d'] ], unwords [ ['b','e'], ['i','n','c','u','b','a','t','e','d'] ] ],

    FaCCUL                    `noun`    {- <faqqU.s> -}        [ ['c','u','c','u','m','b','e','r'] ]
                              `plural`     FaCCUL |< At,

    MiFCaL                    `noun`    {- <mifqa.s> -}        [ ['i','n','c','u','b','a','t','o','r'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <tafqI.s> -}        [ ['i','n','c','u','b','a','t','i','o','n'], ['h','a','t','c','h','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_18  = cluster

 |> "f q .t" <| [

    FaCaL                     `verb`    {- <faqa.t> -}         [ unwords [ ['t','a','l','l','y'], ['u','p'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <faqqa.t> -}        [ unwords [ ['t','a','l','l','y'], ['u','p'] ] ],

    TaFCIL                    `noun`    {- <tafqI.t> -}        [ unwords [ ['t','a','l','l','y','i','n','g'], ['u','p'] ] ]
                              `plural`     TaFCIL |< At,

    FaCaL                     `adv`     {- <faqa.t> -}         [ ['o','n','l','y'], unwords [ ['n','o'], ['m','o','r','e'] ] ] ]


cluster_19  = cluster

 |> "f q `" <| [

    FaCaL                     `verb`    {- <faqa`> -}          [ ['b','u','r','s','t'], ['e','x','p','l','o','d','e'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <faqqa`> -}         [ ['s','n','a','p'], ['c','r','a','c','k','l','e'], ['p','o','p'] ],

    TaFaCCaL                  `verb`    {- <tafaqqa`> -}       [ ['s','n','a','p'], ['c','r','a','c','k','l','e'], ['p','o','p'] ],

    InFaCaL                   `verb`    {- <infaqa`> -}        [ ['c','r','a','c','k','l','e'], ['t','e','a','r'] ],

    FuCCAL                    `noun`    {- <fuqqA`> -}         [ unwords [ ['f','e','r','m','e','n','t','e','d'], ['d','r','i','n','k'] ] ],

    FuCCAL |< aT              `noun`    {- <fuqqA`aT> -}       [ ['b','u','b','b','l','e'] ]
                              `plural`     FaCACIL,

    TaFCIL                    `noun`    {- <tafqI`> -}         [ ['s','n','a','p','p','i','n','g'], ['c','r','a','c','k','l','i','n','g'], ['p','o','p','p','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `adj`     {- <fAqi`> -}          [ unwords [ ['b','r','i','g','h','t','l','y'], ['c','o','l','o','r','e','d'] ] ],

    FACiL                     `noun`    {- <fAqi`> -}          [ ['b','l','i','s','t','e','r'], ['p','u','s','t','u','l','e'] ]
                              `plural`     FawACiL ]


cluster_20  = cluster

 |> "f q m" <| [

    FaCiL                     `verb`    {- <faqim> -}          [ unwords [ ['b','e','c','o','m','e'], ['s','e','r','i','o','u','s'] ], unwords [ ['b','e','c','o','m','e'], ['c','r','i','t','i','c','a','l'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FaCL
                              `masdar`     FuCUL,

    FaCuL                     `verb`    {- <faqum> -}          [ unwords [ ['b','e','c','o','m','e'], ['s','e','r','i','o','u','s'] ], unwords [ ['b','e','c','o','m','e'], ['c','r','i','t','i','c','a','l'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    TaFACaL                   `verb`    {- <tafAqam> -}        [ unwords [ ['b','e','c','o','m','e'], ['s','e','r','i','o','u','s'] ], unwords [ ['b','e','c','o','m','e'], ['c','r','i','t','i','c','a','l'] ] ],

    FaCL                      `noun`    {- <faqm> -}           [ unwords [ ['b','e','c','o','m','i','n','g'], ['s','e','r','i','o','u','s'] ], unwords [ ['b','e','c','o','m','i','n','g'], ['c','r','i','t','i','c','a','l'] ] ],

    FuCUL                     `noun`    {- <fuqUm> -}          [ unwords [ ['b','e','c','o','m','i','n','g'], ['s','e','r','i','o','u','s'] ], unwords [ ['b','e','c','o','m','i','n','g'], ['c','r','i','t','i','c','a','l'] ] ],

    FaCAL |< aT               `noun`    {- <faqAmaT> -}        [ unwords [ ['b','e','c','o','m','i','n','g'], ['s','e','r','i','o','u','s'] ], unwords [ ['b','e','c','o','m','i','n','g'], ['c','r','i','t','i','c','a','l'] ] ],

    FuCCaL                    `noun`    {- <fuqqam> -}         [ unwords [ ['s','e','a','l'], "(", ['z','o','o','l','.'], ")" ] ],

    FuCL                      `noun`    {- <fuqm> -}           [ unwords [ ['s','e','a','l'], "(", ['z','o','o','l','.'], ")" ] ],

    TaFACuL                   `noun`    {- <tafAqum> -}        [ ['a','g','g','r','a','v','a','t','i','o','n'], ['e','x','a','c','e','r','b','a','t','i','o','n'] ]
                              `plural`     TaFACuL |< At,

    MutaFACiL                 `adj`     {- <mutafAqim> -}      [ ['a','l','a','r','m','i','n','g'], unwords [ ['i','n','c','r','e','a','s','i','n','g','l','y'], ['s','e','r','i','o','u','s'] ], unwords [ ['g','r','o','w','i','n','g'], ['i','n'], ['d','a','n','g','e','r'] ] ] ]


cluster_21  = cluster

 |> "f q n s" <| [

    KuRDuS                    `noun`    {- <fuqnus> -}         [ ['p','h','o','e','n','i','x'] ],

    KuRDuS |< Iy              `adj`     {- <fuqnusIy> -}       [ unwords [ ['p','h','o','e','n','i','x'], "-", ['l','i','k','e'] ] ] ]


cluster_22  = cluster

 |> "f q h" <| [

    FaCiL                     `verb`    {- <faqih> -}          [ ['c','o','m','p','r','e','h','e','n','d'] ]
                              `imperf`     FCaL
                              `masdar`     FiCL,

    FaCuL                     `verb`    {- <faquh> -}          [ unwords [ ['b','e'], ['w','i','s','e'] ], unwords [ ['b','e'], ['v','e','r','s','e','d'], ['i','n'], ['I','s','l','a','m','i','c'], ['j','u','r','i','s','p','r','u','d','e','n','c','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <faqqah> -}         [ ['t','e','a','c','h'] ],

    HaFCaL                    `verb`    {- <'afqah> -}         [ ['t','e','a','c','h'] ],

    TaFaCCaL                  `verb`    {- <tafaqqah> -}       [ ['c','o','m','p','r','e','h','e','n','d'], unwords [ ['s','t','u','d','y'], ['f','i','q','h'], "(", ['I','s','l','a','m','i','c'], ['j','u','r','i','s','p','r','u','d','e','n','c','e'], ")" ] ],

    FiCL                      `noun`    {- <fiqh> -}           [ unwords [ "(", ['I','s','l','a','m','i','c'], ")", ['j','u','r','i','s','p','r','u','d','e','n','c','e'] ], ['d','o','c','t','r','i','n','e'] ],

    FiCL |< Iy                `adj`     {- <fiqhIy> -}         [ ['j','u','r','i','s','t','i','c'] ],

    FaCIL                     `noun`    {- <faqIh> -}          [ ['F','a','q','i','h'] ],

    FaCIL                     `noun`    {- <faqIh> -}          [ unwords [ ['f','a','q','i','h'], "(", ['e','x','p','e','r','t'], ['i','n'], ['I','s','l','a','m','i','c'], ['j','u','r','i','s','p','r','u','d','e','n','c','e'], ")" ] ]
                              `plural`     FuCaLA' ]


cluster_23  = cluster

 |> ['f','u','q','h','A'] <| [

    _____                     `noun`    {- <fuqhA> -}          [ ['F','u','q','h','a'] ] ]


cluster_24  = cluster

 |> "f k r" <| [

    FaCCaL                    `verb`    {- <fakkar> -}         [ ['t','h','i','n','k'], ['c','o','n','s','i','d','e','r'], ['p','o','n','d','e','r'] ],

    TaFaCCaL                  `verb`    {- <tafakkar> -}       [ ['p','o','n','d','e','r'], ['r','e','f','l','e','c','t'] ],

    IFtaCaL                   `verb`    {- <iftakar> -}        [ ['p','o','n','d','e','r'], ['r','e','f','l','e','c','t'] ],

    FiCL                      `noun`    {- <fikr> -}           [ ['t','h','o','u','g','h','t'], ['t','h','i','n','k','i','n','g'], ['i','d','e','a','s'], ['c','o','n','c','e','p','t','s'] ]
                              `plural`     HaFCAL,

    FiCL |< aT                `noun`    {- <fikraT> -}         [ ['i','d','e','a'], ['n','o','t','i','o','n'], ['c','o','n','c','e','p','t'] ]
                              `plural`     FiCaL,

    FiCL |< Iy                `adj`     {- <fikrIy> -}         [ ['i','n','t','e','l','l','e','c','t','u','a','l'], ['m','e','n','t','a','l'], ['s','p','i','r','i','t','u','a','l'] ],

    FiCCIL                    `adj`     {- <fikkIr> -}         [ ['p','e','n','s','i','v','e'], ['c','o','n','t','e','m','p','l','a','t','i','v','e'], unwords [ ['d','e','e','p'], ['i','n'], ['t','h','o','u','g','h','t'] ] ],

    TaFCIL                    `noun`    {- <tafkIr> -}         [ ['t','h','i','n','k','i','n','g'], ['m','e','d','i','t','a','t','i','o','n'], ['r','e','f','l','e','c','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <tafakkur> -}       [ ['t','h','i','n','k','i','n','g'], ['d','e','l','i','b','e','r','a','t','i','o','n'], ['s','p','e','c','u','l','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCiL                  `noun`    {- <mufakkir> -}       [ ['i','n','t','e','l','l','e','c','t','u','a','l'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    MuFaCCiL |< aT            `noun`    {- <mufakkiraT> -}     [ unwords [ ['p','o','c','k','e','t'], ['b','o','o','k'] ] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCaL |< At            `noun`    {- <mufakkarAt> -}     [ ['t','h','o','u','g','h','t','s'], ['c','o','n','s','i','d','e','r','a','t','i','o','n','s'] ]
                              `plural`     MuFaCCaL |< At
                           
    `limited` "-------P--" ]


cluster_25  = cluster

 |> ['f','A','k','i','s'] <| [

    _____                     `noun`    {- <fAkis> -}          [ ['f','a','x'], unwords [ ['f','a','x'], ['m','a','c','h','i','n','e'] ] ] ]


cluster_26  = cluster

 |> "f k ^s" <| [

    FaCaL                     `verb`    {- <faka^s> -}         [ ['s','p','r','a','i','n'] ]
                              `imperf`     FCuL,

    InFaCaL                   `verb`    {- <infaka^s> -}       [ unwords [ ['b','e'], ['s','p','r','a','i','n','e','d'] ] ],

    FaCL                      `noun`    {- <fak^s> -}          [ ['s','p','r','a','i','n'] ] ]


cluster_27  = cluster

 |> "f k n" <| [

    FACUL                     `noun`    {- <fAkUn> -}          [ ['w','a','g','o','n'], ['c','o','a','c','h'] ]
                              `plural`     FawACIL ]


cluster_28  = cluster

 |> "f k h" <| [

    FaCiL                     `verb`    {- <fakih> -}          [ unwords [ ['b','e'], ['h','u','m','o','r','o','u','s'] ], unwords [ ['b','e'], ['f','a','c','e','t','i','o','u','s'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCAL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <fakkah> -}         [ ['e','n','t','e','r','t','a','i','n'] ],

    FACaL                     `verb`    {- <fAkah> -}          [ unwords [ ['j','o','k','e'], ['w','i','t','h'] ], unwords [ ['b','a','n','t','e','r'], ['w','i','t','h'] ] ],

    TaFaCCaL                  `verb`    {- <tafakkah> -}       [ unwords [ ['b','e'], ['a','m','u','s','e','d'] ] ],

    FaCiL                     `adj`     {- <fakih> -}          [ ['h','u','m','o','r','o','u','s'], ['f','a','c','e','t','i','o','u','s'] ],

    FuCAL |< aT               `noun`    {- <fukAhaT> -}        [ ['j','o','k','i','n','g'], ['j','e','s','t','i','n','g'], ['b','a','n','t','e','r'], ['l','e','v','i','t','y'] ],

    FuCAL |< aT               `noun`    {- <fukAhaT> -}        [ ['j','o','k','e'] ]
                              `plural`     FuCAL |< At,

    FuCAL |< Iy               `adj`     {- <fukAhIy> -}        [ ['h','u','m','o','r','o','u','s'], ['f','a','c','e','t','i','o','u','s'] ],

    HuFCUL |< aT              `noun`    {- <'ufkUhaT> -}       [ ['j','o','k','e'], ['w','i','t','t','i','c','i','s','m'] ]
                              `plural`     HaFACIL,

    TaFCiL |< aT              `noun`    {- <tafkihaT> -}       [ ['a','m','u','s','e','m','e','n','t'], ['e','n','t','e','r','t','a','i','n','m','e','n','t'] ],

    MuFACaL |< aT             `noun`    {- <mufAkahaT> -}      [ ['j','o','k','i','n','g'], ['b','a','n','t','e','r'] ],

    TaFaCCuL                  `noun`    {- <tafakkuh> -}       [ ['j','o','k','i','n','g'], ['b','a','n','t','e','r'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `adj`     {- <fAkih> -}          [ ['m','e','r','r','y'], ['h','u','m','o','r','o','u','s'] ],

    FACiL |< aT               `noun`    {- <fAkihaT> -}        [ ['f','r','u','i','t'] ]
                              `plural`     FawACiL,

    FACiL |< Iy |< aT         `noun`    {- <fAkihIyaT> -}      [ unwords [ ['f','r','u','i','t'], ['b','o','w','l'] ] ],

    FACiLAn |< Iy             `noun`    {- <fAkihAnIy> -}      [ unwords [ ['f','r','u','i','t'], ['v','e','n','d','o','r'] ] ]
                              `plural`     FACiLAn |< Iy |< Un
                              `femini`     FACiLAn |< Iy |< aT,

    MuFaCCiL                  `adj`     {- <mufakkih> -}       [ ['a','m','u','s','i','n','g'], ['h','u','m','o','r','o','u','s'] ] ]


cluster_29  = cluster

 |> ['f','I','k','t','U','r'] <| [

    _____                     `xtra`    {- <fIktUr> -}         [ ['V','i','c','t','o','r'], ['V','i','k','t','o','r'] ],

    _____ |< Iy               `adj`     {- <fIktUrIy> -}       [ ['V','i','c','t','o','r','i','a','n'] ] ]


cluster_30  = cluster

 |> ['f','I','l','I','b','I','n'] <| [

    _____                     `noun`    {- <fIlIbIn> -}        [ ['P','h','i','l','i','p','p','i','n','e','s'] ],

    _____ |< Iy               `adj`     {- <fIlIbInIy> -}      [ ['P','h','i','l','i','p','p','i','n','e'], ['F','i','l','i','p','i','n','o'] ],

    _____ |< Iy               `noun`    {- <fIlIbInIy> -}      [ ['P','h','i','l','i','p','p','i','n','e'], ['F','i','l','i','p','i','n','o'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]

 |> ['f','I','l','i','b','b','I','n'] <| [

    _____                     `noun`    {- <fIlibbIn> -}       [ ['P','h','i','l','i','p','p','i','n','e','s'] ],

    _____ |< Iy               `adj`     {- <fIlibbInIy> -}     [ ['P','h','i','l','i','p','p','i','n','e'], ['F','i','l','i','p','i','n','o'] ],

    _____ |< Iy               `noun`    {- <fIlibbInIy> -}     [ ['P','h','i','l','i','p','p','i','n','e'], ['F','i','l','i','p','i','n','o'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]

 |> ['f','i','l','i','b','b','I','n'] <| [

    _____                     `noun`    {- <filibbIn> -}       [ ['P','h','i','l','i','p','p','i','n','e','s'] ],

    _____ |< Iy               `adj`     {- <filibbInIy> -}     [ ['P','h','i','l','i','p','p','i','n','e'], ['F','i','l','i','p','i','n','o'] ],

    _____ |< Iy               `noun`    {- <filibbInIy> -}     [ ['P','h','i','l','i','p','p','i','n','e'], ['F','i','l','i','p','i','n','o'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_31  = cluster

 |> "f l t" <| [

    FaCaL                     `verb`    {- <falat> -}          [ ['e','s','c','a','p','e'] ]
                              `imperf`     FCiL,

    HaFCaL                    `verb`    {- <'aflat> -}         [ ['e','s','c','a','p','e'], ['r','e','l','e','a','s','e'] ],

    TaFaCCaL                  `verb`    {- <tafallat> -}       [ ['e','s','c','a','p','e'] ],

    InFaCaL                   `verb`    {- <infalat> -}        [ ['e','s','c','a','p','e'], ['e','v','a','d','e'] ],

    FaCaL                     `noun`    {- <falat> -}          [ ['e','s','c','a','p','e'] ],

    FaCL |< aT                `noun`    {- <faltaT> -}         [ ['o','v','e','r','s','i','g','h','t'], unwords [ ['u','n','e','x','p','e','c','t','e','d'], ['e','v','e','n','t'] ] ]
                              `plural`     FaCaL |< At,

    FaCL |< aT |<< "aN"       `noun`    {- <faltaTaN> -}       [ ['s','u','d','d','e','n','l','y'], ['u','n','e','x','p','e','c','t','e','d','l','y'] ],

    FaCAL |< Iy               `noun`    {- <falAtIy> -}        [ ['l','i','c','e','n','t','i','o','u','s'], ['w','o','m','a','n','i','z','e','r'], ['l','i','b','e','r','t','i','n','e','s'] ]
                              `plural`     FaCAL |< Iy |< aT,

    HiFCAL                    `noun`    {- <'iflAt> -}         [ ['e','s','c','a','p','e'], ['r','e','l','e','a','s','e'] ],

    FaCLAn                    `noun`    {- <faltAn> -}         [ ['c','h','a','o','s'], ['r','e','c','k','l','e','s','s','n','e','s','s'] ],

    FaCLAn                    `adj`     {- <faltAn> -}         [ ['w','i','l','d'], ['o','u','t','l','a','w'], unwords [ ['o','u','t'], ['o','f'], ['c','o','n','t','r','o','l'] ] ],

    InFiCAL                   `noun`    {- <infilAt> -}        [ ['e','v','a','s','i','o','n'], ['r','e','l','e','a','s','e'] ],

    FACiL                     `adj`     {- <fAlit> -}          [ ['e','s','c','a','p','e','d'], unwords [ ['a','t'], ['l','a','r','g','e'] ], ['d','e','b','a','u','c','h','e','d'] ]
                              `plural`     FuCaLA' ]


cluster_32  = cluster

 |> "f l ^g" <| [

    FaCaL                     `verb`    {- <fala^g> -}         [ ['s','p','l','i','t'], ['c','l','e','a','v','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FuCiL                     `verb`    {- <fuli^g> -}         [ unwords [ ['b','e'], ['s','e','m','i'], "-", ['p','a','r','a','l','y','z','e','d'] ], unwords [ ['b','e'], ['h','e','m','i','p','l','e','g','i','c'] ] ],

    FaCCaL                    `verb`    {- <falla^g> -}        [ ['s','p','l','i','t'], ['c','l','e','a','v','e'] ],

    TaFaCCaL                  `verb`    {- <tafalla^g> -}      [ unwords [ ['o','p','e','n'], ['u','p'] ] ],

    InFaCaL                   `verb`    {- <infala^g> -}       [ unwords [ ['b','e'], ['s','e','m','i'], "-", ['p','a','r','a','l','y','z','e','d'] ], unwords [ ['b','e'], ['h','e','m','i','p','l','e','g','i','c'] ] ],

    FaCL                      `noun`    {- <fal^g> -}          [ ['c','r','a','c','k'], ['f','i','s','s','u','r','e'], ['r','i','f','t'] ]
                              `plural`     FuCUL,

    FaCaL                     `noun`    {- <fala^g> -}         [ ['s','t','r','e','a','m'] ]
                              `plural`     HaFCAL,

    al >| FaCCUL |< aT        `noun`    {- <al-fallU^gaT> -}   [ ['F','a','l','l','u','j','a','h'] ],

    FiCLAn                    `noun`    {- <fil^gAn> -}        [ unwords [ ['c','o','f','f','e','e'], ['c','u','p'] ] ]
                              `plural`     FaCALIn,

    TaFaCCuL                  `noun`    {- <tafallu^g> -}      [ ['o','p','e','n','i','n','g'], ['c','r','e','v','i','c','e'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `noun`    {- <fAli^g> -}         [ ['h','e','m','i','p','l','e','g','i','a'] ],

    FawACiL                   `noun`    {- <fawAli^g> -}       [ ['c','a','m','e','l','s'] ]
                              `plural`     FawACiL
                           
    `limited` "-------P--",

    FayCaL                    `noun`    {- <fayla^g> -}        [ unwords [ ['s','i','l','k','w','o','r','m'], ['c','o','c','o','o','n'] ] ]
                              `plural`     FayACiL,

    MaFCUL                    `adj`     {- <maflU^g> -}        [ unwords [ ['s','e','m','i'], "-", ['p','a','r','a','l','y','z','e','d'] ], ['h','e','m','i','p','l','e','g','i','c'] ] ]


cluster_33  = cluster

 |> "f l .h" <| [

    FaCaL                     `verb`    {- <fala.h> -}         [ ['c','u','l','t','i','v','a','t','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    HaFCaL                    `verb`    {- <'afla.h> -}        [ ['s','u','c','c','e','e','d'], ['p','r','o','s','p','e','r'], ['t','h','r','i','v','e'] ],

    IstaFCaL                  `verb`    {- <istafla.h> -}      [ ['p','r','o','s','p','e','r'], ['t','h','r','i','v','e'] ],

    FaCL                      `noun`    {- <fal.h> -}          [ ['c','u','l','t','i','v','a','t','i','n','g'] ],

    FaCAL                     `noun`    {- <falA.h> -}         [ ['p','r','o','s','p','e','r','i','t','y'], ['s','u','c','c','e','s','s'] ],

    FiCAL |< aT               `noun`    {- <filA.haT> -}       [ ['f','a','r','m','i','n','g'], ['c','u','l','t','i','v','a','t','i','o','n'] ],

    FiCAL |< Iy               `adj`     {- <filA.hIy> -}       [ ['a','g','r','i','c','u','l','t','u','r','a','l'] ],

    FaCCAL                    `noun`    {- <fallA.h> -}        [ ['p','e','a','s','a','n','t'], ['f','a','r','m','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL |< Iy              `adj`     {- <fallA.hIy> -}      [ ['p','e','a','s','a','n','t'] ],

    HaFCaL                    `adj`     {- <'afla.h> -}        [ unwords [ ['w','i','t','h'], ['c','r','a','c','k','e','d'], ['l','o','w','e','r'], ['l','i','p'] ] ]
                              `femini`     FaCLA',

    FACiL                     `adj`     {- <fAli.h> -}         [ ['f','o','r','t','u','n','a','t','e'], ['s','u','c','c','e','s','s','f','u','l'] ],

    MuFCiL                    `adj`     {- <mufli.h> -}        [ ['f','o','r','t','u','n','a','t','e'], ['s','u','c','c','e','s','s','f','u','l'] ] ]


cluster_34  = cluster

 |> "f l _d" <| [

    FiCL |< aT                `noun`    {- <fil_daT> -}        [ ['p','i','e','c','e'], ['t','r','e','a','s','u','r','e','s'] ]
                              `plural`     FiCaL
                              `plural`     HaFCAL ]


cluster_35  = cluster

 |> ['f','U','l','A','_','d'] <| [

    _____                     `noun`    {- <fUlA_d> -}         [ ['s','t','e','e','l'] ],

    _____ |< Iy               `adj`     {- <fUlA_dIy> -}       [ ['s','t','e','e','l'], unwords [ ['s','t','e','e','l'], ['p','l','a','t','e','d'] ] ] ]


cluster_36  = cluster

 |> ['f','A','l','U','_','d','a','^','g'] <| [

    _____                     `noun`    {- <fAlU_da^g> -}      [ ['p','a','s','t','r','y'] ] ]


cluster_37  = cluster

 |> ['f','i','l','U','r'] <| [

    _____                     `noun`    {- <filUr> -}          [ ['f','l','u','o','r','i','n','e'] ],

    _____ |< Iy               `adj`     {- <filUrIy> -}        [ ['f','l','u','o','r','e','s','c','e','n','t'] ] ]


cluster_38  = cluster

 |> "f l s" <| [

    FaCCaL                    `verb`    {- <fallas> -}         [ unwords [ ['d','e','c','l','a','r','e'], ['b','a','n','k','r','u','p','t'] ], unwords [ ['r','u','i','n'], ['f','i','n','a','n','c','i','a','l','l','y'] ] ],

    HaFCaL                    `verb`    {- <'aflas> -}         [ unwords [ ['b','e'], ['b','a','n','k','r','u','p','t'] ] ],

    TaFaCCaL                  `verb`    {- <tafallas> -}       [ ['e','x','f','o','l','i','a','t','e'] ],

    FiCL                      `noun`    {- <fils> -}           [ unwords [ ['f','i','l','s'], "(", ['s','m','a','l','l'], ['c','o','i','n'], ")" ], ['m','o','n','e','y'] ]
                              `plural`     FuCUL,

    TaFCIL                    `noun`    {- <taflIs> -}         [ unwords [ ['d','e','c','l','a','r','a','t','i','o','n'], ['o','f'], ['b','a','n','k','r','u','p','t','c','y'] ], ['i','n','s','o','l','v','e','n','c','y'] ]
                              `plural`     TaFACIL
                              `plural`     TaFCIL |< At,

    TaFCIL |< aT              `noun`    {- <taflIsaT> -}       [ ['b','a','n','k','r','u','p','t','c','y'], ['i','n','s','o','l','v','e','n','c','y'] ],

    HiFCAL                    `noun`    {- <'iflAs> -}         [ ['b','a','n','k','r','u','p','t','c','y'], ['i','n','s','o','l','v','e','n','c','y'] ]
                              `plural`     HiFCAL |< At,

    MuFCiL                    `adj`     {- <muflis> -}         [ ['b','a','n','k','r','u','p','t'], ['i','n','s','o','l','v','e','n','t'] ]
                              `plural`     MaFACIL
                              `plural`     MuFCiL |< Un,

    TaFaCCuL                  `noun`    {- <tafallus> -}       [ ['e','x','f','o','l','i','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At ]


cluster_39  = cluster

 |> "f l s f" <| [

    KayRaDUS                  `noun`    {- <faylasUf> -}       [ ['p','h','i','l','o','s','o','p','h','e','r'] ]
                              `plural`     KaRADiS |< aT,

    KaRDaS                    `verb`    {- <falsaf> -}         [ ['p','h','i','l','o','s','o','p','h','i','z','e'] ],

    TaKaRDaS                  `verb`    {- <tafalsaf> -}       [ ['p','h','i','l','o','s','o','p','h','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <falsafaT> -}       [ ['p','h','i','l','o','s','o','p','h','y'] ]
                              `plural`     KaRDaS |< At,

    KaRDaS |< Iy              `adj`     {- <falsafIy> -}       [ ['p','h','i','l','o','s','o','p','h','i','c','a','l'] ],

    MuKaRDiS                  `noun`    {- <mufalsif> -}       [ ['p','h','i','l','o','s','o','p','h','e','r'] ]
                              `plural`     MuKaRDiS |< Un
                              `femini`     MuKaRDiS |< aT,

    MutaKaRDiS                `noun`    {- <mutafalsif> -}     [ unwords [ ['w','o','u','l','d'], "-", ['b','e'], ['p','h','i','l','o','s','o','p','h','e','r'] ] ]
                              `plural`     MutaKaRDiS |< Un
                              `femini`     MutaKaRDiS |< aT ]


cluster_40  = cluster

 |> ['f','i','l','a','s','.','t','I','n'] <| [

    _____                     `noun`    {- <filas.tIn> -}      [ ['P','a','l','e','s','t','i','n','e'] ],

    _____ |< Iy               `adj`     {- <filas.tInIy> -}    [ ['P','a','l','e','s','t','i','n','i','a','n'] ],

    _____ |< Iy               `noun`    {- <filas.tInIy> -}    [ ['P','a','l','e','s','t','i','n','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_41  = cluster

 |> ['f','i','l','a','s','.','t','a','n'] <| [

    _____ |< aT               `noun`    {- <filas.tanaT> -}    [ ['P','a','l','e','s','t','i','n','i','z','a','t','i','o','n'] ] ]


cluster_42  = cluster

 |> ['f','i','l','a','s','.','t','i','n'] <| [

    _____ |< Iy               `adj`     {- <filas.tinIy> -}    [ ['P','a','l','e','s','t','i','n','i','a','n'] ] ]


cluster_43  = cluster

 |> "f l .t" <| [

    FuCL                      `noun`    {- <ful.t> -}          [ ['v','o','l','t'] ]
                              `plural`     HaFCAL ]


cluster_44  = cluster

 |> "f l .t .h" <| [

    KaRDaS                    `verb`    {- <fal.ta.h> -}       [ ['b','r','o','a','d','e','n'], ['f','l','a','t','t','e','n'] ],

    KaRDaS |< aT              `noun`    {- <fal.ta.haT> -}     [ ['b','r','o','a','d','e','n','i','n','g'], ['f','l','a','t','t','e','n','i','n','g'] ],

    KiRDAS                    `noun`    {- <fil.tA.h> -}       [ ['b','r','o','a','d'], ['f','l','a','t','t','e','n','e','d'] ],

    MuKaRDaS                  `adj`     {- <mufal.ta.h> -}     [ ['b','r','o','a','d'], ['f','l','a','t','t','e','n','e','d'] ],

    MutaKaRDiS                `adj`     {- <mutafal.ti.h> -}   [ ['b','r','o','a','d'], ['f','l','a','t','t','e','n','e','d'] ] ]


cluster_45  = cluster

 |> "f l `" <| [

    FaCaL                     `verb`    {- <fala`> -}          [ ['s','p','l','i','t'], ['c','l','e','a','v','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <falla`> -}         [ ['s','p','l','i','t'], ['c','l','e','a','v','e'] ],

    TaFaCCaL                  `verb`    {- <tafalla`> -}       [ unwords [ ['b','e'], ['s','p','l','i','t'] ], unwords [ ['b','e'], ['c','l','e','f','t'] ], unwords [ ['b','e'], ['c','h','a','p','p','e','d'] ] ],

    InFaCaL                   `verb`    {- <infala`> -}        [ unwords [ ['b','e'], ['s','p','l','i','t'] ], unwords [ ['b','e'], ['c','l','e','f','t'] ], unwords [ ['b','e'], ['c','h','a','p','p','e','d'] ] ],

    FaCL                      `noun`    {- <fal`> -}           [ ['s','p','l','i','t','t','i','n','g'], ['c','l','e','a','v','i','n','g'] ],

    FaCL                      `noun`    {- <fal`> -}           [ ['c','r','a','c','k'], ['f','i','s','s','u','r','e'] ]
                              `plural`     FuCUL,

    TaFCIL                    `noun`    {- <taflI`> -}         [ ['c','h','a','p','p','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    InFiCAL                   `noun`    {- <infilA`> -}        [ ['c','h','a','p','p','i','n','g'] ]
                              `plural`     InFiCAL |< At ]


cluster_46  = cluster

 |> "f l f l" <| [

    KaRDaS                    `verb`    {- <falfal> -}         [ ['p','e','p','p','e','r'] ],

    KiRDiS                    `noun`    {- <filfil> -}         [ ['p','e','p','p','e','r'] ]
                              `plural`     KaRADiS,

    KaRADiS                   `noun`    {- <falAfil> -}        [ ['f','a','l','a','f','e','l'] ],

    KiRDiS |< aT              `noun`    {- <filfilaT> -}       [ ['p','e','p','p','e','r','c','o','r','n'] ],

    KiRDiS |< Iy              `adj`     {- <filfilIy> -}       [ unwords [ ['p','e','p','p','e','r'], "-", ['l','i','k','e'] ], ['p','e','p','p','e','r','y'] ],

    KuRayDiS                  `noun`    {- <fulayfil> -}       [ ['p','e','p','p','e','r'] ],

    MuKaRDaS                  `adj`     {- <mufalfal> -}       [ ['p','e','p','p','e','r','e','d'] ],

    KaRDUS                    `noun`    {- <falfUl> -}         [ ['e','l','e','p','h','a','n','t'], unwords [ ['l','i','t','t','l','e'], ['e','l','e','p','h','a','n','t'] ] ] ]


cluster_47  = cluster

 |> "f l q" <| [

    FaCaL                     `verb`    {- <falaq> -}          [ ['c','r','a','c','k'], ['s','p','l','i','t'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <fallaq> -}         [ ['c','r','a','c','k'], ['s','p','l','i','t'] ],

    TaFaCCaL                  `verb`    {- <tafallaq> -}       [ unwords [ ['b','e'], ['s','p','l','i','t'] ], unwords [ ['b','e'], ['c','r','a','c','k','e','d'] ] ],

    InFaCaL                   `verb`    {- <infalaq> -}        [ unwords [ ['b','e'], ['s','p','l','i','t'] ], unwords [ ['b','e'], ['c','r','a','c','k','e','d'] ] ],

    FaCL                      `noun`    {- <falq> -}           [ ['c','r','a','c','k','i','n','g'], ['s','p','l','i','t','t','i','n','g'], ['d','a','w','n'] ],

    FaCL                      `noun`    {- <falq> -}           [ ['c','r','a','c','k'], ['f','i','s','s','u','r','e'] ]
                              `plural`     FuCUL,

    FiCL |< aT                `noun`    {- <filqaT> -}         [ unwords [ ['o','n','e'], ['h','a','l','f'] ] ],

    FayCaL                    `noun`    {- <faylaq> -}         [ unwords [ ['a','r','m','y'], ['c','o','r','p','s'] ], ['l','e','g','i','o','n'] ]
                              `plural`     FayACiL,

    FaCaL |< aT               `noun`    {- <falaqaT> -}        [ unwords [ ['f','a','l','a','q','a'], "(", ['b','e','a','t','i','n','g','s'], ['o','n'], ['t','h','e'], ['s','o','l','e','s'], ['o','f'], ['t','h','e'], ['f','e','e','t'], ")" ], ['b','a','s','t','i','n','a','d','o'] ],

    FaCCAL                    `noun`    {- <fallAq> -}         [ ['b','a','n','d','i','t'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    TaFCIL                    `noun`    {- <taflIq> -}         [ ['c','l','e','a','v','a','g','e'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `noun`    {- <fAliq> -}          [ ['d','i','s','l','o','c','a','t','i','o','n'], ['f','a','u','l','t'] ]
                              `plural`     FawACiL,

    InFiCAL                   `noun`    {- <infilAq> -}        [ ['d','i','s','i','n','t','e','g','r','a','t','i','o','n'], ['f','i','s','s','i','o','n'] ]
                              `plural`     InFiCAL |< At ]


cluster_48  = cluster

 |> "f l k" <| [

    FaCaL                     `noun`    {- <falak> -}          [ unwords [ ['c','e','l','e','s','t','i','a','l'], ['b','o','d','y'] ], ['o','r','b','i','t'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <falkaT> -}         [ ['d','i','s','k'], ['r','i','n','g'] ],

    FuCL |< aT                `noun`    {- <fulkaT> -}         [ ['s','h','i','p'] ],

    FaCUL |< aT               `noun`    {- <falUkaT> -}        [ ['f','e','l','u','c','c','a'] ]
                              `plural`     FaCA'iL,

    FaCA'iL |< Iy             `noun`    {- <falA'ikIy> -}      [ ['b','o','a','t','m','a','n'] ]
                              `plural`     FaCA'iL |< Iy |< Un
                              `femini`     FaCA'iL |< Iy |< aT,

    FaCaL |< Iy               `adj`     {- <falakIy> -}        [ ['a','s','t','r','o','n','o','m','i','c'], ['s','i','d','e','r','e','a','l'] ],

    FaCaL |< Iy               `adj`     {- <falakIy> -}        [ ['a','s','t','r','o','l','o','g','i','c'] ],

    FaCaL |< Iy               `noun`    {- <falakIy> -}        [ ['a','s','t','r','o','n','o','m','e','r'] ]
                              `plural`     FaCaL |< Iy |< Un
                              `femini`     FaCaL |< Iy |< aT,

    FaCaL |< Iy               `noun`    {- <falakIy> -}        [ ['a','s','t','r','o','l','o','g','e','r'] ]
                              `plural`     FaCaL |< Iy |< Un
                              `femini`     FaCaL |< Iy |< aT,

    MaFCUL                    `adj`     {- <maflUk> -}         [ ['u','n','l','u','c','k','y'], unwords [ ['i','l','l'], "-", ['s','t','a','r','r','e','d'] ] ],

    MuFaCCaL |< aT            `noun`    {- <mufallakaT> -}     [ unwords [ ['w','e','l','l'], "-", ['e','n','d','o','w','e','d'], ['g','i','r','l'] ] ] ]


cluster_49  = cluster

 |> ['f','U','l','I','k'] <| [

    _____                     `noun`    {- <fUlIk> -}          [ ['f','o','l','i','c'] ] ]


cluster_50  = cluster

 |> "f l k n" <| [

    KaRDaS                    `verb`    {- <falkan> -}         [ ['v','u','l','c','a','n','i','z','e'] ],

    TaKaRDaS                  `verb`    {- <tafalkan> -}       [ unwords [ ['b','e'], ['v','u','l','c','a','n','i','z','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <falkanaT> -}       [ ['v','u','l','c','a','n','i','z','a','t','i','o','n'] ],

    MuKaRDaS                  `adj`     {- <mufalkan> -}       [ ['v','u','l','c','a','n','i','z','e','d'] ] ]


cluster_51  = cluster

 |> "f l m" <| [

    "FICL"                    `noun`    {- <fIlm> -}           [ ['f','i','l','m'], ['m','o','v','i','e'] ]
                              `plural`     "HaFCAL",

    "FICL" |< Iy              `adj`     {- <fIlmIy> -}         [ ['f','i','l','m'], ['c','i','n','e','m','a','t','i','c'] ] ]


cluster_52  = cluster

 |> ['f','a','l','a','m','a','n','d'] <| [

    _____ |< Iy               `adj`     {- <falamandIy> -}     [ ['F','l','e','m','i','s','h'] ] ]


cluster_53  = cluster

 |> ['f','a','l','a','m','a','n','k'] <| [

    _____ |< Iy               `adj`     {- <falamankIy> -}     [ ['N','e','t','h','e','r','l','a','n','d','e','r'] ],

    _____ |< Iy               `noun`    {- <falamankIy> -}     [ ['N','e','t','h','e','r','l','a','n','d','e','r'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_54  = cluster

 |> "f l n" <| [

    FuCAL                     `noun`    {- <fulAn> -}          [ unwords [ ['s','o'], "-", ['a','n','d'], "-", ['s','o'] ], unwords [ ['s','u','c','h'], "-", ['a','n','d'], "-", ['s','u','c','h'] ] ]
                              `plural`     FuCAL |< Un
                              `femini`     FuCAL |< aT,

    FuCAL |< Iy               `adj`     {- <fulAnIy> -}        [ unwords [ ['s','u','c','h'], "-", ['a','n','d'], "-", ['s','u','c','h'] ], unwords [ ['s','o'], "-", ['a','n','d'], "-", ['s','o'] ] ],

    FiCCIL                    `noun`    {- <fillIn> -}         [ ['c','o','r','k'] ],

    FiCCIL |< aT              `noun`    {- <fillInaT> -}       [ unwords [ ['c','o','r','k'], ['s','t','o','p','p','e','r'] ] ] ]


cluster_55  = cluster

 |> ['f','i','l','a','n','d','i','r'] <| [

    _____ |< aT               `noun`    {- <filandiraT> -}     [ ['F','l','a','n','d','e','r','s'] ] ]


cluster_56  = cluster

 |> ['f','a','l','a','n','k'] <| [

    _____ |< aT               `noun`    {- <falankaT> -}       [ unwords [ ['r','a','i','l','r','o','a','d'], ['t','i','e'] ] ] ]


cluster_57  = cluster

 |> ['f','A','l','.','s','U'] <| [

    _____                     `noun`    {- <fAl.sU> -}         [ ['b','o','g','u','s'], ['f','a','l','s','e'] ] ]


cluster_58  = cluster

 |> ['f','U','l','k','l','U','r'] <| [

    _____                     `noun`    {- <fUlklUr> -}        [ ['f','o','l','k','l','o','r','e'] ],

    _____ |< Iy               `adj`     {- <fUlklUrIy> -}      [ ['f','o','l','k','l','o','r','i','c'] ] ]


cluster_59  = cluster

 |> ['f','A','n'] <| [

    _____                     `noun`    {- <fAn> -}            [ ['v','a','n'], ['t','r','u','c','k'] ]
                              `plural`     _____ |< At ]


cluster_60  = cluster

 |> "f n ^g r" <| [

    KaRDaS                    `verb`    {- <fan^gar> -}        [ ['g','l','a','r','e'], ['s','t','a','r','e'] ],

    KaRDaS |< aT              `noun`    {- <fan^garaT> -}      [ ['g','l','a','r','i','n','g'], ['s','t','a','r','i','n','g'] ] ]


cluster_61  = cluster

 |> "f n ^g l" <| [

    KiRDAS                    `noun`    {- <fin^gAl> -}        [ unwords [ ['c','o','f','f','e','e'], ['c','u','p'] ] ]
                              `plural`     KaRADIS ]


cluster_62  = cluster

 |> "f n ^g n" <| [

    KiRDAS                    `noun`    {- <fin^gAn> -}        [ unwords [ ['c','o','f','f','e','e'], ['c','u','p'] ] ]
                              `plural`     KaRADIS ]


cluster_63  = cluster

 |> "f n _h" <| [

    FaCaL                     `verb`    {- <fana_h> -}         [ ['n','u','l','l','i','f','y'], ['i','n','v','a','l','i','d','a','t','e'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <fan_h> -}          [ ['n','u','l','l','i','f','y','i','n','g'], ['i','n','v','a','l','i','d','a','t','i','n','g'] ] ]


cluster_64  = cluster

 |> "f n d" <| [

    FaCCaL                    `verb`    {- <fannad> -}         [ ['d','e','n','y'], ['d','i','s','p','r','o','v','e'], ['r','e','f','u','t','e'] ],

    HaFCaL                    `verb`    {- <'afnad> -}         [ ['d','e','n','y'], ['d','i','s','p','r','o','v','e'], ['r','e','f','u','t','e'] ],

    TaFCIL                    `noun`    {- <tafnId> -}         [ ['r','e','f','u','t','a','t','i','o','n'], ['d','e','n','i','a','l'] ]
                              `plural`     TaFCIL |< At ]


cluster_65  = cluster

 |> "f n d q" <| [

    KuRDuS                    `noun`    {- <funduq> -}         [ ['h','o','t','e','l'] ]
                              `plural`     KaRADiS,

    KuRDuS |< Iy              `adj`     {- <funduqIy> -}       [ ['h','o','t','e','l'], unwords [ ['h','o','t','e','l'], "-", ['m','a','n','a','g','e','m','e','n','t'] ] ],

    KaRDaS |< aT              `noun`    {- <fandaqaT> -}       [ unwords [ ['h','o','t','e','l'], ['m','a','n','a','g','e','m','e','n','t'] ], unwords [ ['h','o','t','e','l'], ['b','u','s','i','n','e','s','s'] ] ] ]


cluster_66  = cluster

 |> ['f','a','n','A','r'] <| [

    _____                     `noun`    {- <fanAr> -}          [ ['l','i','g','h','t','h','o','u','s','e'] ]
                              `plural`     _____ |< At ]


cluster_67  = cluster

 |> "f n s" <| [

    FACUL                     `noun`    {- <fAnUs> -}          [ ['l','a','m','p'], ['l','a','n','t','e','r','n'] ]
                              `plural`     FawACIL ]


cluster_68  = cluster

 |> ['f','I','n','U','s'] <| [

    _____                     `noun`    {- <fInUs> -}          [ ['V','e','n','u','s'] ] ]


cluster_69  = cluster

 |> "f n .t" <| [

    FaCCaL                    `verb`    {- <fanna.t> -}        [ ['i','t','e','m','i','z','e'], ['e','n','u','m','e','r','a','t','e'] ],

    TaFCIL                    `noun`    {- <tafnI.t> -}        [ ['i','t','e','m','i','z','a','t','i','o','n'], ['e','n','u','m','e','r','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At ]


cluster_70  = cluster

 |> "f n .t s" <| [

    KiRDAS                    `noun`    {- <fin.tAs> -}        [ ['c','i','s','t','e','r','n'], ['r','e','s','e','r','v','o','i','r'], ['s','n','o','u','t'] ]
                              `plural`     KaRADIS,

    KiRDIS                    `noun`    {- <fin.tIs> -}        [ unwords [ ['b','r','o','a','d'], "-", ['n','o','s','e','d'] ] ],

    KiRDIS |< aT              `noun`    {- <fin.tIsaT> -}      [ ['s','n','o','u','t'] ] ]


cluster_71  = cluster

 |> ['f','U','n','U','.','g','r','A','f'] <| [

    _____                     `noun`    {- <fUnU.grAf> -}      [ ['p','h','o','n','o','g','r','a','p','h'] ],

    _____ |< Iy               `adj`     {- <fUnU.grAfIy> -}    [ ['p','h','o','n','o','g','r','a','p','h','i','c'] ] ]

 |> ['f','u','n','u','.','g','r','A','f'] <| [

    _____                     `noun`    {- <funu.grAf> -}      [ ['p','h','o','n','o','g','r','a','p','h'] ],

    _____ |< Iy               `adj`     {- <funu.grAfIy> -}    [ ['p','h','o','n','o','g','r','a','p','h','i','c'] ] ]


cluster_72  = cluster

 |> "f n q" <| [

    TaFaCCaL                  `verb`    {- <tafannaq> -}       [ unwords [ ['l','i','v','e'], ['i','n'], ['c','o','m','f','o','r','t'] ] ] ]


cluster_73  = cluster

 |> ['f','I','n','I','q'] <| [

    _____ |< Iy               `adj`     {- <fInIqIy> -}        [ ['P','h','o','e','n','i','c','i','a','n'] ],

    _____ |< Iy               `noun`    {- <fInIqIy> -}        [ ['P','h','o','e','n','i','c','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< iyA              `xtra`    {- <fInIqiyA> -}       [ ['P','h','o','e','n','i','c','i','a'] ] ]

 |> ['f','i','n','I','q'] <| [

    _____ |< Iy               `adj`     {- <finIqIy> -}        [ ['P','h','o','e','n','i','c','i','a','n'] ],

    _____ |< Iy               `noun`    {- <finIqIy> -}        [ ['P','h','o','e','n','i','c','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< iyA              `xtra`    {- <finIqiyA> -}       [ ['P','h','o','e','n','i','c','i','a'] ] ]


cluster_74  = cluster

 |> "f n k" <| [

    FaCaL                     `noun`    {- <fanak> -}          [ unwords [ ['f','e','n','n','e','c'], "(", ['f','o','x'], ")" ] ]
                              `plural`     HaFCAL ]


cluster_75  = cluster

 |> ['f','i','n','I','k'] <| [

    _____                     `noun`    {- <finIk> -}          [ ['p','h','e','n','o','l'] ] ]


cluster_76  = cluster

 |> ['f','U','n','U','l','U','^','g'] <| [

    _____ |< iyA              `noun`    {- <fUnUlU^giyA> -}    [ ['p','h','o','n','o','l','o','g','y'] ],

    _____ |< Iy               `adj`     {- <fUnUlU^gIy> -}     [ ['p','h','o','n','o','l','o','g','i','c','a','l'] ] ]


cluster_77  = cluster

 |> ['f','U','n','I','m'] <| [

    _____                     `noun`    {- <fUnIm> -}          [ ['p','h','o','n','e','m','e'] ] ]


cluster_78  = cluster

 |> ['f','a','n','t','A','z'] <| [

    _____ |< iyA              `noun`    {- <fantAziyA> -}      [ ['l','u','x','u','r','y'], ['f','a','n','t','a','s','i','a'] ] ]


cluster_79  = cluster

 |> ['f','a','n','d','A','l'] <| [

    _____                     `noun`    {- <fandAl> -}         [ ['V','a','n','d','a','l','s'] ] ]


cluster_80  = cluster

 |> ['f','i','n','l','a','n','d'] <| [

    _____ |<< "A"             `xtra`    {- <finlandA> -}       [ ['F','i','n','l','a','n','d'] ],

    _____ |< Iy               `adj`     {- <finlandIy> -}      [ ['F','i','n','n','i','s','h'] ] ]


cluster_81  = cluster

 |> "f h d" <| [

    FaCL                      `noun`    {- <fahd> -}           [ ['F','a','h','d'] ],

    FaCL                      `noun`    {- <fahd> -}           [ ['l','y','n','x'] ]
                              `plural`     FuCUL
                              `plural`     HaFCuL,

    FuCayL                    `noun`    {- <fuhayd> -}         [ ['F','u','h','a','i','d'], ['F','u','h','e','i','d'] ] ]


cluster_82  = cluster

 |> "f h r s" <| [

    KaRDaS                    `verb`    {- <fahras> -}         [ ['c','a','t','a','l','o','g','u','e'], ['i','n','d','e','x'], ['c','l','a','s','s','i','f','y'] ],

    KaRDaS |< aT              `noun`    {- <fahrasaT> -}       [ ['i','n','d','e','x','i','n','g'] ],

    KiRDiS                    `noun`    {- <fihris> -}         [ ['i','n','d','e','x'], ['c','a','t','a','l','o','g','u','e'], ['l','i','s','t'] ]
                              `plural`     KaRADiS,

    KiRDiS |< Iy              `adj`     {- <fihrisIy> -}       [ ['i','n','d','e','x'], ['b','i','b','l','i','o','g','r','a','p','h','i','c'] ],

    KiRDiS |< Iy |< aT        `noun`    {- <fihrisIyaT> -}     [ ['b','i','b','l','i','o','g','r','a','p','h','y'] ],

    MuKaRDaS                  `adj`     {- <mufahras> -}       [ ['c','a','t','a','l','o','g','u','e','d'], ['i','n','d','e','x','e','d'] ],

    MuKaRDiS                  `noun`    {- <mufahris> -}       [ ['c','a','t','a','l','o','g','u','e','r'] ]
                              `plural`     MuKaRDiS |< Un
                              `femini`     MuKaRDiS |< aT ]


cluster_83  = cluster

 |> "f h q" <| [

    FaCL |< aT                `noun`    {- <fahqaT> -}         [ unwords [ ['f','i','r','s','t'], ['c','e','r','v','i','c','a','l'], ['v','e','r','t','e','b','r','a'] ] ] ]


cluster_84  = cluster

 |> "f h l" <| [

    FaCLY |< Iy               `adj`     {- <fahlawIy> -}       [ ['s','h','r','e','w','d'], ['c','l','e','v','e','r'] ] ]


cluster_85  = cluster

 |> "f h m" <| [

    FaCiL                     `verb`    {- <fahim> -}          [ ['u','n','d','e','r','s','t','a','n','d'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <fahham> -}         [ unwords [ ['m','a','k','e'], ['u','n','d','e','r','s','t','a','n','d'] ] ],

    HaFCaL                    `verb`    {- <'afham> -}         [ unwords [ ['m','a','k','e'], ['u','n','d','e','r','s','t','a','n','d'] ] ],

    TaFaCCaL                  `verb`    {- <tafahham> -}       [ unwords [ ['c','o','m','e'], ['t','o'], ['u','n','d','e','r','s','t','a','n','d'] ], ['c','o','m','p','r','e','h','e','n','d'] ],

    TaFACaL                   `verb`    {- <tafAham> -}        [ unwords [ ['u','n','d','e','r','s','t','a','n','d'], ['o','n','e'], ['a','n','o','t','h','e','r'] ], unwords [ ['a','c','h','i','e','v','e'], ['m','u','t','u','a','l'], ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ] ],

    IFtaCaL                   `verb`    {- <iftaham> -}        [ ['c','o','m','p','r','e','h','e','n','d'] ],

    IstaFCaL                  `verb`    {- <istafham> -}       [ ['i','n','q','u','i','r','e'] ],

    FaCL                      `noun`    {- <fahm> -}           [ ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ]
                              `plural`     HaFCAL,

    FaCIL                     `noun`    {- <fahIm> -}          [ ['F','a','h','i','m'], ['F','a','h','e','e','m'] ],

    FaCIL                     `adj`     {- <fahIm> -}          [ ['d','i','s','c','e','r','n','i','n','g'], ['j','u','d','i','c','i','o','u','s'] ]
                              `plural`     FuCaLA',

    FaCCAL |< aT              `adj`     {- <fahhAmaT> -}       [ ['s','y','m','p','a','t','h','e','t','i','c'] ],

    TaFCIL                    `noun`    {- <tafhIm> -}         [ ['o','r','i','e','n','t','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mufAhamaT> -}      [ unwords [ ['m','u','t','u','a','l'], ['a','g','r','e','e','m','e','n','t'] ] ],

    TaFaCCuL                  `noun`    {- <tafahhum> -}       [ ['u','n','d','e','r','s','t','a','n','d','i','n','g'], ['c','o','m','p','r','e','h','e','n','s','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <tafAhum> -}        [ unwords [ ['m','u','t','u','a','l'], ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ], unwords [ ['m','u','t','u','a','l'], ['c','o','m','p','r','e','h','e','n','s','i','o','n'] ] ]
                              `plural`     TaFACuL |< At,

    IstiFCAL                  `noun`    {- <istifhAm> -}       [ ['i','n','q','u','i','r','y'], ['q','u','e','s','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    IstiFCAL |< Iy            `adj`     {- <istifhAmIy> -}     [ ['i','n','t','e','r','r','o','g','a','t','i','v','e'] ],

    FACiL                     `adj`     {- <fAhim> -}          [ ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ],

    MaFCUL                    `adj`     {- <mafhUm> -}         [ ['u','n','d','e','r','s','t','o','o','d'] ],

    MaFCUL                    `noun`    {- <mafhUm> -}         [ ['c','o','n','c','e','p','t'], ['n','o','t','i','o','n'], ['s','e','n','s','e'], ['m','e','a','n','i','n','g'], ['d','e','f','i','n','i','t','i','o','n'] ]
                              `plural`     MaFACIL,

    MaFCUL |< Iy              `adj`     {- <mafhUmIy> -}       [ ['c','o','n','c','e','p','t','u','a','l'], ['n','o','t','i','o','n','a','l'] ],

    MaFCUL |< Iy |< aT        `noun`    {- <mafhUmIyaT> -}     [ ['i','n','t','e','l','l','i','g','i','b','i','l','i','t','y'] ],

    MutaFaCCiL                `adj`     {- <mutafahhim> -}     [ ['r','e','a','s','o','n','a','b','l','e'], ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ],

    MutaFaCCaL                `adj`     {- <mutafahham> -}     [ ['u','n','d','e','r','s','t','a','n','d','a','b','l','e'] ] ]


cluster_86  = cluster

 |> ['f','r','A','k'] <| [

    _____                     `noun`    {- <frAk> -}           [ unwords [ ['t','a','i','l'], ['c','o','a','t'] ], unwords [ ['f','u','l','l'], ['d','r','e','s','s'] ] ] ]


cluster_87  = cluster

 |> ['f','r','a','n','k'] <| [

    _____                     `noun`    {- <frank> -}          [ ['f','r','a','n','k'] ]
                              `plural`     _____ |< At ]


cluster_88  = cluster

 |> ['f','r','a','n','k','U','f','U','n'] <| [

    _____ |< Iy |< aT         `noun`    {- <frankUfUnIyaT> -}  [ ['f','r','a','n','c','o','p','h','o','n','y'] ],

    _____ |< Iy               `adj`     {- <frankUfUnIy> -}    [ ['f','r','a','n','c','o','p','h','o','n','e'] ],

    _____ |< Iy               `noun`    {- <frankUfUnIy> -}    [ ['F','r','a','n','c','o','p','h','o','n','e'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_89  = cluster

 |> ['f','l','U','r','i','s','i','n','t'] <| [

    _____                     `noun`    {- <flUrisint> -}      [ ['f','l','u','o','r','e','s','c','e','n','t'] ] ]


cluster_90  = cluster

 |> ['f','l','A','m','i','n','k','U'] <| [

    _____                     `noun`    {- <flAminkU> -}       [ ['f','l','a','m','e','n','c','o'] ] ]


cluster_91  = cluster

 |> "q b ^g" <| [

    FaCaL                     `noun`    {- <qaba^g> -}         [ ['p','a','r','t','r','i','d','g','e'] ]
                              `plural`     FiCAL ]


cluster_92  = cluster

 |> "q b .h" <| [

    FaCuL                     `verb`    {- <qabu.h> -}         [ unwords [ ['b','e'], ['r','e','p','u','l','s','i','v','e'] ], unwords [ ['b','e'], ['d','i','s','g','u','s','t','i','n','g'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <qabba.h> -}        [ ['d','i','s','f','i','g','u','r','e'], unwords [ ['m','a','k','e'], ['r','e','p','u','g','n','a','n','t'] ] ],

    IstaFCaL                  `verb`    {- <istaqba.h> -}      [ unwords [ ['f','i','n','d'], ['a','b','h','o','r','r','e','n','t'] ] ],

    FuCL                      `noun`    {- <qub.h> -}          [ ['s','h','a','m','e'], ['i','n','f','a','m','y'] ],

    FaCIL                     `adj`     {- <qabI.h> -}         [ ['u','g','l','y'], ['r','e','p','u','l','s','i','v','e'], ['i','n','s','o','l','e','n','t'] ]
                              `plural`     FaCLY
                              `plural`     FiCAL
                              `plural`     FaCALY,

    FaCIL |< aT               `noun`    {- <qabI.haT> -}       [ unwords [ ['v','i','l','l','a','i','n','o','u','s'], ['d','e','e','d'] ], unwords [ ['d','i','r','t','y'], ['t','r','i','c','k'] ] ]
                              `plural`     FaCA'iL,

    FaCAL |< aT               `noun`    {- <qabA.haT> -}       [ ['u','g','l','i','n','e','s','s'], ['i','n','f','a','m','y'] ],

    HaFCaL                    `adj`     {- <'aqba.h> -}        [ unwords [ ['u','g','l','i','e','r'], "/", ['u','g','l','i','e','s','t'] ], unwords [ ['f','o','u','l','e','r'], "/", ['f','o','u','l','e','s','t'] ] ],

    MaFCaL |< aT              `noun`    {- <maqba.haT> -}      [ unwords [ ['s','h','a','m','e','f','u','l'], ['a','c','t'] ], unwords [ ['r','e','p','u','l','s','i','v','e'], ['q','u','a','l','i','t','i','e','s'] ] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <taqbI.h> -}        [ ['d','i','s','f','i','g','u','r','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MustaFCaL                 `adj`     {- <mustaqba.h> -}     [ ['r','e','p','u','g','n','a','n','t'] ] ]


cluster_93  = cluster

 |> ['q','a','b','U','d','A','n'] <| [

    _____                     `noun`    {- <qabUdAn> -}        [ ['c','a','p','t','a','i','n'] ] ]


cluster_94  = cluster

 |> "q b r" <| [

    FaCaL                     `verb`    {- <qabar> -}          [ ['b','u','r','y'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL
                              `masdar`     FaCL
                              `masdar`     MaFCiL,

    HaFCaL                    `verb`    {- <'aqbar> -}         [ ['b','u','r','y'] ],

    FaCL                      `noun`    {- <qabr> -}           [ ['t','o','m','b'], ['s','e','p','u','l','c','h','e','r'] ]
                              `plural`     FuCUL,

    FaCL |< Iy                `adj`     {- <qabrIy> -}         [ ['s','e','p','u','l','c','h','r','a','l'] ],

    FuCCaL                    `noun`    {- <qubbar> -}         [ ['l','a','r','k'] ],

    FuCCAL                    `noun`    {- <qubbAr> -}         [ unwords [ ['c','a','p','e','r','s'], "(", ['f','l','o','w','e','r'], ['b','u','d'], ['o','r'], ['p','l','a','n','t'], ")" ] ],

    MaFCaL                    `noun`    {- <maqbar> -}         [ ['t','o','m','b'], ['c','e','m','e','t','e','r','y'], ['g','r','a','v','e','y','a','r','d'] ]
                              `plural`     MaFACiL,

    MaFCaL |< aT              `noun`    {- <maqbaraT> -}       [ ['t','o','m','b'], ['c','e','m','e','t','e','r','y'], ['g','r','a','v','e','y','a','r','d'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <maqbarIy> -}       [ ['g','r','a','v','e','d','i','g','g','e','r'] ],

    MaFCuL |< Iy              `noun`    {- <maqburIy> -}       [ ['M','a','q','b','u','r','i'] ] ]


cluster_95  = cluster

 |> "q b r s" <| [

    KuRDuS                    `noun`    {- <qubrus> -}         [ ['l','e','a','t','h','e','r'] ] ]


cluster_96  = cluster

 |> "q b r .s" <| [

    KuRDuS                    `noun`    {- <qubru.s> -}        [ ['C','y','p','r','u','s'] ]
                           
    `excepts` Diptote,

    KuRDuS |< Iy              `noun`    {- <qubru.sIy> -}      [ ['C','y','p','r','i','o','t'] ]
                              `plural`     KaRADiS |< aT
                              `plural`     KuRDuS |< Iy |< Un
                              `femini`     KuRDuS |< Iy |< aT,

    KuRDuS |< Iy              `adj`     {- <qubru.sIy> -}      [ ['C','y','p','r','i','o','t'] ] ]


cluster_97  = cluster

 |> "q b s" <| [

    FaCaL                     `verb`    {- <qabas> -}          [ ['d','e','r','i','v','e'], ['b','o','r','r','o','w'], ['a','d','o','p','t'] ]
                              `imperf`     FCiL,

    IFtaCaL                   `verb`    {- <iqtabas> -}        [ ['q','u','o','t','e'], ['b','o','r','r','o','w'], ['a','d','o','p','t'] ],

    FaCaL                     `noun`    {- <qabas> -}          [ ['Q','a','b','a','s'] ],

    FaCaL                     `noun`    {- <qabas> -}          [ ['f','i','r','e','b','r','a','n','d'] ],

    FaCL |< aT                `noun`    {- <qabsaT> -}         [ ['f','i','r','e','b','r','a','n','d'] ],

    FACUL                     `noun`    {- <qAbUs> -}          [ ['n','i','g','h','t','m','a','r','e'] ]
                              `plural`     FawACIL,

    MiFCaL                    `noun`    {- <miqbas> -}         [ ['s','o','c','k','e','t'] ]
                              `plural`     MaFACiL,

    IFtiCAL                   `noun`    {- <iqtibAs> -}        [ ['q','u','o','t','a','t','i','o','n'], ['a','c','q','u','i','s','i','t','i','o','n'], ['a','d','a','p','t','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `noun`    {- <qAbis> -}          [ ['G','a','b','e','s'] ],

    FACiL                     `noun`    {- <qAbis> -}          [ unwords [ ['e','l','e','c','t','r','i','c','a','l'], ['p','l','u','g'] ] ],

    MuFtaCaL                  `noun`    {- <muqtabas> -}       [ ['b','o','r','r','o','w','e','d'], ['a','c','q','u','i','r','e','d'], ['a','d','a','p','t','e','d'], ['q','u','o','t','e','d'], ['b','o','r','r','o','w','i','n','g','s'], ['q','u','o','t','a','t','i','o','n','s'] ]
                              `plural`     MuFtaCaL |< At ]


cluster_98  = cluster

 |> "q b .s" <| [

    FaCaL                     `verb`    {- <qaba.s> -}         [ unwords [ ['t','a','k','e'], "a", ['p','i','n','c','h'], "(", ['m','e','a','s','u','r','e'], ")" ] ]
                              `imperf`     FCiL,

    FaCL |< aT                `noun`    {- <qab.saT> -}        [ unwords [ ['p','i','n','c','h'], "(", ['m','e','a','s','u','r','e'], ")" ] ]
                              `plural`     FuCL
                              `plural`     FaCaL |< At ]


cluster_99  = cluster

 |> "q b .d" <| [

    FaCaL                     `verb`    {- <qaba.d> -}         [ ['a','r','r','e','s','t'], ['a','p','p','r','e','h','e','n','d'], ['s','e','i','z','e'] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <qabba.d> -}        [ ['c','o','m','p','r','e','s','s'], ['o','p','p','r','e','s','s'], ['c','o','n','s','t','r','i','n','g','e'] ],

    TaFaCCaL                  `verb`    {- <taqabba.d> -}      [ ['s','h','r','i','n','k'], ['c','o','n','t','r','a','c','t'] ],

    InFaCaL                   `verb`    {- <inqaba.d> -}       [ ['s','h','r','i','n','k'], ['c','o','n','t','r','a','c','t'], ['a','b','s','t','a','i','n'] ],

    FaCL                      `noun`    {- <qab.d> -}          [ ['a','r','r','e','s','t'], ['s','e','i','z','u','r','e'] ],

    FaCL                      `noun`    {- <qab.d> -}          [ ['r','e','c','e','i','p','t'], ['a','p','p','r','o','p','r','i','a','t','i','o','n'] ],

    FaCL |< aT                `noun`    {- <qab.daT> -}        [ ['g','r','i','p'], ['s','e','i','z','u','r','e'], ['f','i','s','t','f','u','l'] ]
                              `plural`     FaCaL |< At,

    FiCAL                     `noun`    {- <qibA.d> -}         [ ['h','a','n','d','l','e','s'] ],

    FuCL |< aT                `noun`    {- <qub.daT> -}        [ ['h','a','n','d','f','u','l'] ]
                              `plural`     FuCaL,

    FiCAL |< aT               `noun`    {- <qibA.daT> -}       [ ['l','e','v','y','i','n','g'], ['c','o','l','l','e','c','t','i','n','g'] ],

    FuCUL |< aT               `noun`    {- <qubU.daT> -}       [ ['a','s','t','r','i','n','g','e','n','c','y'] ],

    MiFCaL                    `noun`    {- <miqba.d> -}        [ ['h','a','n','d','l','e'], ['h','i','l','t'], ['k','n','o','b'] ]
                              `plural`     MaFACiL,

    MaFCiL                    `noun`    {- <maqbi.d> -}        [ ['h','a','n','d','l','e'], ['h','i','l','t'], ['k','n','o','b'] ]
                              `plural`     MaFACiL,

    TaFaCCuL                  `noun`    {- <taqabbu.d> -}      [ ['c','o','n','t','r','a','c','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <taqAbu.d> -}       [ unwords [ ['r','e','c','i','p','r','o','c','a','l'], ['a','p','p','r','o','p','r','i','a','t','i','o','n'] ] ]
                              `plural`     TaFACuL |< At,

    InFiCAL                   `noun`    {- <inqibA.d> -}       [ ['c','o','n','t','r','a','c','t','i','o','n'], ['s','h','r','i','n','k','i','n','g'] ]
                              `plural`     InFiCAL |< At,

    InFiCAL |< Iy             `adj`     {- <inqibA.dIy> -}     [ ['s','y','s','t','o','l','i','c'], ['c','o','n','t','r','a','c','t','i','n','g'] ],

    FACiL                     `adj`     {- <qAbi.d> -}         [ ['c','o','n','s','t','r','i','c','t','i','n','g'], ['o','p','p','r','e','s','s','i','v','e'], ['a','s','t','r','i','n','g','e','n','t'] ],

    MuFaCCiL                  `noun`    {- <muqabbi.d> -}      [ ['c','o','n','s','t','r','i','c','t','i','n','g'], ['c','o','n','s','t','r','i','c','t','o','r'] ],

    MaFCUL                    `adj`     {- <maqbU.d> -}        [ ['a','r','r','e','s','t','e','d'], ['s','e','i','z','e','d'] ],

    MaFCUL                    `noun`    {- <maqbU.d> -}        [ ['r','e','v','e','n','u','e','s'], unwords [ ['o','f','f','i','c','i','a','l'], ['f','e','e','s'] ] ]
                              `plural`     MaFCUL |< At
                              `plural`     MaFACIL,

    MaFCUL                    `adj`     {- <maqbU.d> -}        [ ['c','l','e','n','c','h','e','d'] ],

    MutaFaCCiL                `adj`     {- <mutaqabbi.d> -}    [ ['c','o','n','t','r','a','c','t','i','n','g'] ],

    MunFaCiL                  `adj`     {- <munqabi.d> -}      [ ['o','p','p','r','e','s','s','e','d'], ['d','e','p','r','e','s','s','e','d'] ] ]


cluster_100 = cluster

 |> "q b .t" <| [

    FaCCaL                    `verb`    {- <qabba.t> -}        [ ['f','r','o','w','n'], unwords [ ['h','a','v','e'], ['f','u','r','r','o','w','e','d'], ['b','r','o','w','s'] ] ] ]

 |> "q b .t" <| [

    FuCLAn                    `noun`    {- <qub.tAn> -}        [ ['c','a','p','t','a','i','n'], ['c','o','m','m','a','n','d','e','r'] ]
                              `plural`     FaCALIn ]

 |> "q b .t" <| [

    FiCL |< Iy                `noun`    {- <qib.tIy> -}        [ ['C','o','p','t','i','c'], ['C','o','p','t','s'] ]
                              `plural`     HaFCAL
                              `plural`     FiCL
                              `femini`     FiCL |< Iy |< aT,

    FiCL |< Iy                `adj`     {- <qib.tIy> -}        [ ['C','o','p','t','i','c'], ['C','o','p','t','s'] ]
                              `plural`     HaFCAL
                              `plural`     FiCL ]


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
