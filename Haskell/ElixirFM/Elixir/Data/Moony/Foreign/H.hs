
module Elixir.Data.Moony.Foreign.H (section) where

import Elixir.Lexicon


lexicon = include section


cluster_1   = cluster

 |> ['^','g','i','y','U','f','A','n','I'] <| [

    _____                     `xtra`    {- <^giyUfAnI> -}      [ ['G','i','o','v','a','n','n','i'] ] ]


cluster_2   = cluster

 |> ['^','g','i','y','A','n','.','g'] <| [

    _____                     `xtra`    {- <^giyAn.g> -}       [ ['J','i','y','a','n','g'] ] ]


cluster_3   = cluster

 |> ['^','g','A','y','m','I'] <| [

    _____                     `xtra`    {- <^gAymI> -}         [ ['J','a','m','i','e'] ] ]


cluster_4   = cluster

 |> ['^','g','r','I','n','I','t','^','s'] <| [

    _____                     `xtra`    {- <^grInIt^s> -}      [ ['G','r','e','e','n','w','i','c','h'] ] ]

 |> ['^','g','r','I','n','i','t','^','s'] <| [

    _____                     `xtra`    {- <^grInit^s> -}      [ ['G','r','e','e','n','w','i','c','h'] ] ]


cluster_5   = cluster

 |> ['^','g','l','A','z','n','U','s','t'] <| [

    _____                     `xtra`    {- <^glAznUst> -}      [ ['g','l','a','s','n','o','s','t'] ] ]


cluster_6   = cluster

 |> ['^','g','l','U','k','U','m','A'] <| [

    _____                     `xtra`    {- <^glUkUmA> -}       [ ['g','l','a','u','c','o','m','a'] ] ]


cluster_7   = cluster

 |> ['^','g','h','A','r','q','a','n','d'] <| [

    _____                     `xtra`    {- <^ghArqand> -}      [ ['J','h','a','r','k','h','a','n','d'] ] ]


cluster_8   = cluster

 |> ['^','g','w','A','n','t','A','n','A','m','U'] <| [

    _____                     `xtra`    {- <^gwAntAnAmU> -}    [ ['G','u','a','n','t','a','n','a','m','o'] ] ]

 |> ['^','g','w','A','n','t','a','n','A','m','U'] <| [

    _____                     `xtra`    {- <^gwAntanAmU> -}    [ ['G','u','a','n','t','a','n','a','m','o'] ] ]


cluster_9   = cluster

 |> ['.','h'] <| [

    _____                     `ynit`    {- <.h> -}             [ "H", ['8','t','h'] ] ]


cluster_10  = cluster

 |> ['.','h','i','m','a','l','A','y','A'] <| [

    _____                     `xtra`    {- <.himalAyA> -}      [ ['H','i','m','a','l','a','y','a','s'] ] ]


cluster_11  = cluster

 |> ['.','h','A','y','I','m'] <| [

    _____                     `xtra`    {- <.hAyIm> -}         [ ['H','a','i','m'], ['C','h','a','i','m'] ] ]


cluster_12  = cluster

 |> ['_','h'] <| [

    _____                     `ynit`    {- <_h> -}             [ ['K','H'], ['2','4','t','h'] ] ]


cluster_13  = cluster

 |> ['_','h','U','r','_','h','I'] <| [

    _____                     `xtra`    {- <_hUr_hI> -}        [ ['J','o','r','g','e'] ] ]


cluster_14  = cluster

 |> ['_','h','A','s','A','n','s','k'] <| [

    _____                     `xtra`    {- <_hAsAnsk> -}       [ ['K','h','a','s','a','n','s','k'] ] ]


cluster_15  = cluster

 |> ['_','h','U','s','I','h'] <| [

    _____                     `xtra`    {- <_hUsIh> -}         [ ['J','o','s','e'] ] ]


cluster_16  = cluster

 |> ['_','h','U','s','t'] <| [

    _____                     `xtra`    {- <_hUst> -}          [ ['K','h','o','s','t'] ] ]


cluster_17  = cluster

 |> ['_','h','A','f','i','y','I','r'] <| [

    _____                     `xtra`    {- <_hAfiyIr> -}       [ ['J','a','v','i','e','r'] ] ]


cluster_18  = cluster

 |> ['_','h','U','l','U'] <| [

    _____                     `xtra`    {- <_hUlU> -}          [ ['J','o','l','o'] ] ]


