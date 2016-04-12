
module Elixir.Data.Moony.Regular.U (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['m','a','r','k','I','z'] <| [

    _____                     `noun`    {- <markIz> -}         [ ['m','a','r','q','u','i','s'] ] ]


cluster_2   = cluster

 |> ['m','A','r','k','i','s'] <| [

    _____ |< Iy               `adj`     {- <mArkisIy> -}       [ ['M','a','r','x','i','s','t'] ],

    _____ |< Iy |< aT         `noun`    {- <mArkisIyaT> -}     [ ['M','a','r','x','i','s','m'] ] ]


cluster_3   = cluster

 |> ['m','a','r','m','i','.','t','U','n'] <| [

    _____                     `noun`    {- <marmi.tUn> -}      [ unwords [ ['k','i','t','c','h','e','n'], ['b','o','y'] ], unwords [ ['s','c','u','l','l','e','r','y'], ['b','o','y'] ] ] ]


cluster_4   = cluster

 |> ['m','A','z'] <| [

    _____ |< aT               `noun`    {- <mAzaT> -}          [ ['a','p','p','e','t','i','z','e','r','s'], ['e','n','t','r','e','e','s'] ] ]


cluster_5   = cluster

 |> ['m','I','z','U','b','U','t','A','m'] <| [

    _____ |< iyA              `xtra`    {- <mIzUbUtAmiyA> -}   [ ['M','e','s','o','p','o','t','a','m','i','a'] ],

    _____ |< Iy               `adj`     {- <mIzUbUtAmIy> -}    [ ['M','e','s','o','p','o','t','a','m','i','a','n'] ] ]


cluster_6   = cluster

 |> ['m','A','z','U','t'] <| [

    _____                     `noun`    {- <mAzUt> -}          [ unwords [ ['h','e','a','v','y'], ['o','i','l'] ], unwords [ ['d','i','e','s','e','l'], ['o','i','l'] ] ] ]


cluster_7   = cluster

 |> "m z ^g" <| [

    FaCaL                     `verb`    {- <maza^g> -}         [ ['m','i','x'], ['b','l','e','n','d'], ['m','i','n','g','l','e'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <mAza^g> -}         [ unwords [ ['c','o','m','b','i','n','e'], ['w','i','t','h'] ], unwords [ ['m','i','x'], ['w','i','t','h'] ] ],

    TaFACaL                   `verb`    {- <tamAza^g> -}       [ ['i','n','t','e','r','m','i','x'], ['b','l','e','n','d'] ],

    IFtaCaL                   `verb`    {- <imtaza^g> -}       [ unwords [ ['b','e'], ['m','i','x','e','d'] ], ['b','l','e','n','d'] ],

    FaCL                      `noun`    {- <maz^g> -}          [ ['m','i','x','i','n','g'], ['b','l','e','n','d','i','n','g'] ],

    FiCAL                     `noun`    {- <mizA^g> -}         [ ['m','i','x','t','u','r','e'] ]
                              `plural`     HaFCiL |< aT,

    FiCAL                     `noun`    {- <mizA^g> -}         [ ['t','e','m','p','e','r','a','m','e','n','t'], ['m','o','o','d'], ['f','e','e','l','i','n','g'] ]
                              `plural`     HaFCiL |< aT,

    FiCAL |< Iy               `adj`     {- <mizA^gIy> -}       [ ['m','o','o','d'], unwords [ ['s','t','a','t','e'], ['o','f'], ['m','i','n','d'] ] ],

    FaCIL                     `noun`    {- <mazI^g> -}         [ ['m','i','x','t','u','r','e'], ['c','o','m','b','i','n','a','t','i','o','n'], ['b','l','e','n','d'] ],

    TaFACuL                   `noun`    {- <tamAzu^g> -}       [ ['i','n','t','e','r','m','i','x','i','n','g'], ['b','l','e','n','d','i','n','g'] ]
                              `plural`     TaFACuL |< At,

    IFtiCAL                   `noun`    {- <imtizA^g> -}       [ ['m','i','x','t','u','r','e'], ['c','o','m','b','i','n','a','t','i','o','n'], ['b','l','e','n','d'] ]
                              `plural`     IFtiCAL |< At ]


cluster_8   = cluster

 |> "m z .h" <| [

    FaCaL                     `verb`    {- <maza.h> -}         [ unwords [ ['j','o','k','e'], ['w','i','t','h'] ], unwords [ ['j','e','s','t'], ['w','i','t','h'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <mAza.h> -}         [ unwords [ ['j','o','k','e'], ['w','i','t','h'] ], unwords [ ['j','e','s','t'], ['w','i','t','h'] ] ],

    FaCL                      `noun`    {- <maz.h> -}          [ ['j','o','k','i','n','g'], ['j','e','s','t','i','n','g'] ],

    FiCAL                     `noun`    {- <mizA.h> -}         [ ['j','o','k','i','n','g'], ['j','e','s','t','i','n','g'] ],

    FuCAL                     `noun`    {- <muzA.h> -}         [ ['j','o','k','i','n','g'], ['j','e','s','t','i','n','g'] ],

    FuCAL |< aT               `noun`    {- <muzA.haT> -}       [ ['j','o','k','i','n','g'], ['j','e','s','t','i','n','g'] ],

    FaCL |< aT                `noun`    {- <maz.haT> -}        [ ['j','o','k','e'], ['p','r','a','n','k'] ],

    FaCCAL                    `noun`    {- <mazzA.h> -}        [ ['j','o','k','e','r'], ['j','e','s','t','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FACiL                     `noun`    {- <mAzi.h> -}         [ ['j','o','k','e','r'], ['j','e','s','t','e','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT ]


cluster_9   = cluster

 |> ['m','A','z','U','_','h'] <| [

    _____ |< Iy               `adj`     {- <mAzU_hIy> -}       [ ['m','a','s','o','c','h','i','s','t'] ],

    _____ |< Iy               `noun`    {- <mAzU_hIy> -}       [ ['m','a','s','o','c','h','i','s','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <mAzU_hIyaT> -}     [ ['m','a','s','o','c','h','i','s','m'] ] ]


cluster_10  = cluster

 |> "m z r" <| [

    FiCL                      `noun`    {- <mizr> -}           [ ['b','e','e','r'] ] ]


cluster_11  = cluster

 |> "m z `" <| [

    FaCaL                     `verb`    {- <maza`> -}          [ ['r','u','n'], ['g','a','l','l','o','p'], unwords [ ['t','e','a','r'], ['a','p','a','r','t'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <mazza`> -}         [ ['p','i','c','k'], ['p','l','u','c','k'], unwords [ ['t','e','a','r'], ['t','o'], ['p','i','e','c','e','s'] ] ],

    FuCL |< aT                `noun`    {- <muz`aT> -}         [ ['p','i','e','c','e'], ['b','i','t','e'] ]
                              `plural`     FiCaL
                              `plural`     FuCaL,

    FiCL |< aT                `noun`    {- <miz`aT> -}         [ ['p','i','e','c','e'], ['b','i','t','e'] ]
                              `plural`     FiCaL
                              `plural`     FuCaL ]


cluster_12  = cluster

 |> "m z q" <| [

    FaCaL                     `verb`    {- <mazaq> -}          [ unwords [ ['t','e','a','r'], ['a','p','a','r','t'] ], unwords [ ['r','i','p'], ['a','p','a','r','t'] ] ]
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <mazzaq> -}         [ unwords [ ['t','e','a','r'], ['a','p','a','r','t'] ], unwords [ ['r','i','p'], ['a','p','a','r','t'] ], ['s','h','r','e','d'] ],

    TaFaCCaL                  `verb`    {- <tamazzaq> -}       [ unwords [ ['b','e'], ['t','o','r','n'], ['a','p','a','r','t'] ], unwords [ ['b','e'], ['s','h','r','e','d','d','e','d'] ] ],

    FaCL                      `noun`    {- <mazq> -}           [ ['t','e','a','r','i','n','g'], ['s','h','r','e','d','d','i','n','g'], ['r','u','p','t','u','r','e'] ],

    FiCL |< aT                `noun`    {- <mizqaT> -}         [ ['p','i','e','c','e'], ['s','h','r','e','d'] ]
                              `plural`     FiCaL,

    TaFCIL                    `noun`    {- <tamzIq> -}         [ ['t','e','a','r','i','n','g'], ['s','h','r','e','d','d','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    TaFaCCuL                  `noun`    {- <tamazzuq> -}       [ unwords [ ['t','e','a','r','i','n','g'], ['a','p','a','r','t'] ], ['s','h','r','e','d','d','i','n','g'] ]
                              `plural`     TaFaCCuL |< At,

    MutaFaCCiL                `adj`     {- <mutamazziq> -}     [ unwords [ ['t','o','r','n'], ['a','p','a','r','t'] ], ['s','h','r','e','d','d','e','d'] ] ]


cluster_13  = cluster

 |> "m z m z" <| [

    KaRDaS                    `verb`    {- <mazmaz> -}         [ ['s','i','p'] ] ]


cluster_14  = cluster

 |> ['m','U','z','a','m','b','I','q'] <| [

    _____                     `xtra`    {- <mUzambIq> -}       [ ['M','o','z','a','m','b','i','q','u','e'] ],

    _____ |< Iy               `adj`     {- <mUzambIqIy> -}     [ ['M','o','z','a','m','b','i','c','a','n'] ],

    _____ |< Iy               `noun`    {- <mUzambIqIy> -}     [ ['M','o','z','a','m','b','i','c','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_15  = cluster

 |> "m z n" <| [

    FuCL                      `noun`    {- <muzn> -}           [ unwords [ ['r','a','i','n'], ['c','l','o','u','d'] ] ]
                              `plural`     FuCaL,

    FACiL                     `noun`    {- <mAzin> -}          [ ['M','a','z','e','n'], ['M','a','z','i','n'] ] ]


cluster_16  = cluster

 |> ['m','I','z','A','n','I','n'] <| [

    _____                     `noun`    {- <mIzAnIn> -}        [ ['m','e','z','z','a','n','i','n','e'] ] ]


cluster_17  = cluster

 |> "m s .h" <| [

    FaCaL                     `verb`    {- <masa.h> -}         [ unwords [ ['w','i','p','e'], ['o','f','f'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCaL                     `verb`    {- <masa.h> -}         [ ['s','u','r','v','e','y'], ['m','e','a','s','u','r','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FiCAL |< aT,

    FaCCaL                    `verb`    {- <massa.h> -}        [ unwords [ ['w','i','p','e'], ['o','f','f'] ] ],

    FACaL                     `verb`    {- <mAsa.h> -}         [ ['c','a','j','o','l','e'], ['p','e','r','s','u','a','d','e'] ],

    TaFaCCaL                  `verb`    {- <tamassa.h> -}      [ unwords [ ['b','e'], ['r','u','b','b','e','d'] ], unwords [ ['b','e'], ['a','n','o','i','n','t','e','d'] ], ['f','a','w','n'] ],

    FaCL                      `noun`    {- <mas.h> -}          [ unwords [ ['w','i','p','i','n','g'], ['o','f','f'] ] ],

    FaCL                      `noun`    {- <mas.h> -}          [ ['s','u','r','v','e','y','i','n','g'], ['m','e','a','s','u','r','i','n','g'] ],

    FiCL                      `noun`    {- <mis.h> -}          [ ['h','a','i','r','c','l','o','t','h'] ]
                              `plural`     FuCUL,

    FaCL |< aT                `noun`    {- <mas.haT> -}        [ ['r','u','b','b','i','n','g'], ['a','n','o','i','n','t','i','n','g'] ],

    FaCL |< aT                `noun`    {- <mas.haT> -}        [ ['t','r','a','c','e'], ['t','o','u','c','h'] ],

    FaCCAL                    `noun`    {- <massA.h> -}        [ unwords [ ['l','a','n','d'], ['s','u','r','v','e','y','o','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL |< aT              `noun`    {- <massA.haT> -}      [ unwords [ ['w','i','n','d','s','h','i','e','l','d'], ['w','i','p','e','r'] ] ]
                              `plural`     FaCCAL |< At,

    FaCCAL |< aT              `noun`    {- <massA.haT> -}      [ unwords [ ['p','l','a','n','e'], "(", ['t','o','o','l'], ")" ] ],

    FiCAL |< aT               `noun`    {- <misA.haT> -}       [ ['s','u','r','f','a','c','e'], ['s','p','a','c','e'], ['l','a','n','d'], ['t','e','r','r','a','i','n'] ],

    FaCIL                     `adj`     {- <masI.h> -}         [ ['a','n','o','i','n','t','e','d'] ]
                              `plural`     FuCaLA',

    FaCIL                     `noun`    {- <masI.h> -}         [ ['M','e','s','s','i','a','h'] ],

    FaCIL                     `noun`    {- <masI.h> -}         [ ['M','a','s','e','e','h'], ['M','e','s','i','h'] ],

    FaCIL |< Iy               `adj`     {- <masI.hIy> -}       [ ['C','h','r','i','s','t','i','a','n'] ],

    FaCIL |< Iy               `noun`    {- <masI.hIy> -}       [ ['C','h','r','i','s','t','i','a','n'] ]
                              `plural`     FaCIL |< Iy |< Un
                              `femini`     FaCIL |< Iy |< aT,

    FaCIL |< Iy |< aT         `noun`    {- <masI.hIyaT> -}     [ ['C','h','r','i','s','t','i','a','n','i','t','y'] ],

    MiFCaL                    `noun`    {- <mimsa.h> -}        [ ['w','a','s','h','c','l','o','t','h'], unwords [ ['d','u','s','t'], ['r','a','g'] ], ['d','o','o','r','m','a','t'] ]
                              `plural`     MaFACiL,

    MiFCaL |< aT              `noun`    {- <mimsa.haT> -}      [ ['w','a','s','h','c','l','o','t','h'], unwords [ ['d','u','s','t'], ['r','a','g'] ], ['d','o','o','r','m','a','t'] ]
                              `plural`     MaFACiL,

    FACiL                     `noun`    {- <mAsi.h> -}         [ ['s','h','o','e','s','h','i','n','e'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    FACiL                     `noun`    {- <mAsi.h> -}         [ ['w','i','p','e','r'] ]
                              `plural`     FACiL |< At
                              `femini`     FACiL |< aT,

    MaFCUL                    `adj`     {- <mamsU.h> -}        [ unwords [ ['w','i','p','e','d'], ['o','f','f'] ], ['c','l','e','a','n','e','d'], ['s','m','o','o','t','h','e','d'] ] ]


cluster_18  = cluster

 |> "m s _h" <| [

    FaCaL                     `verb`    {- <masa_h> -}         [ ['t','r','a','n','s','f','o','r','m'], ['f','a','l','s','i','f','y'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <mas_h> -}          [ ['t','r','a','n','s','f','o','r','m','a','t','i','o','n'], ['f','a','l','s','i','f','i','c','a','t','i','o','n'] ],

    FaCL                      `noun`    {- <mas_h> -}          [ ['d','e','f','o','r','m','e','d'], ['d','i','s','f','i','g','u','r','e','d'], ['m','o','n','s','t','e','r'] ]
                              `plural`     FuCUL,

    FuCL |< aT                `noun`    {- <mus_haT> -}        [ ['c','l','o','w','n'], ['b','u','f','f','o','o','n'] ],

    FaCIL                     `adj`     {- <masI_h> -}         [ ['t','r','a','n','s','f','o','r','m','e','d'], ['d','i','s','f','i','g','u','r','e','d'], ['i','n','s','i','p','i','d'] ],

    MaFCUL                    `adj`     {- <mamsU_h> -}        [ ['t','r','a','n','s','f','o','r','m','e','d'], ['s','p','o','i','l','e','d'], ['d','i','s','f','i','g','u','r','e','d'] ] ]


cluster_19  = cluster

 |> ['m','A','s','U','_','h'] <| [

    _____ |< Iy               `adj`     {- <mAsU_hIy> -}       [ ['m','a','s','o','c','h','i','s','t'] ],

    _____ |< Iy               `noun`    {- <mAsU_hIy> -}       [ ['m','a','s','o','c','h','i','s','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <mAsU_hIyaT> -}     [ ['m','a','s','o','c','h','i','s','m'] ] ]


cluster_20  = cluster

 |> "m s _h r" <| [

    KaRDaS                    `verb`    {- <mas_har> -}        [ ['r','i','d','i','c','u','l','e'], ['d','e','r','i','d','e'] ],

    TaKaRDaS                  `verb`    {- <tamas_har> -}      [ ['m','o','c','k'] ] ]


cluster_21  = cluster

 |> "m s d" <| [

    FaCCaL                    `verb`    {- <massad> -}         [ ['m','a','s','s','a','g','e'] ],

    FaCaL                     `noun`    {- <masad> -}          [ unwords [ ['p','a','l','m'], ['f','i','b','e','r','s'] ] ]
                              `plural`     FiCAL
                              `plural`     HaFCAL,

    TaFCIL                    `noun`    {- <tamsId> -}         [ ['m','a','s','s','a','g','e'] ]
                              `plural`     TaFCIL |< At ]


cluster_22  = cluster

 |> "m s r" <| [

    FACUL |< aT               `noun`    {- <mAsUraT> -}        [ ['p','i','p','e'], ['h','o','s','e'] ]
                              `plural`     FawACIL,

    FACUL |< aT               `noun`    {- <mAsUraT> -}        [ unwords [ ['g','u','n'], ['b','a','r','r','e','l'] ] ]
                              `plural`     FawACIL,

    FiCLY                     `noun`    {- <misrY> -}          [ ['M','i','s','r','a'] ] ]


cluster_23  = cluster

 |> "m s .t r" <| [

    KaRDaS |< aT              `noun`    {- <mas.taraT> -}      [ ['s','a','m','p','l','e'], ['s','p','e','c','i','m','e','n'] ]
                              `plural`     KaRADiS ]


cluster_24  = cluster

 |> ['m','U','s','I','q'] <| [

    _____ |<< "Y"             `noun`    {- <mUsIqY> -}         [ ['m','u','s','i','c'] ],

    _____ |< Iy               `adj`     {- <mUsIqIy> -}        [ ['m','u','s','i','c','a','l'] ],

    _____ |< Iy |< aT         `noun`    {- <mUsIqIyaT> -}      [ ['m','u','s','i','c','a','l','i','t','y'] ],

    _____ |< Iy               `noun`    {- <mUsIqIy> -}        [ ['m','u','s','i','c','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |<< "Ar"            `noun`    {- <mUsIqAr> -}        [ ['m','u','s','i','c','i','a','n'] ]
                              `plural`     _____ |<< "Ar" |< Un
                              `femini`     _____ |<< "Ar" |< aT ]


cluster_25  = cluster

 |> "m s k" <| [

    FaCaL                     `verb`    {- <masak> -}          [ ['s','e','i','z','e'], ['h','o','l','d'], ['c','a','t','c','h'], ['g','r','a','b'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <massak> -}         [ unwords [ ['m','a','k','e'], ['h','o','l','d'] ] ],

    HaFCaL                    `verb`    {- <'amsak> -}         [ ['s','e','i','z','e'], ['h','o','l','d'], unwords [ ['r','e','f','r','a','i','n'], ['f','r','o','m'] ] ],

    TaFaCCaL                  `verb`    {- <tamassak> -}       [ ['c','l','u','t','c','h'], unwords [ ['a','d','h','e','r','e'], ['t','o'] ] ],

    TaFACaL                   `verb`    {- <tamAsak> -}        [ unwords [ ['h','o','l','d'], ['t','o','g','e','t','h','e','r'] ], unwords [ ['r','e','f','r','a','i','n'], ['f','r','o','m'] ] ],

    IstaFCaL                  `verb`    {- <istamsak> -}       [ unwords [ ['a','d','h','e','r','e'], ['t','o'] ], unwords [ ['r','e','f','r','a','i','n'], ['f','r','o','m'] ] ],

    FaCL                      `noun`    {- <mask> -}           [ ['s','e','i','z','u','r','e'], ['h','o','l','d','i','n','g'] ],

    FaCL |< aT                `noun`    {- <maskaT> -}         [ ['g','r','i','p'], ['h','o','l','d'] ]
                              `plural`     FaCaL |< At,

    FiCL                      `noun`    {- <misk> -}           [ ['m','u','s','k'] ],

    FiCL |< aT                `noun`    {- <miskaT> -}         [ ['t','o','u','c','h'], ['g','l','i','m','p','s','e'] ],

    FuCL |< aT                `noun`    {- <muskaT> -}         [ ['h','a','n','d','l','e'], ['g','r','i','p'] ]
                              `plural`     FuCaL,

    FaCAL |< aT               `noun`    {- <masAkaT> -}        [ ['a','v','a','r','i','c','e'] ],

    FuCLAn                    `noun`    {- <muskAn> -}         [ unwords [ ['e','a','r','n','e','s','t'], ['m','o','n','e','y'] ], ['p','l','e','d','g','e'] ],

    FiCAL                     `noun`    {- <misAk> -}          [ ['d','a','m'], ['b','o','r','d','e','r'] ],

    FaCIL                     `adj`     {- <masIk> -}          [ ['t','e','n','a','c','i','o','u','s'], ['a','v','a','r','i','c','i','o','u','s'] ],

    FaCIL                     `adj`     {- <masIk> -}          [ ['w','a','t','e','r','t','i','g','h','t'], ['w','a','t','e','r','p','r','o','o','f'] ],

    HiFCAL                    `noun`    {- <'imsAk> -}         [ ['s','e','i','z','u','r','e'], ['r','e','s','t','r','a','i','n','t'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL                    `noun`    {- <'imsAk> -}         [ unwords [ ['i','m','s','a','k'], "(", ['s','t','a','r','t'], ['o','f'], ['R','a','m','a','d','a','n'], ['f','a','s','t'], ")" ] ],

    HiFCAL |< Iy |< aT        `noun`    {- <'imsAkIyaT> -}     [ unwords [ ['R','a','m','a','d','a','n'], ['f','a','s','t'], ['c','a','l','e','n','d','a','r'] ] ],

    TaFaCCuL                  `noun`    {- <tamassuk> -}       [ ['a','d','h','e','r','e','n','c','e'], ['c','o','m','m','i','t','m','e','n','t'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <tamAsuk> -}        [ ['c','o','h','e','s','i','v','e','n','e','s','s'], ['f','i','r','m','n','e','s','s'] ]
                              `plural`     TaFACuL |< At,

    IstiFCAL                  `noun`    {- <istimsAk> -}       [ ['a','d','h','e','r','e','n','c','e'], ['l','o','y','a','l','t','y'] ]
                              `plural`     IstiFCAL |< At,

    MuFaCCaL                  `noun`    {- <mumassak> -}       [ unwords [ ['m','u','s','k'], "-", ['s','c','e','n','t','e','d'] ], ['p','e','r','f','u','m','e','d'] ],

    MuFCiL                    `adj`     {- <mumsik> -}         [ ['h','o','l','d','i','n','g'], ['w','i','t','h','h','o','l','d','i','n','g'] ],

    MutaFaCCiL                `adj`     {- <mutamassik> -}     [ ['a','d','h','e','r','i','n','g'], ['t','e','n','a','c','i','o','u','s'], ['f','i','r','m'] ],

    MutaFACiL                 `adj`     {- <mutamAsik> -}      [ unwords [ ['h','o','l','d','i','n','g'], ['t','o','g','e','t','h','e','r'] ], ['c','o','h','e','s','i','v','e'], unwords [ ['c','a','l','m'], ['a','n','d'], ['c','o','l','l','e','c','t','e','d'] ] ],

    MustaFCiL                 `adj`     {- <mustamsik> -}      [ ['c','o','m','p','o','s','e','d'], unwords [ ['c','a','l','m'], ['a','n','d'], ['c','o','l','l','e','c','t','e','d'] ] ] ]


cluster_26  = cluster

 |> ['m','A','s','U','k'] <| [

    _____ |< Iy               `adj`     {- <mAsUkIy> -}        [ ['m','a','s','o','c','h','i','s','t'] ],

    _____ |< Iy               `noun`    {- <mAsUkIy> -}        [ ['m','a','s','o','c','h','i','s','t'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy |< aT         `noun`    {- <mAsUkIyaT> -}      [ ['m','a','s','o','c','h','i','s','m'] ] ]


cluster_27  = cluster

 |> "m s k n" <| [

    TaKaRDaS                  `verb`    {- <tamaskan> -}       [ unwords [ ['b','e','c','o','m','e'], ['p','o','o','r'] ], unwords [ ['f','e','i','g','n'], ['p','o','v','e','r','t','y'] ], unwords [ ['b','e'], ['s','e','r','v','i','l','e'] ] ],

    KaRDaS |< aT              `noun`    {- <maskanaT> -}       [ ['p','o','v','e','r','t','y'], ['h','u','m','i','l','i','t','y'] ],

    KiRDIS                    `adj`     {- <miskIn> -}         [ ['p','o','o','r'], ['h','u','m','b','l','e'], ['m','i','s','e','r','a','b','l','e'] ]
                              `plural`     KaRADIS ]


cluster_28  = cluster

 |> "m s m r" <| [

    KaRDaS                    `verb`    {- <masmar> -}         [ unwords [ ['n','a','i','l'], ['u','p'] ] ] ]


cluster_29  = cluster

 |> ['m','A','s','U','n'] <| [

    _____                     `noun`    {- <mAsUn> -}          [ ['F','r','e','e','m','a','s','o','n'] ],

    _____ |< Iy               `adj`     {- <mAsUnIy> -}        [ ['F','r','e','e','m','a','s','o','n'], ['M','a','s','o','n','i','c'] ],

    _____ |< Iy |< aT         `noun`    {- <mAsUnIyaT> -}      [ ['F','r','e','e','m','a','s','o','n','r','y'] ] ]


cluster_30  = cluster

 |> ['m','i','s','t','i','k','a','h'] <| [

    _____                     `noun`    {- <mistikah> -}       [ ['m','a','s','t','i','c'] ] ]


cluster_31  = cluster

 |> ['m','a','s','.','t','a','r','I','n'] <| [

    _____                     `noun`    {- <mas.tarIn> -}      [ ['t','r','o','w','e','l'] ] ]


cluster_32  = cluster

 |> ['m','U','s','k','U'] <| [

    _____                     `xtra`    {- <mUskU> -}          [ ['M','o','s','c','o','w'] ],

    _____ |< Iy               `adj`     {- <mUskuwIy> -}       [ ['M','u','s','c','o','v','i','t','e'] ] ]

 |> ['m','u','s','k','U'] <| [

    _____                     `xtra`    {- <muskU> -}          [ ['M','o','s','c','o','w'] ],

    _____ |<< "f" |< Iy       `adj`     {- <muskUfIy> -}       [ ['M','u','s','c','o','v','i','t','e'] ] ]


cluster_33  = cluster

 |> ['m','u','s','k','A','t','I'] <| [

    _____                     `noun`    {- <muskAtI> -}        [ unwords [ ['m','u','s','c','a','t','e','l'], ['w','i','n','e'] ] ] ]


cluster_34  = cluster

 |> "m ^s ^g" <| [

    FaCIL                     `noun`    {- <ma^sI^g> -}        [ ['g','a','m','e','t','e'], unwords [ ['g','e','r','m'], ['c','e','l','l'] ] ]
                              `plural`     HaFCAL ]


cluster_35  = cluster

 |> "m ^s .h" <| [

    FaCaL                     `verb`    {- <ma^sa.h> -}        [ unwords [ ['a','d','m','i','n','i','s','t','e','r'], ['e','x','t','r','e','m','e'], ['u','n','c','t','i','o','n'], ['t','o'] ] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <ma^s.h> -}         [ unwords [ ['a','d','m','i','n','i','s','t','r','a','t','i','o','n'], ['o','f'], ['e','x','t','r','e','m','e'], ['u','n','c','t','i','o','n'] ] ],

    FaCL |< aT                `noun`    {- <ma^s.haT> -}       [ unwords [ ['e','x','t','r','e','m','e'], ['u','n','c','t','i','o','n'] ] ] ]


cluster_36  = cluster

 |> ['m','u','^','s','a','^','s','_','h','a','n'] <| [

    _____                     `noun`    {- <mu^sa^s_han> -}    [ unwords [ ['g','u','n'], ['b','a','r','r','e','l'] ] ] ]


cluster_37  = cluster

 |> "m ^s .t" <| [

    FaCaL                     `verb`    {- <ma^sa.t> -}        [ ['c','o','m','b'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <ma^s^sa.t> -}      [ ['c','o','m','b'] ],

    TaFaCCaL                  `verb`    {- <tama^s^sa.t> -}    [ unwords [ ['c','o','m','b'], ['t','h','e'], ['h','a','i','r'] ] ],

    IFtaCaL                   `verb`    {- <imta^sa.t> -}      [ unwords [ ['c','o','m','b'], ['t','h','e'], ['h','a','i','r'] ] ],

    FiCL                      `noun`    {- <mi^s.t> -}         [ ['c','o','m','b'] ]
                              `plural`     HaFCAL
                              `plural`     FiCAL,

    FuCL                      `noun`    {- <mu^s.t> -}         [ ['c','o','m','b'] ]
                              `plural`     HaFCAL
                              `plural`     FiCAL,

    FuCL |< Iy                `adj`     {- <mu^s.tIy> -}       [ ['i','n','d','e','n','t','e','d'], ['j','a','g','g','e','d'], unwords [ ['c','o','m','b'], "-", ['l','i','k','e'] ] ],

    TaFCIL                    `noun`    {- <tam^sI.t> -}       [ ['c','o','m','b','i','n','g'], ['s','w','e','e','p','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    FACiL                     `noun`    {- <mA^si.t> -}        [ ['b','a','r','b','e','r'], ['h','a','i','r','d','r','e','s','s','e','r'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    FACiL |< aT               `noun`    {- <mA^si.taT> -}      [ unwords [ ['l','a','d','y','\'','s'], ['m','a','i','d'] ], ['c','o','i','f','f','e','u','s','e'] ]
                              `plural`     FACiL |< At,

    MuFaCCaL                  `adj`     {- <muma^s^sa.t> -}    [ ['c','o','m','b','e','d'] ] ]


cluster_38  = cluster

 |> "m ^s q" <| [

    FaCaL                     `verb`    {- <ma^saq> -}         [ ['s','t','r','e','t','c','h'], unwords [ ['t','e','a','r'], ['u','p'] ], ['w','h','i','p'] ]
                              `imperf`     FCuL,

    TaFaCCaL                  `verb`    {- <tama^s^saq> -}     [ unwords [ ['b','e'], ['s','h','r','e','d','d','e','d'] ] ],

    IFtaCaL                   `verb`    {- <imta^saq> -}       [ unwords [ ['s','n','a','t','c','h'], ['a','w','a','y'] ], ['u','n','s','h','e','a','t','h','e'] ],

    FaCL                      `noun`    {- <ma^sq> -}          [ ['m','o','d','e','l'], ['p','a','t','t','e','r','n'] ]
                              `plural`     HaFCAL,

    FiCL                      `noun`    {- <mi^sq> -}          [ ['s','l','e','n','d','e','r'], ['s','l','i','m'] ],

    FiCL |< aT                `noun`    {- <mi^sqaT> -}        [ ['w','o','o','l'], ['c','o','t','t','o','n'], ['r','a','g'] ]
                              `plural`     FiCaL,

    FaCIL                     `adj`     {- <ma^sIq> -}         [ ['s','l','e','n','d','e','r'], ['s','l','i','m'] ],

    FuCAL                     `noun`    {- <mu^sAq> -}         [ ['f','l','a','x'], ['h','e','m','p'] ],

    IFtiCAL                   `noun`    {- <imti^sAq> -}       [ ['s','l','e','n','d','e','r','n','e','s','s'] ]
                              `plural`     IFtiCAL |< At,

    MaFCUL                    `adj`     {- <mam^sUq> -}        [ ['s','l','e','n','d','e','r'], ['s','l','i','m'] ] ]


cluster_39  = cluster

 |> "m ^s k" <| [

    FACiL                     `noun`    {- <mA^sik> -}         [ unwords [ ['f','i','r','e'], ['t','o','n','g','s'] ] ]
                              `plural`     FawACiL ]


cluster_40  = cluster

 |> "m ^s m ^s" <| [

    KiRDiS                    `noun`    {- <mi^smi^s> -}       [ ['a','p','r','i','c','o','t'] ],

    KiRDiS |< Iy              `adj`     {- <mi^smi^sIy> -}     [ unwords [ ['a','p','r','i','c','o','t'], "-", ['c','o','l','o','r','e','d'] ] ] ]


cluster_41  = cluster

 |> ['m','u','^','s','m','u','l','l','A'] <| [

    _____                     `noun`    {- <mu^smullA> -}      [ ['m','e','d','l','a','r'] ] ]


cluster_42  = cluster

 |> "m .s r" <| [

    TaFaCCaL                  `verb`    {- <tama.s.sar> -}     [ unwords [ ['b','e'], ['E','g','y','p','t','i','a','n','i','z','e','d'] ], unwords [ ['b','e','c','o','m','e'], ['p','o','p','u','l','a','t','e','d'] ] ],

    FiCL                      `noun`    {- <mi.sr> -}          [ ['E','g','y','p','t'] ]
                           
    `excepts` Diptote,

    FiCL                      `noun`    {- <mi.sr> -}          [ ['m','e','t','r','o','p','o','l','i','s'] ]
                              `plural`     HaFCAL,

    FiCL |< Iy                `adj`     {- <mi.srIy> -}        [ ['E','g','y','p','t','i','a','n'] ],

    FiCL |< Iy                `noun`    {- <mi.srIy> -}        [ ['E','g','y','p','t','i','a','n'] ]
                              `plural`     FiCL |< Iy |< Un
                              `femini`     FiCL |< Iy |< aT,

    FiCL |< Iy |< At          `noun`    {- <mi.srIyAt> -}      [ ['E','g','y','p','t','o','l','o','g','y'] ]
                              `plural`     FiCL |< Iy |< At
                           
    `limited` "-------P--",

    FaCL |< Iy                `noun`    {- <ma.srIy> -}        [ ['M','a','s','r','y'] ],

    FiCL |< Iy                `noun`    {- <mi.srIy> -}        [ ['M','i','s','r','i'] ],

    FaCAL |< Iy               `adj`     {- <ma.sArIy> -}       [ ['m','o','n','e','y'], ['c','a','s','h'] ],

    FaCIL                     `noun`    {- <ma.sIr> -}         [ ['e','n','t','r','a','i','l','s'], ['g','u','t','s'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     FuCLAn
                              `plural`     FaCALIn,

    TaFCIL                    `noun`    {- <tam.sIr> -}        [ ['c','o','l','o','n','i','z','a','t','i','o','n'], ['s','e','t','t','l','e','m','e','n','t'] ]
                              `plural`     TaFCIL |< At,

    TaFCIL                    `noun`    {- <tam.sIr> -}        [ ['E','g','y','p','t','i','a','n','i','z','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MutaFaCCiL                `adj`     {- <mutama.s.sir> -}   [ ['E','g','y','p','t','i','a','n','i','z','e','d'] ] ]


cluster_43  = cluster

 |> "m .s l" <| [

    FaCaL                     `verb`    {- <ma.sal> -}         [ ['c','u','r','d','l','e'] ]
                              `imperf`     FCuL,

    FaCaL                     `verb`    {- <ma.sal> -}         [ ['s','t','r','a','i','n'], ['f','i','l','t','e','r'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <ma.sl> -}          [ ['w','h','e','y'] ],

    FaCL                      `noun`    {- <ma.sl> -}          [ ['v','a','c','c','i','n','e'], ['s','e','r','u','m'] ]
                              `plural`     HaFCAL,

    FaCL |< Iy                `adj`     {- <ma.slIy> -}        [ ['s','e','r','o','u','s'], ['s','e','r','u','m'] ] ]


cluster_44  = cluster

 |> "m .s m .s" <| [

    KaRDaS                    `verb`    {- <ma.sma.s> -}       [ ['s','u','c','k'], ['a','b','s','o','r','b'] ],

    TaKaRDaS                  `verb`    {- <tama.sma.s> -}     [ ['s','i','p'], unwords [ ['s','l','o','s','h'], ['i','n'], ['t','h','e'], ['m','o','u','t','h'] ] ] ]


cluster_45  = cluster

 |> ['m','U','.','d'] <| [

    _____ |< aT               `noun`    {- <mU.daT> -}         [ ['f','a','s','h','i','o','n'], ['s','t','y','l','e'] ] ]


cluster_46  = cluster

 |> "m .d r" <| [

    FaCaL                     `verb`    {- <ma.dar> -}         [ unwords [ ['t','u','r','n'], ['s','o','u','r'] ] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <ma.dir> -}         [ unwords [ ['t','u','r','n'], ['s','o','u','r'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `adj`     {- <ma.dir> -}         [ ['s','o','u','r'] ],

    FACiL                     `adj`     {- <mA.dir> -}         [ ['s','o','u','r'] ],

    FuCaL                     `noun`    {- <mu.dar> -}         [ unwords [ ['M','u','d','a','r'], "(", ['a','n','c','e','s','t','r','a','l'], ['A','r','a','b','s'], ")" ] ],

    FuCaL                     `noun`    {- <mu.dar> -}         [ ['M','u','d','a','r'] ] ]


cluster_47  = cluster

 |> "m .d .g" <| [

    FaCaL                     `verb`    {- <ma.da.g> -}        [ ['c','h','e','w'], ['s','l','u','r'] ]
                              `imperf`     FCaL
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCL                      `noun`    {- <ma.d.g> -}         [ ['c','h','e','w','i','n','g'], ['m','a','s','t','i','c','a','t','i','o','n'] ],

    FuCL |< aT                `noun`    {- <mu.d.gaT> -}       [ ['m','o','r','s','e','l'], ['b','i','t','e'] ]
                              `plural`     FuCaL,

    FuCAL |< aT               `noun`    {- <mu.dA.gaT> -}      [ ['c','h','e','w','e','d'], ['q','u','i','d'] ] ]


cluster_48  = cluster

 |> "m .d m .d" <| [

    KaRDaS                    `verb`    {- <ma.dma.d> -}       [ ['r','i','n','s','e'], ['g','a','r','g','l','e'] ],

    TaKaRDaS                  `verb`    {- <tama.dma.d> -}     [ ['r','i','n','s','e'], ['g','a','r','g','l','e'] ],

    KaRDaS |< aT              `noun`    {- <ma.dma.daT> -}     [ ['r','i','n','s','i','n','g'], ['g','a','r','g','l','i','n','g'] ] ]


cluster_49  = cluster

 |> "m .t r" <| [

    FaCaL                     `verb`    {- <ma.tar> -}         [ ['r','a','i','n'], ['s','h','o','w','e','r'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL
                              `masdar`     FaCaL,

    HaFCaL                    `verb`    {- <'am.tar> -}        [ ['r','a','i','n'], ['s','h','o','w','e','r'] ],

    IstaFCaL                  `verb`    {- <istam.tar> -}      [ unwords [ ['a','s','k'], ['f','o','r'], ['r','a','i','n'] ], unwords [ ['w','i','s','h'], ['f','o','r'] ], ['i','n','v','o','k','e'] ],

    FaCaL                     `noun`    {- <ma.tar> -}         [ ['r','a','i','n'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <ma.tar> -}         [ ['M','a','t','a','r'] ],

    FaCL |< aT                `noun`    {- <ma.traT> -}        [ unwords [ ['r','a','i','n'], ['s','h','o','w','e','r'] ], ['d','o','w','n','p','o','u','r'], ['r','a','i','n','y'], unwords [ ['a','b','o','u','n','d','i','n','g'], ['i','n'], ['r','a','i','n'] ] ]
                              `plural`     FaCaL |< At,

    FaCiL |< aT               `noun`    {- <ma.tiraT> -}       [ unwords [ ['r','a','i','n'], ['s','h','o','w','e','r'] ], ['d','o','w','n','p','o','u','r'], ['r','a','i','n','y'], unwords [ ['a','b','o','u','n','d','i','n','g'], ['i','n'], ['r','a','i','n'] ] ]
                              `plural`     FaCiL |< At,

    MiFCaL                    `noun`    {- <mim.tar> -}        [ ['r','a','i','n','c','o','a','t'] ]
                              `plural`     MaFACiL,

    FACiL                     `adj`     {- <mA.tir> -}         [ ['r','a','i','n','y'], unwords [ ['a','b','o','u','n','d','i','n','g'], ['i','n'], ['r','a','i','n'] ] ],

    MuFCiL                    `adj`     {- <mum.tir> -}        [ ['r','a','i','n','y'], unwords [ ['a','b','o','u','n','d','i','n','g'], ['i','n'], ['r','a','i','n'] ] ] ]


cluster_50  = cluster

 |> "m .t r n" <| [

    KaRDaS                    `verb`    {- <ma.tran> -}        [ unwords [ ['i','n','s','t','a','l','l'], ['a','s'], ['a','r','c','h','b','i','s','h','o','p'] ] ],

    TaKaRDaS                  `verb`    {- <tama.tran> -}      [ unwords [ ['b','e'], ['i','n','s','t','a','l','l','e','d'], ['a','s'], ['a','r','c','h','b','i','s','h','o','p'] ] ],

    KuRDAS                    `noun`    {- <mu.trAn> -}        [ ['a','r','c','h','b','i','s','h','o','p'], ['m','e','t','r','o','p','o','l','i','t','a','n'] ]
                              `plural`     KaRADIS
                              `plural`     KaRADiS |< aT,

    KiRDAS                    `noun`    {- <mi.trAn> -}        [ ['a','r','c','h','b','i','s','h','o','p'], ['m','e','t','r','o','p','o','l','i','t','a','n'] ]
                              `plural`     KaRADIS
                              `plural`     KaRADiS |< aT,

    KaRDAS                    `noun`    {- <ma.trAn> -}        [ ['a','r','c','h','b','i','s','h','o','p'], ['m','e','t','r','o','p','o','l','i','t','a','n'] ]
                              `plural`     KaRADIS
                              `plural`     KaRADiS |< aT,

    KuRDAS                    `noun`    {- <mu.trAn> -}        [ ['M','u','t','r','a','n'] ],

    KaRDaS |< aT              `noun`    {- <ma.tranaT> -}      [ ['a','r','c','h','b','i','s','h','o','p','r','i','c'] ],

    KaRDaS |< Iy |< aT        `noun`    {- <ma.tranIyaT> -}    [ ['a','r','c','h','b','i','s','h','o','p','r','i','c'], ['a','r','c','h','d','i','o','c','e','s','e'] ],

    KuRDAS |< Iy |< aT        `noun`    {- <mu.trAnIyaT> -}    [ ['a','r','c','h','b','i','s','h','o','p','r','i','c'], ['a','r','c','h','d','i','o','c','e','s','e'] ] ]


cluster_51  = cluster

 |> "m .t q" <| [

    TaFaCCaL                  `verb`    {- <tama.t.taq> -}     [ unwords [ ['s','m','a','c','k'], ['t','h','e'], ['l','i','p','s'] ] ] ]


cluster_52  = cluster

 |> "m .t l" <| [

    FaCaL                     `verb`    {- <ma.tal> -}         [ ['s','t','r','e','t','c','h'], ['f','o','r','g','e'], ['d','e','l','a','y'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <mA.tal> -}         [ ['d','e','l','a','y'], ['t','a','r','r','y'], ['t','e','m','p','o','r','i','z','e'] ],

    FaCUL                     `adj`     {- <ma.tUl> -}         [ ['d','e','l','a','y','i','n','g'], ['p','r','o','c','r','a','s','t','i','n','a','t','i','n','g'], ['s','l','o','w'] ],

    FaCIL |< aT               `noun`    {- <ma.tIlaT> -}       [ unwords [ ['w','r','o','u','g','h','t'], ['i','r','o','n'] ] ]
                              `plural`     FaCA'iL,

    MuFACaL |< aT             `noun`    {- <mumA.talaT> -}     [ ['d','e','l','a','y','i','n','g'], ['p','r','o','c','r','a','s','t','i','n','a','t','i','o','n'], ['p','o','s','t','p','o','n','e','m','e','n','t'] ] ]


cluster_53  = cluster

 |> ['m','A','.','z'] <| [

    _____ |< aT               `noun`    {- <mA.zaT> -}         [ ['a','p','p','e','t','i','z','e','r','s'] ] ]


cluster_54  = cluster

 |> ['m','a','`'] <| [

    _____ |< Iy |< aT         `noun`    {- <ma`IyaT> -}        [ ['c','o','m','p','a','n','y'], ['e','s','c','o','r','t'] ],

    _____ |<< "aN"            `adv`     {- <ma`aN> -}          [ ['t','o','g','e','t','h','e','r'] ],

    _____ |<< "a"             `prep`    {- <ma`a> -}           [ ['w','i','t','h'] ] ]


cluster_55  = cluster

 |> "m ` ^g" <| [

    TaFaCCaL                  `verb`    {- <tama``a^g> -}      [ ['m','e','a','n','d','e','r'] ] ]


cluster_56  = cluster

 |> "m ` d" <| [

    FaCaL                     `verb`    {- <ma`ad> -}          [ unwords [ ['h','a','v','e'], "a", ['g','a','s','t','r','i','c'], ['a','i','l','m','e','n','t'] ], unwords [ ['b','e'], ['d','y','s','p','e','p','t','i','c'] ] ]
                              `imperf`     FCaL,

    FaCiL |< aT               `noun`    {- <ma`idaT> -}        [ ['s','t','o','m','a','c','h'] ]
                              `plural`     FiCaL,

    FaCL |< Iy                `adj`     {- <ma`dIy> -}         [ ['g','a','s','t','r','i','c'], ['s','t','o','m','a','c','h'] ],

    MaFCUL                    `adj`     {- <mam`Ud> -}         [ unwords [ ['h','a','v','i','n','g'], "a", ['g','a','s','t','r','i','c'], ['a','i','l','m','e','n','t'] ], ['d','y','s','p','e','p','t','i','c'] ] ]


cluster_57  = cluster

 |> "m ` d n" <| [

    KaRDaS                    `verb`    {- <ma`dan> -}         [ unwords [ ['c','o','v','e','r'], ['w','i','t','h'], ['m','e','t','a','l'] ], ['m','i','n','e','r','a','l','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <ma`danaT> -}       [ unwords [ ['c','o','v','e','r','i','n','g'], ['w','i','t','h'], ['m','e','t','a','l'] ], ['m','i','n','e','r','a','l','i','z','i','n','g'] ] ]


cluster_58  = cluster

 |> "m ` r" <| [

    FaCiL                     `verb`    {- <ma`ir> -}          [ unwords [ ['f','a','l','l'], ['o','u','t'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'am`ar> -}         [ unwords [ ['b','e','c','o','m','e'], ['p','o','o','r'] ] ],

    TaFaCCaL                  `verb`    {- <tama``ar> -}       [ unwords [ ['f','a','l','l'], ['o','u','t'] ] ],

    FaCCAL                    `noun`    {- <ma``Ar> -}         [ ['b','r','a','g','g','a','r','t'], ['s','w','a','g','g','e','r','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_59  = cluster

 |> "m ` z" <| [

    FaCL                      `noun`    {- <ma`z> -}           [ ['g','o','a','t'] ]
                              `plural`     FaCIL
                              `plural`     HaFCuL
                              `femini`     FaCL |< aT,

    FaCaL                     `noun`    {- <ma`az> -}          [ ['g','o','a','t'] ]
                              `plural`     FaCIL
                              `plural`     HaFCuL
                              `femini`     FaCaL |< aT,

    FACiL                     `noun`    {- <mA`iz> -}          [ ['g','o','a','t'], unwords [ ['b','i','l','l','y'], ['g','o','a','t'] ] ]
                              `plural`     FawACiL,

    FACiL |< aT               `noun`    {- <mA`izaT> -}        [ unwords [ ['n','a','n','n','y'], ['g','o','a','t'] ] ]
                              `plural`     FACiL |< At,

    FaCCAL                    `noun`    {- <ma``Az> -}         [ ['g','o','a','t','h','e','r','d'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_60  = cluster

 |> "m ` s" <| [

    FaCaL                     `verb`    {- <ma`as> -}          [ ['r','u','b'], ['c','r','u','s','h'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <ma`s> -}           [ ['r','u','b','b','i','n','g'], ['c','r','u','s','h','i','n','g'] ] ]


cluster_61  = cluster

 |> "m ` .d" <| [

    FaCiL                     `verb`    {- <ma`i.d> -}         [ unwords [ ['b','e'], ['a','n','n','o','y','e','d'] ], ['r','e','s','e','n','t'] ]
                              `imperf`     FCaL,

    IFtaCaL                   `verb`    {- <imta`a.d> -}       [ unwords [ ['b','e'], ['a','n','n','o','y','e','d'] ], ['r','e','s','e','n','t'] ],

    IFtiCAL                   `noun`    {- <imti`A.d> -}       [ ['a','n','g','e','r'], ['a','g','i','t','a','t','i','o','n'], ['e','x','c','i','t','e','m','e','n','t'] ]
                              `plural`     IFtiCAL |< At,

    MuFtaCiL                  `adj`     {- <mumta`i.d> -}      [ ['a','n','n','o','y','e','d'], ['u','p','s','e','t'], ['e','x','c','i','t','e','d'] ] ]


cluster_62  = cluster

 |> "m ` .t" <| [

    FaCaL                     `verb`    {- <ma`a.t> -}         [ unwords [ ['t','e','a','r'], ['o','u','t'] ], unwords [ ['p','l','u','c','k'], ['o','u','t'] ] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <ma`.t> -}          [ unwords [ ['t','e','a','r','i','n','g'], ['o','u','t'] ], unwords [ ['p','l','u','c','k','i','n','g'], ['o','u','t'] ] ],

    FaCiL                     `adj`     {- <ma`i.t> -}         [ ['b','a','l','d'] ]
                              `plural`     FuCL
                              `plural`     HaFCaL
                              `femini`     FaCLA' ]


cluster_63  = cluster

 |> "m ` k" <| [

    FaCaL                     `verb`    {- <ma`ak> -}          [ ['r','u','b'] ]
                              `imperf`     FCaL ]


cluster_64  = cluster

 |> "m ` m `" <| [

    KaRDaS |< aT              `noun`    {- <ma`ma`aT> -}       [ ['c','o','n','f','u','s','i','o','n'], ['u','p','r','o','a','r'], ['t','u','r','m','o','i','l'], ['w','a','r'], ['b','a','t','t','l','e'] ]
                              `plural`     KaRADiS,

    KaRDaSAn                  `noun`    {- <ma`ma`An> -}       [ ['h','e','i','g','h','t'], ['c','l','i','m','a','x'], ['r','a','g','i','n','g'], ['t','u','r','m','o','i','l'] ],

    KaRDaS |< Iy              `noun`    {- <ma`ma`Iy> -}       [ unwords [ ['y','e','s'], "-", ['m','a','n'] ] ]
                              `plural`     KaRDaS |< Iy |< Un
                              `femini`     KaRDaS |< Iy |< aT ]


cluster_65  = cluster

 |> "m ` n" <| [

    HaFCaL                    `verb`    {- <'am`an> -}         [ unwords [ ['b','e'], ['a','s','s','i','d','u','o','u','s'] ], unwords [ ['b','e'], ['e','a','g','e','r'] ], unwords [ ['l','o','o','k'], ['c','l','o','s','e','l','y'] ] ],

    TaFaCCaL                  `verb`    {- <tama``an> -}       [ unwords [ ['b','e'], ['e','n','g','r','o','s','s','e','d'] ], unwords [ ['l','o','o','k'], ['c','l','o','s','e','l','y'] ] ],

    FACUL                     `noun`    {- <mA`Un> -}          [ ['i','n','s','t','r','u','m','e','n','t'], ['c','o','n','t','a','i','n','e','r'] ]
                              `plural`     FawACIL,

    FACUL |< aT               `noun`    {- <mA`UnaT> -}        [ ['b','a','r','g','e'] ]
                              `plural`     FawACIL,

    FACUL |<< "^g" |< Iy      `noun`    {- <mA`Un^gIy> -}      [ ['b','o','a','t','m','a','n'], ['b','a','r','g','e','m','a','n'] ]
                              `plural`     FACUL |<< "^g" |< Iy |< aT,

    HiFCAL                    `noun`    {- <'im`An> -}         [ unwords [ ['c','l','o','s','e'], ['e','x','a','m','i','n','a','t','i','o','n'] ], ['s','c','r','u','t','i','n','y'] ]
                              `plural`     HiFCAL |< At,

    TaFaCCuL                  `noun`    {- <tama``un> -}       [ unwords [ ['c','l','o','s','e'], ['e','x','a','m','i','n','a','t','i','o','n'] ], ['s','c','r','u','t','i','n','y'] ]
                              `plural`     TaFaCCuL |< At,

    MuFCiL                    `adj`     {- <mum`in> -}         [ ['e','n','g','r','o','s','s','e','d'], ['a','s','s','i','d','u','o','u','s'] ] ]


cluster_66  = cluster

 |> ['m','a','`','k','a','r','U','n'] <| [

    _____ |< aT               `noun`    {- <ma`karUnaT> -}     [ ['m','a','c','a','r','o','n','i'] ] ]


cluster_67  = cluster

 |> ['m','a','`','m','a','d','A','n'] <| [

    _____                     `noun`    {- <ma`madAn> -}       [ ['B','a','p','t','i','s','t'] ],

    _____ |< Iy               `adj`     {- <ma`madAnIy> -}     [ ['B','a','p','t','i','s','t'] ] ]


cluster_68  = cluster

 |> "m .g _t" <| [

    FuCAL                     `noun`    {- <mu.gA_t> -}        [ unwords [ ['r','o','o','t'], "(", ['p','l','a','n','t'], ")" ] ] ]


cluster_69  = cluster

 |> "m .g r" <| [

    FaCaL                     `noun`    {- <ma.gar> -}         [ ['r','e','d','d','i','s','h'] ],

    FuCL |< aT                `noun`    {- <mu.graT> -}        [ ['r','e','d','d','i','s','h'] ],

    HaFCaL                    `adj`     {- <'am.gar> -}        [ ['r','e','d','d','i','s','h'] ] ]


cluster_70  = cluster

 |> "m .g r b" <| [

    KaRDaS                    `verb`    {- <ma.grab> -}        [ ['M','o','r','o','c','c','a','n','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <ma.grabaT> -}      [ ['M','o','r','o','c','c','a','n','i','z','a','t','i','o','n'] ] ]


cluster_71  = cluster

 |> "m .g z" <| [

    FaCAL |< aT               `noun`    {- <ma.gAzaT> -}       [ ['s','h','o','p'], ['s','t','o','r','e'] ]
                              `plural`     FaCAL |< At ]


cluster_72  = cluster

 |> "m .g .s" <| [

    FaCaL                     `verb`    {- <ma.ga.s> -}        [ unwords [ ['h','a','v','e'], ['c','o','l','i','c'] ] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <ma.g.s> -}         [ ['c','o','l','i','c'] ],

    FaCaL                     `noun`    {- <ma.ga.s> -}        [ ['c','o','l','i','c'] ],

    FaCIL                     `adj`     {- <ma.gI.s> -}        [ ['c','o','l','i','c'] ],

    MaFCUL                    `adj`     {- <mam.gU.s> -}       [ ['c','o','l','i','c','k','y'] ] ]


cluster_73  = cluster

 |> "m .g .t" <| [

    FaCaL                     `verb`    {- <ma.ga.t> -}        [ ['s','t','r','e','t','c','h'], ['e','x','t','e','n','d'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <ma.g.ga.t> -}      [ ['s','t','r','e','t','c','h'], ['e','x','t','e','n','d'] ],

    MutaFaCCiL                `adj`     {- <mutama.g.gi.t> -}  [ ['e','l','a','s','t','i','c'], ['s','t','r','e','t','c','h','a','b','l','e'] ] ]


cluster_74  = cluster

 |> "m .g .t s" <| [

    KaRDaS                    `verb`    {- <ma.g.tas> -}       [ ['m','a','g','n','e','t','i','z','e'] ],

    TaKaRDaS                  `verb`    {- <tama.g.tas> -}     [ unwords [ ['b','e'], ['m','a','g','n','e','t','i','z','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <ma.g.tasaT> -}     [ ['m','a','g','n','e','t','i','s','m'], ['m','a','g','n','e','t','i','z','a','t','i','o','n'] ],

    MuKaRDaS                  `adj`     {- <muma.g.tas> -}     [ ['m','a','g','n','e','t','i','z','e','d'], ['m','a','g','n','e','t','i','c'] ] ]


cluster_75  = cluster

 |> "m .g l" <| [

    FaCUL                     `noun`    {- <ma.gUl> -}         [ ['M','o','n','g','o','l','s'], ['M','o','g','u','l','s'] ],

    FuCUL                     `noun`    {- <mu.gUl> -}         [ ['M','o','n','g','o','l','s'], ['M','o','g','u','l','s'] ],

    FaCUL |< Iy               `adj`     {- <ma.gUlIy> -}       [ ['M','o','n','g','o','l'], ['M','o','g','u','l'] ] ]


cluster_76  = cluster

 |> "m .g n" <| [

    FuCL |< aT                `noun`    {- <mu.gnaT> -}        [ ['m','a','h','o','g','a','n','y'] ] ]


cluster_77  = cluster

 |> "m .g n .t" <| [

    KaRDaS                    `verb`    {- <ma.gna.t> -}       [ ['m','a','g','n','e','t','i','z','e'] ],

    TaKaRDaS                  `verb`    {- <tama.gna.t> -}     [ unwords [ ['b','e'], ['m','a','g','n','e','t','i','z','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <ma.gna.taT> -}     [ ['m','a','g','n','e','t','i','s','m'], ['m','a','g','n','e','t','i','z','a','t','i','o','n'] ],

    MuKaRDaS                  `adj`     {- <muma.gna.t> -}     [ ['m','a','g','n','e','t','i','z','e','d'], ['m','a','g','n','e','t','i','c'] ] ]


cluster_78  = cluster

 |> ['m','I','.','g','A','h','I','r','t','z'] <| [

    _____                     `noun`    {- <mI.gAhIrtz> -}     [ ['m','e','g','a','h','e','r','t','z'] ] ]


cluster_79  = cluster

 |> ['m','a','.','g','n','I','s'] <| [

    _____ |< iyA              `noun`    {- <ma.gnIsiyA> -}     [ ['m','a','g','n','e','s','i','a'] ],

    _____ |< Iy               `adj`     {- <ma.gnIsIy> -}      [ ['m','a','g','n','e','s','i','u','m'] ] ]


cluster_80  = cluster

 |> ['m','a','.','g','n','a','.','t','I','s'] <| [

    _____                     `noun`    {- <ma.gna.tIs> -}     [ ['m','a','g','n','e','t'] ],

    _____ |< Iy               `adj`     {- <ma.gna.tIsIy> -}   [ ['m','a','g','n','e','t','i','c'], ['h','y','p','n','o','t','i','c'] ],

    _____ |< Iy |< aT         `noun`    {- <ma.gna.tIsIyaT> -} [ ['m','a','g','n','e','t','i','s','m'] ] ]


cluster_81  = cluster

 |> "m q t" <| [

    FaCaL                     `verb`    {- <maqat> -}          [ ['d','e','t','e','s','t'], ['a','b','h','o','r'] ]
                              `imperf`     FCuL,

    FaCuL                     `verb`    {- <maqut> -}          [ unwords [ ['b','e'], ['l','o','a','t','h','s','o','m','e'] ], unwords [ ['b','e'], ['h','a','t','e','d'] ] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <maqqat> -}         [ ['d','e','t','e','s','t'], ['a','b','h','o','r'], unwords [ ['m','a','k','e'], ['d','e','t','e','s','t'] ] ],

    FaCL                      `noun`    {- <maqt> -}           [ ['h','a','t','r','e','d'], ['a','v','e','r','s','i','o','n'] ],

    FaCIL                     `adj`     {- <maqIt> -}          [ ['h','a','t','e','d'], ['l','o','a','t','h','s','o','m','e'] ],

    MaFCUL                    `adj`     {- <mamqUt> -}         [ ['h','a','t','e','d'], ['l','o','a','t','h','s','o','m','e'] ] ]


cluster_82  = cluster

 |> "m q `" <| [

    FaCaL                     `verb`    {- <maqa`> -}          [ unwords [ ['d','r','i','n','k'], ['a','v','i','d','l','y'] ] ]
                              `imperf`     FCaL,

    IFtaCaL                   `verb`    {- <imtaqa`> -}        [ unwords [ ['t','u','r','n'], ['p','a','l','e'] ] ],

    MuFtaCaL                  `adj`     {- <mumtaqa`> -}       [ ['p','a','l','e'], ['p','a','l','l','i','d'] ] ]


cluster_83  = cluster

 |> "m q l" <| [

    FaCaL                     `verb`    {- <maqal> -}          [ unwords [ ['l','o','o','k'], ['a','t'] ], ['r','e','g','a','r','d'] ]
                              `imperf`     FCuL,

    FuCL |< aT                `noun`    {- <muqlaT> -}         [ ['e','y','e'], ['e','y','e','b','a','l','l'] ]
                              `plural`     FuCaL ]


cluster_84  = cluster

 |> "m q n" <| [

    FaCL |< aT                `noun`    {- <maqnaT> -}         [ ['M','a','q','n','e'] ] ]


cluster_85  = cluster

 |> "m q n q" <| [

    KaRADiS                   `noun`    {- <maqAniq> -}        [ ['s','a','u','s','a','g','e','s'], unwords [ ['m','u','t','t','o','n'], ['s','a','u','s','a','g','e','s'] ] ]
                              `plural`     KaRADiS
                           
    `limited` "-------P--" ]


cluster_86  = cluster

 |> ['m','a','q','d','U','n'] <| [

    _____ |< Iy               `noun`    {- <maqdUnIy> -}       [ ['M','a','c','e','d','o','n','i','a','n'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT,

    _____ |< Iy               `adj`     {- <maqdUnIy> -}       [ ['M','a','c','e','d','o','n','i','a','n'] ] ]


cluster_87  = cluster

 |> ['m','a','q','d','U','n','i','s'] <| [

    _____                     `noun`    {- <maqdUnis> -}       [ ['p','a','r','s','l','e','y'] ] ]


cluster_88  = cluster

 |> ['m','I','k','A'] <| [

    _____                     `noun`    {- <mIkA> -}           [ ['m','i','c','a'] ] ]


cluster_89  = cluster

 |> "m k _t" <| [

    FaCaL                     `verb`    {- <maka_t> -}         [ ['r','e','m','a','i','n'], ['r','e','s','i','d','e'] ]
                              `imperf`     FCuL
                              `masdar`     FaCL
                              `masdar`     FuCUL,

    FaCL                      `noun`    {- <mak_t> -}          [ ['r','e','m','a','i','n','i','n','g'], ['r','e','s','i','d','i','n','g'] ],

    FuCUL                     `noun`    {- <mukU_t> -}         [ ['r','e','s','i','d','i','n','g'] ] ]


cluster_90  = cluster

 |> "m k d m" <| [

    KaRDaS                    `verb`    {- <makdam> -}         [ ['m','a','c','a','d','a','m','i','z','e'], ['p','a','v','e'] ] ]

 |> ['m','a','k','a','d','A','m'] <| [

    _____                     `noun`    {- <makadAm> -}        [ ['m','a','c','a','d','a','m'], ['p','a','v','e','m','e','n','t'] ] ]


cluster_91  = cluster

 |> "m k r" <| [

    FaCaL                     `verb`    {- <makar> -}          [ ['d','e','c','e','i','v','e'], unwords [ ['d','o','u','b','l','e'], "-", ['c','r','o','s','s'] ] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <mAkar> -}          [ unwords [ ['t','r','y'], ['t','o'], ['d','e','c','e','i','v','e'] ], unwords [ ['t','r','y'], ['t','o'], ['d','o','u','b','l','e'], "-", ['c','r','o','s','s'] ] ],

    FaCL                      `noun`    {- <makr> -}           [ ['d','e','c','e','p','t','i','o','n'], unwords [ ['d','o','u','b','l','e'], "-", ['d','e','a','l','i','n','g'] ] ],

    FaCL |< aT                `noun`    {- <makraT> -}         [ ['s','t','r','a','t','a','g','e','m'], ['r','u','s','e'] ],

    FaCCAL                    `noun`    {- <makkAr> -}         [ ['s','w','i','n','d','l','e','r'], ['i','m','p','o','s','t','o','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `adj`     {- <makkAr> -}         [ ['c','u','n','n','i','n','g'], ['s','l','y'] ],

    FaCUL                     `noun`    {- <makUr> -}          [ ['s','w','i','n','d','l','e','r'], ['i','m','p','o','s','t','o','r'] ]
                              `plural`     FaCUL |< Un
                              `femini`     FaCUL |< aT,

    FaCUL                     `adj`     {- <makUr> -}          [ ['c','u','n','n','i','n','g'], ['s','l','y'] ],

    FACiL                     `adj`     {- <mAkir> -}          [ ['s','l','y'], ['c','u','n','n','i','n','g'] ]
                              `plural`     FaCaL |< aT ]


cluster_92  = cluster

 |> ['m','a','k','a','r','U','n'] <| [

    _____ |< aT               `noun`    {- <makarUnaT> -}      [ ['m','a','c','a','r','o','n','i'] ] ]


cluster_93  = cluster

 |> "m k s" <| [

    FaCaL                     `verb`    {- <makas> -}          [ unwords [ ['c','o','l','l','e','c','t'], ['t','a','x','e','s'] ] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <makkas> -}         [ unwords [ ['c','o','l','l','e','c','t'], ['t','a','x','e','s'] ] ],

    FACaL                     `verb`    {- <mAkas> -}          [ unwords [ ['h','a','g','g','l','e'], ['w','i','t','h'] ], unwords [ ['b','a','r','g','a','i','n'], ['w','i','t','h'] ] ],

    FaCL                      `noun`    {- <maks> -}           [ unwords [ ['e','x','c','i','s','e'], ['t','a','x'] ], unwords [ ['c','u','s','t','o','m','s'], ['d','u','t','y'] ] ]
                              `plural`     FuCUL,

    FaCCAL                    `noun`    {- <makkAs> -}         [ unwords [ ['t','a','x'], ['c','o','l','l','e','c','t','o','r'] ] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT ]


cluster_94  = cluster

 |> ['m','u','k','a','l','l','A'] <| [

    _____                     `noun`    {- <mukallA> -}        [ ['M','u','k','a','l','l','a'] ] ]


cluster_95  = cluster

 |> "m k n" <| [

    FaCCaL                    `verb`    {- <makkan> -}         [ ['e','n','a','b','l','e'], unwords [ ['m','a','k','e'], ['p','o','s','s','i','b','l','e'], ['f','o','r'] ] ],

    HaFCaL                    `verb`    {- <'amkan> -}         [ unwords [ ['b','e'], ['p','o','s','s','i','b','l','e'] ], unwords [ ['m','a','k','e'], ['p','o','s','s','i','b','l','e'], ['f','o','r'] ] ],

    TaFaCCaL                  `verb`    {- <tamakkan> -}       [ unwords [ ['b','e'], ['c','a','p','a','b','l','e'], ['o','f'] ], unwords [ ['b','e'], ['a','b','l','e'], ['t','o'] ] ],

    IstaFCaL                  `verb`    {- <istamkan> -}       [ unwords [ ['t','a','k','e'], ['p','o','s','s','e','s','s','i','o','n'], ['o','f'] ], unwords [ ['b','e'], ['c','a','p','a','b','l','e'], ['o','f'] ] ],

    FuCL |< aT                `noun`    {- <muknaT> -}         [ ['p','o','w','e','r'], ['c','a','p','a','b','i','l','i','t','y'] ]
                              `plural`     FaCiL |< aT,

    FaCIL                     `adj`     {- <makIn> -}          [ ['s','t','r','o','n','g'], ['i','n','f','l','u','e','n','t','i','a','l'] ]
                              `plural`     FuCaLA',

    TaFCIL                    `noun`    {- <tamkIn> -}         [ ['e','n','a','b','l','i','n','g'], unwords [ ['m','a','k','i','n','g'], ['p','o','s','s','i','b','l','e'] ], ['s','t','r','e','n','g','t','h','e','n','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'imkAn> -}         [ ['p','o','s','s','i','b','i','l','i','t','y'], ['c','a','p','a','b','i','l','i','t','y'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy |< aT        `noun`    {- <'imkAnIyaT> -}     [ ['p','o','s','s','i','b','i','l','i','t','y'], ['c','a','p','a','b','i','l','i','t','y'] ]
                              `plural`     HiFCAL |< Iy |< At,

    TaFaCCuL                  `noun`    {- <tamakkun> -}       [ ['c','a','p','a','b','i','l','i','t','y'], ['c','o','n','t','r','o','l'] ]
                              `plural`     TaFaCCuL |< At,

    FACiL                     `adj`     {- <mAkin> -}          [ ['s','t','r','o','n','g'], ['e','n','d','u','r','i','n','g'] ],

    MuFCiL                    `adj`     {- <mumkin> -}         [ ['p','o','s','s','i','b','l','e'] ],

    MutaFaCCiL                `adj`     {- <mutamakkin> -}     [ ['p','r','o','f','i','c','i','e','n','t'], ['a','d','e','p','t'] ] ]

 |> "m k n" <| [

    FaCiL |< aT               `noun`    {- <makinaT> -}        [ ['m','a','c','h','i','n','e'] ]
                              `plural`     FaCA'iL
                              `plural`     FaCiL |< At,

    FACIL |< aT               `noun`    {- <mAkInaT> -}        [ ['m','a','c','h','i','n','e'] ]
                              `plural`     FACIL |< At,

    FaCaL |< Iy               `adj`     {- <makanIy> -}        [ ['m','e','c','h','a','n','i','c','a','l'] ] ]


cluster_96  = cluster

 |> ['m','I','k','A','n','i','z','m'] <| [

    _____                     `noun`    {- <mIkAnizm> -}       [ ['m','e','c','h','a','n','i','s','m'], ['m','e','c','h','a','n','i','c','s'] ] ]


cluster_97  = cluster

 |> "m k n k" <| [

    KaRDaS                    `verb`    {- <maknak> -}         [ ['m','e','c','h','a','n','i','z','e'], ['m','o','t','o','r','i','z','e'] ],

    KaRDaS |< aT              `noun`    {- <maknakaT> -}       [ ['m','e','c','h','a','n','i','z','a','t','i','o','n'], ['m','o','t','o','r','i','z','a','t','i','o','n'] ] ]


cluster_98  = cluster

 |> ['m','I','k','A','n','I','k'] <| [

    _____ |< Iy |< aT         `noun`    {- <mIkAnIkIyaT> -}    [ ['m','e','c','h','a','n','i','c','s'] ] ]


cluster_99  = cluster

 |> ['m','I','k','r','U','b'] <| [

    _____                     `noun`    {- <mIkrUb> -}         [ ['m','i','c','r','o','b','e'] ]
                              `plural`     _____ |< At ]


cluster_100 = cluster

 |> ['m','I','k','r','U','b','A','.','s'] <| [

    _____                     `noun`    {- <mIkrUbA.s> -}      [ ['m','i','c','r','o','b','u','s'] ]
                              `plural`     _____ |< At ]


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
