
module Elixir.Data.Sunny.Regular.O (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> "l ^g l ^g" <| [

    KaRDaS                    `verb`    {- <la^gla^g> -}       [ ['s','t','a','m','m','e','r'], ['s','t','u','t','t','e','r'] ],

    TaKaRDaS                  `verb`    {- <tala^gla^g> -}     [ ['s','t','a','m','m','e','r'], ['s','t','u','t','t','e','r'] ],

    KaRDAS                    `adj`     {- <la^glA^g> -}       [ ['s','t','a','m','m','e','r','e','r'], ['s','t','u','t','t','e','r','e','r'] ],

    MuKaRDaS                  `adj`     {- <mula^gla^g> -}     [ ['r','e','i','t','e','r','a','t','e','d'], ['r','e','p','e','a','t','e','d'] ] ]


cluster_2   = cluster

 |> "l ^g m" <| [

    FaCaL                     `verb`    {- <la^gam> -}         [ ['s','e','w'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <la^g^gam> -}       [ ['r','e','s','t','r','a','i','n'], ['b','r','i','d','l','e'] ],

    HaFCaL                    `verb`    {- <'al^gam> -}        [ ['r','e','s','t','r','a','i','n'], ['b','r','i','d','l','e'] ],

    IFtaCaL                   `verb`    {- <ilta^gam> -}       [ unwords [ ['b','e'], ['b','r','i','d','l','e','d'] ], unwords [ ['b','e'], ['h','a','r','n','e','s','s','e','d'] ] ],

    FiCAL                     `noun`    {- <li^gAm> -}         [ ['r','e','i','n'], ['b','r','i','d','l','e'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     FuCuL,

    MaFCUL                    `adj`     {- <mal^gUm> -}        [ ['b','r','i','d','l','e','d'], ['h','a','r','n','e','s','s','e','d'] ],

    MuFCaL                    `adj`     {- <mul^gam> -}        [ ['b','r','i','d','l','e','d'], ['h','a','r','n','e','s','s','e','d'] ],

    TaFCIL                    `noun`    {- <tal^gIm> -}        [ ['r','e','s','t','r','a','i','n','i','n','g'], ['h','a','r','n','e','s','s','i','n','g'], ['b','r','i','d','l','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_3   = cluster

 |> "l ^g n" <| [

    FaCiL                     `verb`    {- <la^gin> -}         [ ['a','d','h','e','r','e'], ['c','l','i','n','g'], ['s','t','i','c','k'] ]
                              `imperf`     FCaL,

    FaCL |< aT                `noun`    {- <la^gnaT> -}        [ ['c','o','u','n','c','i','l'], ['c','o','m','m','i','t','t','e','e'], ['c','o','m','m','i','s','s','i','o','n'] ]
                              `plural`     FiCAL
                              `plural`     FiCaL
                              `plural`     FaCaL |< At,

    FuCayL                    `adj`     {- <lu^gayn> -}        [ ['s','i','l','v','e','r'], ['s','i','l','v','e','r','y'] ] ]


cluster_4   = cluster

 |> "l .h b" <| [

    FACiL                     `adj`     {- <lA.hib> -}         [ ['p','a','s','s','a','b','l','e'], unwords [ ['o','p','e','n'], "(", ['r','o','a','d'], ")" ] ]
                              `plural`     FawACiL,

    FACiL                     `noun`    {- <lA.hib> -}         [ ['e','l','e','c','t','r','o','d','e'] ]
                              `plural`     FawACiL ]


cluster_5   = cluster

 |> "l .h ^g" <| [

    FaCaL                     `noun`    {- <la.ha^g> -}        [ ['L','a','h','e','j'], ['L','a','h','i','j'] ] ]


cluster_6   = cluster

 |> "l .h d" <| [

    FaCaL                     `verb`    {- <la.had> -}         [ ['b','u','r','y'], ['a','p','o','s','t','a','t','i','z','e'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'al.had> -}        [ ['a','p','o','s','t','a','t','i','z','e'], unwords [ ['b','e','c','o','m','e'], ['a','n'], ['a','t','h','e','i','s','t'] ] ],

    IFtaCaL                   `verb`    {- <ilta.had> -}       [ ['d','e','v','i','a','t','e'], ['a','p','o','s','t','a','t','i','z','e'] ],

    FaCL                      `noun`    {- <la.hd> -}          [ ['t','o','m','b'], ['g','r','a','v','e'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FaCaL                     `noun`    {- <la.had> -}         [ ['L','a','h','a','d'] ],

    FaCL |< Iy                `adj`     {- <la.hdIy> -}        [ ['L','a','h','d','i','t','e','s'], unwords [ ['L','a','h','a','d'], ['p','a','r','t','i','s','a','n','s'] ] ],

    FaCUL                     `noun`    {- <la.hUd> -}         [ ['L','a','h','o','u','d'] ],

    FaCCAL                    `noun`    {- <la.h.hAd> -}       [ ['g','r','a','v','e','d','i','g','g','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    HiFCAL                    `noun`    {- <'il.hAd> -}        [ ['a','t','h','e','i','s','m'], ['a','p','o','s','t','a','s','y'] ],

    HiFCAL |< Iy              `adj`     {- <'il.hAdIy> -}      [ ['a','t','h','e','i','s','t'], ['g','o','d','l','e','s','s'] ],

    MuFCiL                    `noun`    {- <mul.hid> -}        [ ['a','t','h','e','i','s','t'], ['h','e','r','e','t','i','c'] ]
                              `plural`     MuFCiL |< Un
                              `plural`     MaFACiL |< aT
                              `femini`     MuFCiL |< aT ]


cluster_7   = cluster

 |> "l .h s" <| [

    FaCaL                     `verb`    {- <la.has> -}         [ ['d','e','v','o','u','r'], unwords [ ['e','a','t'], ['a','w','a','y'], ['a','t'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `verb`    {- <la.his> -}         [ unwords [ ['l','i','c','k'], ['u','p'] ], unwords [ ['l','a','p'], ['u','p'] ] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <la.hs> -}          [ unwords [ ['l','a','p','p','i','n','g'], ['u','p'] ], unwords [ ['e','a','t','i','n','g'], ['a','w','a','y'], ['a','t'] ] ],

    FaCL |< aT                `noun`    {- <la.hsaT> -}        [ ['l','i','c','k','i','n','g'], ['l','a','p','p','i','n','g'] ],

    MaFCaL                    `noun`    {- <mal.has> -}        [ ['l','i','c','k','i','n','g'], ['l','a','p','p','i','n','g'] ],

    MaFCUL                    `adj`     {- <mal.hUs> -}        [ ['l','i','c','k','e','d'], ['i','m','b','e','c','i','l','e'] ] ]


cluster_8   = cluster

 |> "l .h .z" <| [

    FaCaL                     `verb`    {- <la.ha.z> -}        [ ['p','e','r','c','e','i','v','e'], ['r','e','g','a','r','d'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FaCaLAn,

    FACaL                     `verb`    {- <lA.ha.z> -}        [ ['n','o','t','i','c','e'], ['o','b','s','e','r','v','e'] ],

    FaCL                      `noun`    {- <la.h.z> -}         [ ['l','o','o','k'], ['g','l','a','n','c','e'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <la.h.zaT> -}       [ ['m','o','m','e','n','t'], ['i','n','s','t','a','n','t'] ]
                              `plural`     FaCaL |< At,

    FaCL |< aT |<< "a" |<< "'i_diN" `adv`     {- <la.h.zaTa'i_diN> -} [ unwords [ ['a','t'], ['t','h','a','t'], ['m','o','m','e','n','t'] ] ],

    MaFCaL                    `noun`    {- <mal.ha.z> -}       [ ['o','b','s','e','r','v','a','t','i','o','n'], ['r','e','m','a','r','k'], ['s','t','a','t','e','m','e','n','t'] ]
                              `plural`     MaFACiL,

    MuFACaL |< aT             `noun`    {- <mulA.ha.zaT> -}    [ ['o','b','s','e','r','v','a','t','i','o','n'], ['r','e','m','a','r','k'], ['g','u','i','d','e','l','i','n','e','s'] ]
                              `plural`     MuFACaL |< At,

    FACiL |< aT               `noun`    {- <lA.hi.zaT> -}      [ ['g','l','a','n','c','e'], ['l','o','o','k'] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <mal.hU.z> -}       [ ['n','o','t','i','c','e','a','b','l','e'], ['o','b','s','e','r','v','a','b','l','e'], ['r','e','m','a','r','k','a','b','l','e'] ],

    MaFCUL |< aT              `noun`    {- <mal.hU.zaT> -}     [ ['o','b','s','e','r','v','a','t','i','o','n'], ['n','o','t','e'], ['r','e','m','a','r','k'] ]
                              `plural`     MaFCUL |< At,

    MuFACiL                   `noun`    {- <mulA.hi.z> -}      [ ['o','b','s','e','r','v','e','r'], ['s','u','p','e','r','v','i','s','o','r'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFACaL                   `adj`     {- <mulA.ha.z> -}      [ ['e','v','i','d','e','n','t'], ['o','b','v','i','o','u','s'] ] ]


cluster_9   = cluster

 |> "l .h f" <| [

    FaCaL                     `verb`    {- <la.haf> -}         [ ['w','r','a','p'], ['c','o','v','e','r'] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'al.haf> -}        [ ['w','r','a','p'], ['c','o','v','e','r'], ['i','m','p','o','r','t','u','n','e'] ],

    TaFaCCaL                  `verb`    {- <tala.h.haf> -}     [ unwords [ ['b','e'], ['w','r','a','p','p','e','d'] ] ],

    IFtaCaL                   `verb`    {- <ilta.haf> -}       [ unwords [ ['b','e'], ['w','r','a','p','p','e','d'] ] ],

    FiCL                      `noun`    {- <li.hf> -}          [ unwords [ ['f','o','o','t'], ['o','f'], "a", ['m','o','u','n','t','a','i','n'] ] ],

    FiCAL                     `noun`    {- <li.hAf> -}         [ ['c','o','v','e','r'], ['b','l','a','n','k','e','t'], ['w','r','a','p'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     FuCuL,

    MiFCaL                    `noun`    {- <mil.haf> -}        [ ['c','o','v','e','r'], ['b','l','a','n','k','e','t'], ['w','r','a','p'] ]
                              `plural`     MaFACiL,

    HiFCAL                    `noun`    {- <'il.hAf> -}        [ ['i','m','p','o','r','t','u','n','i','t','y'] ]
                              `plural`     HiFCAL |< At,

    MuFtaCiL                  `adj`     {- <multa.hif> -}      [ ['w','r','a','p','p','e','d'], ['c','o','v','e','r','e','d'] ] ]


cluster_10  = cluster

 |> "l .h q" <| [

    FaCiL                     `verb`    {- <la.hiq> -}         [ ['f','o','l','l','o','w'], unwords [ ['b','e'], ['a','t','t','a','c','h','e','d'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <lA.haq> -}         [ unwords [ ['g','o'], ['a','f','t','e','r'] ], ['j','o','i','n'], ['p','e','r','s','e','c','u','t','e'] ],

    HaFCaL                    `verb`    {- <'al.haq> -}        [ ['a','t','t','a','c','h'], ['a','p','p','e','n','d'], ['e','n','r','o','l','l'] ],

    TaFACaL                   `verb`    {- <talA.haq> -}       [ unwords [ ['f','o','l','l','o','w'], ['s','u','c','c','e','s','s','i','v','e','l','y'] ] ],

    IFtaCaL                   `verb`    {- <ilta.haq> -}       [ ['e','n','r','o','l','l'], ['e','n','l','i','s','t'], unwords [ ['b','e'], ['a','t','t','a','c','h','e','d'] ] ],

    IstaFCaL                  `verb`    {- <istal.haq> -}      [ ['a','n','n','e','x'] ],

    FaCaL                     `noun`    {- <la.haq> -}         [ unwords [ ['a','l','l','u','v','i','a','l'], ['s','o','i','l'] ] ]
                              `plural`     HaFCAL,

    FaCaL |< Iy               `adj`     {- <la.haqIy> -}       [ ['a','l','l','u','v','i','a','l'] ],

    FiCAL                     `noun`    {- <li.hAq> -}         [ ['m','e','m','b','e','r','s','h','i','p'], ['e','n','r','o','l','l','m','e','n','t'] ],

    MuFACaL |< aT             `noun`    {- <mulA.haqaT> -}     [ ['p','e','r','s','e','c','u','t','i','o','n'], ['p','u','r','s','u','i','t'] ],

    HiFCAL                    `noun`    {- <'il.hAq> -}        [ ['j','o','i','n','i','n','g'], ['e','n','r','o','l','l','m','e','n','t'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL                    `noun`    {- <'il.hAq> -}        [ ['a','p','p','e','n','d','i','n','g'], ['a','n','n','e','x','a','t','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL                    `noun`    {- <'il.hAq> -}        [ ['c','a','u','s','i','n','g'], ['i','n','f','l','i','c','t','i','n','g'] ],

    IFtiCAL                   `noun`    {- <ilti.hAq> -}       [ ['e','n','t','e','r','i','n','g'], ['j','o','i','n','i','n','g'], ['a','f','f','i','l','i','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IstiFCAL                  `noun`    {- <istil.hAq> -}      [ ['a','n','n','e','x','a','t','i','o','n'] ]
                              `plural`     IstiFCAL |< At,

    FACiL                     `adj`     {- <lA.hiq> -}         [ ['l','a','t','e','r'], ['s','o','o','n'], ['s','u','b','s','e','q','u','e','n','t'], ['a','t','t','a','c','h','e','d'], ['j','o','i','n','e','d'] ],

    FACiL |< aT               `noun`    {- <lA.hiqaT> -}       [ ['a','d','j','u','n','c','t'], ['a','p','p','e','n','d','a','g','e'] ]
                              `plural`     FawACiL,

    MuFCaL                    `noun`    {- <mul.haq> -}        [ ['a','t','t','a','c','h','e'] ]
                              `plural`     MuFCaL |< Un
                              `femini`     MuFCaL |< aT,

    MuFCaL                    `adj`     {- <mul.haq> -}        [ ['a','p','p','e','n','d','e','d'], ['a','d','j','a','c','e','n','t'], ['a','n','n','e','x','e','d'] ],

    MuFCaL                    `noun`    {- <mul.haq> -}        [ ['a','p','p','e','n','d','i','x'], ['a','d','d','e','n','d','u','m'] ]
                              `plural`     MaFACiL
                              `plural`     MuFCaL |< At,

    MuFCaL |< Iy |< aT        `noun`    {- <mul.haqIyaT> -}    [ unwords [ ['a','t','t','a','c','h','e','\'','s'], ['s','e','c','t','i','o','n'] ] ],

    MuFACiL                   `noun`    {- <mulA.hiq> -}       [ ['f','o','l','l','o','w','e','r'], ['c','o','m','p','a','n','i','o','n'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MutaFACiL                 `adj`     {- <mutalA.hiq> -}     [ ['s','u','c','c','e','s','s','i','v','e'], ['c','o','n','s','e','c','u','t','i','v','e'], ['c','o','n','t','i','n','u','o','u','s'] ] ]


cluster_11  = cluster

 |> "l .h m" <| [

    FaCaL                     `verb`    {- <la.ham> -}         [ ['w','e','l','d'], ['s','o','l','d','e','r'] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <la.him> -}         [ unwords [ ['g','e','t'], ['s','t','u','c','k'] ] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <la.h.ham> -}       [ ['s','o','l','d','e','r'], ['w','e','l','d'] ],

    TaFACaL                   `verb`    {- <talA.ham> -}       [ unwords [ ['c','l','i','n','g'], ['t','o','g','e','t','h','e','r'] ], unwords [ ['h','o','l','d'], ['f','i','r','m','l','y'], ['t','o','g','e','t','h','e','r'] ] ],

    IFtaCaL                   `verb`    {- <ilta.ham> -}       [ unwords [ ['c','l','i','n','g'], ['t','o','g','e','t','h','e','r'] ], unwords [ ['h','o','l','d'], ['f','i','r','m','l','y'], ['t','o','g','e','t','h','e','r'] ] ],

    FaCL                      `noun`    {- <la.hm> -}          [ ['L','a','h','m'] ],

    FaCL                      `noun`    {- <la.hm> -}          [ ['m','e','a','t'], ['f','l','e','s','h'] ]
                              `plural`     FiCAL
                              `plural`     FuCUL,

    FuCL |< aT                `noun`    {- <lu.hmaT> -}        [ unwords [ ['d','e','c','i','s','i','v','e'], ['f','a','c','t','o','r'] ], ['k','i','n','s','h','i','p'] ],

    FaCL |< Iy |< aT          `noun`    {- <la.hmIyaT> -}      [ ['c','o','n','j','u','n','c','t','i','v','a'] ],

    FaCiL                     `adj`     {- <la.him> -}         [ ['c','o','r','p','u','l','e','n','t'] ],

    FiCAL                     `noun`    {- <li.hAm> -}         [ ['s','o','l','d','e','r','i','n','g'], ['w','e','l','d','i','n','g'] ]
                              `plural`     FiCAL |< At,

    FaCCAL                    `noun`    {- <la.h.hAm> -}       [ ['b','u','t','c','h','e','r'], ['w','e','l','d','e','r'] ]
                              `plural`     FaCCAL |< Un
                              `femini`     FaCCAL |< aT,

    FaCCAL                    `noun`    {- <la.h.hAm> -}       [ ['L','a','h','h','a','m'] ],

    FaCIL                     `adj`     {- <la.hIm> -}         [ ['f','l','e','s','h','y'] ],

    FaCAL |< aT               `noun`    {- <la.hAmaT> -}       [ ['c','o','r','p','u','l','e','n','c','e'] ],

    MaFCaL |< aT              `noun`    {- <mal.hamaT> -}      [ unwords [ ['f','i','e','r','c','e'], ['b','a','t','t','l','e'] ], ['m','a','s','s','a','c','r','e'], ['e','p','i','c'] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <mal.hamIy> -}      [ ['h','e','r','o','i','c'], ['e','p','i','c'] ],

    TaFACuL                   `noun`    {- <talA.hum> -}       [ unwords [ ['c','l','i','n','g','i','n','g'], ['t','o','g','e','t','h','e','r'] ], unwords [ ['h','o','l','d','i','n','g'], ['f','i','r','m','l','y'], ['t','o','g','e','t','h','e','r'] ] ]
                              `plural`     TaFACuL |< At,

    IFtiCAL                   `noun`    {- <ilti.hAm> -}       [ ['c','o','h','e','s','i','o','n'], ['a','d','h','e','s','i','o','n'], unwords [ ['c','l','o','s','e'], ['u','n','i','o','n'] ] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL                   `noun`    {- <ilti.hAm> -}       [ ['e','n','g','a','g','e','m','e','n','t'], ['c','o','n','f','r','o','n','t','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    MuFtaCaL                  `noun`    {- <multa.ham> -}      [ ['m','e','r','g','e','d'], ['f','u','s','e','d'] ],

    MuFtaCaL |< aT            `noun`    {- <multa.hamaT> -}    [ unwords [ ['c','o','n','j','u','n','c','t','i','v','a'], "(", ['m','e','m','b','r','a','n','e'], ['c','o','v','e','r','i','n','g'], ['i','n','t','e','r','n','a','l'], ['p','a','r','t'], ['o','f'], ['e','y','e','l','i','d'], ")" ] ] ]


cluster_12  = cluster

 |> "l .h n" <| [

    FaCaL                     `verb`    {- <la.han> -}         [ unwords [ ['s','p','e','a','k'], ['u','n','g','r','a','m','m','a','t','i','c','a','l','l','y'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FuCUL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <la.h.han> -}       [ unwords [ ['m','a','k','e'], ['m','u','s','i','c'] ], unwords [ ['c','o','m','p','o','s','e'], ['m','u','s','i','c'] ] ],

    HaFCaL                    `verb`    {- <'al.han> -}        [ unwords [ ['s','p','e','a','k'], ['u','n','g','r','a','m','m','a','t','i','c','a','l','l','y'] ], ['m','i','s','p','r','o','n','o','u','n','c','e'] ],

    FaCL                      `noun`    {- <la.hn> -}          [ ['m','e','l','o','d','y'], ['s','o','l','e','c','i','s','m'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FaCiL                     `noun`    {- <la.hin> -}         [ ['s','e','n','s','i','b','l','e'] ],

    TaFCIL                    `noun`    {- <tal.hIn> -}        [ unwords [ ['m','u','s','i','c','a','l'], ['c','o','m','p','o','s','i','t','i','o','n'] ] ]
                              `plural`     TaFACIL,

    TaFCIL |< Iy              `adj`     {- <tal.hInIy> -}      [ ['s','i','n','g','a','b','l','e'] ],

    MaFCUL                    `adj`     {- <mal.hUn> -}        [ ['u','n','g','r','a','m','m','a','t','i','c','a','l'], ['c','o','l','l','o','q','u','i','a','l'] ],

    MuFaCCiL                  `noun`    {- <mula.h.hin> -}     [ unwords [ ['m','u','s','i','c'], ['c','o','m','p','o','s','e','r'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_13  = cluster

 |> "l _h b .t" <| [

    KaRDaS                    `verb`    {- <la_hba.t> -}       [ ['d','i','s','o','r','g','a','n','i','z','e'], ['d','i','s','a','r','r','a','n','g','e'] ],

    KaRDaS |< aT              `noun`    {- <la_hba.taT> -}     [ ['d','i','s','o','r','d','e','r'], ['c','o','n','f','u','s','i','o','n'] ],

    MuKaRDaS                  `adj`     {- <mula_hba.t> -}     [ unwords [ ['m','i','x','e','d'], ['u','p'] ], ['d','i','s','o','r','d','e','r','e','d'] ] ]


cluster_14  = cluster

 |> "l _h .s" <| [

    FaCCaL                    `verb`    {- <la_h_ha.s> -}      [ unwords [ ['s','u','m'], ['u','p'] ], ['s','u','m','m','a','r','i','z','e'] ],

    TaFaCCaL                  `verb`    {- <tala_h_ha.s> -}    [ unwords [ ['b','e'], ['s','u','m','m','a','r','i','z','e','d'] ] ],

    TaFCIL                    `noun`    {- <tal_hI.s> -}       [ ['s','u','m','m','a','r','y'], ['o','u','t','l','i','n','e'], unwords [ ['s','h','o','r','t'], ['r','e','p','o','r','t'] ] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mula_h_ha.s> -}    [ ['a','b','r','i','d','g','e','d'], ['c','o','n','d','e','n','s','e','d'] ],

    MuFaCCaL                  `noun`    {- <mula_h_ha.s> -}    [ ['s','u','m','m','a','r','y'], ['e','x','t','r','a','c','t'] ]
                              `plural`     MuFaCCaL |< At ]


cluster_15  = cluster

 |> "l _h l _h" <| [

    KaRDaS                    `verb`    {- <la_hla_h> -}       [ unwords [ ['s','h','a','k','e'], ['o','f','f'] ] ],

    TaKaRDaS                  `verb`    {- <tala_hla_h> -}     [ ['s','h','a','k','e'], ['t','o','t','t','e','r'] ],

    MuKaRDaS                  `adj`     {- <mula_hla_h> -}     [ ['u','n','s','t','e','a','d','y'], ['t','o','t','t','e','r','i','n','g'] ] ]


cluster_16  = cluster

 |> "l _h m" <| [

    FaCaL |< aT               `noun`    {- <la_hamaT> -}       [ ['o','a','f'], ['l','o','u','t'] ],

    MaFCUL                    `adj`     {- <mal_hUm> -}        [ ['a','w','k','w','a','r','d'], ['c','l','u','m','s','y'] ] ]


cluster_17  = cluster

 |> "l _h n" <| [

    FaCaL                     `noun`    {- <la_han> -}         [ unwords [ ['p','u','t','r','i','d'], ['s','t','e','n','c','h'] ] ],

    HaFCaL                    `adj`     {- <'al_han> -}        [ ['s','t','i','n','k','i','n','g'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    HaFCaL                    `adj`     {- <'al_han> -}        [ ['u','n','c','i','r','c','u','m','c','i','s','e','d'] ]
                              `plural`     FuCL
                              `femini`     FaCLA' ]


cluster_18  = cluster

 |> "l d .g" <| [

    FaCaL                     `verb`    {- <lada.g> -}         [ ['s','t','i','n','g'], ['b','i','t','e'], ['p','r','i','c','k'] ]
                              `imperf`     FCuL,

    FaCL |< aT                `noun`    {- <lad.gaT> -}        [ ['s','t','i','n','g'], ['b','i','t'] ],

    FaCIL                     `adj`     {- <ladI.g> -}         [ ['s','t','u','n','g'], ['b','i','t','t','e','n'] ]
                              `plural`     FuCaLA'
                              `plural`     FaCLY,

    FACiL                     `adj`     {- <lAdi.g> -}         [ ['s','t','i','n','g','i','n','g'], ['b','i','t','i','n','g'] ],

    MaFCUL                    `adj`     {- <maldU.g> -}        [ ['s','t','u','n','g'], ['b','i','t','t','e','n'] ] ]


cluster_19  = cluster

 |> "l d n" <| [

    FaCuL                     `verb`    {- <ladun> -}          [ unwords [ ['b','e'], ['s','o','f','t'] ], unwords [ ['b','e'], ['f','l','e','x','i','b','l','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT
                              `masdar`     FuCUL |< aT,

    FaCCaL                    `verb`    {- <laddan> -}         [ ['m','o','l','l','i','f','y'], ['m','i','t','i','g','a','t','e'] ],

    FaCiL                     `noun`    {- <ladin> -}          [ ['L','a','d','e','n'], ['L','a','d','i','n'] ],

    FaCL                      `adj`     {- <ladn> -}           [ ['s','o','f','t'], ['p','l','i','a','n','t'], ['f','l','e','x','i','b','l','e'] ]
                              `plural`     FuCL
                              `plural`     FiCAL,

    FaCuL                     `prep`    {- <ladun> -}          [ ['n','e','a','r'] ],

    FACiL                     `noun`    {- <lAdin> -}          [ ['L','a','d','e','n'], ['L','a','d','i','n'] ],

    FACaL                     `noun`    {- <lAdan> -}          [ ['l','a','u','d','a','n','u','m'] ],

    FaCAL |< aT               `noun`    {- <ladAnaT> -}        [ ['s','o','f','t','n','e','s','s'], ['p','l','i','a','b','i','l','i','t','y'], ['f','l','e','x','i','b','i','l','i','t','y'] ],

    FaCUL |< aT               `noun`    {- <ladUnaT> -}        [ ['s','o','f','t','n','e','s','s'], ['p','l','i','a','b','i','l','i','t','y'], ['f','l','e','x','i','b','i','l','i','t','y'] ],

    FaCA'iL                   `noun`    {- <ladA'in> -}        [ ['p','l','a','s','t','i','c','s'] ]
                              `plural`     FaCA'iL
                           
    `limited` "-------P--",

    FaCuL |< Iy               `adj`     {- <ladunIy> -}        [ ['m','y','s','t','i','c'], ['i','n','t','u','i','t','i','v','e'] ] ]


cluster_20  = cluster

 |> "l _d `" <| [

    FaCaL                     `verb`    {- <la_da`> -}         [ ['b','u','r','n'], ['c','a','u','t','e','r','i','z','e'], ['o','f','f','e','n','d'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <tala_d_da`> -}     [ ['b','u','r','n'] ],

    FaCL                      `noun`    {- <la_d`> -}          [ ['b','u','r','n','i','n','g'], ['c','o','m','b','u','s','t','i','o','n'] ],

    FaCL                      `noun`    {- <la_d`> -}          [ ['c','o','n','f','l','a','g','r','a','t','i','o','n'], ['f','i','r','e'] ],

    FaCCAL                    `adj`     {- <la_d_dA`> -}       [ ['b','u','r','n','i','n','g'], ['p','u','n','g','e','n','t'], ['s','h','a','r','p'] ],

    FACiL                     `adj`     {- <lA_di`> -}         [ ['b','u','r','n','i','n','g'], ['s','h','a','r','p'], ['s','t','i','n','g','i','n','g'] ],

    FACiL |< aT               `noun`    {- <lA_di`aT> -}       [ ['g','i','b','e'], ['t','a','u','n','t'] ]
                              `plural`     FawACiL,

    FawCaL                    `noun`    {- <law_da`> -}        [ ['w','i','t','t','y'], unwords [ ['q','u','i','c','k'], "-", ['w','i','t','t','e','d'] ] ],

    FawCaL |< Iy              `adj`     {- <law_da`Iy> -}      [ ['w','i','t','t','y'], unwords [ ['q','u','i','c','k'], "-", ['w','i','t','t','e','d'] ] ],

    FawCaL |< Iy |< aT        `noun`    {- <law_da`IyaT> -}    [ ['w','i','t'], unwords [ ['q','u','i','c','k'], "-", ['w','i','t','t','e','d','n','e','s','s'] ] ] ]


cluster_21  = cluster

 |> "l _d q" <| [

    FACiL |< Iy |< aT         `noun`    {- <lA_diqIyaT> -}     [ ['L','a','t','a','k','i','a'] ] ]


cluster_22  = cluster

 |> ['l','U','r'] <| [

    _____                     `noun`    {- <lUr> -}            [ ['l','y','r','e'] ] ]


cluster_23  = cluster

 |> ['l','I','r'] <| [

    _____ |< aT               `noun`    {- <lIraT> -}          [ ['p','o','u','n','d'], ['l','i','r','a'] ]
                              `plural`     _____ |< At ]


cluster_24  = cluster

 |> ['l','U','r','I'] <| [

    _____                     `noun`    {- <lUrI> -}           [ ['l','o','r','r','y'], ['t','r','u','c','k'] ] ]


cluster_25  = cluster

 |> "l z b" <| [

    FaCaL                     `verb`    {- <lazab> -}          [ ['a','d','h','e','r','e'], ['s','t','i','c','k'] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <lazib> -}          [ unwords [ ['s','t','i','c','k'], ['t','o','g','e','t','h','e','r'] ] ]
                              `imperf`     FCaL,

    FaCiL                     `adj`     {- <lazib> -}          [ ['l','i','t','t','l','e'] ]
                              `plural`     FiCAL,

    FaCL |< aT                `noun`    {- <lazbaT> -}         [ ['m','i','s','f','o','r','t','u','n','e'], ['c','a','l','a','m','i','t','y'] ]
                              `plural`     FiCaL,

    FACiL                     `adj`     {- <lAzib> -}          [ unwords [ ['a','d','h','e','r','i','n','g'], ['t','i','g','h','t','l','y'] ], unwords [ ['f','i','r','m','l','y'], ['f','i','x','e','d'] ] ] ]


cluster_26  = cluster

 |> "l z ^g" <| [

    FaCiL                     `verb`    {- <lazi^g> -}         [ unwords [ ['b','e'], ['s','t','i','c','k','y'] ], ['c','l','i','n','g'], unwords [ ['b','e'], ['f','l','a','b','b','y'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FuCUL,

    FaCiL                     `adj`     {- <lazi^g> -}         [ ['s','t','i','c','k','y'], ['a','d','h','e','s','i','v','e'], ['f','l','a','b','b','y'] ],

    FuCUL |< aT               `noun`    {- <luzU^gaT> -}       [ ['s','t','i','c','k','i','n','e','s','s'], ['a','d','h','e','s','i','v','e','n','e','s','s'] ] ]


cluster_27  = cluster

 |> "l z q" <| [

    FaCiL                     `verb`    {- <laziq> -}          [ ['a','d','h','e','r','e'], ['c','l','i','n','g'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <lazzaq> -}         [ unwords [ ['p','a','s','t','e'], ['o','n'] ], unwords [ ['s','t','i','c','k'], ['o','n'] ] ],

    HaFCaL                    `verb`    {- <'alzaq> -}         [ unwords [ ['p','a','s','t','e'], ['o','n'] ], unwords [ ['s','t','i','c','k'], ['o','n'] ] ],

    IFtaCaL                   `verb`    {- <iltazaq> -}        [ ['a','d','h','e','r','e'], ['c','l','i','n','g'] ],

    FiCL                      `adj`     {- <lizq> -}           [ ['a','d','j','a','c','e','n','t'], ['c','o','n','t','i','g','u','o','u','s'] ],

    FaCiL                     `adj`     {- <laziq> -}          [ ['s','t','i','c','k','y'], ['g','l','u','e','y'] ],

    FaCL |< aT                `noun`    {- <lazqaT> -}         [ ['p','l','a','s','t','e','r'], ['c','o','m','p','r','e','s','s'] ],

    FiCAL                     `noun`    {- <lizAq> -}          [ ['a','d','h','e','s','i','v','e'], ['g','l','u','e'], ['p','a','s','t','e'] ],

    FaCUL                     `noun`    {- <lazUq> -}          [ unwords [ ['a','d','h','e','s','i','v','e'], ['p','l','a','s','t','e','r'] ], ['c','o','m','p','r','e','s','s'] ],

    FACUL                     `noun`    {- <lAzUq> -}          [ unwords [ ['a','d','h','e','s','i','v','e'], ['p','l','a','s','t','e','r'] ], ['c','o','m','p','r','e','s','s'] ] ]


cluster_28  = cluster

 |> "l z m" <| [

    FaCiL                     `verb`    {- <lazim> -}          [ unwords [ ['b','e'], ['n','e','c','e','s','s','a','r','y'] ], unwords [ ['b','e'], ['r','e','q','u','i','r','e','d'] ] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <lAzam> -}          [ ['a','c','c','o','m','p','a','n','y'], unwords [ ['p','e','r','s','e','v','e','r','e'], ['i','n'] ] ],

    HaFCaL                    `verb`    {- <'alzam> -}         [ ['o','b','l','i','g','a','t','e'], ['f','o','r','c','e'] ],

    TaFACaL                   `verb`    {- <talAzam> -}        [ unwords [ ['b','e'], ['i','n','s','e','p','a','r','a','b','l','e'] ], unwords [ ['b','e'], ['a','t','t','a','c','h','e','d'], ['t','o'], ['e','a','c','h'], ['o','t','h','e','r'] ] ],

    IFtaCaL                   `verb`    {- <iltazam> -}        [ unwords [ ['b','e'], ['c','o','m','m','i','t','t','e','d'] ], ['m','a','i','n','t','a','i','n'], ['p','r','e','s','e','r','v','e'] ],

    IstaFCaL                  `verb`    {- <istalzam> -}       [ unwords [ ['d','e','e','m'], ['n','e','c','e','s','s','a','r','y'] ], ['r','e','q','u','i','r','e'] ],

    FaCL |< aT                `noun`    {- <lazmaT> -}         [ unwords [ ['o','f','f','i','c','i','a','l'], ['c','o','n','c','e','s','s','i','o','n'] ] ]
                              `plural`     FaCaL |< At,

    FuCUL                     `noun`    {- <luzUm> -}          [ ['r','e','q','u','i','r','e','m','e','n','t'], ['n','e','c','e','s','s','i','t','y'], ['e','x','i','g','e','n','c','y'] ],

    FiCAL                     `noun`    {- <lizAm> -}          [ ['n','e','c','e','s','s','a','r','y'], ['r','e','q','u','i','s','i','t','e'] ],

    HaFCaL                    `adj`     {- <'alzam> -}         [ unwords [ ['m','o','r','e'], "/", ['m','o','s','t'], ['n','e','c','e','s','s','a','r','y'] ] ],

    MaFCaL |< aT              `noun`    {- <malzamaT> -}       [ ['s','e','c','t','i','o','n'] ]
                              `plural`     MaFACiL,

    MiFCaL |< aT              `noun`    {- <milzamaT> -}       [ ['v','i','s','e'], ['p','r','e','s','s'] ]
                              `plural`     MaFACiL,

    TaFCIL                    `noun`    {- <talzIm> -}         [ unwords [ ['a','w','a','r','d'], ['o','f'], ['o','p','e','n'], ['c','o','n','t','r','a','c','t'] ] ]
                              `plural`     TaFCIL |< At,

    MuFACaL |< aT             `noun`    {- <mulAzamaT> -}      [ ['p','u','r','s','u','a','n','c','e'], unwords [ ['c','l','o','s','e'], ['a','t','t','a','c','h','m','e','n','t'] ], ['a','d','h','e','s','i','o','n'] ],

    HiFCAL                    `noun`    {- <'ilzAm> -}         [ ['c','o','e','r','c','i','o','n'], ['c','o','m','p','u','l','s','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    HiFCAL |< Iy              `adj`     {- <'ilzAmIy> -}       [ ['c','o','m','p','u','l','s','o','r','y'], ['o','b','l','i','g','a','t','o','r','y'] ],

    HiFCAL |< Iy |< aT        `noun`    {- <'ilzAmIyaT> -}     [ ['c','o','m','p','u','l','s','o','r','i','n','e','s','s'] ],

    IFtiCAL                   `noun`    {- <iltizAm> -}        [ ['c','o','m','m','i','t','m','e','n','t'], ['o','b','l','i','g','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <iltizAmIy> -}      [ ['c','o','m','m','i','t','t','e','d'] ],

    FACiL                     `adj`     {- <lAzim> -}          [ ['n','e','c','e','s','s','a','r','y'], ['r','e','q','u','i','r','e','d'], ['n','e','e','d','e','d'] ],

    FACiL |< aT               `noun`    {- <lAzimaT> -}        [ unwords [ ['i','n','h','e','r','e','n','t'], ['p','r','o','p','e','r','t','y'] ], unwords [ ['f','i','x','e','d'], ['a','t','t','r','i','b','u','t','e'] ], ['e','x','i','g','e','n','c','i','e','s'], ['r','e','q','u','i','s','i','t','e','s'] ]
                              `plural`     FawACiL,

    MaFCUL                    `adj`     {- <malzUm> -}         [ ['o','b','l','i','g','a','t','e','d'], ['l','i','a','b','l','e'] ],

    MaFCUL |< Iy |< aT        `noun`    {- <malzUmIyaT> -}     [ ['o','b','l','i','g','a','t','i','o','n'], ['l','i','a','b','i','l','i','t','y'] ],

    MuFACiL                   `noun`    {- <mulAzim> -}        [ ['l','i','e','u','t','e','n','a','n','t'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFCiL                    `adj`     {- <mulzim> -}         [ ['b','i','n','d','i','n','g'], ['r','e','q','u','i','s','i','t','e'] ],

    MuFCaL                    `adj`     {- <mulzam> -}         [ ['o','b','l','i','g','a','t','e','d'], ['l','i','a','b','l','e'] ],

    MutaFACiL |< aT           `noun`    {- <mutalAzimaT> -}    [ ['s','y','n','d','r','o','m','e'] ],

    MuFtaCiL                  `adj`     {- <multazim> -}       [ ['c','o','m','m','i','t','t','e','d'], ['i','n','v','o','l','v','e','d'] ],

    MuFtaCaL                  `noun`    {- <multazam> -}       [ ['r','e','q','u','i','r','e','m','e','n','t'] ]
                              `plural`     MuFtaCaL |< At,

    MustaFCaL                 `noun`    {- <mustalzam> -}      [ ['r','e','q','u','i','r','e','m','e','n','t'] ]
                              `plural`     MustaFCaL |< At ]


cluster_29  = cluster

 |> ['l','U','z','A','n'] <| [

    _____                     `xtra`    {- <lUzAn> -}          [ ['L','a','u','s','a','n','n','e'] ],

    _____ |< Iy               `adj`     {- <lUzAnIy> -}        [ unwords [ ['f','r','o','m'], "/", ['o','f'], ['L','a','u','s','a','n','n','e'] ] ] ]


cluster_30  = cluster

 |> "l s `" <| [

    FaCaL                     `verb`    {- <lasa`> -}          [ ['s','t','i','n','g'], ['b','u','r','n'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <las`> -}           [ ['s','t','i','n','g','i','n','g'], ['b','u','r','n','i','n','g'] ],

    FaCL |< aT                `noun`    {- <las`aT> -}         [ ['s','t','i','n','g'], ['b','i','t','e'] ],

    FaCIL                     `adj`     {- <lasI`> -}          [ ['s','t','u','n','g'] ]
                              `plural`     FaCLY
                              `plural`     FuCaLA',

    FACiL                     `adj`     {- <lAsi`> -}          [ ['s','t','i','n','g','i','n','g'], ['b','i','t','i','n','g'], ['s','h','a','r','p'] ],

    MaFCUL                    `adj`     {- <malsU`> -}         [ ['s','t','u','n','g'], ['b','i','t','t','e','n'] ] ]


cluster_31  = cluster

 |> "l s n" <| [

    FaCiL                     `verb`    {- <lasin> -}          [ unwords [ ['b','e'], ['e','l','o','q','u','e','n','t'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL,

    FaCCaL                    `verb`    {- <lassan> -}         [ ['s','h','a','r','p','e','n'], ['t','a','p','e','r'] ],

    TaFACaL                   `verb`    {- <talAsan> -}        [ ['a','l','t','e','r','c','a','t','e'], unwords [ ['e','x','c','h','a','n','g','e'], ['w','o','r','d','s'] ], unwords [ ['t','r','a','d','e'], ['i','n','s','u','l','t','s'] ] ],

    FaCaL                     `noun`    {- <lasan> -}          [ ['e','l','o','q','u','e','n','c','e'] ],

    FaCiL                     `adj`     {- <lasin> -}          [ ['e','l','o','q','u','e','n','t'] ],

    HaFCaL                    `adj`     {- <'alsan> -}         [ ['e','l','o','q','u','e','n','t'] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    FiCAL                     `noun`    {- <lisAn> -}          [ ['t','o','n','g','u','e'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     HaFCuL,

    FiCAL                     `noun`    {- <lisAn> -}          [ ['l','a','n','g','u','a','g','e'] ]
                              `plural`     HaFCiL |< aT
                              `plural`     HaFCuL,

    FiCAL                     `noun`    {- <lisAn> -}          [ ['m','o','u','t','h','p','i','e','c','e'] ],

    FiCAL |< Iy               `adj`     {- <lisAnIy> -}        [ ['v','e','r','b','a','l'], ['o','r','a','l'] ],

    FiCAL |< Iy |< At         `noun`    {- <lisAnIyAt> -}      [ ['l','i','n','g','u','i','s','t','i','c','s'] ]
                              `plural`     FiCAL |< Iy |< At
                           
    `limited` "-------P--",

    TaFACuL                   `noun`    {- <talAsun> -}        [ ['a','l','t','e','r','c','a','t','i','o','n'], unwords [ ['e','x','c','h','a','n','g','e'], ['o','f'], ['w','o','r','d','s'] ] ]
                              `plural`     TaFACuL |< At,

    MaFCUL                    `noun`    {- <malsUn> -}         [ ['l','i','a','r'] ]
                              `plural`     MaFCUL |< Un
                              `femini`     MaFCUL |< aT ]


cluster_32  = cluster

 |> ['l','I','s','A','n','s'] <| [

    _____                     `noun`    {- <lIsAns> -}         [ ['l','i','c','e','n','c','e'] ] ]


cluster_33  = cluster

 |> ['l','a','s','t','i','k'] <| [

    _____                     `noun`    {- <lastik> -}         [ ['r','u','b','b','e','r'], ['e','r','a','s','e','r'] ] ]

 |> ['l','a','s','t','I','k'] <| [

    _____                     `noun`    {- <lastIk> -}         [ ['r','u','b','b','e','r'], ['e','r','a','s','e','r'] ] ]


cluster_34  = cluster

 |> ['l','i','^','s','b','U','n'] <| [

    _____ |< aT               `noun`    {- <li^sbUnaT> -}      [ ['L','i','s','b','o','n'] ]
                           
    `excepts` Diptote ]


cluster_35  = cluster

 |> "l .s q" <| [

    FaCiL                     `verb`    {- <la.siq> -}         [ ['a','d','h','e','r','e'], ['c','l','i','n','g'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <la.s.saq> -}       [ unwords [ ['p','a','s','t','e'], ['t','o','g','e','t','h','e','r'] ], unwords [ ['s','t','i','c','k'], ['t','o','g','e','t','h','e','r'] ] ],

    FACaL                     `verb`    {- <lA.saq> -}         [ unwords [ ['b','e'], ['n','e','x','t'], ['t','o'] ], unwords [ ['b','e'], ['i','n'], ['t','o','u','c','h'], ['w','i','t','h'] ] ],

    HaFCaL                    `verb`    {- <'al.saq> -}        [ ['a','t','t','a','c','h'], ['a','p','p','e','n','d'], ['j','o','i','n'] ],

    TaFACaL                   `verb`    {- <talA.saq> -}       [ unwords [ ['s','t','i','c','k'], ['t','o','g','e','t','h','e','r'] ], unwords [ ['b','e'], ['c','o','h','e','s','i','v','e'] ] ],

    IFtaCaL                   `verb`    {- <ilta.saq> -}       [ ['a','t','t','a','c','h'], ['a','f','f','i','x'], ['a','d','h','e','r','e'] ],

    FaCL |< Iy                `adj`     {- <la.sqIy> -}        [ ['a','g','g','l','u','t','i','n','a','t','i','n','g'] ],

    FiCL                      `noun`    {- <li.sq> -}          [ ['a','d','h','e','r','i','n','g'], ['c','l','i','n','g','i','n','g'] ],

    FaCiL                     `adj`     {- <la.siq> -}         [ ['s','t','i','c','k','y'], ['g','l','u','e','y'], ['a','d','h','e','s','i','v','e'] ],

    FaCIL                     `adj`     {- <la.sIq> -}         [ ['c','l','i','n','g','i','n','g'], ['c','o','n','t','i','g','u','o','u','s'], unwords [ ['c','l','o','s','e'], "-", ['f','i','t','t','i','n','g'] ] ],

    FaCUL                     `noun`    {- <la.sUq> -}         [ ['p','l','a','s','t','e','r'], ['a','d','h','e','s','i','v','e'] ],

    MuFACaL |< aT             `noun`    {- <mulA.saqaT> -}     [ ['c','o','n','n','e','c','t','i','o','n'], ['a','d','h','e','s','i','o','n'], ['u','n','i','o','n'] ],

    HiFCAL                    `noun`    {- <'il.sAq> -}        [ ['p','o','s','t','e','r'], ['p','l','a','c','a','r','d'] ]
                              `plural`     HiFCAL |< At,

    TaFACuL                   `noun`    {- <talA.suq> -}       [ ['c','o','h','e','s','i','o','n'], ['a','d','h','e','s','i','o','n'], ['c','o','n','t','a','c','t'] ]
                              `plural`     TaFACuL |< At,

    IFtiCAL                   `noun`    {- <ilti.sAq> -}       [ ['c','o','h','e','s','i','o','n'], ['a','d','h','e','s','i','o','n'], ['c','o','n','t','a','c','t'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `adj`     {- <lA.siq> -}         [ ['a','d','h','e','s','i','v','e'] ],

    FACiL |< aT               `noun`    {- <lA.siqaT> -}       [ ['s','u','f','f','i','x'] ]
                              `plural`     FawACiL,

    MuFACiL                   `adj`     {- <mulA.siq> -}       [ ['c','o','n','t','i','g','u','o','u','s'], ['a','d','j','a','c','e','n','t'] ],

    MuFACiL                   `noun`    {- <mulA.siq> -}       [ ['c','o','m','p','a','n','i','o','n'], ['n','e','i','g','h','b','o','r'], ['a','d','h','e','r','e','n','t'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MuFCaL                    `adj`     {- <mul.saq> -}        [ ['a','t','t','a','c','h','e','d'], unwords [ ['p','a','s','t','e','d'], ['o','n'] ], ['f','a','s','t','e','n','e','d'] ],

    MuFCaL                    `noun`    {- <mul.saq> -}        [ ['p','o','s','t','e','r'], ['p','l','a','c','a','r','d'] ]
                              `plural`     MuFCaL |< At,

    MutaFACiL                 `adj`     {- <mutalA.siq> -}     [ unwords [ ['s','t','i','c','k','i','n','g'], ['t','o','g','e','t','h','e','r'] ], ['c','o','h','e','s','i','v','e'] ],

    MuFtaCiL                  `adj`     {- <multa.siq> -}      [ ['a','t','t','a','c','h','e','d'], ['a','d','h','e','s','i','v','e'], unwords [ ['i','n'], ['c','o','n','t','a','c','t'] ] ] ]


cluster_36  = cluster

 |> "l .d m" <| [

    MaFCUL                    `adj`     {- <mal.dUm> -}        [ ['d','e','n','s','e'], ['c','l','o','s','e'] ] ]


cluster_37  = cluster

 |> "l .t _h" <| [

    FaCaL                     `verb`    {- <la.ta_h> -}        [ ['s','t','a','i','n'], ['s','o','i','l'], ['s','p','l','a','s','h'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <la.t.ta_h> -}      [ ['s','t','a','i','n'], ['s','o','i','l'], ['s','p','l','a','s','h'] ],

    TaFaCCaL                  `verb`    {- <tala.t.ta_h> -}    [ unwords [ ['b','e'], ['s','o','i','l','e','d'] ], unwords [ ['b','e'], ['s','t','a','i','n','e','d'] ] ],

    FaCL                      `noun`    {- <la.t_h> -}         [ ['s','t','a','i','n','i','n','g'], ['s','o','i','l','i','n','g'] ],

    FaCL |< aT                `noun`    {- <la.t_haT> -}       [ ['s','t','a','i','n'], ['b','l','o','t','c','h'], ['b','l','e','m','i','s','h'] ]
                              `plural`     FaCaL |< At,

    FuCaL |< aT               `noun`    {- <lu.ta_haT> -}      [ ['f','o','o','l'], ['d','o','l','t'] ]
                              `plural`     FuCaL |< At,

    FiCCIL                    `noun`    {- <li.t.tI_h> -}      [ ['f','o','o','l'], ['d','o','l','t'] ],

    MuFaCCaL                  `adj`     {- <mula.t.ta_h> -}    [ ['s','t','a','i','n','e','d'], ['s','u','l','l','i','e','d'] ] ]


cluster_38  = cluster

 |> "l .t s" <| [

    FaCaL                     `verb`    {- <la.tas> -}         [ ['s','t','r','i','k','e'], ['h','i','t'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <la.ts> -}          [ ['s','t','r','i','k','i','n','g'], ['h','i','t','t','i','n','g'] ],

    MiFCAL                    `noun`    {- <mil.tAs> -}        [ ['p','i','c','k','a','x'] ]
                              `plural`     MaFACIL ]


cluster_39  = cluster

 |> "l .t ^s" <| [

    FaCaL                     `verb`    {- <la.ta^s> -}        [ ['s','t','r','i','k','e'], ['h','i','t'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <la.t^s> -}         [ ['s','t','r','i','k','i','n','g'], ['h','i','t','t','i','n','g'] ] ]


cluster_40  = cluster

 |> "l .t `" <| [

    FaCaL                     `verb`    {- <la.ta`> -}         [ ['s','t','r','i','k','e'], ['h','i','t'], ['d','e','l','e','t','e'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <la.t`> -}          [ ['s','t','r','i','k','i','n','g'], ['h','i','t','t','i','n','g'], ['d','e','l','e','t','i','o','n'] ],

    FaCL |< aT                `noun`    {- <la.t`aT> -}        [ ['b','l','o','t'], ['s','t','a','i','n'] ] ]


cluster_41  = cluster

 |> "l .t f" <| [

    FaCaL                     `verb`    {- <la.taf> -}         [ unwords [ ['b','e'], ['k','i','n','d'] ] ]
                              `imperf`     FCuL
                              `masdar`     FuCL
                              `masdar`     FaCaL,

    FaCuL                     `verb`    {- <la.tuf> -}         [ unwords [ ['b','e'], ['e','l','e','g','a','n','t'] ], unwords [ ['b','e'], ['a','m','i','a','b','l','e'] ] ]
                              `imperf`     FCuL
                              `masdar`     FaCAL |< aT,

    FaCCaL                    `verb`    {- <la.t.taf> -}       [ ['s','o','f','t','e','n'], ['a','l','l','e','v','i','a','t','e'] ],

    FACaL                     `verb`    {- <lA.taf> -}         [ unwords [ ['t','r','e','a','t'], ['k','i','n','d','l','y'] ], unwords [ ['b','e'], ['p','o','l','i','t','e'], ['w','i','t','h'] ] ],

    TaFaCCaL                  `verb`    {- <tala.t.taf> -}     [ unwords [ ['b','e'], ['a','f','f','e','c','t','i','o','n','a','t','e'] ], unwords [ ['b','e'], ['m','o','d','e','r','a','t','e','d'] ] ],

    TaFACaL                   `verb`    {- <talA.taf> -}       [ unwords [ ['b','e'], ['c','i','v','i','l'] ], unwords [ ['b','e'], ['c','o','u','r','t','e','o','u','s'] ] ],

    IstaFCaL                  `verb`    {- <istal.taf> -}      [ unwords [ ['f','i','n','d'], ['p','l','e','a','s','a','n','t'] ] ],

    FuCL                      `noun`    {- <lu.tf> -}          [ ['g','e','n','t','l','e','n','e','s','s'], ['c','i','v','i','l','i','t','y'] ],

    FuCL |<< "aN"             `noun`    {- <lu.tfaN> -}        [ ['p','l','e','a','s','e'] ],

    FuCL |< Iy                `noun`    {- <lu.tfIy> -}        [ ['L','u','t','f','i'] ],

    FaCAL |< aT               `noun`    {- <la.tAfaT> -}       [ ['k','i','n','d','n','e','s','s'], ['p','o','l','i','t','e','n','e','s','s'], ['r','e','f','i','n','e','m','e','n','t'] ],

    FaCIL                     `adj`     {- <la.tIf> -}         [ ['d','e','l','i','c','a','t','e'], ['g','e','n','t','l','e'], ['p','o','l','i','t','e'] ]
                              `plural`     FuCaLA'
                              `plural`     FiCAL,

    FaCIL                     `noun`    {- <la.tIf> -}         [ ['L','a','t','i','f'], ['L','a','t','e','e','f'] ],

    FaCIL |< aT               `noun`    {- <la.tIfaT> -}       [ ['q','u','i','p'], ['j','o','k','e'], ['s','u','b','t','l','e','t','y'] ]
                              `plural`     FaCA'iL,

    FaCIL |< aT               `noun`    {- <la.tIfaT> -}       [ ['L','a','t','i','f','a'], ['L','a','t','e','e','f','a'] ],

    HaFCaL                    `adj`     {- <'al.taf> -}        [ unwords [ ['f','i','n','e','r'], "/", ['f','i','n','e','s','t'] ], unwords [ ['n','i','c','e'], "/", ['n','i','c','e','s','t'] ] ],

    MuFACaL |< aT             `noun`    {- <mulA.tafaT> -}     [ ['c','o','u','r','t','e','s','y'], ['f','r','i','e','n','d','l','i','n','e','s','s'], ['k','i','n','d','n','e','s','s'] ],

    MuFACaL |< At             `noun`    {- <mulA.tafAt> -}     [ ['c','a','r','e','s','s','e','s'] ]
                              `plural`     MuFACaL |< At
                           
    `limited` "-------P--",

    TaFaCCuL                  `noun`    {- <tala.t.tuf> -}     [ ['f','r','i','e','n','d','l','i','n','e','s','s'], ['c','i','v','i','l','i','t','y'] ]
                              `plural`     TaFaCCuL |< At,

    MuFaCCiL                  `noun`    {- <mula.t.tif> -}     [ ['p','a','l','l','i','a','t','i','v','e'], ['s','e','d','a','t','i','v','e'] ]
                              `plural`     MuFaCCiL |< At,

    MuFaCCaL                  `adj`     {- <mula.t.taf> -}     [ ['k','i','n','d','e','r'], ['g','e','n','t','l','e','r'], ['s','o','f','t','e','r'] ] ]


cluster_42  = cluster

 |> "l .t m" <| [

    FaCaL                     `verb`    {- <la.tam> -}         [ ['s','l','a','p'], unwords [ ['s','t','r','i','k','e'], ['a','g','a','i','n','s','t'] ] ]
                              `imperf`     FCiL,

    TaFACaL                   `verb`    {- <talA.tam> -}       [ unwords [ ['e','x','c','h','a','n','g','e'], ['b','l','o','w','s'] ], ['b','r','a','w','l'] ],

    IFtaCaL                   `verb`    {- <ilta.tam> -}       [ ['c','o','l','l','i','d','e'], ['c','l','a','s','h'] ],

    FaCL |< aT                `noun`    {- <la.tmaT> -}        [ ['s','l','a','p'], ['b','l','o','w'], ['s','h','o','v','e'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `adj`     {- <la.tIm> -}         [ ['p','a','r','e','n','t','l','e','s','s'] ],

    MaFCaL                    `noun`    {- <mal.tam> -}        [ ['c','h','e','e','k'] ],

    MutaFACiL                 `adj`     {- <mutalA.tim> -}     [ ['p','o','u','n','d','i','n','g'], ['c','o','l','l','i','d','i','n','g'] ],

    MuFtaCaL                  `noun`    {- <multa.tam> -}      [ ['c','l','a','s','h'], ['t','u','r','m','o','i','l'], ['b','r','a','w','l'] ] ]


cluster_43  = cluster

 |> "l ` b" <| [

    FaCiL                     `verb`    {- <la`ib> -}          [ ['p','l','a','y'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <lA`ab> -}          [ unwords [ ['p','l','a','y'], ['w','i','t','h'] ], unwords [ ['j','e','s','t'], ['w','i','t','h'] ] ],

    TaFACaL                   `verb`    {- <talA`ab> -}        [ unwords [ ['b','e'], ['p','l','a','y','f','u','l'] ], ['m','o','c','k'], unwords [ ['a','c','t'], ['f','r','a','u','d','u','l','e','n','t','l','y'] ] ],

    FaCL                      `noun`    {- <la`b> -}           [ ['g','a','m','e'], ['s','p','o','r','t'] ]
                              `plural`     HaFCAL,

    FaCL |< aT                `noun`    {- <la`baT> -}         [ ['g','a','m','e'], ['m','a','t','c','h'], ['e','v','e','n','t'] ]
                              `plural`     FaCaL |< At,

    FuCL |< aT                `noun`    {- <lu`baT> -}         [ ['t','o','y'], ['g','a','m','e'] ]
                              `plural`     FuCaL,

    FaCCAL                    `adj`     {- <la``Ab> -}         [ ['p','l','a','y','f','u','l'] ],

    FiCCIL                    `adj`     {- <li``Ib> -}         [ ['p','l','a','y','f','u','l'] ],

    FuCAL                     `noun`    {- <lu`Ab> -}          [ ['s','a','l','i','v','a'], ['d','r','i','v','e','l'] ],

    FuCAL |< Iy               `adj`     {- <lu`AbIy> -}        [ ['s','a','l','i','v','a','r','y'] ],

    FuCayL |< aT              `noun`    {- <lu`aybaT> -}       [ unwords [ ['l','i','t','t','l','e'], ['d','o','l','l'] ] ]
                              `plural`     FuCayL |< At,

    FaCUL                     `adj`     {- <la`Ub> -}          [ ['c','o','q','u','e','t','t','i','s','h'], ['f','l','i','r','t','a','t','i','o','u','s'] ],

    HuFCUL |< aT              `noun`    {- <'ul`UbaT> -}       [ ['p','l','a','y','t','h','i','n','g'], ['p','r','a','n','k'], ['t','r','i','c','k'], unwords [ ['s','h','a','d','o','w'], ['b','o','x','i','n','g'] ] ]
                              `plural`     HaFACIL,

    MaFCaL                    `noun`    {- <mal`ab> -}         [ ['p','l','a','y','g','r','o','u','n','d'], unwords [ ['s','p','o','r','t','s'], ['f','i','e','l','d'] ], ['s','t','a','d','i','u','m'] ]
                              `plural`     MaFACiL,

    MaFCaL |< aT              `noun`    {- <mal`abaT> -}       [ ['p','l','a','y','t','h','i','n','g'], ['t','o','y'] ],

    TaFACuL                   `noun`    {- <talA`ub> -}        [ ['g','a','m','e'], unwords [ ['f','r','e','e'], ['p','l','a','y'] ], ['v','e','n','a','l','i','t','y'] ]
                              `plural`     TaFACuL |< At,

    FACiL                     `noun`    {- <lA`ib> -}          [ ['p','l','a','y','e','r'], ['a','t','h','l','e','t','e'] ]
                              `plural`     FACiL |< Un
                              `femini`     FACiL |< aT,

    MaFCUL                    `noun`    {- <mal`Ub> -}         [ ['s','l','o','b','b','e','r','i','n','g'], ['p','r','a','n','k'] ]
                              `plural`     MaFACIL
                              `femini`     MaFCUL |< aT,

    MuFACiL                   `noun`    {- <mulA`ib> -}        [ ['p','l','a','y','e','r'], ['f','r','a','u','d','u','l','e','n','t'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT,

    MutaFACiL                 `adj`     {- <mutalA`ib> -}      [ ['b','r','i','b','a','b','l','e'], ['v','e','n','a','l'] ] ]


cluster_44  = cluster

 |> "l ` _t m" <| [

    TaKaRDaS                  `verb`    {- <tala`_tam> -}      [ ['h','e','s','i','t','a','t','e'], ['s','t','a','m','m','e','r'] ],

    KaRDaS |< aT              `noun`    {- <la`_tamaT> -}      [ ['h','e','s','i','t','a','t','i','o','n'], ['s','t','u','t','t','e','r','i','n','g'] ],

    TaKaRDuS                  `noun`    {- <tala`_tum> -}      [ ['h','e','s','i','t','a','t','i','o','n'], ['s','t','u','t','t','e','r','i','n','g'] ]
                              `plural`     TaKaRDuS |< At,

    MutaKaRDiS                `adj`     {- <mutala`_tim> -}    [ ['h','e','s','i','t','a','t','i','n','g'], ['s','t','u','t','t','e','r','i','n','g'] ] ]


cluster_45  = cluster

 |> "l ` ^g" <| [

    FaCaL                     `verb`    {- <la`a^g> -}         [ ['h','u','r','t'], ['b','u','r','n'] ]
                              `imperf`     FCaL,

    FACaL                     `verb`    {- <lA`a^g> -}         [ ['o','p','p','r','e','s','s'], ['d','i','s','t','r','e','s','s'] ],

    FaCL |< aT                `noun`    {- <la`^gaT> -}        [ ['p','a','i','n'] ],

    FACiL                     `adj`     {- <lA`i^g> -}         [ ['a','r','d','e','n','t'], ['b','u','r','n','i','n','g'] ]
                              `plural`     FawACiL,

    FACiL                     `noun`    {- <lA`i^g> -}         [ unwords [ ['a','r','d','e','n','t'], ['l','o','v','e'] ] ]
                              `plural`     FawACiL ]


cluster_46  = cluster

 |> "l ` s" <| [

    HaFCaL                    `adj`     {- <'al`as> -}         [ unwords [ ['r','e','d'], "-", ['l','i','p','p','e','d'] ] ]
                              `femini`     FaCLA' ]


cluster_47  = cluster

 |> "l ` q" <| [

    FaCiL                     `verb`    {- <la`iq> -}          [ ['l','i','c','k'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FuCL |< aT                `noun`    {- <lu`qaT> -}         [ ['s','p','o','o','n','f','u','l'] ],

    FaCUL                     `noun`    {- <la`Uq> -}          [ ['e','l','e','c','t','u','a','r','y'] ],

    MiFCaL |< aT              `noun`    {- <mil`aqaT> -}       [ ['s','p','o','o','n'] ]
                              `plural`     MaFACiL ]


cluster_48  = cluster

 |> "l ` l" <| [

    FaCL                      `noun`    {- <la`l> -}           [ ['g','a','r','n','e','t'] ] ]


cluster_49  = cluster

 |> "l ` l `" <| [

    KaRDaS                    `verb`    {- <la`la`> -}         [ ['r','e','s','o','u','n','d'], ['r','e','v','e','r','b','e','r','a','t','e'] ],

    TaKaRDaS                  `verb`    {- <tala`la`> -}       [ ['f','l','i','c','k','e','r'], ['s','h','i','m','m','e','r'] ],

    KaRDaS                    `noun`    {- <la`la`> -}         [ unwords [ ['v','i','b','r','a','t','i','o','n'], ['o','f'], ['f','a','t','a'], ['m','o','r','g','a','n','a'] ] ]
                              `plural`     KaRADiS ]


cluster_50  = cluster

 |> "l ` n" <| [

    FaCaL                     `verb`    {- <la`an> -}          [ ['c','u','r','s','e'], ['d','a','m','n'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FACaL                     `verb`    {- <lA`an> -}          [ ['i','m','p','r','e','c','a','t','e'], ['c','u','r','s','e'], ['d','a','m','n'] ],

    TaFACaL                   `verb`    {- <talA`an> -}        [ unwords [ ['e','x','c','h','a','n','g','e'], ['i','m','p','r','e','c','a','t','i','o','n','s'] ] ],

    FaCL                      `noun`    {- <la`n> -}           [ ['c','u','r','s','i','n','g'], ['i','m','p','r','e','c','a','t','i','n','g'] ],

    FaCL |< aT                `noun`    {- <la`naT> -}         [ ['c','u','r','s','e'], ['i','m','p','r','e','c','a','t','i','o','n'] ]
                              `plural`     FaCaL |< At
                              `plural`     FiCAL,

    FuCL |< aT                `noun`    {- <lu`naT> -}         [ ['c','u','r','s','e','d'], ['d','a','m','n','e','d'] ],

    FiCAL                     `noun`    {- <li`An> -}          [ unwords [ ['o','a','t','h'], ['o','f'], ['c','o','n','d','e','m','n','a','t','i','o','n'] ] ],

    FaCIL                     `adj`     {- <la`In> -}          [ ['c','u','r','s','e','d'], ['d','a','m','n','e','d'], ['d','e','t','e','s','t','e','d'] ],

    MaFCUL                    `adj`     {- <mal`Un> -}         [ ['c','u','r','s','e','d'], ['d','a','m','n','e','d'] ]
                              `plural`     MaFCUL |< Un
                              `plural`     MaFACIL,

    MutaFACiL                 `adj`     {- <mutalA`in> -}      [ unwords [ ['c','u','r','s','i','n','g'], ['e','a','c','h'], ['o','t','h','e','r'] ], ['h','o','s','t','i','l','e'] ] ]


cluster_51  = cluster

 |> "l .g b" <| [

    FuCUL                     `noun`    {- <lu.gUb> -}         [ ['e','x','h','a','u','s','t','i','o','n'], ['t','o','i','l'] ],

    FaCUL                     `noun`    {- <la.gUb> -}         [ ['e','x','h','a','u','s','t','i','o','n'], ['t','o','i','l'] ],

    FACiL                     `adj`     {- <lA.gib> -}         [ ['l','a','n','g','u','i','d'], ['w','e','a','r','y'] ]
                              `plural`     FuCCAL ]


cluster_52  = cluster

 |> "l .g d" <| [

    FuCL                      `noun`    {- <lu.gd> -}          [ ['c','h','i','n'] ]
                              `plural`     HaFCAL
                              `plural`     FuCUL,

    FuCLUL                    `noun`    {- <lu.gdUd> -}        [ ['c','h','i','n'] ]
                              `plural`     FaCALIL,

    FuCuL                     `noun`    {- <lu.gud> -}         [ ['L','u','g','h','u','d'] ]
                              `plural`     FuCL ]


cluster_53  = cluster

 |> ['l','U','.','g','A','r','I','t','m'] <| [

    _____                     `noun`    {- <lU.gArItm> -}      [ ['l','o','g','a','r','i','t','h','m'] ] ]


cluster_54  = cluster

 |> "l .g z" <| [

    FaCaL                     `verb`    {- <la.gaz> -}         [ ['e','q','u','i','v','o','c','a','t','e'], unwords [ ['s','p','e','a','k'], ['i','n'], ['r','i','d','d','l','e','s'] ] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <lA.gaz> -}         [ ['e','q','u','i','v','o','c','a','t','e'], unwords [ ['s','p','e','a','k'], ['i','n'], ['r','i','d','d','l','e','s'] ] ],

    HaFCaL                    `verb`    {- <'al.gaz> -}        [ ['e','q','u','i','v','o','c','a','t','e'], unwords [ ['s','p','e','a','k'], ['i','n'], ['r','i','d','d','l','e','s'] ] ],

    FuCL                      `noun`    {- <lu.gz> -}          [ ['m','y','s','t','e','r','y'], ['e','n','i','g','m','a'], ['r','i','d','d','l','e'] ]
                              `plural`     HaFCAL,

    MuFCaL                    `adj`     {- <mul.gaz> -}        [ ['m','y','s','t','e','r','i','o','u','s'], ['e','n','i','g','m','a','t','i','c'], ['c','r','y','p','t','i','c'] ] ]


cluster_55  = cluster

 |> "l .g .t" <| [

    FaCaL                     `verb`    {- <la.ga.t> -}        [ unwords [ ['b','e'], ['n','o','i','s','y'] ], unwords [ ['b','e'], ['c','l','a','m','o','r','o','u','s'] ] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FaCIL,

    FaCCaL                    `verb`    {- <la.g.ga.t> -}      [ unwords [ ['b','e'], ['n','o','i','s','y'] ], unwords [ ['b','e'], ['c','l','a','m','o','r','o','u','s'] ] ],

    HaFCaL                    `verb`    {- <'al.ga.t> -}       [ unwords [ ['b','e'], ['n','o','i','s','y'] ], unwords [ ['b','e'], ['c','l','a','m','o','r','o','u','s'] ] ],

    FaCL                      `noun`    {- <la.g.t> -}         [ ['n','o','i','s','e'], ['c','l','a','m','o','r'] ]
                              `plural`     HaFCAL ]


cluster_56  = cluster

 |> "l .g m" <| [

    FaCaL                     `verb`    {- <la.gam> -}         [ unwords [ ['p','l','a','n','t'], ['m','i','n','e','s'] ], ['u','n','d','e','r','m','i','n','e'] ]
                              `imperf`     FCaL
                              `imperf`     FCuL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <la.g.gam> -}       [ unwords [ ['p','l','a','n','t'], ['m','i','n','e','s'] ], ['u','n','d','e','r','m','i','n','e'] ],

    FaCL                      `noun`    {- <la.gm> -}          [ ['m','i','n','i','n','g'] ],

    FuCL                      `noun`    {- <lu.gm> -}          [ ['m','i','n','e'] ]
                              `plural`     HaFCAL,

    FaCaL                     `noun`    {- <la.gam> -}         [ ['m','i','n','e'] ]
                              `plural`     HaFCAL,

    HiFCAL                    `noun`    {- <'il.gAm> -}        [ ['m','i','n','i','n','g'], unwords [ ['l','a','y','i','n','g'], ['m','i','n','e','s'] ] ]
                              `plural`     HiFCAL |< At,

    MaFCUL                    `adj`     {- <mal.gUm> -}        [ ['m','i','n','e','d'] ],

    MuFaCCaL                  `adj`     {- <mula.g.gam> -}     [ ['m','i','n','e','d'] ] ]

 |> "l .g m" <| [

    HaFCaL                    `verb`    {- <'al.gam> -}        [ ['a','m','a','l','g','a','m','a','t','e'], unwords [ ['a','l','l','o','y'], ['w','i','t','h'], ['m','e','r','c','u','r','y'] ] ],

    HiFCAL                    `noun`    {- <'il.gAm> -}        [ ['a','m','a','l','g','a','m','a','t','i','o','n'] ],

    FuCAL                     `noun`    {- <lu.gAm> -}         [ ['f','o','a','m'], ['f','r','o','t','h'] ] ]


cluster_57  = cluster

 |> "l .g m .t" <| [

    KaRDaS                    `verb`    {- <la.gma.t> -}       [ ['s','u','l','l','y'], ['s','m','e','a','r'] ],

    KaRDaS |< aT              `noun`    {- <la.gma.taT> -}     [ ['s','u','l','l','y','i','n','g'], ['s','m','e','a','r','i','n','g'] ] ]


cluster_58  = cluster

 |> "l f t" <| [

    FaCaL                     `verb`    {- <lafat> -}          [ ['t','u','r','n'], ['a','t','t','r','a','c','t'] ]
                              `imperf`     FCiL,

    FaCCaL                    `verb`    {- <laffat> -}         [ ['t','u','r','n'], ['a','t','t','r','a','c','t'] ],

    HaFCaL                    `verb`    {- <'alfat> -}         [ ['t','u','r','n'], ['a','t','t','r','a','c','t'] ],

    TaFaCCaL                  `verb`    {- <talaffat> -}       [ unwords [ ['t','u','r','n'], ['a','r','o','u','n','d'] ] ],

    IFtaCaL                   `verb`    {- <iltafat> -}        [ unwords [ ['t','u','r','n'], ['a','r','o','u','n','d'] ], ['h','e','e','d'], ['c','o','n','s','i','d','e','r'] ],

    IstaFCaL                  `verb`    {- <istalfat> -}       [ ['a','t','t','r','a','c','t'], ['a','r','o','u','s','e'] ],

    FaCL                      `noun`    {- <laft> -}           [ ['d','i','r','e','c','t','i','n','g'] ],

    FiCL                      `noun`    {- <lift> -}           [ ['t','u','r','n','i','p'] ],

    FaCL |< aT                `noun`    {- <laftaT> -}         [ ['t','u','r','n','a','r','o','u','n','d'], unwords [ ['a','b','o','u','t'], "-", ['f','a','c','e'] ] ]
                              `plural`     FaCaL |< At,

    FaCUL                     `adj`     {- <lafUt> -}          [ ['s','u','l','l','e','n'], unwords [ ['i','l','l'], "-", ['t','e','m','p','e','r','e','d'] ] ],

    FaCAL                     `adj`     {- <lafAt> -}          [ ['s','u','l','l','e','n'], unwords [ ['i','l','l'], "-", ['t','e','m','p','e','r','e','d'] ] ],

    HaFCaL                    `adj`     {- <'alfat> -}         [ unwords [ ['l','e','f','t'], "-", ['h','a','n','d','e','d'] ] ]
                              `plural`     FuCL
                              `femini`     FaCLA',

    HiFCAL                    `noun`    {- <'ilfAt> -}         [ ['d','i','r','e','c','t','i','n','g'] ],

    IFtiCAL                   `noun`    {- <iltifAt> -}        [ ['t','u','r','n','i','n','g'], ['a','t','t','e','n','t','i','o','n'] ],

    IFtiCAL |< aT             `noun`    {- <iltifAtaT> -}      [ ['t','u','r','n'], ['g','l','a','n','c','e'] ],

    IstiFCAL                  `noun`    {- <istilfAt> -}       [ unwords [ ['f','e','i','g','n','e','d'], ['a','t','t','e','n','t','i','o','n'] ] ],

    FACiL                     `adj`     {- <lAfit> -}          [ ['a','t','t','r','a','c','t','i','n','g'], ['t','u','r','n','i','n','g'] ],

    FACiL |< aT               `noun`    {- <lAfitaT> -}        [ ['b','i','l','l','b','o','a','r','d'], ['p','l','a','c','a','r','d'] ]
                              `plural`     FACiL |< At,

    MuFCiL                    `adj`     {- <mulfit> -}         [ ['a','t','t','r','a','c','t','i','n','g'], ['t','u','r','n','i','n','g'] ],

    MuFtaCiL                  `adj`     {- <multafit> -}       [ unwords [ ['t','u','r','n','i','n','g'], ['a','r','o','u','n','d'] ], ['a','t','t','e','n','t','i','v','e'] ] ]


cluster_59  = cluster

 |> ['l','i','f','I','_','t','A','n'] <| [

    _____                     `noun`    {- <lifI_tAn> -}       [ ['l','e','v','i','a','t','h','a','n'] ],

    _____ |< Iy               `adj`     {- <lifI_tAnIy> -}     [ ['l','e','v','i','a','t','h','a','n'] ] ]


cluster_60  = cluster

 |> "l f .h" <| [

    FaCaL                     `verb`    {- <lafa.h> -}         [ ['b','u','r','n'], ['b','r','u','s','h'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <laf.h> -}          [ ['b','u','r','n','i','n','g'], ['b','r','u','s','h','i','n','g'] ],

    FaCaLAn                   `noun`    {- <lafa.hAn> -}       [ ['b','u','r','n','i','n','g'], ['b','r','u','s','h','i','n','g'] ],

    FaCL |< aT                `noun`    {- <laf.haT> -}        [ ['h','e','a','t'], ['f','i','r','e'] ]
                              `plural`     FaCaL |< At,

    FaCUL                     `adj`     {- <lafU.h> -}         [ ['b','u','r','n','i','n','g'], ['s','c','o','r','c','h','i','n','g'] ],

    FACiL                     `adj`     {- <lAfi.h> -}         [ ['b','u','r','n','i','n','g'], ['s','c','o','r','c','h','i','n','g'] ]
                              `plural`     FawACiL,

    FuCCAL                    `noun`    {- <luffA.h> -}        [ ['m','a','n','d','r','a','k','e'] ],

    TaFCIL |< aT              `noun`    {- <talfI.haT> -}      [ unwords [ ['s','i','l','k'], ['m','u','f','f','l','e','r'] ] ]
                              `plural`     TaFACIL ]


cluster_61  = cluster

 |> "l f .z" <| [

    FaCaL                     `verb`    {- <lafa.z> -}         [ ['p','r','o','n','o','u','n','c','e'], ['e','x','p','r','e','s','s'] ]
                              `imperf`     FCiL,

    TaFaCCaL                  `verb`    {- <talaffa.z> -}      [ ['p','r','o','n','o','u','n','c','e'], ['e','x','p','r','e','s','s'] ],

    FaCL                      `noun`    {- <laf.z> -}          [ ['w','o','r','d'], ['t','e','r','m'], ['e','x','p','r','e','s','s','i','o','n'] ]
                              `plural`     HaFCAL,

    FaCL |<< "aN"             `noun`    {- <laf.zaN> -}        [ ['v','e','r','b','a','t','i','m'], ['l','i','t','e','r','a','l','l','y'] ],

    FaCL |< Iy                `adj`     {- <laf.zIy> -}        [ ['l','i','t','e','r','a','l'], ['v','e','r','b','a','l'] ],

    FaCL |< aT                `noun`    {- <laf.zaT> -}        [ ['u','t','t','e','r','a','n','c','e'], ['w','o','r','d'] ]
                              `plural`     FaCaL |< At,

    FaCIL                     `adj`     {- <lafI.z> -}         [ ['e','m','i','t','t','e','d'], ['p','r','o','n','o','u','n','c','e','d'] ],

    TaFaCCuL                  `noun`    {- <talaffu.z> -}      [ ['p','r','o','n','u','n','c','i','a','t','i','o','n'], ['a','r','t','i','c','u','l','a','t','i','o','n'] ]
                              `plural`     TaFaCCuL |< At,

    MaFCUL                    `adj`     {- <malfU.z> -}        [ ['e','m','i','t','t','e','d'], ['p','r','o','n','o','u','n','c','e','d'] ] ]


cluster_62  = cluster

 |> "l f `" <| [

    FaCaL                     `verb`    {- <lafa`> -}          [ ['c','o','v','e','r'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <laffa`> -}         [ ['c','o','v','e','r'], ['w','r','a','p'] ],

    TaFaCCaL                  `verb`    {- <talaffa`> -}       [ unwords [ ['b','e'], ['w','r','a','p','p','e','d'], ['u','p'] ] ],

    IFtaCaL                   `verb`    {- <iltafa`> -}        [ unwords [ ['b','e'], ['w','r','a','p','p','e','d'], ['u','p'] ] ],

    FiCAL                     `noun`    {- <lifA`> -}          [ ['m','u','f','f','l','e','r'] ],

    MiFCaL                    `noun`    {- <milfa`> -}         [ ['m','u','f','f','l','e','r'] ] ]


cluster_63  = cluster

 |> "l f q" <| [

    FaCCaL                    `verb`    {- <laffaq> -}         [ ['c','o','n','c','o','c','t'], ['f','a','l','s','i','f','y'] ],

    TaFCIL                    `noun`    {- <talfIq> -}         [ ['c','o','n','c','o','c','t','i','o','n'], ['f','a','l','s','i','f','i','c','a','t','i','o','n'] ],

    TaFCIL |< aT              `noun`    {- <talfIqaT> -}       [ unwords [ ['c','o','n','c','o','c','t','e','d'], ['s','t','o','r','y'] ], ['f','a','b','r','i','c','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCaL                  `adj`     {- <mulaffaq> -}       [ ['f','a','b','r','i','c','a','t','e','d'], ['f','a','l','s','i','f','i','e','d'] ] ]


cluster_64  = cluster

 |> "l f l f" <| [

    KaRDaS                    `verb`    {- <laflaf> -}         [ unwords [ ['w','r','a','p'], ['u','p'] ], ['e','n','v','e','l','o','p'] ],

    TaKaRDaS                  `verb`    {- <talaflaf> -}       [ unwords [ ['b','e'], ['e','n','v','e','l','o','p','e','d'] ], unwords [ ['b','e'], ['w','r','a','p','p','e','d'] ] ],

    KaRDaS |< aT              `noun`    {- <laflafaT> -}       [ ['w','r','a','p','p','i','n','g'], ['e','n','v','e','l','o','p','i','n','g'] ] ]


cluster_65  = cluster

 |> "l q b" <| [

    FaCCaL                    `verb`    {- <laqqab> -}         [ ['c','a','l','l'], unwords [ ['a','d','d','r','e','s','s'], ['a','s'] ] ],

    TaFaCCaL                  `verb`    {- <talaqqab> -}       [ unwords [ ['b','e'], ['c','a','l','l','e','d'] ], unwords [ ['b','e'], ['a','d','d','r','e','s','s','e','d'], ['a','s'] ] ],

    FaCaL                     `noun`    {- <laqab> -}          [ ['t','i','t','l','e'], ['n','i','c','k','n','a','m','e'] ]
                              `plural`     HaFCAL,

    MuFaCCaL                  `adj`     {- <mulaqqab> -}       [ ['n','i','c','k','n','a','m','e','d'], ['c','a','l','l','e','d'] ] ]


cluster_66  = cluster

 |> "l q .h" <| [

    FaCaL                     `verb`    {- <laqa.h> -}         [ ['i','n','o','c','u','l','a','t','e'], ['p','o','l','l','i','n','a','t','e'], ['i','m','p','r','e','g','n','a','t','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <laqqa.h> -}        [ ['i','n','o','c','u','l','a','t','e'], ['p','o','l','l','i','n','a','t','e'], ['i','m','p','r','e','g','n','a','t','e'] ],

    TaFACaL                   `verb`    {- <talAqa.h> -}       [ unwords [ ['c','r','o','s','s'], "-", ['p','o','l','l','i','n','a','t','e'] ] ],

    FaCL                      `noun`    {- <laq.h> -}          [ ['i','n','o','c','u','l','a','t','i','o','n'], ['p','o','l','l','i','n','a','t','i','o','n'], ['i','m','p','r','e','g','n','a','t','i','o','n'] ],

    FaCAL                     `noun`    {- <laqA.h> -}         [ ['v','a','c','c','i','n','e'], ['p','o','l','l','e','n'], ['s','e','m','e','n'] ],

    TaFCIL                    `noun`    {- <talqI.h> -}        [ ['i','n','o','c','u','l','a','t','i','o','n'], ['p','o','l','l','i','n','a','t','i','o','n'], ['i','m','p','r','e','g','n','a','t','i','o','n'] ]
                              `plural`     TaFCIL |< At,

    FawACiL                   `noun`    {- <lawAqi.h> -}       [ ['p','o','l','l','e','n'] ]
                              `plural`     FawACiL
                           
    `limited` "-------P--",

    MuFaCCaL                  `adj`     {- <mulaqqa.h> -}      [ ['v','a','c','c','i','n','a','t','e','d'], ['i','n','o','c','u','l','a','t','e','d'] ] ]


cluster_67  = cluster

 |> "l q s" <| [

    FaCiL                     `adj`     {- <laqis> -}          [ ['a','n','n','o','y','e','d'] ] ]


cluster_68  = cluster

 |> "l q .t" <| [

    FaCaL                     `verb`    {- <laqa.t> -}         [ ['g','a','t','h','e','r'], ['c','o','l','l','e','c','t'] ]
                              `imperf`     FCuL,

    FaCCaL                    `verb`    {- <laqqa.t> -}        [ ['g','a','t','h','e','r'], ['c','o','l','l','e','c','t'] ],

    TaFaCCaL                  `verb`    {- <talaqqa.t> -}      [ ['g','a','t','h','e','r'], ['c','o','l','l','e','c','t'] ],

    IFtaCaL                   `verb`    {- <iltaqa.t> -}       [ ['o','b','t','a','i','n'], ['r','e','c','e','i','v','e'], ['c','o','l','l','e','c','t'] ],

    FaCaL                     `noun`    {- <laqa.t> -}         [ ['g','l','e','a','n','i','n','g','s'] ],

    FaCL |< aT                `noun`    {- <laq.taT> -}        [ ['p','i','c','t','u','r','e'], ['s','n','a','p','s','h','o','t'] ]
                              `plural`     FaCaL |< At,

    FuCL |< aT                `noun`    {- <luq.taT> -}        [ unwords [ ['l','u','c','k','y'], ['f','i','n','d'] ], ['b','a','r','g','a','i','n'] ]
                              `plural`     FuCaL,

    FuCAL                     `noun`    {- <luqA.t> -}         [ ['g','l','e','a','n','e','d'], ['l','e','f','t','o','v','e','r'] ],

    FaCIL                     `adj`     {- <laqI.t> -}         [ unwords [ ['p','i','c','k','e','d'], ['u','p'] ], ['f','o','u','n','d'], ['f','o','u','n','d','l','i','n','g'] ]
                              `plural`     FuCaLA',

    MiFCaL                    `noun`    {- <milqa.t> -}        [ ['t','w','e','e','z','e','r','s'], ['p','l','i','e','r','s'], ['p','i','n','c','e','r','s'] ]
                              `plural`     MaFACiL,

    IFtiCAL                   `noun`    {- <iltiqA.t> -}       [ ['r','e','c','e','p','t','i','o','n'], ['o','b','t','a','i','n','i','n','g'] ]
                              `plural`     IFtiCAL |< At,

    FACiL                     `noun`    {- <lAqi.t> -}         [ ['r','e','c','e','i','v','e','r'], ['p','i','c','k','u','p'], ['c','o','l','l','e','c','t','o','r'] ]
                              `plural`     FACiL |< At,

    FACiL |< aT               `noun`    {- <lAqi.taT> -}       [ ['d','e','t','e','c','t','o','r'], unwords [ ['s','e','a','r','c','h'], ['d','e','v','i','c','e'] ] ]
                              `plural`     FACiL |< At,

    MuFtaCiL                  `noun`    {- <multaqi.t> -}      [ ['r','e','c','e','i','v','e','r'], ['d','e','t','e','c','t','o','r'] ] ]


cluster_69  = cluster

 |> "l q `" <| [

    FaCaL                     `verb`    {- <laqa`> -}          [ ['d','i','s','c','a','r','d'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <laq`> -}           [ ['d','i','s','c','a','r','d','i','n','g'] ] ]


cluster_70  = cluster

 |> "l q f" <| [

    FaCiL                     `verb`    {- <laqif> -}          [ ['s','e','i','z','e'], ['c','a','t','c','h'] ]
                              `imperf`     FCaL,

    TaFaCCaL                  `verb`    {- <talaqqaf> -}       [ ['s','e','i','z','e'], ['c','a','t','c','h'] ],

    IFtaCaL                   `verb`    {- <iltaqaf> -}        [ ['s','e','i','z','e'], ['c','a','t','c','h'] ],

    FaCL                      `noun`    {- <laqf> -}           [ ['s','e','i','z','i','n','g'], ['c','a','t','c','h','i','n','g'] ],

    FaCaLAn                   `noun`    {- <laqafAn> -}        [ ['s','e','i','z','i','n','g'], ['c','a','t','c','h','i','n','g'] ] ]


cluster_71  = cluster

 |> "l q l q" <| [

    KaRDaS                    `verb`    {- <laqlaq> -}         [ ['b','a','b','b','l','e'], ['c','h','a','t','t','e','r'] ],

    KaRDaS |< aT              `noun`    {- <laqlaqaT> -}       [ ['c','h','a','t','t','e','r','i','n','g'], ['g','o','s','s','i','p'] ],

    KaRDaS                    `noun`    {- <laqlaq> -}         [ ['s','t','o','r','k'] ]
                              `plural`     KaRADiS,

    KaRDAS                    `noun`    {- <laqlAq> -}         [ ['s','t','o','r','k'] ]
                              `plural`     KaRADiS ]


cluster_72  = cluster

 |> "l q m" <| [

    FaCaL                     `verb`    {- <laqam> -}          [ ['o','b','s','t','r','u','c','t'] ]
                              `imperf`     FCuL,

    FaCiL                     `verb`    {- <laqim> -}          [ ['e','a','t'], ['s','w','a','l','l','o','w'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <laqqam> -}         [ ['f','e','e','d'], ['s','u','p','p','l','y'], ['l','o','a','d'], ['u','p','l','o','a','d'] ],

    HaFCaL                    `verb`    {- <'alqam> -}         [ unwords [ ['m','a','k','e'], ['s','w','a','l','l','o','w'] ], ['f','e','e','d'] ],

    IFtaCaL                   `verb`    {- <iltaqam> -}        [ ['s','w','a','l','l','o','w'], ['d','e','v','o','u','r'] ],

    FuCL |< aT                `noun`    {- <luqmaT> -}         [ ['m','o','r','s','e','l'], unwords [ ['d','a','i','l','y'], ['b','r','e','a','d'] ], ['b','i','t','e','s'] ]
                              `plural`     FuCaL,

    FuCayL |< aT              `noun`    {- <luqaymaT> -}       [ ['s','n','a','c','k'], unwords [ ['s','m','a','l','l'], ['b','i','t','e'] ] ],

    FaCIL                     `noun`    {- <laqIm> -}          [ ['s','u','p','p','l','y'], ['l','o','a','d'] ],

    MuFaCCiL                  `noun`    {- <mulaqqim> -}       [ unwords [ ['s','e','c','o','n','d'], ['g','u','n','n','e','r'] ], unwords [ ['m','o','r','t','a','r'], ['m','a','n'] ] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT,

    FaCL |< Iy                `adj`     {- <laqmIy> -}         [ unwords [ ['p','a','l','m'], ['w','i','n','e'] ] ],

    FACiL |< Iy               `adj`     {- <lAqimIy> -}        [ unwords [ ['p','a','l','m'], ['w','i','n','e'] ] ],

    FuCLAn                    `noun`    {- <luqmAn> -}         [ ['L','u','q','m','a','n'] ],

    TaFCIL                    `noun`    {- <talqIm> -}         [ ['f','e','e','d','i','n','g'], ['s','u','p','p','l','y','i','n','g'], ['l','o','a','d','i','n','g'], ['u','p','l','o','a','d','i','n','g'] ]
                              `plural`     TaFCIL |< At ]


cluster_73  = cluster

 |> "l q n" <| [

    FaCiL                     `verb`    {- <laqin> -}          [ ['u','n','d','e','r','s','t','a','n','d'], ['i','n','f','e','r'] ]
                              `imperf`     FCaL,

    FaCCaL                    `verb`    {- <laqqan> -}         [ ['t','e','a','c','h'], ['i','n','s','t','r','u','c','t'], ['s','u','g','g','e','s','t'] ],

    TaFaCCaL                  `verb`    {- <talaqqan> -}       [ ['u','n','d','e','r','s','t','a','n','d'], ['i','n','f','e','r'] ],

    FaCAL |< aT               `noun`    {- <laqAnaT> -}        [ unwords [ ['q','u','i','c','k'], ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ], unwords [ ['q','u','i','c','k'], ['g','r','a','s','p'] ] ],

    FaCAL |< Iy |< aT         `noun`    {- <laqAnIyaT> -}      [ unwords [ ['q','u','i','c','k'], ['u','n','d','e','r','s','t','a','n','d','i','n','g'] ], unwords [ ['q','u','i','c','k'], ['g','r','a','s','p'] ] ],

    TaFCIL                    `noun`    {- <talqIn> -}         [ ['i','n','s','t','r','u','c','t','i','o','n'], ['d','i','c','t','a','t','i','o','n'], ['s','u','g','g','e','s','t','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    MuFaCCiL                  `noun`    {- <mulaqqin> -}       [ ['p','r','o','m','p','t','e','r'], ['i','n','s','p','i','r','e','r'] ]
                              `plural`     MuFaCCiL |< Un
                              `femini`     MuFaCCiL |< aT ]


cluster_74  = cluster

 |> "l k z" <| [

    FaCaL                     `verb`    {- <lakaz> -}          [ ['s','t','r','i','k','e'], ['k','i','c','k'] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <lakz> -}           [ ['s','t','r','i','k','i','n','g'], ['k','i','c','k','i','n','g'] ],

    FaCiL                     `adj`     {- <lakiz> -}          [ ['m','i','s','e','r','l','y'], ['s','t','i','n','g','y'] ],

    FiCAL                     `noun`    {- <likAz> -}          [ ['p','i','n'], ['n','a','i','l'], ['p','e','g'] ] ]


cluster_75  = cluster

 |> "l k `" <| [

    FaCIL                     `adj`     {- <lakI`> -}          [ ['w','i','c','k','e','d'], ['d','e','p','r','a','v','e','d'] ]
                              `plural`     FuCaLA',

    FaCAL |< aT               `noun`    {- <lakA`aT> -}        [ ['w','i','c','k','e','d','n','e','s','s'], ['d','e','p','r','a','v','i','t','y'] ] ]


cluster_76  = cluster

 |> "l k m" <| [

    FaCaL                     `verb`    {- <lakam> -}          [ ['p','u','n','c','h'] ]
                              `imperf`     FCuL,

    FACaL                     `verb`    {- <lAkam> -}          [ unwords [ ['h','a','v','e'], "a", ['f','i','s','t'], ['f','i','g','h','t'], ['w','i','t','h'] ], unwords [ ['b','o','x'], ['w','i','t','h'] ] ],

    FaCL                      `noun`    {- <lakm> -}           [ ['p','u','n','c','h','i','n','g'] ],

    FaCL |< aT                `noun`    {- <lakmaT> -}         [ ['p','u','n','c','h'] ]
                              `plural`     FaCaL |< At,

    MiFCaL |< aT              `noun`    {- <milkamaT> -}       [ unwords [ ['b','o','x','i','n','g'], ['g','l','o','v','e'] ] ],

    MuFACaL |< aT             `noun`    {- <mulAkamaT> -}      [ ['b','o','x','i','n','g'] ],

    MuFACiL                   `noun`    {- <mulAkim> -}        [ ['b','o','x','e','r'], ['p','u','g','i','l','i','s','t'] ]
                              `plural`     MuFACiL |< Un
                              `femini`     MuFACiL |< aT ]


cluster_77  = cluster

 |> "l k n" <| [

    FaCiL                     `verb`    {- <lakin> -}          [ ['s','t','a','m','m','e','r'] ]
                              `imperf`     FCaL,

    FaCL |< aT                `noun`    {- <laknaT> -}         [ ['a','c','c','e','n','t'] ],

    FuCL |< aT                `noun`    {- <luknaT> -}         [ unwords [ ['i','n','c','o','r','r','e','c','t'], ['p','r','o','n','u','n','c','i','a','t','i','o','n'] ] ],

    FaCAL |< aT               `noun`    {- <lakAnaT> -}        [ ['s','t','a','m','m','e','r'], unwords [ ['s','p','e','e','c','h'], ['d','e','f','e','c','t'] ] ],

    FuCUL |< aT               `noun`    {- <lukUnaT> -}        [ ['s','t','a','m','m','e','r'], unwords [ ['s','p','e','e','c','h'], ['d','e','f','e','c','t'] ] ],

    HaFCaL                    `adj`     {- <'alkan> -}         [ ['s','t','a','m','m','e','r','i','n','g'], ['s','t','u','t','t','e','r','i','n','g'] ]
                              `femini`     FaCLA' ]

 |> "l k n" <| [

    FaCaL                     `noun`    {- <lakan> -}          [ ['b','a','s','i','n','s'] ]
                              `plural`     HaFCAL ]


cluster_78  = cluster

 |> ['l','U','k','A','n','d'] <| [

    _____ |< aT               `noun`    {- <lUkAndaT> -}       [ ['h','o','t','e','l'] ] ]


cluster_79  = cluster

 |> ['l','A','m'] <| [

    _____                     `noun`    {- <lAm> -}            [ unwords [ ['l','a','m'], "(", ['A','r','a','b','i','c'], ['l','e','t','t','e','r'], ")" ] ]
                              `plural`     _____ |< At ]


cluster_80  = cluster

 |> ['l','a','m'] <| [

    _____                     `part`    {- <lam> -}            [ ['n','o','t'] ],

    _____ |<< "mA"            `part`    {- <lammA> -}          [ ['n','o','t'] ],

    _____ |<< "mA"            `conj`    {- <lammA> -}          [ ['w','h','e','n'], ['a','f','t','e','r'] ],

    "mA" >>| _____            `conj`    {- <mAlam> -}          [ unwords [ ['a','s'], ['l','o','n','g'], ['a','s'] ] ] ]


cluster_81  = cluster

 |> "l m ^g" <| [

    TaFaCCaL                  `verb`    {- <talamma^g> -}      [ unwords [ ['h','a','v','e'], "a", ['s','n','a','c','k'] ] ],

    FuCL |< aT                `noun`    {- <lum^gaT> -}        [ ['a','p','p','e','t','i','z','e','r'], ['s','n','a','c','k'] ] ]


cluster_82  = cluster

 |> "l m .h" <| [

    FaCaL                     `verb`    {- <lama.h> -}         [ ['g','l','a','n','c','e'], ['n','o','t','i','c','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL,

    FaCCaL                    `verb`    {- <lamma.h> -}        [ ['a','l','l','u','d','e'], ['r','e','f','e','r'] ],

    FACaL                     `verb`    {- <lAma.h> -}         [ unwords [ ['g','l','a','n','c','e'], ['a','t'] ] ],

    HaFCaL                    `verb`    {- <'alma.h> -}        [ ['m','e','n','t','i','o','n'], ['r','e','f','e','r'] ],

    TaFACaL                   `verb`    {- <talAma.h> -}       [ ['a','p','p','e','a','r'] ],

    FaCL                      `noun`    {- <lam.h> -}          [ ['g','l','a','n','c','e'], ['i','n','s','t','a','n','t'] ],

    FaCL |< aT                `noun`    {- <lam.haT> -}        [ ['g','l','a','n','c','e'], ['g','l','i','m','p','s','e'] ]
                              `plural`     FaCaL |< At,

    FaCCAL                    `adj`     {- <lammA.h> -}        [ ['s','h','i','n','i','n','g'] ],

    MaFACiL                   `noun`    {- <malAmi.h> -}       [ ['f','e','a','t','u','r','e','s'], ['c','h','a','r','a','c','t','e','r','i','s','t','i','c','s'] ]
                              `plural`     MaFACiL
                           
    `limited` "-------P--",

    TaFCIL                    `noun`    {- <talmI.h> -}        [ ['a','l','l','u','s','i','o','n'], ['s','u','g','g','e','s','t','i','o','n'], unwords [ ['e','a','r','l','y'], ['s','y','m','p','t','o','m','s'] ] ]
                              `plural`     TaFCIL |< At
                              `plural`     TaFACIL,

    MuFaCCiL                  `adj`     {- <mulammi.h> -}      [ ['a','l','l','u','d','i','n','g'], ['r','e','f','e','r','r','i','n','g'] ] ]


cluster_83  = cluster

 |> "l m z" <| [

    FaCaL                     `verb`    {- <lamaz> -}          [ ['c','r','i','t','i','c','i','z','e'], ['s','l','a','n','d','e','r'] ]
                              `imperf`     FCiL
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <lamz> -}           [ ['c','r','i','t','i','c','i','z','i','n','g'], ['s','l','a','n','d','e','r','i','n','g'] ],

    FuCaL |< aT               `noun`    {- <lumazaT> -}        [ unwords [ ['f','a','u','l','t'], "-", ['f','i','n','d','e','r'] ], ['c','a','r','p','e','r'] ],

    FaCCAL                    `adj`     {- <lammAz> -}         [ unwords [ ['f','a','u','l','t'], "-", ['f','i','n','d','e','r'] ], ['c','a','r','p','e','r'] ] ]


cluster_84  = cluster

 |> "l m s" <| [

    FaCaL                     `verb`    {- <lamas> -}          [ ['t','o','u','c','h'], ['p','e','r','c','e','i','v','e'] ]
                              `imperf`     FCuL
                              `imperf`     FCiL
                              `masdar`     FaCL,

    FACaL                     `verb`    {- <lAmas> -}          [ ['t','o','u','c','h'], ['f','e','e','l'] ],

    TaFaCCaL                  `verb`    {- <talammas> -}       [ unwords [ ['f','e','e','l'], ['o','u','t'] ], ['g','r','o','p','e'] ],

    TaFACaL                   `verb`    {- <talAmas> -}        [ unwords [ ['b','e'], ['i','n'], ['m','u','t','u','a','l'], ['c','o','n','t','a','c','t'] ] ],

    IFtaCaL                   `verb`    {- <iltamas> -}        [ ['s','o','l','i','c','i','t'], unwords [ ['s','e','a','r','c','h'], ['f','o','r'] ] ],

    FaCL                      `noun`    {- <lams> -}           [ ['f','e','e','l','i','n','g'], ['t','o','u','c','h'] ],

    FaCL |< Iy                `adj`     {- <lamsIy> -}         [ ['t','a','c','t','i','l','e'], ['t','o','u','c','h'] ],

    FaCL |< aT                `noun`    {- <lamsaT> -}         [ ['t','o','u','c','h'], ['t','i','n','g','e'], ['t','r','a','c','e'] ]
                              `plural`     FaCaL |< At,

    FaCL |< Iy |< aT          `noun`    {- <lamsIyaT> -}       [ unwords [ ['u','n','r','i','p','e'], ['d','a','t','e'] ] ],

    FaCIL                     `adj`     {- <lamIs> -}          [ unwords [ ['s','o','f','t'], ['t','o'], ['t','h','e'], ['t','o','u','c','h'] ] ],

    MaFCaL                    `noun`    {- <malmas> -}         [ ['t','o','u','c','h'] ],

    MaFCaL                    `noun`    {- <malmas> -}         [ unwords [ ['p','o','i','n','t'], ['o','f'], ['c','o','n','t','a','c','t'] ] ]
                              `plural`     MaFACiL,

    MaFCaL |< Iy              `adj`     {- <malmasIy> -}       [ ['t','a','c','t','u','a','l'], ['t','a','c','t','i','l','e'] ],

    MuFACaL |< aT             `noun`    {- <mulAmasaT> -}      [ ['t','o','u','c','h','i','n','g'], ['f','e','e','l','i','n','g'] ],

    TaFaCCuL                  `noun`    {- <talammus> -}       [ ['s','e','a','r','c','h'], ['q','u','e','s','t'] ]
                              `plural`     TaFaCCuL |< At,

    TaFACuL                   `noun`    {- <talAmus> -}        [ unwords [ ['m','u','t','u','a','l'], ['c','o','n','t','a','c','t'] ] ]
                              `plural`     TaFACuL |< At,

    IFtiCAL                   `noun`    {- <iltimAs> -}        [ ['r','e','q','u','e','s','t'], ['s','o','l','i','c','i','t','a','t','i','o','n'], ['p','e','t','i','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    MaFCUL                    `adj`     {- <malmUs> -}         [ ['t','a','n','g','i','b','l','e'], ['n','o','t','i','c','e','a','b','l','e'] ],

    MuFtaCaL                  `noun`    {- <multamas> -}       [ ['r','e','q','u','e','s','t'], ['p','e','t','i','t','i','o','n'], ['a','p','p','l','i','c','a','t','i','o','n'] ]
                              `plural`     MuFtaCaL |< At ]


cluster_85  = cluster

 |> "l m .s" <| [

    FaCaL                     `verb`    {- <lama.s> -}         [ unwords [ ['m','a','k','e'], ['f','a','c','e','s'], ['a','t'] ], unwords [ ['r','a','i','l'], ['a','t'] ] ]
                              `imperf`     FCuL,

    FaCL                      `noun`    {- <lam.s> -}          [ unwords [ ['m','a','k','i','n','g'], ['f','a','c','e','s'], ['a','t'] ], unwords [ ['r','a','i','l','i','n','g'], ['a','t'] ] ] ]


cluster_86  = cluster

 |> "l m .z" <| [

    FaCaL                     `verb`    {- <lama.z> -}         [ unwords [ ['s','m','a','c','k'], ['t','h','e'], ['l','i','p','s'] ] ]
                              `imperf`     FCuL,

    TaFaCCaL                  `verb`    {- <talamma.z> -}      [ unwords [ ['s','m','a','c','k'], ['t','h','e'], ['l','i','p','s'] ], ['s','l','a','n','d','e','r'] ],

    FaCL                      `noun`    {- <lam.z> -}          [ unwords [ ['s','m','a','c','k','i','n','g'], ['t','h','e'], ['l','i','p','s'] ] ] ]


cluster_87  = cluster

 |> "l m `" <| [

    FaCaL                     `verb`    {- <lama`> -}          [ ['s','h','i','n','e'], ['g','l','i','t','t','e','r'] ]
                              `imperf`     FCaL
                              `masdar`     FaCL
                              `masdar`     FaCaLAn,

    FaCCaL                    `verb`    {- <lamma`> -}         [ ['p','o','l','i','s','h'], unwords [ ['m','a','k','e'], ['s','h','i','n','e'] ] ],

    HaFCaL                    `verb`    {- <'alma`> -}         [ ['w','a','v','e'], unwords [ ['p','o','i','n','t'], ['o','u','t'] ] ],

    IFtaCaL                   `verb`    {- <iltama`> -}        [ ['f','l','a','s','h'], ['g','l','i','t','t','e','r'] ],

    FaCL                      `noun`    {- <lam`> -}           [ ['s','h','i','n','e'], ['g','l','i','t','t','e','r'] ],

    FaCaLAn                   `noun`    {- <lama`An> -}        [ ['s','h','i','n','e'], ['g','l','i','t','t','e','r'] ],

    FuCL |< aT                `noun`    {- <lum`aT> -}         [ ['s','h','i','n','e'], ['g','l','i','t','t','e','r'] ]
                              `plural`     FuCaL,

    FiCAL                     `noun`    {- <limA`> -}          [ ['s','h','i','n','e'], ['g','l','i','t','t','e','r'] ],

    FaCCAL                    `adj`     {- <lammA`> -}         [ ['s','h','i','n','i','n','g'], ['g','l','o','s','s','y'] ],

    HaFCaL                    `adj`     {- <'alma`> -}         [ ['b','r','i','g','h','t'], ['s','h','r','e','w','d'] ],

    HaFCaL |< Iy              `adj`     {- <'alma`Iy> -}       [ ['b','r','i','g','h','t'], ['s','h','r','e','w','d'] ],

    HaFCaL |< Iy |< aT        `noun`    {- <'alma`IyaT> -}     [ ['c','l','e','v','e','r','n','e','s','s'], ['s','h','r','e','w','d','n','e','s','s'] ],

    TaFCIL                    `noun`    {- <talmI`> -}         [ ['p','o','l','i','s','h','i','n','g'] ]
                              `plural`     TaFCIL |< At,

    HiFCAL                    `noun`    {- <'ilmA`> -}         [ ['a','l','l','u','s','i','o','n'] ]
                              `plural`     HiFCAL |< At,

    FACiL                     `adj`     {- <lAmi`> -}          [ ['s','p','l','e','n','d','i','d'], ['i','l','l','u','s','t','r','i','o','u','s'] ]
                              `plural`     FawACiL,

    FACiL |< aT               `noun`    {- <lAmi`aT> -}        [ ['g','l','o','s','s'], ['s','h','i','n','e'] ],

    MutaFaCCiL                `adj`     {- <mutalammi`> -}     [ ['s','h','i','n','i','n','g'], ['r','a','d','i','a','n','t'] ] ]


cluster_88  = cluster

 |> "l m l m" <| [

    KaRDaS                    `verb`    {- <lamlam> -}         [ unwords [ ['g','a','t','h','e','r'], ['u','p'] ] ],

    MuKaRDiS |< aT            `noun`    {- <mulamlimaT> -}     [ unwords [ ['e','l','e','p','h','a','n','t'], ['t','r','u','n','k'] ], ['p','r','o','b','o','s','c','i','s'] ] ]


cluster_89  = cluster

 |> ['l','I','m','A','n'] <| [

    _____                     `noun`    {- <lImAn> -}          [ ['p','o','r','t'], ['h','a','r','b','o','r'] ]
                              `plural`     _____ |< At,

    _____                     `noun`    {- <lImAn> -}          [ ['p','r','i','s','o','n'] ]
                              `plural`     _____ |< At ]


cluster_90  = cluster

 |> ['l','U','m','A','n'] <| [

    _____                     `noun`    {- <lUmAn> -}          [ ['p','e','n','i','t','e','n','t','i','a','r','y'], unwords [ ['p','e','n','a','l'], ['s','e','r','v','i','t','u','d','e'] ], ['p','r','i','s','o','n'] ],

    _____ |<< "^g" |< Iy      `noun`    {- <lUmAn^gIy> -}      [ ['c','o','n','v','i','c','t'], ['i','n','m','a','t','e'] ] ]


cluster_91  = cluster

 |> ['l','I','m','U','n','A','d'] <| [

    _____                     `noun`    {- <lImUnAd> -}        [ ['l','e','m','o','n','a','d','e'] ] ]


cluster_92  = cluster

 |> ['l','a','m','b'] <| [

    _____ |< aT               `noun`    {- <lambaT> -}         [ ['l','a','m','p'] ]
                              `plural`     _____ |< At ]


cluster_93  = cluster

 |> ['l','a','n'] <| [

    _____                     `part`    {- <lan> -}            [ ['n','o','t'] ] ]


cluster_94  = cluster

 |> ['l','a','n','d','a','n'] <| [

    _____                     `xtra`    {- <landan> -}         [ ['L','o','n','d','o','n'] ],

    _____ |< Iy               `adj`     {- <landanIy> -}       [ ['L','o','n','d','o','n'] ],

    _____ |< Iy               `noun`    {- <landanIy> -}       [ ['L','o','n','d','o','n','e','r'] ]
                              `plural`     _____ |< Iy |< Un
                              `femini`     _____ |< Iy |< aT ]


cluster_95  = cluster

 |> ['l','A','n','^','s'] <| [

    _____                     `noun`    {- <lAn^s> -}          [ ['m','o','t','o','r','b','o','a','t'], ['l','a','u','n','c','h'] ]
                              `plural`     _____ |< At ]

 |> ['l','a','n','^','s'] <| [

    _____                     `noun`    {- <lan^s> -}          [ ['m','o','t','o','r','b','o','a','t'], ['l','a','u','n','c','h'] ]
                              `plural`     _____ |< At ]


cluster_96  = cluster

 |> "l h b" <| [

    FaCiL                     `verb`    {- <lahib> -}          [ ['b','u','r','n'], ['f','l','a','m','e'] ]
                              `imperf`     FCaL
                              `masdar`     FaCaL
                              `masdar`     FaCIL,

    FaCCaL                    `verb`    {- <lahhab> -}         [ ['k','i','n','d','l','e'], ['p','r','o','v','o','k','e'], ['i','n','f','l','a','m','e'] ],

    HaFCaL                    `verb`    {- <'alhab> -}         [ ['k','i','n','d','l','e'], ['p','r','o','v','o','k','e'], ['i','n','f','l','a','m','e'] ],

    TaFaCCaL                  `verb`    {- <talahhab> -}       [ ['b','u','r','n'], unwords [ ['b','e'], ['a','b','l','a','z','e'] ] ],

    IFtaCaL                   `verb`    {- <iltahab> -}        [ unwords [ ['f','l','a','r','e'], ['u','p'] ], unwords [ ['b','e'], ['i','n','f','l','a','m','e','d'] ] ],

    FaCaL                     `noun`    {- <lahab> -}          [ ['f','l','a','m','e'] ],

    FaCIL                     `noun`    {- <lahIb> -}          [ ['f','l','a','m','e'] ],

    FuCAL                     `noun`    {- <luhAb> -}          [ ['f','l','a','m','e'] ],

    FaCLAn                    `adj`     {- <lahbAn> -}         [ ['t','h','i','r','s','t','y'] ]
                              `plural`     FaCLY
                              `plural`     FiCAL,

    HiFCAL                    `noun`    {- <'ilhAb> -}         [ ['k','i','n','d','l','i','n','g'], ['p','r','o','v','o','k','i','n','g'], ['i','n','f','l','a','m','i','n','g'] ]
                              `plural`     HiFCAL |< At,

    IFtiCAL                   `noun`    {- <iltihAb> -}        [ ['i','n','f','l','a','m','m','a','t','i','o','n'] ]
                              `plural`     IFtiCAL |< At,

    IFtiCAL |< Iy             `adj`     {- <iltihAbIy> -}      [ ['i','n','f','l','a','m','m','a','t','o','r','y'], ['i','n','f','l','a','m','m','a','b','l','e'] ],

    MuFtaCiL                  `adj`     {- <multahib> -}       [ ['b','u','r','n','i','n','g'], ['a','b','l','a','z','e'], ['i','n','f','l','a','m','e','d'] ] ]


cluster_97  = cluster

 |> "l h _t" <| [

    FaCaL                     `verb`    {- <laha_t> -}         [ ['p','a','n','t'], ['g','a','s','p'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <lah_t> -}          [ ['p','a','n','t','i','n','g'], ['g','a','s','p','i','n','g'] ],

    FuCAL                     `noun`    {- <luhA_t> -}         [ ['p','a','n','t','i','n','g'], ['g','a','s','p','i','n','g'] ],

    FaCLAn                    `adj`     {- <lah_tAn> -}        [ ['p','a','n','t','i','n','g'], unwords [ ['o','u','t'], ['o','f'], ['b','r','e','a','t','h'] ] ]
                              `plural`     FaCLY,

    FACiL                     `adj`     {- <lAhi_t> -}         [ ['p','a','n','t','i','n','g'], unwords [ ['o','u','t'], ['o','f'], ['b','r','e','a','t','h'] ] ] ]


cluster_98  = cluster

 |> "l h ^g" <| [

    FaCiL                     `verb`    {- <lahi^g> -}         [ unwords [ ['b','e'], ['d','e','d','i','c','a','t','e','d'] ], unwords [ ['b','e'], ['f','o','n','d'], ['o','f'] ] ]
                              `imperf`     FCaL,

    HaFCaL                    `verb`    {- <'alha^g> -}        [ ['p','r','a','i','s','e'] ],

    IFCALL                    `verb`    {- <ilhA^g^g> -}       [ ['c','u','r','d','l','e'], ['c','o','a','g','u','l','a','t','e'] ],

    FaCL |< aT                `noun`    {- <lah^gaT> -}        [ ['t','o','n','e'], ['d','i','a','l','e','c','t'] ]
                              `plural`     FaCaL |< At,

    FuCL |< aT                `noun`    {- <luh^gaT> -}        [ ['a','p','p','e','t','i','z','e','r'] ] ]


cluster_99  = cluster

 |> "l h d" <| [

    FaCaL                     `verb`    {- <lahad> -}          [ ['o','v','e','r','b','u','r','d','e','n'] ]
                              `imperf`     FCaL,

    FaCL                      `noun`    {- <lahd> -}           [ ['o','v','e','r','b','u','r','d','e','n','i','n','g'] ] ]


cluster_100 = cluster

 |> "l h _d m" <| [

    KaRDaS                    `adj`     {- <lah_dam> -}        [ ['p','o','i','n','t','e','d'], ['s','h','a','r','p'] ] ]


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
