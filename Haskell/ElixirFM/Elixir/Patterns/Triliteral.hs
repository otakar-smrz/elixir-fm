-- |
--
-- Module      :  Elixir.Patterns.Triliteral
-- Copyright   :  Otakar Smrz 2005-2017
-- License     :  GPL
--
-- Maintainer  :  otakar-smrz users.sf.net
-- Stability   :  provisional
-- Portability :  portable
--
-- "ElixirFM" "Elixir.Template"


module Elixir.Patterns.Triliteral where


import Elixir.Template

import Elixir.System


instance Morphing PatternT PatternT where

    morph x = Morphs x [] []


instance Template PatternT where

    interlocks _ s r t = (concat . modify . show) t

        where modify | isForm VIII t               = assimiVIII
                     | isForm VII  t               = assimiVII
                     | elem t

                        [FaCLA', FiCLA', FuCLA', FILA', FULA', FaCyA'] =

                        if null s || null r || last r == "w"

                                        then  substitute
                                        else  case last s of

                            Suffix x | x `elem` ["a",  "i",  "u",
                                                 "aN", "iN", "uN"]

                              ->              substitute
                            _ -> (++ ["w"]) . substitute . init

                     | elem t

                        [FUCiL, FUCI, FUCL, TuFUCiL, TuFUCI, TuFUCL] =

                        case r of _ : "w" : _ -> substitute .
                                                 (\ (u, c) ->
                                                   u ++ "|" ++ c)
                                                 . break ('C' ==)
                                  _           -> substitute

                     | otherwise            = substitute

              substitute x = (replace . restore) x

              assimiVIII x = (replace . restore . init) iF
                             ++ [z, d] ++
                             (replace . tail) taCaL

                    where (iF, taCaL) = break ('t' ==) x
                          (z, d) = case r of ["'", "_h", "_d"]
                                                    -> assimVIII "'" False
                                             c : _  -> assimVIII c True
                                             _      -> ("F", "t")

              assimiVII  x = (replace . restore . init) iN
                             ++ [n, m] ++
                             (replace . tail) faCaL

                    where (iN, faCaL) = break ('F' ==) x
                          (n, m) = case r of c : _  -> assimVII c True
                                             _      -> ("n", "F")

              replace x = [ maybe [c] id (lookup c lock) | c <- x ]

                    where lock = zip ['F', 'C', 'L'] r

              restore x = case x of 'H' : y -> '\'' : y
                                    'I' : y -> 'i' : y
                                    'M' : y -> 'm' : y
                                    'N' : y -> 'n' : y
                                    'S' : y -> 's' : y
                                    'T' : y -> 't' : y
                                    'U' : y -> 'u' : y
                                    'Y' : y -> 'y' : y
                                    _       -> x

    -- Fischer (2002), par. 35 b, Wehr (1961) (samA'Iy, samAwIy)
    -- http://forum.wordreference.com/showthread.php?t=337799


-- Fischer (2002), par. 45, 46

assimVII, assimVIII :: String -> Bool -> (String, String)

assimVII  c normal = case c of

                    "m"     | normal    ->  ("n", c)
                            | otherwise ->  ("m", c)

                    _                   ->  ("n", c)

assimVIII c normal = case c of

                    "'"     | normal    ->  (c, "t")
                            | otherwise ->  ("t", "t")

                    "_t"                ->  (c, "_t")

                    "_d"    | normal    ->  (c, "_d")
                            | otherwise ->  ("d", "d")

                    "d"                 ->  (c, "d")

                    "z"                 ->  (c, "d")

                    ".s"                ->  (c, ".t")

                    ".d"    | normal    ->  (c, ".t")
                            | otherwise ->  (c, ".d")

                    ".t"    | normal    ->  (c, ".t")
                            | otherwise ->  (".d", ".t")

                    ".z"                ->  (c, ".z")

                    "w"                 ->  ("t", "t")

                    _                   ->  (c, "t")


instance Rules PatternT where

    isForm f x = case f of

                            I       ->  inside  x  FaCaL    FaCCaL    ||  elem x [FACiL, FACI, FACL]
                            II      ->  inside  x  FaCCaL   FACaL     ||  elem x [TaFACI]
                            III     ->  inside  x  FACaL    HaFCaL
                            IV      ->  inside  x  HaFCaL   TaFaCCaL
                            V       ->  inside  x  TaFaCCaL TaFACaL
                            VI      ->  inside  x  TaFACaL  InFaCaL
                            VII     ->  inside  x  InFaCaL  IFtaCaL
                            VIII    ->  inside  x  IFtaCaL  IFCaLL
                            IX      ->  inside  x  IFCaLL   IstaFCaL
                            X       ->  inside  x  IstaFCaL IFCALL
                            XI      ->  inside  x  IFCALL   IFCawCaL
                            XII     ->  inside  x  IFCawCaL IFCawwaL
                            XIII    ->  inside  x  IFCawwaL IFCanLaL
                            XIV     ->  inside  x  IFCanLaL IFCanLY
                            XV      ->  not (inside x FaCaL IFCanLY)

   -- Fischer (2002), par. 239 (ra'Y, wa'Y), 258 (ya.hyY, ista.hY), 224 (participles)
   -- Fischer (2002), par. 243 (uy > uu), 33 ff (combinatory phonology), 250 (types)
   -- Fischer (2002), par. 208, 218, 220 (inflecting IX-3, XI-3, and IV-4 verbs)


    prefixVerbI _ _ Passive                     = "u"

    prefixVerbI x _ _   | x `elem` [II .. IV]   = "u"
                        | otherwise             = "a"


    prefixVerbC I   y   | y `elem` [FCuL, FCU]      = "u"
    prefixVerbC I   y   | y `elem` [FuCL, FiCL, FaCL,
                                    FUL, FAL, FIL,
                                    FuL, FaL, FiL,
                                    CiL, CaL, CuL,
                                    CI, FY]         = ""
                        | otherwise                 = "i"

    prefixVerbC IV  _       = "'a"

    prefixVerbC x   _   | x `elem` [II, III, V, VI] = ""
                        | otherwise                 = "i"


    auxiesDouble I    FuCL                      = auxies'
    auxiesDouble I y    | y `elem` [FiCL, FaCL] = auxies
                        | otherwise             = []

    auxiesDouble III  FACL                      = auxies

    auxiesDouble IV y   | y `elem` [FiCL, FaCL] = auxies
                        | otherwise             = []

    auxiesDouble VI   TaFACL                    = auxies

    auxiesDouble VII  NFaCL                     = auxies
    auxiesDouble VIII FtaCL                     = auxies
    auxiesDouble IX   FCaLL                     = auxies

    auxiesDouble X y    | y `elem` [StaFiCL,
                                    StaFaCL]    = auxies
                        | otherwise             = []

    auxiesDouble XI   FCALL                     = auxies

    auxiesDouble _    _                         = []


    -- Fischer (2002), par. 153, 93 ff, 99, etc.

    isDiptote = flip elem [ HaFCaL, HACaL, HawCaL, HaFCY, HaFaCL, HACY,
                            HuFayCaL, HuFayCY, {-- (?) --}
                            FaCLY, FaCwY,
                            FiCLY, FILY,
                            FuCLY, FULY, FuCyY,
                            FaCaLY,
                            FaCALY, FaCAyY, FaCAwY,
                            FuCALY,
                            FaCLA', FaCyA',
                            FuCaLA', MuFaLA',
                            HaFCiLA', HACiLA', HaFILA', HaFCiyA', HaFiCLA',
                            FaCA'iL, FayA'iL,
                            FaCAyiL,
                            FaCACiL,
                            FaCACIL, FaCACIy,
                            FawACiL, FawA'iL, FawACL, FawALi',
                            FawACIL, FawA'IL,
                            FayACiL,
                            FayACIL,
                            HaFACiL, HamAFiL,
                            HaFACIL, HaFACIy,
                            TaFACiL,
                            TaFACIL, TawACIL,
                            MaFACiL, MaFA'iL, MaFACL, MawACiL, MayACiL,
                            MaFACIL, MaFA'IL, MawACIL, MayACIL,
                            FaCALIy, FawALIy,
                            -- FuCaL, FuCAL,
                            FiCLiyA', FILiyA',
                            FACiLA', FACiyA',
                            FACULA',
                            FaCILA',
                            FuCayLA',
                            FuCALA',
                            FuCayLY,
                            FuCayLA,
                            FaCULY,
                            FaCCULY,
                            FaCALIn,
                            FaCLAn, FaCwAn,
                            FaCALIL,
                            YaFACIL ]


isFirst :: Root -> Bool

isFirst r = case words r of x : _ -> x == "w" || x == "y"
                            _     -> False


isDouble :: Root -> Bool

isDouble r = case words r of x : y : z : _ -> y == z && y /= "y" && y /= "w"
                             _             -> False


instance Forming PatternT where

    verbStems I r

        | words r == ["r", "'", "y"] = [

        (   Nothing,    FaCY,       FuCI,       FY,         FY          )   -- ra'Y

        ]

        | (drops . words) r == ["y", "y"] = [

        (   Just   (    FaCI,       FuCI,       FCY,        FCY         ),
                        FaCL,       FuCL,       FCY,        FCY         ),  -- .hayya

        (   Just   (    FaCI,       FuCI,       FCY,        FCY         ),
                        FaCL,       FuCL,       FaCL,       FaCL        ),

        (   Nothing,    FaCI,       FuCI,       FCY,        FCY         )   -- .hayiya

        ]

        | isDouble r = [

        (   Just   (    FaCaL,      FuCiL,      FCaL,       FCaL        ),
                        FaCL,       FuCL,       FaCL,       FaCL        ),
        (   Just   (    FaCaL,      FuCiL,      FCiL,       FCaL        ),
                        FaCL,       FuCL,       FiCL,       FaCL        ),
        (   Just   (    FaCaL,      FuCiL,      FCuL,       FCaL        ),
                        FaCL,       FuCL,       FuCL,       FaCL        ),

        (   Just   (    FaCiL,      FuCiL,      FCaL,       FCaL        ),
                        FaCL,       FuCL,       FaCL,       FaCL        ),

        (   Just   (    FaCuL,      FuCiL,      FCaL,       FCaL        ),
                        FaCL,       FuCL,       FaCL,       FaCL        ),
        (   Just   (    FaCuL,      FuCiL,      FCuL,       FCaL        ),
                        FaCL,       FuCL,       FuCL,       FaCL        )

        ]

        | isFirst r = [

        (   Nothing,    FaCaL,      FuCiL,      CaL,        FCaL        ),
        (   Nothing,    FaCaL,      FuCiL,      CiL,        FCaL        ),
        (   Nothing,    FaCaL,      FuCiL,      CuL,        FCaL        ),

        (   Nothing,    FaCiL,      FuCiL,      CaL,        FCaL        ),
        (   Nothing,    FaCiL,      FuCiL,      CiL,        FCaL        ),  -- wari_ta

        (   Nothing,    FaCuL,      FuCiL,      CaL,        FCaL        ),
        (   Nothing,    FaCuL,      FuCiL,      CuL,        FCaL        ),

        (   Nothing,    FaCY,       FuCI,       CI,         CY          ),  -- waqY
        (   Nothing,    FaCI,       FuCI,       CI,         CY          )   -- waliya

        ] ++ verbStems'     -- verbStems I "F C L" .. but no "[wy] [yw] L"

        | otherwise = [

        (   Just  (     FuL,        FiL,        FuL,        FaL         ),
                        FAL,        FIL,        FUL,        FAL         ),  -- qAla
        (   Just  (     FiL,        FiL,        FaL,        FaL         ),
                        FAL,        FIL,        FAL,        FAL         ),  -- nAma / nAla
        (   Just  (     FiL,        FiL,        FiL,        FaL         ),
                        FAL,        FIL,        FIL,        FAL         )   -- sAra

        ] ++ verbStems'

     where { verbStems' = [

        (   Nothing,    FaCaL,      FuCiL,      FCaL,       FCaL        ),
        (   Nothing,    FaCaL,      FuCiL,      FCiL,       FCaL        ),
        (   Nothing,    FaCaL,      FuCiL,      FCuL,       FCaL        ),

        (   Nothing,    FaCiL,      FuCiL,      FCaL,       FCaL        ),
        (   Nothing,    FaCiL,      FuCiL,      FCiL,       FCaL        ),  -- .hasiba

        (   Nothing,    FaCuL,      FuCiL,      FCaL,       FCaL        ),
        (   Nothing,    FaCuL,      FuCiL,      FCuL,       FCaL        ),

        (   Nothing,    FaCA,       FuCI,       FCU,        FCY         ),  -- da`A
        (   Nothing,    FaCU,       FuCI,       FCU,        FCY         ),  -- .haluwa
        (   Nothing,    FaCY,       FuCI,       FCI,        FCY         ),  -- ramY / 'awY
        (   Nothing,    FaCY,       FuCI,       FCY,        FCY         ),  -- sa`Y / na'Y
        (   Nothing,    FaCI,       FuCI,       FCY,        FCY         )   -- nasiya

        ] }


    verbStems II _ = [

        (   Nothing,    FaCCaL,     FuCCiL,     FaCCiL,     FaCCaL      ),
        (   Nothing,    FaCCY,      FuCCI,      FaCCI,      FaCCY       )

        ]


    verbStems III _ = [

        (   Nothing,    FACaL,      FUCiL,      FACiL,      FACaL       ),
        (   Nothing,    FACY,       FUCI,       FACI,       FACY        ),
        (   Just   (    FACaL,      FUCiL,      FACiL,      FACaL       ),
                        FACL,       FUCL,       FACL,       FACL        )

        ]


    verbStems IV r

        | isFirst r = [

        (   Nothing,    HaFCaL,     HUCiL,      FCiL,       FCaL        ),
        (   Nothing,    HaFCY,      HUCI,       FCI,        FCY         ),
        (   Just   (    HaFCaL,     HUCiL,      FCiL,       FCaL        ),
                        HaFaCL,     HuFiCL,     FiCL,       FaCL        )

        ]

        | otherwise = [

        (   Nothing,    HaFCaL,     HuFCiL,     FCiL,       FCaL        ),
        (   Nothing,    HACaL,      HUCiL,      FCiL,       FCaL        ),
        (   Just   (    HaFaL,      HuFiL,      FiL,        FaL         ),
                        HaFAL,      HuFIL,      FIL,        FAL         ),
        (   Nothing,    HaFCY,      HuFCI,      FCI,        FCY         ),  -- 'an'Y
        (   Nothing,    HaFY,       HuFI,       FI,         FY          ),  -- 'arY
        (   Just   (    HaFCaL,     HuFCiL,     FCiL,       FCaL        ),
                        HaFaCL,     HuFiCL,     FiCL,       FaCL        ),
        (   Nothing,    HACY,       HUCI,       FCI,        FCY         )   -- 'AwY

        ]


    verbStems V _ = [

        (   Nothing,    TaFaCCaL,   TuFuCCiL,   TaFaCCaL,   TaFaCCaL    ),
        (   Nothing,    TaFaCCY,    TuFuCCI,    TaFaCCY,    TaFaCCY     )

        ]


    verbStems VI _ = [

        (   Nothing,    TaFACaL,    TuFUCiL,    TaFACaL,    TaFACaL     ),
        (   Nothing,    TaFACY,     TuFUCI,     TaFACY,     TaFACY      ),
        (   Just   (    TaFACaL,    TuFUCiL,    TaFACaL,    TaFACaL     ),
                        TaFACL,     TuFUCL,     TaFACL,     TaFACL      )

        ]


    verbStems VII _ = [

        (   Nothing,    InFaCaL,    UnFuCiL,    NFaCiL,     NFaCaL      ),
        (   Just   (    InFaL,      UnFiL,      NFaL,       NFaL        ),
                        InFAL,      UnFIL,      NFAL,       NFAL        ),
        (   Nothing,    InFaCY,     UnFuCI,     NFaCI,      NFaCY       ),
        (   Just   (    InFaCaL,    UnFuCiL,    NFaCiL,     NFaCaL      ),
                        InFaCL,     UnFuCL,     NFaCL,      NFaCL       )

        ]


    verbStems VIII _ = [

        (   Nothing,    IFtaCaL,    UFtuCiL,    FtaCiL,     FtaCaL      ),
        (   Just   (    IFtaL,      UFtiL,      FtaL,       FtaL        ),
                        IFtAL,      UFtIL,      FtAL,       FtAL        ),
        (   Nothing,    IFtaCY,     UFtuCI,     FtaCI,      FtaCY       ),
        (   Just   (    IFtaCaL,    UFtuCiL,    FtaCiL,     FtaCaL      ),
                        IFtaCL,     UFtuCL,     FtaCL,      FtaCL       )

        ]


    verbStems IX _ = [

        (   Just   (    IFCaLaL,    UFCuLiL,    FCaLiL,     FCaLaL      ),
                        IFCaLL,     UFCuLL,     FCaLL,      FCaLL       ),
        (   Nothing,    IFCaLY,     UFCuLI,     FCaLI,      FCaLY       )

        ]


    verbStems X r

        | isFirst r = [

        (   Nothing,    IstaFCaL,   UstUCiL,    StaFCiL,    StaFCaL     ),
        (   Nothing,    IstaFCY,    UstUCI,     StaFCI,     StaFCY      ),
        (   Just   (    IstaFCaL,   UstUCiL,    StaFCiL,    StaFCaL     ),
                        IstaFaCL,   UstuFiCL,   StaFiCL,    StaFaCL     )

        ]

        | otherwise = [

        (   Nothing,    IstaFCaL,   UstuFCiL,   StaFCiL,    StaFCaL     ),
        (   Just   (    IstaFaL,    UstuFiL,    StaFiL,     StaFaL      ),
                        IstaFAL,    UstuFIL,    StaFIL,     StaFAL      ),
        (   Nothing,    IstaFCY,    UstuFCI,    StaFCI,     StaFCY      ),
        (   Nothing,    IstaFY,     UstuFI,     StaFI,      StaFY       ),  -- ista.hY
        (   Just   (    IstaFCaL,   UstuFCiL,   StaFCiL,    StaFCaL     ),
                        IstaFaCL,   UstuFiCL,   StaFiCL,    StaFaCL     )

        ]


    verbStems XI _ = [

        (   Just   (    IFCALaL,    UFCULiL,    FCALiL,     FCALaL      ),
                        IFCALL,     UFCULL,     FCALL,      FCALL       )

        ]


    verbStems XII _ = [

        (   Nothing,    IFCawCaL,   UFCUCiL,    FCawCiL,    FCawCaL     ),
        (   Nothing,    IFCawCY,    UFCUCI,     FCawCI,     FCawCY      )

        ]


    verbStems XIII _ = [

        (   Nothing,    IFCawwaL,   UFCUwiL,    FCawwiL,    FCawwaL     )

        ]


    verbStems XIV _ = [

        (   Nothing,    IFCanLaL,   UFCunLiL,   FCanLiL,    FCanLaL     )

        ]


    verbStems XV _ = [

        (   Nothing,    IFCanLY,    UFCunLY,    FCanLI,     FCanLY      )

        ]


    nounStems I r

        | isDouble r = [

        (   FaCL,       FACL,       MaFCUL,     morph   FaCaL           ),
        (   FaCL,       FACL,       MaFCUL,     morph   FaCAL           ),
        (   FaCL,       FACL,       MaFCUL,     morph   FaCL            ),
        (   FaCL,       FACL,       MaFCUL,     morph   FuCL            )

        ]

        | (drops . drops . words) r == ["y"] = [

        (   FaCY,       FACI,       MaFCIL,     morph   FaCY            ),
        (   FaCY,       FACI,       MaFCIL,     morph   FaCA'           ),
        (   FaCY,       FACI,       MaFCIL,     morph   FiCA'           ),
        (   FaCY,       FACI,       MaFCIL,     morph   FaCL            ),
        (   FaCY,       FACI,       MaFCIL,             FiCAL |< aT     ),

        (   FaCI,       FACI,       MaFCIL,     morph   FaCY            ),
        (   FaCI,       FACI,       MaFCIL,     morph   FaCA'           ),
        (   FaCI,       FACI,       MaFCIL,     morph   FiCA'           ),
        (   FaCI,       FACI,       MaFCIL,     morph   FaCL            ),
        (   FaCI,       FACI,       MaFCIL,             FiCAL |< aT     )

        ]

        | (drops . drops . words) r == ["w"] = [

        (   FaCA,       FACI,       MaFCUL,     morph   FaCA            ),
        (   FaCA,       FACI,       MaFCUL,     morph   FuCA'           ),
        (   FaCA,       FACI,       MaFCUL,     morph   FaCL            ),
        (   FaCA,       FACI,       MaFCUL,     morph   FuCUL           ),

        (   FaCA,       FACI,       MaFCIy,     morph   FaCA            ),
        (   FaCA,       FACI,       MaFCIy,     morph   FuCA'           ),
        (   FaCA,       FACI,       MaFCIy,     morph   FaCL            ),
        (   FaCA,       FACI,       MaFCIy,     morph   FuCUL           )

        ]

        | (takes . words) r == ["'", "y"] = [

        (   FAL,        FACiL,      MaFIL,      morph   FaCL            ),
        (   FAL,        FACiL,      MaFIL,      morph   FiCAL           ),
        (   FAL,        FACiL,      MaFIL,      morph   MaFIL           )

        ]

        | (takes . words) r == ["'", "w"] = [

        (   FAL,        FAyiL,      MaFUL,      morph   FaCL            ),
        (   FAL,        FAyiL,      MaFUL,      morph   FiyAL           ),
        (   FAL,        FAyiL,      MaFUL,      morph   MaFAL           )

        ]

        | (drops . words) r == ["y", "'"] = [

        (   FAL,        FA'I,       MaFIL,      morph   FaCL            ),
        (   FAL,        FA'I,       MaFIL,      morph   FiCAL           ),
        (   FAL,        FA'I,       MaFIL,      morph   MaFIL           ),
        (   FAL,        FA'I,       MaFIL,              MaFIL |< aT     )

        ]

        | (drops . words) r == ["w", "'"] = [

        (   FAL,        FA'I,       MaFUL,      morph   FaCL            ),
        (   FAL,        FA'I,       MaFUL,      morph   FuCAL           ),
        (   FAL,        FA'I,       MaFUL,      morph   FiyAL           ),
        (   FAL,        FA'I,       MaFUL,              MaFAL |< aT     )

        ]

        | (takes . drops . words) r == ["y"] = [

        (   FAL,        FA'iL,      MaFIL,      morph   FaCL            ),
        (   FAL,        FA'iL,      MaFIL,      morph   FiCAL           ),
        (   FAL,        FA'iL,      MaFIL,              FiCAL |< aT     ),
        (   FAL,        FA'iL,      MaFIL,              FaCLUL |< aT    )

        ]

        | (takes . drops . words) r == ["w"] = [

        (   FAL,        FA'iL,      MaFUL,      morph   FaCL            ),
        (   FAL,        FA'iL,      MaFUL,      morph   FiyAL           ),
        (   FAL,        FA'iL,      MaFUL,              FiyAL |< aT     ),
        (   FAL,        FA'iL,      MaFUL,              FayLUL |< aT    )

        ]

        | isFirst r = [

        (   FaCaL,      FACiL,      MaFCUL,     morph   FaCaL           ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FaCAL           ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FaCL            ),
        (   FaCaL,      FACiL,      MaFCUL,             CiL |< aT       ),
        (   FaCaL,      FACiL,      MaFCUL,             FaCAL |< aT     ),
        (   FaCaL,      FACiL,      MaFCUL,             FiCAL |< aT     ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FuCUL           ),

        (   FaCiL,      FACiL,      MaFCUL,     morph   FaCaL           ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FaCAL           ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FaCL            ),
        (   FaCiL,      FACiL,      MaFCUL,             CiL |< aT       ),
        (   FaCiL,      FACiL,      MaFCUL,             FaCAL |< aT     ),
        (   FaCiL,      FACiL,      MaFCUL,             FiCAL |< aT     ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FuCUL           )

        ]

        | otherwise = [

        (   FaCaL,      FACiL,      MaFCUL,     morph   FaCaL           ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FaCAL           ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FaCL            ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FiCL            ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FuCL            ),
        (   FaCaL,      FACiL,      MaFCUL,             FaCAL |< aT     ),
        (   FaCaL,      FACiL,      MaFCUL,             FiCAL |< aT     ),
        (   FaCaL,      FACiL,      MaFCUL,     morph   FuCUL           ),

        (   FaCiL,      FACiL,      MaFCUL,     morph   FaCaL           ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FaCAL           ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FaCL            ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FiCL            ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FuCL            ),
        (   FaCiL,      FACiL,      MaFCUL,             FaCAL |< aT     ),
        (   FaCiL,      FACiL,      MaFCUL,             FiCAL |< aT     ),
        (   FaCiL,      FACiL,      MaFCUL,     morph   FuCUL           )

        ]


    nounStems II r

        | (drops . words) r == ["y", "y"] = [

        (   FaCCY,      MuFaCCI,    MuFaCCY,            TaFIL |< aT     )

        ]

        | isDouble r = [

        (   FaCCaL,     MuFaCCiL,   MuFaCCaL,   morph   TaFCIL          ),
        (   FaCCaL,     MuFaCCiL,   MuFaCCaL,           TaFiCL |< aT    )

        ]

        | otherwise = [

        (   FaCCaL,     MuFaCCiL,   MuFaCCaL,   morph   TaFCIL          ),
        (   FaCCaL,     MuFaCCiL,   MuFaCCaL,           TaFCiL |< aT    ),

        (   FaCCY,      MuFaCCI,    MuFaCCY,            TaFCI |< aT     )

        ]


    nounStems III _ = [

        (   FACaL,      MuFACiL,    MuFACaL,            MuFACaL |< aT   ),
     -- (   FACaL,      MuFACiL,    MuFACaL,    morph   FiCAL           ),
        (   FACY,       MuFACI,     MuFACY,             MuFACY |< aT    ),
        (   FACL,       MuFACL,     MuFACL,             MuFACL |< aT    )

        ]


    nounStems IV r

        | isDouble r = [                                       if isFirst r then

        (   HaFaCL,     MuFiCL,     MuFaCL,     morph   HICAL           )   else
        (   HaFaCL,     MuFiCL,     MuFaCL,     morph   HiFCAL          )

        ]

        | isFirst r = [

        (   HaFCaL,     MUCiL,      MUCaL,      morph   HICAL           ),
        (   HaFCY,      MUCI,       MUCY,       morph   HICA'           )

        ]

        | (takes . takes . words) r == ["'"] = [

        (   HACaL,      MuFCiL,     MuFCaL,     morph   HICAL           ),
        (   HACY,       MuFCI,      MuFCY,      morph   HICA'           )

        ]

        | otherwise = [

        (   HaFCaL,     MuFCiL,     MuFCaL,     morph   HiFCAL          ),
        (   HaFAL,      MuFIL,      MuFAL,              HiFAL |< aT     ),
        (   HaFCY,      MuFCI,      MuFCY,      morph   HiFCA'          ),
        (   HaFY,       MuFI,       MuFY,               HiFA' |< aT     )

        ]


    nounStems V _ = [

        (   TaFaCCaL,   MutaFaCCiL, MutaFaCCaL, morph   TaFaCCuL        ),
        (   TaFaCCY,    MutaFaCCI,  MutaFaCCY,  morph   TaFaCCI         )

        ]


    nounStems VI _ = [

        (   TaFACaL,    MutaFACiL,  MutaFACaL,  morph   TaFACuL         ),
        (   TaFACY,     MutaFACI,   MutaFACY,   morph   TaFACI          ),
        (   TaFACL,     MutaFACL,   MutaFACL,   morph   TaFACL          )

        ]


    nounStems VII r

        | isDouble r = [

        (   InFaCL,     MunFaCL,    MunFaCL,    morph   InFiCAL         )

        ]

        | (takes . drops . words) r == ["y"] = [

        (   InFAL,      MunFAL,     MunFAL,     morph   InFiCAL         ),
        (   InFaCY,     MunFaCI,    MunFaCY,    morph   InFiCA'         ),
        (   InFaCaL,    MunFaCiL,   MunFaCaL,   morph   InFiCAL         )

        ]

        | (takes . drops . words) r == ["w"] = [

        (   InFAL,      MunFAL,     MunFAL,     morph   InFiyAL         ),
        (   InFaCY,     MunFaCI,    MunFaCY,    morph   InFiCA'         ),  -- inziwA' z w y
        (   InFaCaL,    MunFaCiL,   MunFaCaL,   morph   InFiCAL         )

        ]

        | otherwise = [

        (   InFaCaL,    MunFaCiL,   MunFaCaL,   morph   InFiCAL         ),
        (   InFaCY,     MunFaCI,    MunFaCY,    morph   InFiCA'         )

        ]


    nounStems VIII r

        | isDouble r = [

        (   IFtaCL,     MuFtaCL,    MuFtaCL,    morph   IFtiCAL         )

        ]

        | (takes . drops . words) r == ["y"] = [

        (   IFtAL,      MuFtAL,     MuFtAL,     morph   IFtiCAL         ),
        (   IFtaCY,     MuFtaCI,    MuFtaCY,    morph   IFtiCA'         ),
        (   IFtaCaL,    MuFtaCiL,   MuFtaCaL,   morph   IFtiCAL         )

        ]

        | (takes . drops . words) r == ["w"] = [

        (   IFtAL,      MuFtAL,     MuFtAL,     morph   IFtiyAL         ),  -- istiyA' s w '
        (   IFtaCY,     MuFtaCI,    MuFtaCY,    morph   IFtiCA'         ),  -- istiwA' s w y
        (   IFtaCaL,    MuFtaCiL,   MuFtaCaL,   morph   IFtiCAL         )

        ]

        | otherwise = [

        (   IFtaCaL,    MuFtaCiL,   MuFtaCaL,   morph   IFtiCAL         ),
        (   IFtaCY,     MuFtaCI,    MuFtaCY,    morph   IFtiCA'         )

        ]


    nounStems IX _ = [

        (   IFCaLL,     MuFCaLL,    MuFCaLL,    morph   IFCiLAL         ),
        (   IFCaLY,     MuFCaLI,    MuFCaLY,    morph   IFCiLA'         )

        ]


    nounStems X r

        | isDouble r = [                                       if isFirst r then

        (   IstaFaCL,   MustaFiCL,  MustaFaCL,  morph   IstICAL         )   else
        (   IstaFaCL,   MustaFiCL,  MustaFaCL,  morph   IstiFCAL        )

        ]

        | isFirst r = [

        (   IstaFCaL,   MustaFCiL,  MustaFCaL,  morph   IstICAL         ),
        (   IstaFCY,    MustaFCI,   MustaFCY,   morph   IstICA'         )

        ]

        | otherwise = [

        (   IstaFCaL,   MustaFCiL,  MustaFCaL,  morph   IstiFCAL        ),
        (   IstaFAL,    MustaFIL,   MustaFAL,           IstiFAL |< aT   ),
        (   IstaFCY,    MustaFCI,   MustaFCY,   morph   IstiFCA'        ),
        (   IstaFY,     MustaFI,    MustaFY,    morph   IstiFA'         )

        ]


    nounStems XI _ = [

        (   IFCALL,     MuFCALL,    MuFCALL,    morph   IFCILAL         )

        ]


    nounStems XII _ = [

        (   IFCawCaL,   MuFCawCiL,  MuFCawCaL,  morph   IFCICAL         ),
        (   IFCawCY,    MuFCawCI,   MuFCawCY,   morph   IFCICA'         )

        ]


    nounStems XIII _ = [

        (   IFCawwaL,   MuFCawwiL,  MuFCawwaL,  morph   IFCiwwAL        )

        ]


    nounStems XIV _ = [

        (   IFCanLaL,   MuFCanLiL,  MuFCanLaL,  morph   IFCinLAL        )

        ]


    nounStems XV _ = [

        (   IFCanLY,    MuFCanLI,   MuFCanLY,   morph   IFCinLA'        )

        ]


data PatternT =

--      |   Regular     |   First       |   Second      |   Third       |   Double      |   Either

--  Form I

            FaCaL                       |   FAL         |   FaCY        |   FaCL
                                                        |   FaCA
        |   FaCiL                                       |   FaCI
        |   FaCuL                                       |   FaCU

        |   FuCiL                                       |   FuCI

        |   FCaL        |   CaL                         |   FCY                         |   CY
        |   FCiL        |   CiL         |   FIL         |   FCI         |   FiCL        |   CI
        |   FCuL        |   CuL         |   FUL         |   FCU         |   FuCL        |   CU

                                        |   FaL         |   FaC                         |   FY
                                                                                        |   FA
                                        |   FiL         |   FiC                         |   FI
                                        |   FuL         |   FuC                         |   FU

    {-- |   FaCL    --}                 |   FayL        |   FaCw                        |   FAw
                                                        |   FaCy                        |   FA'
    {-- |   FiCL    --} |   HiCL                        |   FiCy                        |   FIy
                                                        |   FiCw
    {-- |   FuCL    --} |   TuCL                        |   FuCw                        |   FUw
                                                        |   FuC'
                                                        |   FuCy

                                                        |   IFC

        |   FaCAL                                       |   FaCA'
                                                        |   FaCAw
                                                        |   FaCAy

        |   FiCAL       |   CAL         |   FiyAL       |   FiCA'                       |   FiyA'
                                                        |   FiCAy
                                                        |   FiCAw

        |   FuCAL       |   TuCAL                       |   FuCA'
                                                        |   FuCAw

        |   FaCUL                       |   Fa'UL
        |   FuCUL                       |   Fu'UL       |   FuCU'
                                        |   FuyUL       |   FuCUw

        |   FaCIL                       |   FayyiL      |   FaCIy
        |   FuCIL                                       |   FuCIy
        |   FiCIL                                       |   FiCIy

        |   FaCA'iL                     |   FayA'iL     |   FaCA'I
        |   FaCAyiL

        |   FaCLA'                                      |   FaCyA'

        |   FuCaLA'
                                        |   MuFaLA'

        |   FACiLA'                                     |   FACiyA'
        |   FACULA'

        |   FaCILA'

        |   FiCLA'                      |   FILA'
        |   FuCLA'                      |   FULA'

        |   FaCLAy
        |   FiCLAy
        |   FuCLAy

        |   FaCALIy                     |   FawALIy

        |   FiCLiyA'                    |   FILiyA'

    {-- |   FACiL   --}                 |   FA'iL   {-- |   FACI        |   FACL    --} |   FA'I
                                        |   FAyiL

        |   MaFCUL                      |   MaFUL       |   MaFCIL
                                                        |   MaFCIy

        |   FaCCAL                                      |   FaCCA'
                                                        |   FaCCAy
        |   FiCCAL                  {-- |   FICAL   --}
        |   FuCCAL                  {-- |   FUCAL   --}
                                        |   FuyyAL

        |   FICAL                                       |   FICA'
        |   FUCAL

        |   FuCCaL                  {-- |   FUCaL   --}
                                        |   FuyyaL
        |   FuCCuL
        |   FiCCiL

        |   FiCCIL                                      |   FiCCIy
        |   FaCCIL
        |   FaCCUL

        |   FUCaL

        |   FaCACiL                                     |   FaCACI
        |   FaCACIL                                     |   FaCACIy

        |   FawCaL
        |   FayCaL

        |   FawCaLAn
        |   FayCaLAn
        |   FayCuLAn

        |   FawACiL                     |   FawA'iL     |   FawACI      |   FawACL      |   FawA'I
        |   FayACiL                                     |   FayACI
                                        |   FawALi'

        |   FACUL                       |   FA'UL
        |   FayCUL

        |   FACuL

        |   FACIL
        |   FayCIL

        |   FACAL
        |   FayCAL

        |   FawACIL                     |   FawA'IL
        |   FayACIL

        |   MaFCaL                      |   MaFAL       |   MaFCY       |   MaFaCL
        |   MaFCiL                      |   MaFIL       |   MaFCI

        |   MaFCuL
        |   MuFCuL

        |   MiFCaL      |   MICaL                       |   MiFCY       |   MiFaCL      |   MICY
        |   MiFCAL      |   MICAL                       |   MiFCA'

        |   MaFACiL                     |   MaFA'iL     |   MaFACI      |   MaFACL
        |   MaFACIL                     |   MaFA'IL

                        |   MawACiL
                        |   MayACiL

                        |   MawACIL
                        |   MayACIL

        |   HaFCAL      |   HACAL       |   HaFyAL      |   HaFCA'                      |   HACA'
                                        |   HAFAL                                       |   HAFA'

        |   HaFCiL      |   HACiL       |   HaFIL       |   HaFCI       |   HaFiCL      |   HACI
        |   HaFCuL      |   HACuL       |   HaFUL       |   HaFCU       |   HaFuCL      |   HACU
                                        |   HamFiL

        |   HaFACiL                                     |   HaFACI                      |   HawACI
        |   HaFACIL                                     |   HaFACIy
                                        |   HamAFiL

        |   HaFCiLA'    |   HACiLA'     |   HaFILA'     |   HaFCiyA'    |   HaFiCLA'

        |   HuFCUL      |   HUCUL
        |   HuFCIL      |   HUCIL                       |   HuFCIy

        |   HiFCIL

    {-- |   FaCaL   --}                             {-- |   FaCY    --}
        |   FiCaL                       |   FiyaL       |   FiCY
                                                        |   FiCA
        |   FuCaL       |   TuCaL                       |   FuCY
                                                        |   FuCA

        |   FuCuL
        |   FiCiL

        |   FaCLAn                      |   FayLAn      |   FaCwAn
        |   FaCaLAn                                     |   FaCawAn

        |   FiCLAn                      |   FILAn       |   FiCwAn
        |   FuCLAn                      |   FULAn

        |   FaCILAn
        |   FaCULAn

        |   FACiLAn

        |   FaCLUn
        |   FiCLUn

        |   FaCALUn

        |   FaCALIn

        |   FaCALin

        |   HuFCuLAn

        |   MaFCaLAn

        |   FuCayL                      |   FuwayL      |   FuCayy

        |   FuCCayL

        |   FuwayCiL                                                    |   FuwayCL
        |   FuwayCaL

        |   FuCayyiL

        |   MuFayCaL

        |   HuFayCAL

        |   HuFayCaL    {-- (?) --}                     |   HuFayCY

        |   FuCayLAn

        |   FuCayLin                    |   FuwayLin

        |   FuCayLA'

        |   FuCALA'

        |   FuCayLY
        |   FuCayLA

        |   FaCULY
        |   FaCCULY

                        |   HawCaL

        |   FaCLY       |   TaCLY       |   FayLY       |   FaCwY
        |   FiCLY                       |   FILY
        |   FuCLY                       |   FULY        |   FuCyY

        |   FaCaLY

        |   FaCALI                      |   FawALI
        |   FaCALY                                      |   FaCAyY
                                                        |   FaCAwY
        |   FuCALY

        |   FaCLUL                      |   FayLUL
        |   FuCLUL
        |   FaCLIL
        |   FiCLIL

                                        |   Fu'LuL

        |   FiCaLL
        |   FiCiLL
        |   FuCuLL

        |   FuCuLLAn

        |   FaCALIL

        |   HuFCuLL

        |   MiFCIL
        |   MiFCaLL

        |   YaFCUL
        |   YaFCIL
        |   YaFACIL

--  Form II

        |   FaCCaL                                      |   FaCCY
        |   FuCCiL                                      |   FuCCI

        |   FaCCiL                                      |   FaCCI

        |   TaFCIL      |   TACIL
        |   TaFCiL                      |   TaFIL       |   TaFCI       |   TaFiCL

        |   TaFCaL
        |   TaFCuL

        |   TaFACiL                                 {-- |   TaFACI  --}
        |   TaFACIL     |   TawACIL

        |   TiFCAL      |   TICAL                       |   TiFCA'                      |   TICA'
        |   TaFCAL

        |   MuFaCCiL                                    |   MuFaCCI
        |   MuFaCCaL                                    |   MuFaCCY

--  Form III

        |   FACaL                                       |   FACY        |   FACL
        |   FUCiL                                       |   FUCI        |   FUCL

        |   FACiL                                       |   FACI

        |   MuFACiL                                     |   MuFACI      |   MuFACL
        |   MuFACaL                                     |   MuFACY

--  Form IV

        |   HaFCaL      |   HACaL       |   HaFAL       |   HaFCY       |   HaFaCL      |   HACY
        |   HuFCiL      |   HUCiL       |   HuFIL       |   HuFCI       |   HuFiCL      |   HUCI

                                        |   HaFaL                                       |   HaFY
                                        |   HuFiL                                       |   HuFI

        |   HiFCAL      |   HICAL                       |   HiFCA'                      |   HICA'
        |   HiFCaL      |   HICaL       |   HiFAL       |   HiFCY       |   HiFaCL      |   HICY
                                                                                        |   HiFA'

        |   MuFCiL      |   MUCiL       |   MuFIL       |   MuFCI       |   MuFiCL      |   MUCI
        |   MuFCaL      |   MUCaL       |   MuFAL       |   MuFCY       |   MuFaCL      |   MUCY

                                                                                        |   MuFI
                                                                                        |   MuFY

--  Form V

        |   TaFaCCaL                                    |   TaFaCCY
        |   TuFuCCiL                                    |   TuFuCCI

        |   TaFaCCuL                                    |   TaFaCCI

        |   TiFiCCAL

        |   MutaFaCCiL                                  |   MutaFaCCI
        |   MutaFaCCaL                                  |   MutaFaCCY

--  Form VI

        |   TaFACaL                                     |   TaFACY      |   TaFACL
        |   TuFUCiL                                     |   TuFUCI      |   TuFUCL

        |   TaFACuL                                     |   TaFACI

        |   MutaFACiL                                   |   MutaFACI    |   MutaFACL
        |   MutaFACaL                                   |   MutaFACY

--  Form VII

        |   InFaCaL                     |   InFAL       |   InFaCY      |   InFaCL
        |   UnFuCiL                     |   UnFIL       |   UnFuCI      |   UnFuCL

        |   NFaCiL                      |   NFAL        |   NFaCI       |   NFaCL
        |   NFaCaL                                      |   NFaCY

                                        |   InFaL
                                        |   UnFiL
                                        |   NFaL

        |   InFiCAL                     |   InFiyAL     |   InFiCA'

        |   MunFaCiL                    |   MunFAL      |   MunFaCI     |   MunFaCL
        |   MunFaCaL                                    |   MunFaCY

--  Form VIII

        |   IFtaCaL                     |   IFtAL       |   IFtaCY      |   IFtaCL
        |   UFtuCiL                     |   UFtIL       |   UFtuCI      |   UFtuCL

        |   FtaCiL                      |   FtAL        |   FtaCI       |   FtaCL
        |   FtaCaL                                      |   FtaCY

                                        |   IFtaL
                                        |   UFtiL
                                        |   FtaL

        |   IFtiCAL                     |   IFtiyAL     |   IFtiCA'

        |   MuFtaCiL                    |   MuFtAL      |   MuFtaCI     |   MuFtaCL
        |   MuFtaCaL                                    |   MuFtaCY

--  Form IX

        |   IFCaLL                                      |   IFCaLY      |   IFCaLaL
        |   UFCuLL                                      |   UFCuLI      |   UFCuLiL

        |   FCaLL                                       |   FCaLI       |   FCaLiL
                                                        |   FCaLY       |   FCaLaL

        |   IFCiLAL                                     |   IFCiLA'

        |   MuFCaLL                                     |   MuFCaLI
                                                        |   MuFCaLY

--  Form X

        |   IstaFCaL                    |   IstaFAL     |   IstaFCY     |   IstaFaCL
        |   UstuFCiL    |   UstUCiL     |   UstuFIL     |   UstuFCI     |   UstuFiCL    |   UstUCI

        |   StaFCiL                     |   StaFIL      |   StaFCI      |   StaFiCL
        |   StaFCaL                     |   StaFAL      |   StaFCY      |   StaFaCL

                                        |   IstaFaL                                     |   IstaFY
                                        |   UstuFiL                                     |   UstuFI

                                        |   StaFiL                                      |   StaFI
                                        |   StaFaL                                      |   StaFY

        |   IstiFCAL    |   IstICAL     |   IstiFAL     |   IstiFCA'                    |   IstICA'
                                                                                        |   IstiFA'

        |   MustaFCiL                   |   MustaFIL    |   MustaFCI    |   MustaFiCL
        |   MustaFCaL                   |   MustaFAL    |   MustaFCY    |   MustaFaCL

                                                                                        |   MustaFI
                                                                                        |   MustaFY

--  Form XI

        |   IFCALL                                                      |   IFCALaL
        |   UFCULL                                                      |   UFCULiL

        |   FCALL                                                       |   FCALiL
                                                                        |   FCALaL

        |   IFCILAL

        |   MuFCALL

--  Form XII

        |   IFCawCaL                                    |   IFCawCY
        |   UFCUCiL                                     |   UFCUCI

        |   FCawCiL                                     |   FCawCI
        |   FCawCaL                                     |   FCawCY

        |   IFCICAL                                     |   IFCICA'

        |   MuFCawCiL   {- Fischer, par. 224 (?) -}     |   MuFCawCI    {- (?) -}
        |   MuFCawCaL                                   |   MuFCawCY    {- (?) -}

--  Form XIII

        |   IFCawwaL
        |   UFCUwiL

        |   FCawwiL
        |   FCawwaL

        |   IFCiwwAL    -- Fischer (2002), par. 225 (!)

        |   MuFCawwiL   -- Fischer (2002), par. 224 (?)
        |   MuFCawwaL

--  Form XIV

        |   IFCanLaL
        |   UFCunLiL

        |   FCanLiL
        |   FCanLaL

        |   IFCinLAL

        |   MuFCanLiL   -- Fischer (2002), par. 224 (?)
        |   MuFCanLaL

--  Form XV

        |   IFCanLY
        |   UFCunLY

        |   FCanLI
        |   FCanLY

        |   IFCinLA'

        |   MuFCanLI    -- Fischer (2002), par. 224 (?)
        |   MuFCanLY

    deriving (Enum, Show, Eq, Read)