cluster_19  = cluster

 |> ['_','h','U','l','I','t'] <| [

    _____                     `xtra`    {- <_hUlIt> -}         [ ['H','o','e','l','i','e','t'] ] ]


cluster_20  = cluster

 |> ['_','h','A','n','y','U','n','i','s'] <| [

    _____                     `xtra`    {- <_hAnyUnis> -}      [ ['K','h','a','n','y','o','u','n','i','s'], ['K','h','a','n','y','u','n','i','s'] ] ]


cluster_21  = cluster

 |> ['_','h','u','w','A','n'] <| [

    _____                     `xtra`    {- <_huwAn> -}         [ ['J','u','a','n'] ] ]


cluster_22  = cluster

 |> ['_','h','a','y','r','-','a','l','-','l','_','a','h'] <| [

    _____                     `zero`    {- <_hayr-al-l_ah> -}  [ ['K','h','a','i','r','a','l','l','a','h'] ] ]


cluster_23  = cluster

 |> ['_','h','A','y','m','I'] <| [

    _____                     `xtra`    {- <_hAymI> -}         [ ['J','a','i','m','e'] ] ]


cluster_24  = cluster

 |> ['`'] <| [

    _____                     `ynit`    {- <`> -}              [ unwords [ "(", ['\'','a','y','n'], ")" ], ['1','6','t','h'] ],

    _____                     `ynit`    {- <`> -}              [ unwords [ "(", ['A','r','a','b'], ")" ] ] ]


