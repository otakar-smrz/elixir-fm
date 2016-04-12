-- |
--
-- Module      :  Elixir.Data.Extra
-- Copyright   :  Otakar Smrz 2005-2013
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM"


module Elixir.Data.Extra (lexicon) where


import Elixir.Lexicon


lexicon :: Lexicon

lexicon = listing "Extended lexicon"


    |> "m r '" <| [

        "IFCuL"             <::>    "N------[SD]--"
                                                        <..>    [ "man", "person" ]
                            <.>     "N------S1I"
                                                        <:>     "IFCuL" |<< "uN"
                            <.>     "N------S2I"
                                                        <:>     "IFCiL" |<< "iN"
                            <.>     "N------S4I"
                                                        <:>     "IFCaL" |<< "aN"
                            <.>     "N------S1[RA]"
                                                        <:>     "IFCuL" |<< "u"
                            <.>     "N------S2[RA]"
                                                        <:>     "IFCiL" |<< "i"
                            <.>     "N------S4[RA]"
                                                        <:>     "IFCaL" |<< "a"
                            <.>     "N------S1D"
                                                        <:>     al >| "FaCL" |<< "u"
                            <.>     "N------S2D"
                                                        <:>     al >| "FaCL" |<< "i"
                            <.>     "N------S4D"
                                                        <:>     al >| "FaCL" |<< "a"
                            <.>     "N------D1[IA]"
                                                        <:>     "IFCaL" |<< "Ani"
                            <.>     "N------D[24][IA]"
                                                        <:>     "IFCaL" |<< "ayni"
                            <.>     "N------D1R"
                                                        <:>     "IFCaL" |<< "A"
                            <.>     "N------D[24]R"
                                                        <:>     "IFCaL" |<< "ay"
                            <.>     "N------D1D"
                                                        <:>     al >| "FaCL" |<< "Ani"
                            <.>     "N------D[24]D"
                                                        <:>     al >| "FaCL" |<< "ayni",

        "IFCaL" |< aT       <::>    "N------[SD]--"
                                                        <..>    [ "woman" ]
                            <.>     "N------S1D"
                                                        <:>     al >| "FaCL" |< aT |<< "u"
                            <.>     "N------S2D"
                                                        <:>     al >| "FaCL" |< aT |<< "i"
                            <.>     "N------S4D"
                                                        <:>     al >| "FaCL" |< aT |<< "a"
                            <.>     "N------D1[IA]"
                                                        <:>     "IFCaL" |< aT |<< "Ani"
                            <.>     "N------D[24][IA]"
                                                        <:>     "IFCaL" |< aT |<< "ayni"
                            <.>     "N------D1R"
                                                        <:>     "IFCaL" |< aT |<< "A"
                            <.>     "N------D[24]R"
                                                        <:>     "IFCaL" |< aT |<< "ay"
                            <.>     "N------D1D"
                                                        <:>     al >| "FaCL" |< aT |<< "Ani"
                            <.>     "N------D[24]D"
                                                        <:>     al >| "FaCL" |< aT |<< "ayni"
        ]


    |> "b n m" <| [

        "IFCuL"             <::>    "N------[SD]--"
                                                        <..>    [ "son" ]
                            <.>     "N------S1I"
                                                        <:>     "IFCuL" |<< "uN"
                            <.>     "N------S2I"
                                                        <:>     "IFCiL" |<< "iN"
                            <.>     "N------S4I"
                                                        <:>     "IFCaL" |<< "aN"
                            <.>     "N------S1[RA]"
                                                        <:>     "IFCuL" |<< "u"
                            <.>     "N------S2[RA]"
                                                        <:>     "IFCiL" |<< "i"
                            <.>     "N------S4[RA]"
                                                        <:>     "IFCaL" |<< "a"
                            <.>     "N------S1D"
                                                        <:>     al >| "IFCuL" |<< "u"
                            <.>     "N------S2D"
                                                        <:>     al >| "IFCiL" |<< "i"
                            <.>     "N------S4D"
                                                        <:>     al >| "IFCaL" |<< "a"
                            <.>     "N------D1[IA]"
                                                        <:>     "IFCaL" |<< "Ani"
                            <.>     "N------D[24][IA]"
                                                        <:>     "IFCaL" |<< "ayni"
                            <.>     "N------D1R"
                                                        <:>     "IFCaL" |<< "A"
                            <.>     "N------D[24]R"
                                                        <:>     "IFCaL" |<< "ay"
                            <.>     "N------D1D"
                                                        <:>     al >| "IFCaL" |<< "Ani"
                            <.>     "N------D[24]D"
                                                        <:>     al >| "IFCaL" |<< "ayni"
        ]


    |> "' l h" <| [

        al >| "C_aL"        <::>    "N------S-D"        <..>    [ "Allah", "God" ],

        al >| "C_aL" |<< "umma"     `intj`          [ "truly", "certainly", unwords [ "oh", "God", "!" ], unwords [ "dear", "God" ] ],

        "FiC_aL"            `noun`                              [ "god", "deity" ]
                            `plural`    "HACiL" |< aT,

        "FiC_aL" |< Iy      `adj`                   [ "divine", "godly", "theological" ]

        ]


    |> "' b w" <| [

        FaC                 `noun`                  [ "father", "ancestor", "parent" ]
                            `plural`    HACA'

                            <.>     "N------D1[IA]"
                                                        <:>     FaCA |<< "Ani"
                            <.>     "N------D[24][IA]"
                                                        <:>     FaCA |<< "ayni"
                            <.>     "N------D1R"
                                                        <:>     FaCA |<< "A"
                            <.>     "N------D[24]R"
                                                        <:>     FaCA |<< "ay"
                            <.>     "N------D1D"
                                                        <:>     al >| FaCA |<< "Ani"
                            <.>     "N------D[24]D"
                                                        <:>     al >| FaCA |<< "ayni"
                            <.>     "N------S1R"
                                                        <:>     FaCU |<< "u"
                            <.>     "N------S2R"
                                                        <:>     FaCI |<< "i"
                            <.>     "N------S4R"
                                                        <:>     FaCA |<< "a"
        ]


    |> "' _h w" <| [

        FaC                 `noun`                  [ "brother" ]
                            `plural`    FiCL |< aT
                            `plural`    FiCLAn

                            <.>     "N------D1[IA]"
                                                        <:>     FaCA |<< "Ani"
                            <.>     "N------D[24][IA]"
                                                        <:>     FaCA |<< "ayni"
                            <.>     "N------D1R"
                                                        <:>     FaCA |<< "A"
                            <.>     "N------D[24]R"
                                                        <:>     FaCA |<< "ay"
                            <.>     "N------D1D"
                                                        <:>     al >| FaCA |<< "Ani"
                            <.>     "N------D[24]D"
                                                        <:>     al >| FaCA |<< "ayni"
                            <.>     "N------S1R"
                                                        <:>     FaCU |<< "u"
                            <.>     "N------S2R"
                                                        <:>     FaCI |<< "i"
                            <.>     "N------S4R"
                                                        <:>     FaCA |<< "a"
        ]


    |> ".h m w" <| [

        FaC                 `noun`                  [ unwords [ "father", "-", "in", "-", "law" ] ]
                            `plural`    HaFCA'

                            <.>     "N------D1[IA]"
                                                        <:>     FaCA |<< "Ani"
                            <.>     "N------D[24][IA]"
                                                        <:>     FaCA |<< "ayni"
                            <.>     "N------D1R"
                                                        <:>     FaCA |<< "A"
                            <.>     "N------D[24]R"
                                                        <:>     FaCA |<< "ay"
                            <.>     "N------D1D"
                                                        <:>     al >| FaCA |<< "Ani"
                            <.>     "N------D[24]D"
                                                        <:>     al >| FaCA |<< "ayni"
                            <.>     "N------S1R"
                                                        <:>     FaCU |<< "u"
                            <.>     "N------S2R"
                                                        <:>     FaCI |<< "i"
                            <.>     "N------S4R"
                                                        <:>     FaCA |<< "a"
        ]


    |> "f w h" <| [

        FUL                 `noun`                  [ "mouth" ]
                            `plural`    HaFCAL

                            <.>     "N------S1R"
                                                        <:>     FU |<< "u"
                            <.>     "N------S2R"
                                                        <:>     FI |<< "i"
                            <.>     "N------S4R"
                                                        <:>     FA |<< "a"
        ]


    |> "_d" <| [

        "FU" |<< "u"        <::>    "SD--------"
                                                        <..>    [ unwords [ "the", "one", "of" ], unwords [ "the", "one", "with" ] ]
                            <.>     "SD----MS2-"
                                                        <:>     "FI" |<< "i"
                            <.>     "SD----MS4-"
                                                        <:>     "FA" |<< "a"

                            <.>     "SD----MD1-"
                                                        <:>     "FA" |<< "A"
                            <.>     "SD----MD[24]-"
                                                        <:>     "FA" |<< "ay"

                            <.>     "SD----MP1-"
                                                        <:>     "FA" |<< "U"
                            <.>     "SD----MP[24]-"
                                                        <:>     "FA" |<< "I"

                            <.>     "SD----FS1-"
                                                        <:>     "FA" |<< "t" |<< "u"
                            <.>     "SD----FS2-"
                                                        <:>     "FA" |<< "t" |<< "i"
                            <.>     "SD----FS4-"
                                                        <:>     "FA" |<< "t" |<< "a"

                            <.>     "SD----FD1-"
                                                        <:>     "FA" |<< "t" |<< "A"
                                                        <:>     "FA" |< At |<< "A"
                            <.>     "SD----FD[24]-"
                                                        <:>     "FA" |<< "t" |<< "ay"
                                                        <:>     "FA" |< At |<< "ay"

                            <.>     "SD----FP1-"
                                                        <:>     "FA" |< At |<< "u"
                            <.>     "SD----FP[24]-"
                                                        <:>     "FA" |< At |<< "i",

        "FA"                <::>    "SD-----S--"
                                                        <..>    [ "this" ]
                            <.>     "SD----FS--"
                                                        <:>     "FI"
        ]


    |> "l" <| [

        "'_Ul" |<< "U"      <::>    "SD-----P--"
                                                        <..>    [ unwords [ "the", "one", "of" ], unwords [ "the", "one", "with" ] ]
                            <.>     "SD----MP[24]-"
                                                        <:>     "'_Ul" |<< "I"

                            <.>     "SD----FP1-"
                                                        <:>     "'_Ul" |< At |<< "u"
                            <.>     "SD----FP[24]-"
                                                        <:>     "'_Ul" |< At |<< "i",

        "'_UlA'i"           <::>    "SD-----P--"
                                                        <..>    [ "these" ]
        ]


    |> "l" <| [

        "al" >>| "la_dI"    <::>    "SR--------"
                                                        <..>    [ "that", "which" ]
                            <.>     "SR----FS--"
                                                        <:>     "al" >>| "latI"
                            <.>     "SR----MD1-"
                                                        <:>     al >| "la_d" |<< "Ani"
                            <.>     "SR----MD[24]-"
                                                        <:>     al >| "la_d" |<< "ayni"
                            <.>     "SR----FD1-"
                                                        <:>     al >| "lat" |<< "Ani"
                            <.>     "SR----FD[24]-"
                                                        <:>     al >| "lat" |<< "ayni"
                            <.>     "SR----MP--"
                                                        <:>     "al" >>| "la_dIna"
                            <.>     "SR----FP--"
                                                        <:>     al >| "lAtI"
                                                        <:>     al >| "lawAtI"
                                                        <:>     al >| "lA'I"
        ]


    |> "h" <| [

        "h_a" >>| "_dA"     <::>    "SD--------"
                                                        <..>    [ "this", "these" ]
                            <.>     "SD----FS--"
                                                        <:>     "h_a" >>| "_d" |<< "ihi"
                                                        <:>     "h_a" >>| "_dI"
                            <.>     "SD----MD1-"
                                                        <:>     "h_a" >>| "_d" |<< "Ani"
                            <.>     "SD----MD[24]-"
                                                        <:>     "h_a" >>| "_d" |<< "ayni"
                            <.>     "SD----FD1-"
                                                        <:>     "hA" >>| "t" |<< "Ani"
                            <.>     "SD----FD[24]-"
                                                        <:>     "hA" >>| "t" |<< "ayni"
                            <.>     "SD-----P--"
                                                        <:>     "h_a" >>| "'ulA'i"
        ]


    |> "k" <| [

        "_d_a" |<< "li" |<< "ka"    <::>    "SD--------"
                                                                <..>    [ "that", "those" ]
                                    <.>     "SD----FS--"
                                                                <:>     "t" |<< "il" |<< "ka"
                                    <.>     "SD----MD1-"
                                                                <:>     "_d" |<< "Ani" |<< "ka"
                                    <.>     "SD----MD[24]-"
                                                                <:>     "_d" |<< "ayni" |<< "ka"
                                    <.>     "SD----FD1-"
                                                                <:>     "t" |<< "Ani" |<< "ka"
                                    <.>     "SD----FD[24]-"
                                                                <:>     "t" |<< "ayni" |<< "ka"
                                    <.>     "SD-----P--"
                                                                <:>     "'_UlA'i" |<< "ka"
                                                                <:>     "'_Ul_a'i" |<< "ka",

        "_dA" |<< "ka"      <::>    "SD-----S--"
                                                        <..>    [ "that" ]
                            <.>     "SD----FS--"
                                                        <:>     "tA" |<< "ka"
                                                        <:>     "tI" |<< "ka"
        ]


    |> "k l" <| [

        "kil" |<< "A"       <::>    "SD-----D--"
                                                        <..>    [ unwords [ "both", "of" ], unwords [ "both", "of", "them" ] ]
                            <.>     "SD----MD[24]-"
                                                        <:>     "kil" |<< "ay"
                                                        <:>     "kil" |<< "A"

                            <.>     "SD----FD1-"
                                                        <:>     "kil" |<< "t" |<< "A"
                            <.>     "SD----FD[24]-"
                                                        <:>     "kil" |<< "t" |<< "ay"
                                                        <:>     "kil" |<< "t" |<< "A"
        ]


    |> "' n" <| [

        "'an"                       `conj`              [ "to" ],

        "'an" |<< "lA"              `conj`              [ unwords [ "not", "to" ] ],

        "li-" >>| "'an"             `conj`              [ unwords [ "in", "order", "to" ] ],

        "li-" >>| "'an" |<< "lA"    `conj`              [ unwords [ "in", "order", "not", "to" ] ],

        "'an" |<< "na"              `conj`              [ "that" ]

                            <.>     "C---------"        <:>     "'an" |<< "na"
                                                        <:>     "'an",

        "li-" >>| "'an" |<< "na"    `conj`              [ "because" ]

                            <.>     "C---------"        <:>     "li-" >>| "'an" |<< "na"
                                                        <:>     "li-" >>| "'an",

        "ka-" >>| "'an" |<< "na"    `conj`              [ unwords [ "as", "if" ] ]

                            <.>     "C---------"        <:>     "ka-" >>| "'an" |<< "na"
                                                        <:>     "ka-" >>| "'an",

        "ka-" >>| "'an" |<< "na" |<< "mA"   `conj`      [ unwords [ "as", "if" ] ],

        "'in"                       `conj`              [ "if", "whether" ],

        "'in" |<< "lA"              `conj`              [ unwords [ "if", "not" ], unwords [ "whether", "not" ] ],

        "'in" |<< "lA"              `part`              [ "however", "except" ],

        "'in" |<< "na"              `conj`              [ "that" ]

                            <.>     "C---------"        <:>     "'in" |<< "na"
                                                        <:>     "'in",

        "'in" |<< "na"              `part`              [ "indeed" ]

                            <.>     "F---------"        <:>     "'in" |<< "na"
                                                        <:>     "'in",

        "'in" |<< "na" |<< "mA"     `conj`              [ unwords [ "but", "rather" ], unwords [ "on", "the", "contrary" ] ]

        ]


    |> "l k n" <| [

        "l_akin"                    `conj`              [ "however", "but" ],

        "l_akin" |<< "na"           `conj`              [ "however", "but" ]

                            <.>     "C---------"        <:>     "l_akin" |<< "na"
                                                        <:>     "l_akin",

        "lAkin"                     `conj`              [ "however", "but" ],

        "lAkin" |<< "na"            `conj`              [ "however", "but" ]

                            <.>     "C---------"        <:>     "lAkin" |<< "na"
                                                        <:>     "lAkin"
        ]


    |> "l" <| [

        "li"                <::>    "P---------"
                                                        <..>    [ "for", "to" ]
                            <.>     "P---------"
                                                        <:>     "li"
                                                        <:>     "la"
        ]


    |> "' l y" <| [

        "'ilY"              <::>    "P---------"
                                                        <..>    [ "to", "towards" ]
                            <.>     "P---------"
                                                        <:>     "'ilY"
                                                        <:>     "'ilay"
        ]


    |> "` l w" <| [

        "`alY"              <::>    "P---------"
                                                        <..>    [ "on", "above" ]
                            <.>     "P---------"
                                                        <:>     "`alY"
                                                        <:>     "`alay"
        ]


    |> "l d y" <| [

        "ladY"              <::>    "P---------"
                                                        <..>    [ "with", "by" ]
                            <.>     "P---------"
                                                        <:>     "ladY"
                                                        <:>     "laday"
        ]


    |> ".h w l" <| [

        ".hawAlY"           <::>    "P---------"
                                                        <..>    [ "around", "about" ]
                            <.>     "P---------"
                                                        <:>     ".hawAlY"
                                                        <:>     ".hawAlay"
        ]


    |> "h" <| [

        "FU" |< Iy |< aT                `noun`                                      [ "identity", unwords [ "identity", "card" ] ]
                                        `plural`    "FU" |< Iy |< At,

        "mA" >>| "FI" |<< "Iy" |< aT    `noun`                                      [ "nature", "essence", "quality" ]
                                        `plural`    "mA" >>| "FI" |<< "Iy" |< At
        ]


    |> "" <| [

        "huwa"              <::>    "SP--------"
                                                        <..>    [ "he", "she", "it" ]
                            <.>     "SP---3MS[24]-"
                                                        <:>     "hu"
                                                        <:>     "hi"
                            <.>     "SP---3FS1-"
                                                        <:>     "hiya"
                            <.>     "SP---3FS[24]-"
                                                        <:>     "hA"

                            <.>     "SP---3-D--"
                                                        <:>     "humA"
                            <.>     "SP---3-D[24]-"
                                                        <:>     "himA"

                            <.>     "SP---3MP--"
                                                        <:>     "hum"
                            <.>     "SP---3MP[24]-"
                                                        <:>     "him"
                            <.>     "SP---3FP--"
                                                        <:>     "hunna"
                            <.>     "SP---3FP[24]-"
                                                        <:>     "hinna"

                            <.>     "SP---2MS1-"
                                                        <:>     "'anta"
                            <.>     "SP---2MS[24]-"
                                                        <:>     "ka"
                            <.>     "SP---2FS1-"
                                                        <:>     "'anti"
                            <.>     "SP---2FS[24]-"
                                                        <:>     "ki"

                            <.>     "SP---2-D1-"
                                                        <:>     "'antumA"
                            <.>     "SP---2-D[24]-"
                                                        <:>     "kumA"

                            <.>     "SP---2MP1-"
                                                        <:>     "'antum"
                            <.>     "SP---2MP[24]-"
                                                        <:>     "kum"
                            <.>     "SP---2FP1-"
                                                        <:>     "'antunna"
                            <.>     "SP---2FP[24]-"
                                                        <:>     "kunna"

                            <.>     "SP---1-S1-"
                                                        <:>     "'anA"
                            <.>     "SP---1-S2-"
                                                        <:>     "|I"
                                                        <:>     "ya"
                            <.>     "SP---1-S[42]-"
                                                        <:>     "nI"

                            <.>     "SP---1-[DP]1-"
                                                        <:>     "na.hnu"
                            <.>     "SP---1-[DP][24]-"
                                                        <:>     "nA"
        ]


    |> "` m r" <| [

        FaCL |<< "_W"       <::>    "N--------[IRA]"
                                                        <..>    [ "Amr" ]
                            <.>     "N------S1I"
                                                        <:>     FaCL |<< "uNU"
                            <.>     "N------S2I"
                                                        <:>     FaCL |<< "iNU"
                            <.>     "N------S4I"
                                                        <:>     FaCL |<< "aNA"
                            <.>     "N------S1[RA]"
                                                        <:>     FaCL |<< "u_W"
                            <.>     "N------S2[RA]"
                                                        <:>     FaCL |<< "i_W"
                            <.>     "N------S4[RA]"
                                                        <:>     FaCL |<< "a_W"
        ]


    |> "kAkAw" <| [

        _____               <::>    "N------S--"
                                                        <..>    [ "cocoa" ]
                            <.>     "N--------[IRA]"
                                                        <:>     _____
                            <.>     "N--------D"
                                                        <:>     al >| _____
        ]


    |> "' w l" <| [

        HawCaL              `adj`                   [ "first", "foremost", "early" ]
                            `femini`    FULY
                            `plural`    HawCaL |< Un
                            `plural`    FuCaL
                            `plural`    FaCA'iL

                            <.>     "A-----MS1I"
                                                        <:>     HawCaL |<< "u"
                                                        <:>     FaCCaL |<< "uN"
                            <.>     "A-----MS2I"
                                                        <:>     HawCaL |<< "a"
                                                        <:>     FaCCaL |<< "iN"
                            <.>     "A-----MS4I"
                                                        <:>     HawCaL |<< "a"
                                                        <:>     FaCCaL |<< "aN"
        ]


    |> "w .h d" <| [

        FACiL               <::>    "QI--------"
                                                        <..>    [ "one" ]
                            `femini` FACiL |< aT
        ]


    |> "' .h d" <| [

        FaCaL               <::>    "QI--------"
                                                        <..>    [ "one" ]
                            `femini` FiCLY
        ]


    |> "_t n y" <| [

        IFC |< An           <::>    "QU--------"
                                                        <..>    [ "two" ]
                            `femini` IFC |< aT |< An
        ]


    |> "_t l _t" <| [


        FaCAL |< aT         <::>    "QV--------"
                                                        <..>    [ "three" ]
                            `femini` FaCAL,

        FaCAL |< Un         <::>    "QL--------"
                                                        <..>    [ "thirty" ]
        ]


    |> "r b `" <| [

        HaFCaL |< aT        <::>    "QV--------"
                                                        <..>    [ "four" ]
                            `femini` HaFCaL,

        HaFCaL |< Un        <::>    "QL--------"
                                                        <..>    [ "fourty" ]
        ]


    |> "_h m s" <| [

        FaCL |< aT          <::>    "QV--------"
                                                        <..>    [ "five" ]
                            `femini` FaCL,

        FaCL |< Un          <::>    "QL--------"
                                                        <..>    [ "fifty" ]
        ]


    |> "s t t" <| [

        FiCL |< aT          <::>    "QV--------"
                                                        <..>    [ "six" ]
                            `femini` FiCL,

        FiCL |< Un          <::>    "QL--------"
                                                        <..>    [ "sixty" ]
        ]


    |> "s b `" <| [

        FaCL |< aT          <::>    "QV--------"
                                                        <..>    [ "seven" ]
                            `femini` FaCL,

        FaCL |< Un          <::>    "QL--------"
                                                        <..>    [ "seventy" ]
        ]


    |> "_t m n" <| [

        FaCALI |< aT        <::>    "QV--------"
                                                        <..>    [ "eight" ]
                            `femini` FaCALI,

        FaCAL |< Un         <::>    "QL--------"
                                                        <..>    [ "eighty" ]
        ]


    |> "t s `" <| [

        FiCL |< aT          <::>    "QV--------"
                                                        <..>    [ "nine" ]
                            `femini` FiCL,

        FiCL |< Un          <::>    "QL--------"
                                                        <..>    [ "ninety" ]
        ]


    |> "` ^s r" <| [

        FaCaL |< aT         <::>    "QX--------"
                                                        <..>    [ "ten" ]
                            `femini` FaCL,

        FaCaL |< aT         <::>    "QM-----[SP]--"
                                                        <..>    [ "ten", "score", "dozen" ]
                            `plural` FaCaL |< At,

        FaCaL               <::>    "QY--------"
                                                        <..>    [ unwords [ "-", "teen" ] ]
                            `femini` FaCL |< aT,

        FiCL |< Un          <::>    "QL--------"
                                                        <..>    [ "twenty" ]
        ]


    |> "m ' y" <| [

        "F_IC" |< aT        <::>    "QC--------"
                                                        <..>    [ "hundred" ]
                            `plural` "F_IC" |< At
                            `plural` "F_IC" |< Un
        ]


    |> "m ' y" <| [

        FiC |< aT           <::>    "QC--------"
                                                        <..>    [ "hundred" ]
                            `plural` FiC |< At
                            `plural` FiC |< Un
        ]


    |> "' l f" <| [

        FaCL                <::>    "QM--------"
                                                        <..>    [ "thousand" ]
                            `plural` HACAL
                            `plural` FuCUL
        ]


    |> "r b w" <| [

        FiCL |< aT          <::>    "QM--------"
                                                        <..>    [ unwords [ "ten", "thousand" ], "myriad" ]
                            `plural` FiCL |< At
        ]


    |> "l k k" <| [

        FaCL                <::>    "QM--------"
                                                        <..>    [ unwords [ "hundred", "thousand" ], "lac" ]
                            `plural` HaFCAL
                            `plural` FuCUL
        ]


    |> "m l y n" <| [

        KiRDUS              <::>    "QM--------"
                                                        <..>    [ "million" ]
                            `plural` KaRADIS
                            `plural` KiRDUS |< At
        ]


    |> "b l y n" <| [

        KiRDUS              <::>    "QM--------"
                                                        <..>    [ "billion" ]
                            `plural` KaRADIS
                            `plural` KiRDUS |< At
        ]


    |> "milyAr" <| [

        _____               <::>    "QM--------"
                                                        <..>    [ "milliard", "billion" ]
                            `plural` _____ |< At

                            <.>     "QM-----S1I"
                                                        <:>     _____ |<< "uN"
                            <.>     "QM-----S2I"
                                                        <:>     _____ |<< "iN"
                            <.>     "QM-----S4I"
                                                        <:>     _____ |<< "aN"
        ]


    |> "trIliyUn" <| [

        _____               <::>    "QM--------"
                                                        <..>    [ "trillion" ]
                            `plural` _____ |< At

                            <.>     "QM-----S1I"
                                                        <:>     _____ |<< "uN"
                            <.>     "QM-----S2I"
                                                        <:>     _____ |<< "iN"
                            <.>     "QM-----S4I"
                                                        <:>     _____ |<< "aN"
        ]


    |> ".gU.gUl" <| [

        _____               <::>    "QM--------"
                                                        <..>    [ "googol" ]
                            `plural` _____ |< At

                            <.>     "QM-----S1I"
                                                        <:>     _____ |<< "uN"
                            <.>     "QM-----S2I"
                                                        <:>     _____ |<< "iN"
                            <.>     "QM-----S4I"
                                                        <:>     _____ |<< "aN"
        ]


    |> "^gU^gUl" <| [

        _____               <::>    "QM--------"
                                                        <..>    [ "googol" ]
                            `plural` _____ |< At

                            <.>     "QM-----S1I"
                                                        <:>     _____ |<< "uN"
                            <.>     "QM-----S2I"
                                                        <:>     _____ |<< "iN"
                            <.>     "QM-----S4I"
                                                        <:>     _____ |<< "aN"
        ]