cluster_25  = cluster

 |> ['`','u','b','a','y','d','-','a','l','-','l','_','a','h'] <| [

    _____                     `zero`    {- <`ubayd-al-l_ah> -} [ ['U','b','a','i','d','u','l','l','a','h'], ['O','b','e','i','d','u','l','l','a','h'] ] ]


cluster_26  = cluster

 |> ['`','a','b','d','-','a','t','-','t','a','w','w','A','b'] <| [

    _____                     `zero`    {- <`abd-at-tawwAb> -} [ unwords [ ['A','b','d','e','l'], ['T','a','w','w','a','b'] ] ] ]


cluster_27  = cluster

 |> ['`','a','b','d','-','a','d','-','d','A','\'','i','m'] <| [

    _____                     `zero`    {- <`abd-ad-dA'im> -}  [ unwords [ ['A','b','d','e','l'], ['D','a','i','m'] ] ] ]


cluster_28  = cluster

 |> ['`','a','b','d','-','a','d','-','d','A','r'] <| [

    _____                     `zero`    {- <`abd-ad-dAr> -}    [ unwords [ ['A','b','d','e','l'], ['D','a','r'] ] ] ]


cluster_29  = cluster

 |> ['`','a','b','d','-','a','d','-','d','A','f','i','`'] <| [

    _____                     `zero`    {- <`abd-ad-dAfi`> -}  [ unwords [ ['A','b','d','e','l'], ['D','a','f','i'] ] ] ]


cluster_30  = cluster

 |> ['`','a','b','d','-','a','d','-','d','A','y','i','m'] <| [

    _____                     `zero`    {- <`abd-ad-dAyim> -}  [ unwords [ ['A','b','d','e','l'], ['D','a','y','i','m'] ] ] ]


cluster_31  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','\'','U','f'] <| [

    _____                     `zero`    {- <`abd-ar-ra'Uf> -}  [ unwords [ ['A','b','d','e','l'], ['R','a','o','u','f'] ] ] ]


cluster_32  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','b','b'] <| [

    _____                     `zero`    {- <`abd-ar-rabb> -}   [ unwords [ ['A','b','d','e','l'], ['R','a','b','b'] ] ] ]


cluster_33  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','.','h','I','m'] <| [

    _____                     `zero`    {- <`abd-ar-ra.hIm> -} [ unwords [ ['A','b','d','e','l'], ['R','a','h','e','e','m'] ] ] ]


cluster_34  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','.','h','m','A','n'] <| [

    _____                     `zero`    {- <`abd-ar-ra.hmAn> -} [ unwords [ ['A','b','d','e','l'], ['R','a','h','m','a','n'] ] ] ]


cluster_35  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','.','h','m','_','a','n'] <| [

    _____                     `zero`    {- <`abd-ar-ra.hm_an> -} [ unwords [ ['A','b','d','e','l'], ['R','a','h','m','a','n'] ] ] ]


cluster_36  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','.','h','m','A','n','I'] <| [

    _____                     `zero`    {- <`abd-ar-ra.hmAnI> -} [ unwords [ ['A','b','d','e','l'], ['R','a','h','m','a','n','i'] ] ] ]


cluster_37  = cluster

 |> ['`','a','b','d','-','a','r','-','r','A','z','i','q'] <| [

    _____                     `zero`    {- <`abd-ar-rAziq> -}  [ unwords [ ['A','b','d','e','l'], ['R','a','z','i','q'] ] ] ]


cluster_38  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','z','z','A','q'] <| [

    _____                     `zero`    {- <`abd-ar-razzAq> -} [ unwords [ ['A','b','d','e','l'], ['R','a','z','z','a','q'] ] ] ]


cluster_39  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','s','U','l'] <| [

    _____                     `zero`    {- <`abd-ar-rasUl> -}  [ unwords [ ['A','b','d','e','l'], ['R','a','s','o','u','l'] ] ] ]


cluster_40  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','^','s','I','d'] <| [

    _____                     `zero`    {- <`abd-ar-ra^sId> -} [ unwords [ ['A','b','d','e','l'], ['R','a','s','h','e','e','d'] ] ] ]


cluster_41  = cluster

 |> ['`','a','b','d','-','a','r','-','r','A','.','d','I'] <| [

    _____                     `zero`    {- <`abd-ar-rA.dI> -}  [ unwords [ ['A','b','d','e','l'], ['R','a','d','i'] ] ] ]


cluster_42  = cluster

 |> ['`','a','b','d','-','a','r','-','r','i','.','d','A'] <| [

    _____                     `zero`    {- <`abd-ar-ri.dA> -}  [ unwords [ ['A','b','d','e','l'], ['R','i','d','a'] ] ] ]


cluster_43  = cluster

 |> ['`','a','b','d','-','a','r','-','r','i','.','d','Y'] <| [

    _____                     `zero`    {- <`abd-ar-ri.dY> -}  [ unwords [ ['A','b','d','e','l'], ['R','i','d','a'] ] ] ]


cluster_44  = cluster

 |> ['`','a','b','d','-','a','r','-','r','A','f','i','`'] <| [

    _____                     `zero`    {- <`abd-ar-rAfi`> -}  [ unwords [ ['A','b','d','e','l'], ['R','a','f','i'] ] ] ]


cluster_45  = cluster

 |> ['`','a','b','d','-','a','r','-','r','a','q','I','b'] <| [

    _____                     `zero`    {- <`abd-ar-raqIb> -}  [ unwords [ ['A','b','d','e','l'], ['R','a','q','e','e','b'] ] ] ]


cluster_46  = cluster

 |> ['`','a','b','d','-','a','z','-','z','a','h','r','a','T'] <| [

    _____                     `zero`    {- <`abd-az-zahraT> -} [ unwords [ ['A','b','d','e','l'], ['Z','a','h','r','a'] ] ] ]


cluster_47  = cluster

 |> ['`','a','b','d','-','a','s','-','s','A','t','i','r'] <| [

    _____                     `zero`    {- <`abd-as-sAtir> -}  [ unwords [ ['A','b','d','e','l'], ['S','a','t','i','r'] ] ] ]


cluster_48  = cluster

 |> ['`','a','b','d','-','a','s','-','s','a','t','t','A','r'] <| [

    _____                     `zero`    {- <`abd-as-sattAr> -} [ unwords [ ['A','b','d','e','l'], ['S','a','t','t','a','r'] ] ] ]


cluster_49  = cluster

 |> ['`','a','b','d','-','a','s','-','s','a','l','A','m'] <| [

    _____                     `zero`    {- <`abd-as-salAm> -}  [ unwords [ ['A','b','d','e','l'], ['S','a','l','a','m'] ] ] ]


cluster_50  = cluster

 |> ['`','a','b','d','-','a','s','-','s','a','m','I','`'] <| [

    _____                     `zero`    {- <`abd-as-samI`> -}  [ unwords [ ['A','b','d','e','l'], ['S','a','m','e','e'] ] ] ]


cluster_51  = cluster

 |> ['`','a','b','d','-','a','s','-','s','a','y','y','i','d'] <| [

    _____                     `zero`    {- <`abd-as-sayyid> -} [ unwords [ ['A','b','d','e','l'], ['S','a','y','y','i','d'] ] ] ]


cluster_52  = cluster

 |> ['`','a','b','d','-','a','^','s','-','^','s','A','f','I'] <| [

    _____                     `zero`    {- <`abd-a^s-^sAfI> -} [ unwords [ ['A','b','d','e','l'], ['S','h','a','f','i'] ] ] ]


cluster_53  = cluster

 |> ['`','a','b','d','-','a','^','s','-','^','s','a','f','I','`'] <| [

    _____                     `zero`    {- <`abd-a^s-^safI`> -} [ unwords [ ['A','b','d','e','l'], ['S','h','a','f','e','e'] ] ] ]


cluster_54  = cluster

 |> ['`','a','b','d','-','a','^','s','-','^','s','a','k','U','r'] <| [

    _____                     `zero`    {- <`abd-a^s-^sakUr> -} [ unwords [ ['A','b','d','e','l'], ['S','h','a','k','o','u','r'] ] ] ]


cluster_55  = cluster

 |> ['`','a','b','d','-','a','.','s','-','.','s','a','b','U','r'] <| [

    _____                     `zero`    {- <`abd-a.s-.sabUr> -} [ unwords [ ['A','b','d','e','l'], ['S','a','b','o','u','r'] ] ] ]


cluster_56  = cluster

 |> ['`','a','b','d','-','a','.','s','-','.','s','A','.','h','i','b'] <| [

    _____                     `zero`    {- <`abd-a.s-.sA.hib> -} [ unwords [ ['A','b','d','e','l'], ['S','a','h','i','b'] ] ] ]


cluster_57  = cluster

 |> ['`','a','b','d','-','a','.','s','-','.','s','A','d','i','q'] <| [

    _____                     `zero`    {- <`abd-a.s-.sAdiq> -} [ unwords [ ['A','b','d','e','l'], ['S','a','d','i','q'] ] ] ]


cluster_58  = cluster

 |> ['`','a','b','d','-','a','.','s','-','.','s','a','m','a','d'] <| [

    _____                     `zero`    {- <`abd-a.s-.samad> -} [ unwords [ ['A','b','d','e','l'], ['S','a','m','a','d'] ] ] ]


cluster_59  = cluster

 |> ['`','a','b','d','-','a','.','z','-','.','z','A','h','i','r'] <| [

    _____                     `zero`    {- <`abd-a.z-.zAhir> -} [ unwords [ ['A','b','d','e','l'], ['Z','a','h','i','r'] ] ] ]


cluster_60  = cluster

 |> ['`','a','b','d','-','a','l','-','\'','i','l','_','a','h'] <| [

    _____                     `zero`    {- <`abd-al-'il_ah> -} [ unwords [ ['A','b','d','e','l'], ['I','l','a','h'] ] ] ]


cluster_61  = cluster

 |> ['`','a','b','d','-','a','l','-','\'','a','m','I','r'] <| [

    _____                     `zero`    {- <`abd-al-'amIr> -}  [ unwords [ ['A','b','d','e','l'], ['A','m','i','r'] ] ] ]


cluster_62  = cluster

 |> ['`','a','b','d','-','a','l','-','b','a','d','I','`'] <| [

    _____                     `zero`    {- <`abd-al-badI`> -}  [ unwords [ ['A','b','d','e','l'], ['B','a','d','i','i'] ] ] ]


cluster_63  = cluster

 |> ['`','a','b','d','-','a','l','-','b','A','r','I'] <| [

    _____                     `zero`    {- <`abd-al-bArI> -}   [ unwords [ ['A','b','d','e','l'], ['B','a','r','i'] ] ] ]


cluster_64  = cluster

 |> ['`','a','b','d','-','a','l','-','b','A','s','i','.','t'] <| [

    _____                     `zero`    {- <`abd-al-bAsi.t> -} [ unwords [ ['A','b','d','e','l'], ['B','a','s','i','t'] ] ] ]


cluster_65  = cluster

 |> ['`','a','b','d','-','a','l','-','b','A','q','I'] <| [

    _____                     `zero`    {- <`abd-al-bAqI> -}   [ unwords [ ['A','b','d','e','l'], ['B','a','q','i'] ] ] ]


cluster_66  = cluster

 |> ['`','a','b','d','-','a','l','-','^','g','A','b','i','r'] <| [

    _____                     `zero`    {- <`abd-al-^gAbir> -} [ unwords [ ['A','b','d','e','l'], ['J','a','b','i','r'] ] ] ]


cluster_67  = cluster

 |> ['`','a','b','d','-','a','l','-','^','g','a','b','b','A','r'] <| [

    _____                     `zero`    {- <`abd-al-^gabbAr> -} [ unwords [ ['A','b','d','e','l'], ['J','a','b','b','a','r'] ] ] ]


cluster_68  = cluster

 |> ['`','a','b','d','-','a','l','-','^','g','a','l','I','l'] <| [

    _____                     `zero`    {- <`abd-al-^galIl> -} [ unwords [ ['A','b','d','e','l'], ['J','a','l','i','l'] ] ] ]


cluster_69  = cluster

 |> ['`','a','b','d','-','a','l','-','^','g','a','w','A','d'] <| [

    _____                     `zero`    {- <`abd-al-^gawAd> -} [ unwords [ ['A','b','d','e','l'], ['J','a','w','a','d'] ] ] ]


cluster_70  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','b','I','b'] <| [

    _____                     `zero`    {- <`abd-al-.habIb> -} [ unwords [ ['A','b','d','e','l'], ['H','a','b','i','b'] ] ] ]


cluster_71  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','A','r','i','_','t'] <| [

    _____                     `zero`    {- <`abd-al-.hAri_t> -} [ unwords [ ['A','b','d','e','l'], ['H','a','r','i','t','h'] ] ] ]


cluster_72  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','s','I','b'] <| [

    _____                     `zero`    {- <`abd-al-.hasIb> -} [ unwords [ ['A','b','d','e','l'], ['H','a','s','e','e','b'] ] ] ]


cluster_73  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','s','a','n'] <| [

    _____                     `zero`    {- <`abd-al-.hasan> -} [ unwords [ ['A','b','d','e','l'], ['H','a','s','s','a','n'] ] ] ]


cluster_74  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','u','s','a','y','n'] <| [

    _____                     `zero`    {- <`abd-al-.husayn> -} [ unwords [ ['A','b','d','e','l'], ['H','u','s','s','e','i','n'] ] ] ]


cluster_75  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','A','f','i','.','z'] <| [

    _____                     `zero`    {- <`abd-al-.hAfi.z> -} [ unwords [ ['A','b','d','e','l'], ['H','a','f','i','z'] ] ] ]


cluster_76  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','f','I','.','z'] <| [

    _____                     `zero`    {- <`abd-al-.hafI.z> -} [ unwords [ ['A','b','d','e','l'], ['H','a','f','e','e','z'] ] ] ]


cluster_77  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','q','q'] <| [

    _____                     `zero`    {- <`abd-al-.haqq> -}  [ unwords [ ['A','b','d','e','l'], ['H','a','q','q'] ] ] ]


cluster_78  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','A','k','i','m'] <| [

    _____                     `zero`    {- <`abd-al-.hAkim> -} [ unwords [ ['A','b','d','e','l'], ['H','a','k','i','m'] ] ] ]


cluster_79  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','k','I','m'] <| [

    _____                     `zero`    {- <`abd-al-.hakIm> -} [ unwords [ ['A','b','d','e','l'], ['H','a','k','e','e','m'] ] ] ]


cluster_80  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','k','a','m'] <| [

    _____                     `zero`    {- <`abd-al-.hakam> -} [ unwords [ ['A','b','d','e','l'], ['H','a','k','a','m'] ] ] ]


cluster_81  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','l','I','m'] <| [

    _____                     `zero`    {- <`abd-al-.halIm> -} [ unwords [ ['A','b','d','e','l'], ['H','a','l','e','e','m'] ] ] ]


cluster_82  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','m','I','d'] <| [

    _____                     `zero`    {- <`abd-al-.hamId> -} [ unwords [ ['A','b','d','e','l'], ['H','a','m','e','e','d'] ] ] ]


cluster_83  = cluster

 |> ['`','a','b','d','-','a','l','-','.','h','a','y','y'] <| [

    _____                     `zero`    {- <`abd-al-.hayy> -}  [ unwords [ ['A','b','d','e','l'], ['H','a','y'] ] ] ]


cluster_84  = cluster

 |> ['`','a','b','d','-','a','l','-','_','h','A','l','i','q'] <| [

    _____                     `zero`    {- <`abd-al-_hAliq> -} [ unwords [ ['A','b','d','e','l'], ['K','h','a','l','i','q'] ] ] ]


cluster_85  = cluster

 |> ['`','a','b','d','-','a','l','-','`','a','b','b','A','s'] <| [

    _____                     `zero`    {- <`abd-al-`abbAs> -} [ unwords [ ['A','b','d','e','l'], ['A','b','b','a','s'] ] ] ]


cluster_86  = cluster

 |> ['`','a','b','d','-','a','l','-','`','a','z','I','z'] <| [

    _____                     `zero`    {- <`abd-al-`azIz> -}  [ unwords [ ['A','b','d','e','l'], ['A','z','i','z'] ] ] ]


cluster_87  = cluster

 |> ['`','a','b','d','-','a','l','-','`','i','z','z'] <| [

    _____                     `zero`    {- <`abd-al-`izz> -}   [ unwords [ ['A','b','d','e','l'], ['I','z','z'] ] ] ]


cluster_88  = cluster

 |> ['`','a','b','d','-','a','l','-','`','A','.','t','I'] <| [

    _____                     `zero`    {- <`abd-al-`A.tI> -}  [ unwords [ ['A','b','d','e','l'], ['A','a','t','i'] ] ] ]


cluster_89  = cluster

 |> ['`','a','b','d','-','a','l','-','`','a','.','z','I','m'] <| [

    _____                     `zero`    {- <`abd-al-`a.zIm> -} [ unwords [ ['A','b','d','e','l'], ['A','z','e','e','m'] ] ] ]


cluster_90  = cluster

 |> ['`','a','b','d','-','a','l','-','`','A','l'] <| [

    _____                     `zero`    {- <`abd-al-`Al> -}    [ unwords [ ['A','b','d','e','l'], ['A','a','l'] ] ] ]


cluster_91  = cluster

 |> ['`','a','b','d','-','a','l','-','`','A','l','i','m'] <| [

    _____                     `zero`    {- <`abd-al-`Alim> -}  [ unwords [ ['A','b','d','e','l'], ['A','l','i','m'] ] ] ]


cluster_92  = cluster

 |> ['`','a','b','d','-','a','l','-','`','a','l','I','m'] <| [

    _____                     `zero`    {- <`abd-al-`alIm> -}  [ unwords [ ['A','b','d','e','l'], ['A','l','e','e','m'] ] ] ]


cluster_93  = cluster

 |> ['`','a','b','d','-','a','l','-','`','a','l','I','y'] <| [

    _____                     `zero`    {- <`abd-al-`alIy> -}  [ unwords [ ['A','b','d','e','l'], ['A','l','i'] ] ] ]


cluster_94  = cluster

 |> ['`','a','b','d','-','a','l','-','.','g','a','f','U','r'] <| [

    _____                     `zero`    {- <`abd-al-.gafUr> -} [ unwords [ ['A','b','d','e','l'], ['G','h','a','f','o','u','r'] ] ] ]


cluster_95  = cluster

 |> ['`','a','b','d','-','a','l','-','.','g','a','f','f','A','r'] <| [

    _____                     `zero`    {- <`abd-al-.gaffAr> -} [ unwords [ ['A','b','d','e','l'], ['G','h','a','f','f','a','r'] ] ] ]


cluster_96  = cluster

 |> ['`','a','b','d','-','a','l','-','.','g','a','n','I','y'] <| [

    _____                     `zero`    {- <`abd-al-.ganIy> -} [ unwords [ ['A','b','d','e','l'], ['G','h','a','n','i'] ] ] ]


cluster_97  = cluster

 |> ['`','a','b','d','-','a','l','-','f','a','t','t','A','.','h'] <| [

    _____                     `zero`    {- <`abd-al-fattA.h> -} [ unwords [ ['A','b','d','e','l'], ['F','a','t','t','a','h'] ] ] ]


cluster_98  = cluster

 |> ['`','a','b','d','-','a','l','-','f','A','.','d','i','l'] <| [

    _____                     `zero`    {- <`abd-al-fA.dil> -} [ unwords [ ['A','b','d','e','l'], ['F','a','d','i','l'] ] ] ]


cluster_99  = cluster

 |> ['`','a','b','d','-','a','l','-','f','a','.','d','I','l'] <| [

    _____                     `zero`    {- <`abd-al-fa.dIl> -} [ unwords [ ['A','b','d','e','l'], ['F','a','d','e','e','l'] ] ] ]


cluster_100 = cluster

 |> ['`','a','b','d','-','a','l','-','f','a','h','I','m'] <| [

    _____                     `zero`    {- <`abd-al-fahIm> -}  [ unwords [ ['A','b','d','e','l'], ['F','a','h','e','e','m'] ] ] ]


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
