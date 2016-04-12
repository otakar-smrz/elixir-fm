# ########################################################################## Otakar Smrz, 2003/04/05
#
# MorphoMap ################################################################ 2004/02/29 # 2004/11/24

package MorphoMap;

use 5.008;

use strict;

our $VERSION = '1.9.1';


our ($AraMorph_POSVector, %AraMorph_POSVector_missing);

our ($POSVector_AraMorph, %POSVector_AraMorph_missing);

our ($AraMorph_PennTBSet, %AraMorph_PennTBSet_missing);


#   check_consistency();    # use this when verifying consistency

sub check_consistency {

    initialize_AraMorph_POSVector();

    my @keys = keys %{$AraMorph_POSVector};

    print scalar @keys . " nonexpanded items\n";

    @keys = ();

    foreach (keys %{$AraMorph_POSVector}) {

        push @keys, &distinguish_POSVector($AraMorph_POSVector->{$_});
    }

    print scalar @keys . " expanded items\n";

    verify_POSVector();

    initialize_POSVector_AraMorph();

    my $keys;

    foreach (sort keys %{$POSVector_AraMorph}) {

        print "'" . $_ . "' => [\t'" . ( join "',\n\t\t\t'", POSVector_AraMorph($_) ) . "'\t];\n";
        $keys++;
    }

    print $keys . " unique expanded and nonexpanded items\n";
}


sub AraMorph_POSVector ($) {

    &initialize_AraMorph_POSVector unless defined $AraMorph_POSVector;

    my $data = $_[0];

    $data =~ s/NOUN_QUANT/NOUN/;
    $data =~ s/NOUN_NUM/NUM/;

    $data =~ s/ADJ_COMP/ADJ/;
    $data =~ s/ADJ_NUM/ADJ/;

    if (exists $AraMorph_POSVector->{$data}) {

        return $AraMorph_POSVector->{$data};
    }
    else {

        $AraMorph_POSVector_missing{$data}++;

        return $AraMorph_POSVector->{''};
    }
}


sub POSVector_AraMorph ($) {

    &initialize_POSVector_AraMorph unless defined $POSVector_AraMorph;

    if (exists $POSVector_AraMorph->{$_[0]}) {

        return keys %{$POSVector_AraMorph->{$_[0]}};
    }
    else {

        $POSVector_AraMorph_missing{$_[0]}++;

        return $_[0];
    }
}


sub AraMorph_PennTBSet ($) {

    &initialize_AraMorph_PennTBSet unless defined $AraMorph_PennTBSet;

    if (exists $AraMorph_PennTBSet->{$_[0]}) {

        return $AraMorph_PennTBSet->{$_[0]};
    }
    else {

        $AraMorph_PennTBSet_missing{$_[0]}++;

        return $AraMorph_PennTBSet->{''};
    }
}


sub distinguish_POSVector (@) {

    my (@vectors) = map { [ split //, $_ ] } @_;

    return unless @_;

    # the 3rd case (oblique) is either the 2nd (genitive), or the 4th (accusative)

    @vectors = map { $_->[-2] eq '3' ? (

                        [ @{$_}[-10..-3], '2', $_->[-1] ],
                        [ @{$_}[-10..-3], '4', $_->[-1] ],

                    ) : $_ } @vectors;

    # the X-definiteness is the illurosy-definite-article + illusory-singular's ambiguity for either D, or C (very rarely)

    @vectors = map { $_->[-1] eq 'X' ? (

                        [ @{$_}[-10..-2], 'D' ],
                        [ @{$_}[-10..-2], 'C' ],

                    ) : $_ } @vectors;

    # map the case of the former 'PRON' to 1, 2 and 4

    @vectors = map { $_->[-10] eq 'S' && $_->[-9] eq '-' && $_->[-2] eq '-' ? (

                        [ @{$_}[-10..-3], '1', $_->[-1] ],
                        [ @{$_}[-10..-3], '2', $_->[-1] ],
                        [ @{$_}[-10..-3], '4', $_->[-1] ],

                    ) : $_ } @vectors;

    return map { join '', @{$_} } @vectors;
}


sub verify_POSVector () {

    &initialize_AraMorph_POSVector unless defined $AraMorph_POSVector;

    foreach (keys %{$AraMorph_POSVector}) {

        if (/DET\+/) {

            if (/_DU|MASC_PL/) {

                warn $AraMorph_POSVector->{$_}, " D <- ", $_, "\t" unless $AraMorph_POSVector->{$_} =~ /.........D/;
            }
            else {

                warn $AraMorph_POSVector->{$_}, " X <- ", $_, "\t" unless $AraMorph_POSVector->{$_} =~ /.........X/;
            }
        }
        else {

            if (/_INDEF|_DU|MASC_PL/ and not /POSS/) {

                warn $AraMorph_POSVector->{$_}, " I <- ", $_, "\t" unless $AraMorph_POSVector->{$_} =~ /.........I/;
            }
            elsif (/NOUN|ADJ/) {

                warn $AraMorph_POSVector->{$_}, " R <- ", $_, "\t" unless $AraMorph_POSVector->{$_} =~ /.........R/;
            }
        }
    }
}


sub initialize_AraMorph_PennTBSet () {

    $AraMorph_PennTBSet = {

        'ABBREV'                                =>      'NN',
        'ACT_PART'                              =>      'NN',
        'ACT_PART+SUBJ:1FS'                     =>      'NN',
        'ACT_PART+SUBJ:2FS'                     =>      'NN',
        'ACT_PART+SUBJ:FS'                      =>      'NN',
        'ACT_PART+SUBJ:MS'                      =>      'NN',
        'ACT_PART+SUBJ:P'                       =>      'NN',
        'ADJ'                                   =>      'JJ',
        'ADJ+CASE_INDEF_ACC'                    =>      'JJ',
        'ADJ+NSUFF_FEM_PL'                      =>      'JJ',
        'ADJ+NSUFF_FEM_SG'                      =>      'JJ',
        'ADJ+NSUFF_MASC_DU'                     =>      'JJ',
        'ADJ+NSUFF_MASC_PL'                     =>      'JJ',
        'ADV'                                   =>      'RB',
        'ADV+CASE_INDEF_ACC'                    =>      'RB',
        'ADV+NSUFF_FEM_SG'                      =>      'RB',
        'ADV+NSUFF_MASC_DU'                     =>      'RB',
        'ASP_PART'                              =>      'RP',
        'ASP_PART+IV1P+IV'                      =>      'VBP',
        'ASP_PART+IV1P+IV_PASS'                 =>      'VBN',
        'ASP_PART+IV1S+IV'                      =>      'VBP',
        'ASP_PART+IV2FM+IV+IVSUFF_SUBJ:2FS'     =>      'VBP',
        'ASP_PART+IV2FS+IV'                     =>      'VBP',
        'ASP_PART+IV2FS+IV+IVSUFF_SUBJ:2FS'     =>      'VBP',
        'ASP_PART+IV2MP+IV+IVSUFF_SUBJ:P'       =>      'VBP',
        'ASP_PART+IV2MS+IV'                     =>      'VBP',
        'ASP_PART+IV3FS+IV'                     =>      'VBP',
        'ASP_PART+IV3FS+IV_PASS'                =>      'VBN',
        'ASP_PART+IV3MP+IV+IVSUFF_SUBJ:3MP'     =>      'VBP',
        'ASP_PART+IV3MP+IV+IVSUFF_SUBJ:MP'      =>      'VBP',
        'ASP_PART+IV3MP+IV+IVSUFF_SUBJ:P'       =>      'VBP',
        'ASP_PART+IV3MS+IV'                     =>      'VBP',
        'ASP_PART+IV3MS+IV_PASS'                =>      'VBN',
        'ASP_PART+IV3P+IV'                      =>      'VBP',
        'ASP_PART+IV3P+IV+IVSUFF_SUBJ:3P'       =>      'VBP',
        'CASE_INDEF_ACC'                        =>      'PRP',
        'CONJ'                                  =>      'CC',
        'CV+CVSUFF_SUBJ:2FS'                    =>      'VB',
        'CV+CVSUFF_SUBJ:2MP'                    =>      'VB',
        'CV+CVSUFF_SUBJ:2MS'                    =>      'VB',
        'CV+CVSUFF_SUBJ:2P'                     =>      'VB',
        'CV+CVSUFF_SUBJ:3FS'                    =>      'VB',
        'CVSUFF_DO:1P'                          =>      'PRP',
        'CVSUFF_DO:1S'                          =>      'PRP',
        'CVSUFF_DO:2FS'                         =>      'PRP',
        'CVSUFF_DO:2MS'                         =>      'PRP',
        'CVSUFF_DO:3MP'                         =>      'PRP',
        'CVSUFF_DO:3MS'                         =>      'PRP',
        'DEM_PRON'                              =>      'DT',
        'DEM_PRON_3MS'                          =>      'DT',
        'DEM_PRON_F'                            =>      'DT',
        'DEM_PRON_FS'                           =>      'DT',
        'DEM_PRON_M'                            =>      'DT',
        'DEM_PRON_MP'                           =>      'DT',
        'DEM_PRON_MS'                           =>      'DT',
        'DET'                                   =>      'DT',
        'DET+ABBREV'                            =>      'NN',
        'DET+ACT_PART+SUBJ:FS'                  =>      'NN',
        'DET+ACT_PART+SUBJ:MS'                  =>      'NN',
        'DET+ACT_PART+SUBJ:P'                   =>      'NN',
        'DET+ADJ'                               =>      'JJ',
        'DET+ADJ+NSUFF_FEM_SG'                  =>      'JJ',
        'DET+ADJ+NSUFF_MASC_DU'                 =>      'JJ',
        'DET+ADJ+NSUFF_MASC_PL'                 =>      'JJ',
        'DET+NOUN'                              =>      'NN',
        'DET+NOUN+NSUFF_FEM_DU'                 =>      'NNS',
        'DET+NOUN+NSUFF_FEM_PL'                 =>      'NNS',
        'DET+NOUN+NSUFF_FEM_SG'                 =>      'NN',
        'DET+NOUN+NSUFF_MASC_DU'                =>      'NNS',
        'DET+NOUN+NSUFF_MASC_PL'                =>      'NNS',
        'DET+NOUN_PROP'                         =>      'NNP',
        'DET+NOUN_PROP+NSUFF_FEM_SG'            =>      'NNP',
        'DET+NUM'                               =>      'CD',
        'DET+NUM+NSUFF_FEM_SG'                  =>      'CD',
        'DET+NUM+NSUFF_MASC_PL'                 =>      'CD',
        'DET+PROP_NOUN'                         =>      'NNP',
        'EMPH_PART'                             =>      'RP',
        'EXCEPT_PART'                           =>      'RP',
        'FOCUS_PART'                            =>      'RP',
        'FOCUS_PART+CASE_INDEF_ACC'             =>      'RP',
        'FUT'                                   =>      'RP',
        'FUT+IV1P+IV'                           =>      'VBP',
        'FUT+IV3MS+IV'                          =>      'VBP',
        'INTERJ'                                =>      'UH',
        'INTERJ+CASE_INDEF_ACC'                 =>      'UH',
        'INTERJ+NSUFF_FEM_SG'                   =>      'UH',
        'INTERROG_PART'                         =>      'RP',
        'IV1P+IV'                               =>      'VBP',
        'IV1S+IV'                               =>      'VBP',
        'IV2FS+IV+IVSUFF_SUBJ:2FS'              =>      'VBP',
        'IV2MP+IV+IVSUFF_SUBJ:P'                =>      'VBP',
        'IV2MS+IV'                              =>      'VBP',
        'IV2S+IV'                               =>      'VBP',
        'IV3FS+IV'                              =>      'VBP',
        'IV3FS+IV_PASS'                         =>      'VBN',
        'IV3MD+IV+IVSUFF_SUBJ:D'                =>      'VBP',
        'IV3MP+IV+IVSUFF_SUBJ:MP'               =>      'VBP',
        'IV3MP+IV+IVSUFF_SUBJ:P'                =>      'VBP',
        'IV3MS+IV'                              =>      'VBP',
        'IV3MS+IV_PASS'                         =>      'VBN',
        'IV3P+IV+IVSUFF_SUBJ:3P'                =>      'VBP',
        'IVSUFF_DO:1P'                          =>      'PRP',
        'IVSUFF_DO:1S'                          =>      'PRP',
        'IVSUFF_DO:2FS'                         =>      'PRP',
        'IVSUFF_DO:2MP'                         =>      'PRP',
        'IVSUFF_DO:2MS'                         =>      'PRP',
        'IVSUFF_DO:3FP'                         =>      'PRP',
        'IVSUFF_DO:3FS'                         =>      'PRP',
        'IVSUFF_DO:3MP'                         =>      'PRP',
        'IVSUFF_DO:3MS'                         =>      'PRP',
        'JUS'                                   =>      'RP',
        'JUS+IV1P+IV'                           =>      'VBP',
        'NEG'                                   =>      'RP',
        'NEG_PART'                              =>      'RP',
        'NOUN'                                  =>      'NN',
        'NOUN+CASE_INDEF_ACC'                   =>      'NN',
        'NOUN+NSUFF_FEM_DU'                     =>      'NNS',
        'NOUN+NSUFF_FEM_PL'                     =>      'NNS',
        'NOUN+NSUFF_FEM_SG'                     =>      'NN',
        'NOUN+NSUFF_MASC_DU'                    =>      'NNS',
        'NOUN+NSUFF_MASC_PL'                    =>      'NNS',
        'NOUN_PROP'                             =>      'NNP',
        'NOUN_PROP+NSUFF_FEM_SG'                =>      'NNP',
        'NUM'                                   =>      'CD',
        'NUM+NSUFF_FEM_SG'                      =>      'CD',
        'NUM+NSUFF_MASC_PL'                     =>      'CD',
        'OATH'                                  =>      'RP',
        'OBJ:1MS'                               =>      'PRP',
        'OBJ:1P'                                =>      'PRP',
        'OBJ:2FS'                               =>      'PRP',
        'OBJ:2MS'                               =>      'PRP',
        'OBJ:3MS'                               =>      'PRP',
        'OBJ:3P'                                =>      'PRP',
        'PART'                                  =>      'RP',
        'PARTIALWORD'                           =>      'NN',
        'POSS_PRON_1P'                          =>      'PRP$',
        'POSS_PRON_1S'                          =>      'PRP$',
        'POSS_PRON_2FS'                         =>      'PRP$',
        'POSS_PRON_2MP'                         =>      'PRP$',
        'POSS_PRON_2MS'                         =>      'PRP$',
        'POSS_PRON_3FS'                         =>      'PRP$',
        'POSS_PRON_3MP'                         =>      'PRP$',
        'POSS_PRON_3MS'                         =>      'PRP$',
        'PREP'                                  =>      'IN',
        'PRON'                                  =>      'PRP',
        'PRON_1MS'                              =>      'PRP',
        'PRON_1P'                               =>      'PRP',
        'PRON_1S'                               =>      'PRP',
        'PRON_2FS'                              =>      'PRP',
        'PRON_2MP'                              =>      'PRP',
        'PRON_2MS'                              =>      'PRP',
        'PRON_2S'                               =>      'PRP',
        'PRON_3D'                               =>      'PRP',
        'PRON_3FP'                              =>      'PRP',
        'PRON_3FS'                              =>      'PRP',
        'PRON_3MP'                              =>      'PRP',
        'PRON_3MS'                              =>      'PRP',
        'PRON_3P'                               =>      'PRP',
        'PRON_FS'                               =>      'PRP',
        'PV+PVSUFF_SUBJ:1MS'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:1P'                     =>      'VBD',
        'PV+PVSUFF_SUBJ:1S'                     =>      'VBD',
        'PV+PVSUFF_SUBJ:2FS'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:2MP'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:2MS'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:2P'                     =>      'VBD',
        'PV+PVSUFF_SUBJ:3FS'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:3MP'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:3MS'                    =>      'VBD',
        'PV+PVSUFF_SUBJ:3P'                     =>      'VBD',
        'PV+PVSUFF_SUBJ:P'                      =>      'VBD',
        'PVSUFF_DO:1P'                          =>      'PRP',
        'PVSUFF_DO:1S'                          =>      'PRP',
        'PVSUFF_DO:2FS'                         =>      'PRP',
        'PVSUFF_DO:2MP'                         =>      'PRP',
        'PVSUFF_DO:2MS'                         =>      'PRP',
        'PVSUFF_DO:3FS'                         =>      'PRP',
        'PVSUFF_DO:3M'                          =>      'PRP',
        'PVSUFF_DO:3MP'                         =>      'PRP',
        'PVSUFF_DO:3MS'                         =>      'PRP',
        'PVSUFF_DO:3P'                          =>      'PRP',
        'REL_ADV'                               =>      'WRB',
        'REL_PRON'                              =>      'WDT',
        'SUB_CONJ'                              =>      'IN',
        'VERB'                                  =>      'VB',
        'VERB_PART'                             =>      'RP',

               };
}


sub initialize_POSVector_AraMorph () {

    my ($key, $val, @vectors);

    &initialize_AraMorph_POSVector unless defined $AraMorph_POSVector;

    foreach $key (keys %{$AraMorph_POSVector}) {

        @vectors = distinguish_POSVector($AraMorph_POSVector->{$key});

        push @vectors, $AraMorph_POSVector->{$key} if @vectors > 1;

        foreach $val (@vectors) {

            warn $val . " <- " . $key . "\n" if exists $POSVector_AraMorph->{$val}->{$key};

            $POSVector_AraMorph->{$val}->{$key}++;
        }
    }
}


sub initialize_AraMorph_POSVector () {

    $AraMorph_POSVector = {

        ''                      =>      '----------',

        'NUMERICAL'             =>      'Q---------',
        'NUM'                   =>      'Q---------',

        'PUNCTUATION'           =>      'G---------',
        'PUNC'                  =>      'G---------',
        'NUMERIC_COMMA'         =>      'G---------',

        'LATIN'                 =>      'X---------',
        'NON_ALPHABETIC_DATA'   =>      'X---------',

        'ABBREV'                =>      'Y---------',
        'DET+ABBREV'            =>      'Y--------X',

        'DET'                   =>      '---------X',

        'TYPO'                  =>      'T---------',

        # ################################################################################
        #
        # NUMERALS #######################################################################

        'NUM+CASE_DEF_ACC'      =>      'Q-------4R',
        'NUM+CASE_DEF_GEN'      =>      'Q-------2R',
        'NUM+CASE_DEF_NOM'      =>      'Q-------1R',
        'NUM+CASE_INDEF_ACC'    =>      'Q-------4I',
        'NUM+CASE_INDEF_GEN'    =>      'Q-------2I',
        'NUM+CASE_INDEF_NOM'    =>      'Q-------1I',

        'NUM+NSUFF_FEM_SG'                      =>      'Q-----FS--',
        'NUM+NSUFF_FEM_SG+CASE_DEF_ACC'         =>      'Q-----FS4R',
        'NUM+NSUFF_FEM_SG+CASE_DEF_GEN'         =>      'Q-----FS2R',
        'NUM+NSUFF_FEM_SG+CASE_DEF_NOM'         =>      'Q-----FS1R',
        'NUM+NSUFF_FEM_SG+CASE_INDEF_ACC'       =>      'Q-----FS4I',
        'NUM+NSUFF_FEM_SG+CASE_INDEF_GEN'       =>      'Q-----FS2I',
        'NUM+NSUFF_FEM_SG+CASE_INDEF_NOM'       =>      'Q-----FS1I',

        'NUM+NSUFF_FEM_PL+CASE_DEF_ACC'         =>      'Q-----FP4R',
        'NUM+NSUFF_FEM_PL+CASE_DEF_GEN'         =>      'Q-----FP2R',
        'NUM+NSUFF_FEM_PL+CASE_DEF_NOM'         =>      'Q-----FP1R',
        'NUM+NSUFF_FEM_PL+CASE_INDEF_ACC'       =>      'Q-----FP4I',
        'NUM+NSUFF_FEM_PL+CASE_INDEF_GEN'       =>      'Q-----FP2I',
        'NUM+NSUFF_FEM_PL+CASE_INDEF_NOM'       =>      'Q-----FP1I',

        'NUM+NSUFF_MASC_PL_ACC'         =>  'Q-----MP4I',
        'NUM+NSUFF_MASC_PL_ACC_POSS'    =>  'Q-----MP4R',
        'NUM+NSUFF_MASC_PL_GEN'         =>  'Q-----MP2I',
        'NUM+NSUFF_MASC_PL_GEN_POSS'    =>  'Q-----MP2R',
        'NUM+NSUFF_MASC_PL_NOM'         =>  'Q-----MP1I',

        'NUM+NSUFF_MASC_DU_ACC'         =>  'Q-----MD4I',
        'NUM+NSUFF_MASC_DU_ACC_POSS'    =>  'Q-----MD4R',
        'NUM+NSUFF_MASC_DU_GEN'         =>  'Q-----MD2I',
        'NUM+NSUFF_MASC_DU_GEN_POSS'    =>  'Q-----MD2R',
        'NUM+NSUFF_MASC_DU_NOM'         =>  'Q-----MD1I',
        'NUM+NSUFF_MASC_DU_NOM_POSS'    =>  'Q-----MD1R',

        'NUM+NSUFF_FEM_DU_ACC'          =>  'Q-----FD4I',
        'NUM+NSUFF_FEM_DU_ACC_POSS'     =>  'Q-----FD4R',
        'NUM+NSUFF_FEM_DU_GEN'          =>  'Q-----FD2I',
        'NUM+NSUFF_FEM_DU_GEN_POSS'     =>  'Q-----FD2R',
        'NUM+NSUFF_FEM_DU_NOM'          =>  'Q-----FD1I',
        'NUM+NSUFF_FEM_DU_NOM_POSS'     =>  'Q-----FD1R',

        'DET+NUM'                   =>      'Q--------X',
        'DET+NUM+CASE_DEF_ACC'      =>      'Q-------4X',
        'DET+NUM+CASE_DEF_GEN'      =>      'Q-------2X',
        'DET+NUM+CASE_DEF_NOM'      =>      'Q-------1X',

        'DET+NUM+NSUFF_FEM_SG'                  =>      'Q-----FS-X',
        'DET+NUM+NSUFF_FEM_SG+CASE_DEF_ACC'     =>      'Q-----FS4X',
        'DET+NUM+NSUFF_FEM_SG+CASE_DEF_GEN'     =>      'Q-----FS2X',
        'DET+NUM+NSUFF_FEM_SG+CASE_DEF_NOM'     =>      'Q-----FS1X',

        'DET+NUM+NSUFF_FEM_PL+CASE_DEF_ACC'     =>      'Q-----FP4X',
        'DET+NUM+NSUFF_FEM_PL+CASE_DEF_GEN'     =>      'Q-----FP2X',
        'DET+NUM+NSUFF_FEM_PL+CASE_DEF_NOM'     =>      'Q-----FP1X',

        'DET+NUM+NSUFF_MASC_PL_ACC'             =>      'Q-----MP4D',
        'DET+NUM+NSUFF_MASC_PL_ACC_POSS'        =>      'Q-----MP4C',
        'DET+NUM+NSUFF_MASC_PL_GEN'             =>      'Q-----MP2D',
        'DET+NUM+NSUFF_MASC_PL_GEN_POSS'        =>      'Q-----MP2C',
        'DET+NUM+NSUFF_MASC_PL_NOM'             =>      'Q-----MP1D',

        'DET+NUM+NSUFF_MASC_DU_ACC'             =>      'Q-----MD4D',
        'DET+NUM+NSUFF_MASC_DU_GEN'             =>      'Q-----MD2D',
        'DET+NUM+NSUFF_MASC_DU_NOM'             =>      'Q-----MD1D',

        'DET+NUM+NSUFF_FEM_DU_ACC'              =>      'Q-----FD4D',
        'DET+NUM+NSUFF_FEM_DU_GEN'              =>      'Q-----FD2D',
        'DET+NUM+NSUFF_FEM_DU_NOM'              =>      'Q-----FD1D',

        # ################################################################################
        #
        # PROPER NOUNS ###################################################################

        'NOUN_PROP'                             =>  'Z---------',

        'NOUN_PROP+NSUFF_MASC_SG_ACC_INDEF'     =>  'Z-----MS4I',

        'NOUN_PROP+NSUFF_FEM_SG'                =>  'Z-----FS--',

        'NOUN_PROP+NSUFF_MASC_PL_NOM'           =>  'Z-----MP1I',
        'NOUN_PROP+NSUFF_MASC_PL_NOM_POSS'      =>  'Z-----MP1R',
        'NOUN_PROP+NSUFF_MASC_PL_GEN'           =>  'Z-----MP2I',
        'NOUN_PROP+NSUFF_MASC_PL_GEN_POSS'      =>  'Z-----MP2R',
        'NOUN_PROP+NSUFF_MASC_PL_ACCGEN'        =>  'Z-----MP3I',
        'NOUN_PROP+NSUFF_MASC_PL_ACCGEN_POSS'   =>  'Z-----MP3R',
        'NOUN_PROP+NSUFF_MASC_PL_ACC'           =>  'Z-----MP4I',
        'NOUN_PROP+NSUFF_MASC_PL_ACC_POSS'      =>  'Z-----MP4R',

        'NOUN_PROP+NSUFF_FEM_PL'                =>  'Z-----FP--',

        'NOUN_PROP+NSUFF_MASC_DU_NOM'           =>  'Z-----MD1I',
        'NOUN_PROP+NSUFF_MASC_DU_NOM_POSS'      =>  'Z-----MD1R',
        'NOUN_PROP+NSUFF_MASC_DU_GEN'           =>  'Z-----MD2I',
        'NOUN_PROP+NSUFF_MASC_DU_GEN_POSS'      =>  'Z-----MD2R',
        'NOUN_PROP+NSUFF_MASC_DU_ACCGEN'        =>  'Z-----MD3I',
        'NOUN_PROP+NSUFF_MASC_DU_ACCGEN_POSS'   =>  'Z-----MD3R',
        'NOUN_PROP+NSUFF_MASC_DU_ACC'           =>  'Z-----MD4I',
        'NOUN_PROP+NSUFF_MASC_DU_ACC_POSS'      =>  'Z-----MD4R',

        'NOUN_PROP+NSUFF_FEM_DU_NOM'            =>  'Z-----FD1I',
        'NOUN_PROP+NSUFF_FEM_DU_NOM_POSS'       =>  'Z-----FD1R',
        'NOUN_PROP+NSUFF_FEM_DU_GEN'            =>  'Z-----FD2I',
        'NOUN_PROP+NSUFF_FEM_DU_GEN_POSS'       =>  'Z-----FD2R',
        'NOUN_PROP+NSUFF_FEM_DU_ACCGEN'         =>  'Z-----FD3I',
        'NOUN_PROP+NSUFF_FEM_DU_ACCGEN_POSS'    =>  'Z-----FD3R',
        'NOUN_PROP+NSUFF_FEM_DU_ACC'            =>  'Z-----FD4I',
        'NOUN_PROP+NSUFF_FEM_DU_ACC_POSS'       =>  'Z-----FD4R',

        'DET+NOUN_PROP'                         =>  'Z--------X',
        'DET+NOUN_PROP+NSUFF_FEM_SG'            =>  'Z-----FS-X',
        'DET+NOUN_PROP+NSUFF_FEM_PL'            =>  'Z-----FP-X',

        'DET+NOUN_PROP+NSUFF_MASC_PL_NOM'       =>  'Z-----MP1D',
        'DET+NOUN_PROP+NSUFF_MASC_PL_GEN'       =>  'Z-----MP2D',
        'DET+NOUN_PROP+NSUFF_MASC_PL_ACCGEN'    =>  'Z-----MP3D',
        'DET+NOUN_PROP+NSUFF_MASC_PL_ACC'       =>  'Z-----MP4D',

        'DET+NOUN_PROP+NSUFF_MASC_DU_NOM'       =>  'Z-----MD1D',
        'DET+NOUN_PROP+NSUFF_MASC_DU_GEN'       =>  'Z-----MD2D',
        'DET+NOUN_PROP+NSUFF_MASC_DU_GEN_POSS'  =>  'Z-----MD2C',
        'DET+NOUN_PROP+NSUFF_MASC_DU_ACCGEN'    =>  'Z-----MD3D',
        'DET+NOUN_PROP+NSUFF_MASC_DU_ACC'       =>  'Z-----MD4D',
        'DET+NOUN_PROP+NSUFF_MASC_DU_ACC_POSS'  =>  'Z-----MD4C',

        'DET+NOUN_PROP+NSUFF_FEM_DU_NOM'        =>  'Z-----FD1D',
        'DET+NOUN_PROP+NSUFF_FEM_DU_GEN'        =>  'Z-----FD2D',
        'DET+NOUN_PROP+NSUFF_FEM_DU_ACCGEN'     =>  'Z-----FD3D',
        'DET+NOUN_PROP+NSUFF_FEM_DU_ACC'        =>  'Z-----FD4D',

        'NOUN_PROP+CASE_DEF_NOM'        =>      'Z-------1R',
        'NOUN_PROP+CASE_DEF_GEN'        =>      'Z-------2R',
        'NOUN_PROP+CASE_DEF_ACC'        =>      'Z-------4R',
        'NOUN_PROP+CASE_INDEF_NOM'      =>      'Z-------1I',
        'NOUN_PROP+CASE_INDEF_GEN'      =>      'Z-------2I',
        'NOUN_PROP+CASE_INDEF_ACC'      =>      'Z-------4I',

        'NOUN_PROP+NSUFF_FEM_SG+CASE_DEF_NOM'   =>  'Z-----FS1R',
        'NOUN_PROP+NSUFF_FEM_SG+CASE_DEF_GEN'   =>  'Z-----FS2R',
        'NOUN_PROP+NSUFF_FEM_SG+CASE_DEF_ACC'   =>  'Z-----FS4R',
        'NOUN_PROP+NSUFF_FEM_SG+CASE_INDEF_NOM' =>  'Z-----FS1I',
        'NOUN_PROP+NSUFF_FEM_SG+CASE_INDEF_GEN' =>  'Z-----FS2I',
        'NOUN_PROP+NSUFF_FEM_SG+CASE_INDEF_ACC' =>  'Z-----FS4I',

        'NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_NOM'       =>  'Z-----FP1R',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_GEN'       =>  'Z-----FP2R',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_ACCGEN'    =>  'Z-----FP3R',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_ACC'       =>  'Z-----FP4R',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_INDEF_NOM'     =>  'Z-----FP1I',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_INDEF_GEN'     =>  'Z-----FP2I',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_INDEF_ACCGEN'  =>  'Z-----FP3I',
        'NOUN_PROP+NSUFF_FEM_PL+CASE_INDEF_ACC'     =>  'Z-----FP4I',

        'DET+NOUN_PROP+CASE_DEF_NOM'    =>      'Z-------1X',
        'DET+NOUN_PROP+CASE_DEF_GEN'    =>      'Z-------2X',
        'DET+NOUN_PROP+CASE_DEF_ACC'    =>      'Z-------4X',

        'DET+NOUN_PROP+NSUFF_FEM_SG+CASE_DEF_NOM'       =>      'Z-----FS1X',
        'DET+NOUN_PROP+NSUFF_FEM_SG+CASE_DEF_GEN'       =>      'Z-----FS2X',
        'DET+NOUN_PROP+NSUFF_FEM_SG+CASE_DEF_ACC'       =>      'Z-----FS4X',

        'DET+NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_NOM'       =>  'Z-----FP1X',
        'DET+NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_GEN'       =>  'Z-----FP2X',
        'DET+NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_ACCGEN'    =>  'Z-----FP3X',
        'DET+NOUN_PROP+NSUFF_FEM_PL+CASE_DEF_ACC'       =>  'Z-----FP4X',

        # ################################################################################
        #
        # GENERAL NOUNS ##################################################################

        'NOUN'                              =>      'N---------',

        'NOUN+NSUFF_FEM_SG'                 =>      'N-----FS--',
        'NOUN+NSUFF_FEM_PL'                 =>      'N-----FP--',

        'NOUN+NSUFF_MASC_SG_ACC_INDEF'      =>      'N-----MS4I',

        'NOUN+NSUFF_MASC_PL_NOM'            =>      'N-----MP1I',
        'NOUN+NSUFF_MASC_PL_NOM_POSS'       =>      'N-----MP1R',
        'NOUN+NSUFF_MASC_PL_GEN'            =>      'N-----MP2I',
        'NOUN+NSUFF_MASC_PL_GEN_POSS'       =>      'N-----MP2R',
        'NOUN+NSUFF_MASC_PL_ACCGEN'         =>      'N-----MP3I',
        'NOUN+NSUFF_MASC_PL_ACCGEN_POSS'    =>      'N-----MP3R',
        'NOUN+NSUFF_MASC_PL_ACC'            =>      'N-----MP4I',
        'NOUN+NSUFF_MASC_PL_ACC_POSS'       =>      'N-----MP4R',

        'NOUN+NSUFF_MASC_DU_NOM'            =>      'N-----MD1I',
        'NOUN+NSUFF_MASC_DU_NOM_POSS'       =>      'N-----MD1R',
        'NOUN+NSUFF_MASC_DU_GEN'            =>      'N-----MD2I',
        'NOUN+NSUFF_MASC_DU_GEN_POSS'       =>      'N-----MD2R',
        'NOUN+NSUFF_MASC_DU_ACCGEN'         =>      'N-----MD3I',
        'NOUN+NSUFF_MASC_DU_ACCGEN_POSS'    =>      'N-----MD3R',
        'NOUN+NSUFF_MASC_DU_ACC'            =>      'N-----MD4I',
        'NOUN+NSUFF_MASC_DU_ACC_POSS'       =>      'N-----MD4R',

        'NOUN+NSUFF_FEM_DU_NOM'             =>      'N-----FD1I',
        'NOUN+NSUFF_FEM_DU_NOM_POSS'        =>      'N-----FD1R',
        'NOUN+NSUFF_FEM_DU_GEN'             =>      'N-----FD2I',
        'NOUN+NSUFF_FEM_DU_GEN_POSS'        =>      'N-----FD2R',
        'NOUN+NSUFF_FEM_DU_ACCGEN'          =>      'N-----FD3I',
        'NOUN+NSUFF_FEM_DU_ACCGEN_POSS'     =>      'N-----FD3R',
        'NOUN+NSUFF_FEM_DU_ACC'             =>      'N-----FD4I',
        'NOUN+NSUFF_FEM_DU_ACC_POSS'        =>      'N-----FD4R',

        'NOUN+CASE_INDEF_NOM'   =>      'N-------1I',
        'NOUN+CASE_INDEF_GEN'   =>      'N-------2I',
        'NOUN+CASE_INDEF_ACC'   =>      'N-------4I',
        'NOUN+CASE_DEF_NOM'     =>      'N-------1R',
        'NOUN+CASE_DEF_GEN'     =>      'N-------2R',
        'NOUN+CASE_DEF_ACC'     =>      'N-------4R',

        'NOUN+NSUFF_FEM_SG+CASE_INDEF_NOM'      =>      'N-----FS1I',
        'NOUN+NSUFF_FEM_SG+CASE_INDEF_GEN'      =>      'N-----FS2I',
        'NOUN+NSUFF_FEM_SG+CASE_INDEF_ACC'      =>      'N-----FS4I',

        'NOUN+NSUFF_FEM_SG+CASE_DEF_NOM'        =>      'N-----FS1R',
        'NOUN+NSUFF_FEM_SG+CASE_DEF_GEN'        =>      'N-----FS2R',
        'NOUN+NSUFF_FEM_SG+CASE_DEF_ACC'        =>      'N-----FS4R',

        'NOUN+NSUFF_FEM_PL+CASE_INDEF_NOM'      =>      'N-----FP1I',
        'NOUN+NSUFF_FEM_PL+CASE_INDEF_ACCGEN'   =>      'N-----FP3I',

        'NOUN+NSUFF_FEM_PL+CASE_DEF_NOM'        =>      'N-----FP1R',
        'NOUN+NSUFF_FEM_PL+CASE_DEF_GEN'        =>      'N-----FP2R',
        'NOUN+NSUFF_FEM_PL+CASE_DEF_ACC'        =>      'N-----FP4R',
        'NOUN+NSUFF_FEM_PL+CASE_DEF_ACCGEN'     =>      'N-----FP3R',
        'NOUN+NSUFF_FEM_PL+CASE_INDEF_GEN'      =>      'N-----FP2I',
        'NOUN+NSUFF_FEM_PL+CASE_INDEF_ACC'      =>      'N-----FP4I',

        'DEM+NOUN'                          =>      'N--------X',   # Tim's typo

        'DET+NOUN'                          =>      'N--------X',
        'DET+NOUN+NSUFF_FEM_SG'             =>      'N-----FS-X',
        'DET+NOUN+NSUFF_FEM_PL'             =>      'N-----FP-X',

        'DET+NOUN+NSUFF_FEM_DU_NOM'         =>      'N-----FD1D',
        'DET+NOUN+NSUFF_FEM_DU_GEN'         =>      'N-----FD2D',
        'DET+NOUN+NSUFF_FEM_DU_GEN_POSS'    =>      'N-----FD2C',
        'DET+NOUN+NSUFF_FEM_DU_ACCGEN'      =>      'N-----FD3D',
        'DET+NOUN+NSUFF_FEM_DU_ACC'         =>      'N-----FD4D',
        'DET+NOUN+NSUFF_FEM_DU_ACC_POSS'    =>      'N-----FD4C',

        'DET+NOUN+CASE_DEF_NOM' =>      'N-------1X',
        'DET+NOUN+CASE_DEF_GEN' =>      'N-------2X',
        'DET+NOUN+CASE_DEF_ACC' =>      'N-------4X',

        'DET+NOUN+NSUFF_FEM_SG+CASE_DEF_NOM'    =>      'N-----FS1X',
        'DET+NOUN+NSUFF_FEM_SG+CASE_DEF_GEN'    =>      'N-----FS2X',
        'DET+NOUN+NSUFF_FEM_SG+CASE_DEF_ACC'    =>      'N-----FS4X',

        'DET+NOUN+NSUFF_FEM_PL+CASE_DEF_NOM'    =>      'N-----FP1X',
        'DET+NOUN+NSUFF_FEM_PL+CASE_DEF_GEN'    =>      'N-----FP2X',
        'DET+NOUN+NSUFF_FEM_PL+CASE_DEF_ACC'    =>      'N-----FP4X',
        'DET+NOUN+NSUFF_FEM_PL+CASE_DEF_ACCGEN' =>      'N-----FP3X',

        'DET+NOUN+NSUFF_MASC_DU_ACC'            =>      'N-----MD4D',
        'DET+NOUN+NSUFF_MASC_DU_ACC_POSS'       =>      'N-----MD4C',
        'DET+NOUN+NSUFF_MASC_DU_ACCGEN'         =>      'N-----MD3D',
        'DET+NOUN+NSUFF_MASC_DU_GEN'            =>      'N-----MD2D',
        'DET+NOUN+NSUFF_MASC_DU_GEN_POSS'       =>      'N-----MD2C',
        'DET+NOUN+NSUFF_MASC_DU_NOM'            =>      'N-----MD1D',
        'DET+NOUN+NSUFF_MASC_DU_NOM_POSS'       =>      'N-----MD1C',

        'DET+NOUN+NSUFF_MASC_PL_ACC'            =>      'N-----MP4D',
        'DET+NOUN+NSUFF_MASC_PL_ACC_POSS'       =>      'N-----MP4C',
        'DET+NOUN+NSUFF_MASC_PL_ACCGEN'         =>      'N-----MP3D',
        'DET+NOUN+NSUFF_MASC_PL_GEN'            =>      'N-----MP2D',
        'DET+NOUN+NSUFF_MASC_PL_GEN_POSS'       =>      'N-----MP2C',
        'DET+NOUN+NSUFF_MASC_PL_NOM'            =>      'N-----MP1D',
        'DET+NOUN+NSUFF_MASC_PL_NOM_POSS'       =>      'N-----MP1C',

        # ################################################################################
        #
        # ADJECTIVES #####################################################################

        'ADJ'                               =>      'A---------',

        'ADJ+NSUFF_FEM_SG'                  =>      'A-----FS--',
        'ADJ+NSUFF_FEM_PL'                  =>      'A-----FP--',

        'ADJ+NSUFF_MASC_SG_ACC_INDEF'       =>      'A-----MS4I',

        'ADJ+NSUFF_MASC_PL_NOM'             =>      'A-----MP1I',
        'ADJ+NSUFF_MASC_PL_NOM_POSS'        =>      'A-----MP1R',
        'ADJ+NSUFF_MASC_PL_GEN'             =>      'A-----MP2I',
        'ADJ+NSUFF_MASC_PL_GEN_POSS'        =>      'A-----MP2R',
        'ADJ+NSUFF_MASC_PL_ACCGEN'          =>      'A-----MP3I',
        'ADJ+NSUFF_MASC_PL_ACCGEN_POSS'     =>      'A-----MP3R',
        'ADJ+NSUFF_MASC_PL_ACC'             =>      'A-----MP4I',
        'ADJ+NSUFF_MASC_PL_ACC_POSS'        =>      'A-----MP4R',

        'ADJ+NSUFF_MASC_DU_NOM'             =>      'A-----MD1I',
        'ADJ+NSUFF_MASC_DU_NOM_POSS'        =>      'A-----MD1R',
        'ADJ+NSUFF_MASC_DU_GEN'             =>      'A-----MD2I',
        'ADJ+NSUFF_MASC_DU_GEN_POSS'        =>      'A-----MD2R',
        'ADJ+NSUFF_MASC_DU_ACCGEN'          =>      'A-----MD3I',
        'ADJ+NSUFF_MASC_DU_ACCGEN_POSS'     =>      'A-----MD3R',
        'ADJ+NSUFF_MASC_DU_ACC'             =>      'A-----MD4I',
        'ADJ+NSUFF_MASC_DU_ACC_POSS'        =>      'A-----MD4R',

        'ADJ+NSUFF_FEM_DU_NOM'              =>      'A-----FD1I',
        'ADJ+NSUFF_FEM_DU_NOM_POSS'         =>      'A-----FD1R',
        'ADJ+NSUFF_FEM_DU_GEN'              =>      'A-----FD2I',
        'ADJ+NSUFF_FEM_DU_GEN_POSS'         =>      'A-----FD2R',
        'ADJ+NSUFF_FEM_DU_ACCGEN'           =>      'A-----FD3I',
        'ADJ+NSUFF_FEM_DU_ACCGEN_POSS'      =>      'A-----FD3R',
        'ADJ+NSUFF_FEM_DU_ACC'              =>      'A-----FD4I',
        'ADJ+NSUFF_FEM_DU_ACC_POSS'         =>      'A-----FD4R',

        'ADJ+CASE_INDEF_NOM'    =>      'A-------1I',
        'ADJ+CASE_INDEF_GEN'    =>      'A-------2I',
        'ADJ+CASE_INDEF_ACC'    =>      'A-------4I',
        'ADJ+CASE_DEF_NOM'      =>      'A-------1R',
        'ADJ+CASE_DEF_GEN'      =>      'A-------2R',
        'ADJ+CASE_DEF_ACC'      =>      'A-------4R',

        'ADJ+NSUFF_FEM_SG+CASE_DEF_NOM'         =>      'A-----FS1R',
        'ADJ+NSUFF_FEM_SG+CASE_DEF_GEN'         =>      'A-----FS2R',
        'ADJ+NSUFF_FEM_SG+CASE_DEF_ACC'         =>      'A-----FS4R',
        'ADJ+NSUFF_FEM_SG+CASE_INDEF_NOM'       =>      'A-----FS1I',
        'ADJ+NSUFF_FEM_SG+CASE_INDEF_GEN'       =>      'A-----FS2I',
        'ADJ+NSUFF_FEM_SG+CASE_INDEF_ACC'       =>      'A-----FS4I',

        'ADJ+NSUFF_FEM_PL+CASE_DEF_NOM'         =>      'A-----FP1R',
        'ADJ+NSUFF_FEM_PL+CASE_DEF_ACCGEN'      =>      'A-----FP3R',
        'ADJ+NSUFF_FEM_PL+CASE_INDEF_NOM'       =>      'A-----FP1I',
        'ADJ+NSUFF_FEM_PL+CASE_INDEF_ACCGEN'    =>      'A-----FP3I',
        'ADJ+NSUFF_FEM_PL+CASE_DEF_ACC'         =>      'A-----FP4R',
        'ADJ+NSUFF_FEM_PL+CASE_DEF_GEN'         =>      'A-----FP2R',
        'ADJ+NSUFF_FEM_PL+CASE_INDEF_ACC'       =>      'A-----FP4I',
        'ADJ+NSUFF_FEM_PL+CASE_INDEF_GEN'       =>      'A-----FP2I',

        'DET+ADJ'                           =>      'A--------X',

        'DET+ADJ+NSUFF_FEM_SG'              =>      'A-----FS-X',
        'DET+ADJ+NSUFF_FEM_PL'              =>      'A-----FP-X',

        'DET+ADJ+NSUFF_FEM_DU_NOM'          =>      'A-----FD1D',
        'DET+ADJ+NSUFF_FEM_DU_GEN'          =>      'A-----FD2D',
        'DET+ADJ+NSUFF_FEM_DU_ACCGEN'       =>      'A-----FD3D',
        'DET+ADJ+NSUFF_FEM_DU_ACC'          =>      'A-----FD4D',

        'DET+ADJ+CASE_DEF_NOM'              =>      'A-------1X',
        'DET+ADJ+CASE_DEF_GEN'              =>      'A-------2X',
        'DET+ADJ+CASE_DEF_ACC'              =>      'A-------4X',

        'DET+ADJ+NSUFF_FEM_SG+CASE_DEF_NOM'     =>      'A-----FS1X',
        'DET+ADJ+NSUFF_FEM_SG+CASE_DEF_GEN'     =>      'A-----FS2X',
        'DET+ADJ+NSUFF_FEM_SG+CASE_DEF_ACC'     =>      'A-----FS4X',

        'DET+ADJ+NSUFF_FEM_PL+CASE_DEF_NOM'     =>      'A-----FP1X',
        'DET+ADJ+NSUFF_FEM_PL+CASE_DEF_GEN'     =>      'A-----FP2X',
        'DET+ADJ+NSUFF_FEM_PL+CASE_DEF_ACCGEN'  =>      'A-----FP3X',
        'DET+ADJ+NSUFF_FEM_PL+CASE_DEF_ACC'     =>      'A-----FP4X',

        'DET+ADJ+NSUFF_MASC_DU_ACC'             =>      'A-----MD4D',
        'DET+ADJ+NSUFF_MASC_DU_ACC_POSS'        =>      'A-----MD4C',
        'DET+ADJ+NSUFF_MASC_DU_ACCGEN'          =>      'A-----MD3D',
        'DET+ADJ+NSUFF_MASC_DU_GEN'             =>      'A-----MD2D',
        'DET+ADJ+NSUFF_MASC_DU_GEN_POSS'        =>      'A-----MD2C',
        'DET+ADJ+NSUFF_MASC_DU_NOM'             =>      'A-----MD1D',
        'DET+ADJ+NSUFF_MASC_DU_NOM_POSS'        =>      'A-----MD1C',

        'DET+ADJ+NSUFF_MASC_PL_ACC'             =>      'A-----MP4D',
        'DET+ADJ+NSUFF_MASC_PL_ACC_POSS'        =>      'A-----MP4C',
        'DET+ADJ+NSUFF_MASC_PL_ACCGEN'          =>      'A-----MP3D',
        'DET+ADJ+NSUFF_MASC_PL_GEN'             =>      'A-----MP2D',
        'DET+ADJ+NSUFF_MASC_PL_GEN_POSS'        =>      'A-----MP2C',
        'DET+ADJ+NSUFF_MASC_PL_NOM'             =>      'A-----MP1D',
        'DET+ADJ+NSUFF_MASC_PL_NOM_POSS'        =>      'A-----MP1C',

        # ################################################################################
        #
        # PRONOUNS #######################################################################

        'PRON_1S'       =>      'S----1-S--',
        'PRON_2MS'      =>      'S----2MS--',
        'PRON_2FS'      =>      'S----2FS--',
        'PRON_3MS'      =>      'S----3MS--',
        'PRON_3FS'      =>      'S----3FS--',
        'PRON_1P'       =>      'S----1-P--',
        'PRON_2MP'      =>      'S----2MP--',
        'PRON_2FP'      =>      'S----2FP--',
        'PRON_3MP'      =>      'S----3MP--',
        'PRON_3FP'      =>      'S----3FP--',
        'PRON_2D'       =>      'S----2-D--',
        'PRON_3D'       =>      'S----3-D--',

        'POSS_PRON_1S'  =>      'S----1-S2-',
        'POSS_PRON_2MS' =>      'S----2MS2-',
        'POSS_PRON_2FS' =>      'S----2FS2-',
        'POSS_PRON_3MS' =>      'S----3MS2-',
        'POSS_PRON_3FS' =>      'S----3FS2-',
        'POSS_PRON_1P'  =>      'S----1-P2-',
        'POSS_PRON_2MP' =>      'S----2MP2-',
        'POSS_PRON_2FP' =>      'S----2FP2-',
        'POSS_PRON_3MP' =>      'S----3MP2-',
        'POSS_PRON_3FP' =>      'S----3FP2-',
        'POSS_PRON_2D'  =>      'S----2-D2-',
        'POSS_PRON_3D'  =>      'S----3-D2-',

        'PVSUFF_DO:1S'  =>      'S----1-S4-',
        'PVSUFF_DO:2MS' =>      'S----2MS4-',
        'PVSUFF_DO:2FS' =>      'S----2FS4-',
        'PVSUFF_DO:3MS' =>      'S----3MS4-',
        'PVSUFF_DO:3FS' =>      'S----3FS4-',
        'PVSUFF_DO:1P'  =>      'S----1-P4-',
        'PVSUFF_DO:2MP' =>      'S----2MP4-',
        'PVSUFF_DO:2FP' =>      'S----2FP4-',
        'PVSUFF_DO:3MP' =>      'S----3MP4-',
        'PVSUFF_DO:3FP' =>      'S----3FP4-',
        'PVSUFF_DO:2D'  =>      'S----2-D4-',
        'PVSUFF_DO:3D'  =>      'S----3-D4-',

        'IVSUFF_DO:1S'  =>      'S----1-S4-',
        'IVSUFF_DO:2MS' =>      'S----2MS4-',
        'IVSUFF_DO:2FS' =>      'S----2FS4-',
        'IVSUFF_DO:3MS' =>      'S----3MS4-',
        'IVSUFF_DO:3FS' =>      'S----3FS4-',
        'IVSUFF_DO:1P'  =>      'S----1-P4-',
        'IVSUFF_DO:2MP' =>      'S----2MP4-',
        'IVSUFF_DO:2FP' =>      'S----2FP4-',
        'IVSUFF_DO:3MP' =>      'S----3MP4-',
        'IVSUFF_DO:3FP' =>      'S----3FP4-',
        'IVSUFF_DO:2D'  =>      'S----2-D4-',
        'IVSUFF_DO:3D'  =>      'S----3-D4-',

        'CVSUFF_DO:1S'  =>      'S----1-S4-',
        'CVSUFF_DO:3MS' =>      'S----3MS4-',
        'CVSUFF_DO:3FS' =>      'S----3FS4-',
        'CVSUFF_DO:1P'  =>      'S----1-P4-',
        'CVSUFF_DO:3MP' =>      'S----3MP4-',
        'CVSUFF_DO:3FP' =>      'S----3FP4-',
        'CVSUFF_DO:3D'  =>      'S----3-D4-',

        'REL_PRON'      =>      'SR--------',
        'REL_PRON+CASE_INDEF_ACC'   =>  'SR------4I',
        'REL_PRON+NSUFF_MASC_SG_ACC_INDEF'      =>      'SR----MS4I',

        'DEM_PRON_MS'   =>      'SD----MS--',
        'DEM_PRON_F'    =>      'SD----F---',
        'DEM_PRON_FS'   =>      'SD----FS--',
        'DEM_PRON_MP'   =>      'SD----MP--',
        'DEM_PRON_FP'   =>      'SD----FP--',
        'DEM_PRON_MD'   =>      'SD----MD--',
        'DEM_PRON_FD'   =>      'SD----FD--',

        # seems like over-generating for <*awiy> or <*away>

        'DEM_PRON_MP+CASE_DEF_ACC'      =>  'SD----MP4R',
        'DEM_PRON_MP+CASE_DEF_GEN'      =>  'SD----MP2R',
        'DEM_PRON_MP+CASE_DEF_NOM'      =>  'SD----MP1R',
        'DEM_PRON_MP+CASE_INDEF_ACC'    =>  'SD----MP4I',
        'DEM_PRON_MP+CASE_INDEF_GEN'    =>  'SD----MP2I',
        'DEM_PRON_MP+CASE_INDEF_NOM'    =>  'SD----MP1I',

        'DEM_PRON_MD+CASE_DEF_ACC'      =>  'SD----MD4R',
        'DEM_PRON_MD+CASE_DEF_GEN'      =>  'SD----MD2R',
        'DEM_PRON_MD+CASE_DEF_NOM'      =>  'SD----MD1R',
        'DEM_PRON_MD+CASE_INDEF_ACC'    =>  'SD----MD4I',
        'DEM_PRON_MD+CASE_INDEF_GEN'    =>  'SD----MD2I',
        'DEM_PRON_MD+CASE_INDEF_NOM'    =>  'SD----MD1I',

        # ################################################################################
        #
        # VERBS ##########################################################################

        'VERB'                          =>      'V---------',
        'VERB_PERFECT'                  =>      'VP--------',
        'VERB_PASSIVE'                  =>      'V--P------',

        'VERB_PERFECT+PVSUFF_SUBJ:1S'   =>      'VP---1-S--',
        'VERB_PERFECT+PVSUFF_SUBJ:2MS'  =>      'VP---2MS--',
        'VERB_PERFECT+PVSUFF_SUBJ:2FS'  =>      'VP---2FS--',
        'VERB_PERFECT+PVSUFF_SUBJ:3MS'  =>      'VP---3MS--',
        'VERB_PERFECT+PVSUFF_SUBJ:3FS'  =>      'VP---3FS--',
        'VERB_PERFECT+PVSUFF_SUBJ:1P'   =>      'VP---1-P--',
        'VERB_PERFECT+PVSUFF_SUBJ:2MP'  =>      'VP---2MP--',
        'VERB_PERFECT+PVSUFF_SUBJ:2FP'  =>      'VP---2FP--',
        'VERB_PERFECT+PVSUFF_SUBJ:3MP'  =>      'VP---3MP--',
        'VERB_PERFECT+PVSUFF_SUBJ:3FP'  =>      'VP---3FP--',
        'VERB_PERFECT+PVSUFF_SUBJ:2D'   =>      'VP---2-D--',
        'VERB_PERFECT+PVSUFF_SUBJ:3MD'  =>      'VP---3MD--',
        'VERB_PERFECT+PVSUFF_SUBJ:3FD'  =>      'VP---3FD--',

        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:1S'   =>      'VP-P-1-S--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:2MS'  =>      'VP-P-2MS--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:2FS'  =>      'VP-P-2FS--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:3MS'  =>      'VP-P-3MS--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:3FS'  =>      'VP-P-3FS--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:1P'   =>      'VP-P-1-P--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:3MP'  =>      'VP-P-3MP--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:3FP'  =>      'VP-P-3FP--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:3MD'  =>      'VP-P-3MD--',
        'VERB_PERFECT_PASSIVE+PVSUFF_SUBJ:3FD'  =>      'VP-P-3FD--',

        'IV1S+VERB_IMPERFECT'                           =>  'VI---1-S--',
        'IV1S+VERB_IMPERFECT+IVSUFF_MOOD:I'             =>  'VII--1-S--',
        'IV1S+VERB_IMPERFECT+IVSUFF_MOOD:S'             =>  'VIS--1-S--',
        'IV2MS+VERB_IMPERFECT'                          =>  'VI---2MS--',
        'IV2MS+VERB_IMPERFECT+IVSUFF_MOOD:I'            =>  'VII--2MS--',
        'IV2MS+VERB_IMPERFECT+IVSUFF_MOOD:S'            =>  'VIS--2MS--',
        'IV2FS+VERB_IMPERFECT+IVSUFF_SUBJ:2FS_MOOD:I'   =>  'VII--2FS--',
        'IV2FS+VERB_IMPERFECT+IVSUFF_SUBJ:2FS_MOOD:SJ'  =>  'VID--2FS--',
        'IV3MS+VERB_IMPERFECT'                          =>  'VI---3MS--',
        'IV3MS+VERB_IMPERFECT+IVSUFF_MOOD:I'            =>  'VII--3MS--',
        'IV3MS+VERB_IMPERFECT+IVSUFF_MOOD:S'            =>  'VIS--3MS--',
        'IV3FS+VERB_IMPERFECT'                          =>  'VI---3FS--',
        'IV3FS+VERB_IMPERFECT+IVSUFF_MOOD:I'            =>  'VII--3FS--',
        'IV3FS+VERB_IMPERFECT+IVSUFF_MOOD:S'            =>  'VIS--3FS--',
        'IV1P+VERB_IMPERFECT'                           =>  'VI---1-P--',
        'IV1P+VERB_IMPERFECT+IVSUFF_MOOD:I'             =>  'VII--1-P--',
        'IV1P+VERB_IMPERFECT+IVSUFF_MOOD:S'             =>  'VIS--1-P--',
        'IV2MP+VERB_IMPERFECT+IVSUFF_SUBJ:MP_MOOD:I'    =>  'VII--2MP--',
        'IV2MP+VERB_IMPERFECT+IVSUFF_SUBJ:MP_MOOD:SJ'   =>  'VID--2MP--',
        'IV2MP+VERB_IMPERFECT+IVSUFF_SUBJ:3MP_MOOD:SJ'  =>  'VID--2MP--',
        'IV2FP+VERB_IMPERFECT+IVSUFF_SUBJ:FP'           =>  'VI---2FP--',
        'IV3MP+VERB_IMPERFECT'                          =>  'VI---3MP--',
        'IV3MP+VERB_IMPERFECT+IVSUFF_SUBJ:MP_MOOD:I'    =>  'VII--3MP--',
        'IV3MP+VERB_IMPERFECT+IVSUFF_SUBJ:MP_MOOD:SJ'   =>  'VID--3MP--',
        'IV3MP+VERB_IMPERFECT+IVSUFF_SUBJ:3MP_MOOD:SJ'  =>  'VID--3MP--',
        'IV3FP+VERB_IMPERFECT+IVSUFF_SUBJ:FP'           =>  'VI---3FP--',
        'IV3FP+VERB_IMPERFECT+IVSUFF_SUBJ:3FP'          =>  'VI---3FP--',
        'IV2D+VERB_IMPERFECT+IVSUFF_SUBJ:D_MOOD:I'      =>  'VII--2-D--',
        'IV2D+VERB_IMPERFECT+IVSUFF_SUBJ:D_MOOD:SJ'     =>  'VID--2-D--',
        'IV3MD+VERB_IMPERFECT'                          =>  'VI---3MD--',
        'IV3MD+VERB_IMPERFECT+IVSUFF_SUBJ:D_MOOD:I'     =>  'VII--3MD--',
        'IV3MD+VERB_IMPERFECT+IVSUFF_SUBJ:D_MOOD:SJ'    =>  'VID--3MD--',
        'IV3FD+VERB_IMPERFECT+IVSUFF_SUBJ:D_MOOD:I'     =>  'VII--3FD--',
        'IV3FD+VERB_IMPERFECT+IVSUFF_SUBJ:D_MOOD:SJ'    =>  'VID--3FD--',
        'IV3FD+VERB_IMPERFECT+IVSUFF_SUBJ:3D'           =>  'VI---3FD--',

        'IV1S+VERB_IMPERFECT_PASSIVE'                   =>      'VI-P-1-S--',
        'IV1S+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:I'     =>      'VIIP-1-S--',
        'IV1S+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:S'     =>      'VISP-1-S--',
        'IV2MS+VERB_IMPERFECT_PASSIVE'                  =>      'VI-P-2MS--',
        'IV2MS+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:I'    =>      'VIIP-2MS--',
        'IV2MS+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:S'    =>      'VISP-2MS--',
        'IV2FS+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:2FS_MOOD:I'   =>  'VIIP-2FS--',
        'IV2FS+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:2FS_MOOD:SJ'  =>  'VIDP-2FS--',
        'IV3MS+VERB_IMPERFECT_PASSIVE'                  =>      'VI-P-3MS--',
        'IV3MS+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:I'    =>      'VIIP-3MS--',
        'IV3MS+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:S'    =>      'VISP-3MS--',
        'IV3FS+VERB_IMPERFECT_PASSIVE'                  =>      'VI-P-3FS--',
        'IV3FS+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:I'    =>      'VIIP-3FS--',
        'IV3FS+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:S'    =>      'VISP-3FS--',
        'IV1P+VERB_IMPERFECT_PASSIVE'                   =>      'VI-P-1-P--',
        'IV1P+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:I'     =>      'VIIP-1-P--',
        'IV1P+VERB_IMPERFECT_PASSIVE+IVSUFF_MOOD:S'     =>      'VISP-1-P--',
        'IV2MP+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:MP_MOOD:I'    =>  'VIIP-2MP--',
        'IV2MP+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:MP_MOOD:SJ'   =>  'VIDP-2MP--',
        'IV2FP+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:FP'           =>  'VI-P-2FP--',
        'IV3MP+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:MP_MOOD:I'    =>  'VIIP-3MP--',
        'IV3MP+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:MP_MOOD:SJ'   =>  'VIDP-3MP--',
        'IV3FP+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:FP'           =>  'VI-P-3FP--',
        'IV2D+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:D_MOOD:I'      =>  'VIIP-2-D--',
        'IV2D+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:D_MOOD:SJ'     =>  'VIDP-2-D--',
        'IV3MD+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:D_MOOD:I'     =>  'VIIP-3MD--',
        'IV3MD+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:D_MOOD:SJ'    =>  'VIDP-3MD--',
        'IV3FD+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:D_MOOD:I'     =>  'VIIP-3FD--',
        'IV3FD+VERB_IMPERFECT_PASSIVE+IVSUFF_SUBJ:D_MOOD:SJ'    =>  'VIDP-3FD--',

        'VERB_IMPERATIVE'                           =>  'VC--------',
        'VERB_IMPERATIVE+CVSUFF_SUBJ:2MS'           =>  'VC---2MS--',
        'VERB_IMPERATIVE+CVSUFF_SUBJ:2FS'           =>  'VC---2FS--',
        'VERB_IMPERATIVE+CVSUFF_SUBJ:2MP'           =>  'VC---2MP--',

        'CV+CVSUFF_SUBJ:2MS'            =>      'VC---2MS--',
        'CV+CVSUFF_SUBJ:2FS'            =>      'VC---2FS--',
        'CV+CVSUFF_SUBJ:2MP'            =>      'VC---2MP--',
        'CV+CVSUFF_SUBJ:2FP'            =>      'VC---2FP--',

        'IV1P+IV+IVSUFF_MOOD:I'         =>      'VIIA-1-P--',
        'IV1P+IV+IVSUFF_MOOD:J'         =>      'VIJA-1-P--',
        'IV1P+IV+IVSUFF_MOOD:S'         =>      'VISA-1-P--',
        'IV1P+IV_PASS+IVSUFF_MOOD:I'    =>      'VIIP-1-P--',
        'IV1P+IV_PASS+IVSUFF_MOOD:J'    =>      'VIJP-1-P--',
        'IV1P+IV_PASS+IVSUFF_MOOD:S'    =>      'VISP-1-P--',

        'IV1S+IV+IVSUFF_MOOD:I'         =>      'VIIA-1-S--',
        'IV1S+IV+IVSUFF_MOOD:J'         =>      'VIJA-1-S--',
        'IV1S+IV+IVSUFF_MOOD:S'         =>      'VISA-1-S--',
        'IV1S+IV_PASS+IVSUFF_MOOD:I'    =>      'VIIP-1-S--',
        'IV1S+IV_PASS+IVSUFF_MOOD:J'    =>      'VIJP-1-S--',
        'IV1S+IV_PASS+IVSUFF_MOOD:S'    =>      'VISP-1-S--',

        'IV2D+IV+IVSUFF_SUBJ:D_MOOD:I'          =>      'VIIA-2-D--',
        'IV2D+IV+IVSUFF_SUBJ:D_MOOD:SJ'         =>      'VIDA-2-D--',
        'IV2D+IV_PASS+IVSUFF_SUBJ:D_MOOD:I'     =>      'VIIP-2-D--',
        'IV2D+IV_PASS+IVSUFF_SUBJ:D_MOOD:SJ'    =>      'VIDP-2-D--',

        'IV2FP+IV+IVSUFF_SUBJ:FP'               =>      'VI-A-2FP--',
        'IV2FP+IV_PASS+IVSUFF_SUBJ:FP'          =>      'VI-P-2FP--',

        'IV2FS+IV+IVSUFF_SUBJ:2FS_MOOD:I'       =>      'VIIA-2FS--',
        'IV2FS+IV+IVSUFF_SUBJ:2FS_MOOD:SJ'      =>      'VIDA-2FS--',
        'IV2FS+IV_PASS+IVSUFF_SUBJ:2FS_MOOD:I'  =>      'VIIP-2FS--',
        'IV2FS+IV_PASS+IVSUFF_SUBJ:2FS_MOOD:SJ' =>      'VIDP-2FS--',

        'IV2MP+IV+IVSUFF_SUBJ:MP_MOOD:I'        =>      'VIIA-2MP--',
        'IV2MP+IV+IVSUFF_SUBJ:MP_MOOD:SJ'       =>      'VIDA-2MP--',
        'IV2MP+IV_PASS+IVSUFF_SUBJ:MP_MOOD:I'   =>      'VIIP-2MP--',
        'IV2MP+IV_PASS+IVSUFF_SUBJ:MP_MOOD:SJ'  =>      'VIDP-2MP--',

        'IV2MS+IV+IVSUFF_MOOD:I'                =>      'VIIA-2MS--',
        'IV2MS+IV+IVSUFF_MOOD:J'                =>      'VIJA-2MS--',
        'IV2MS+IV+IVSUFF_MOOD:S'                =>      'VISA-2MS--',
        'IV2MS+IV_PASS+IVSUFF_MOOD:I'           =>      'VIIP-2MS--',
        'IV2MS+IV_PASS+IVSUFF_MOOD:J'           =>      'VIJP-2MS--',
        'IV2MS+IV_PASS+IVSUFF_MOOD:S'           =>      'VISP-2MS--',

        'IV3FD+IV+IVSUFF_SUBJ:3D'               =>      'VI-A-3FD--',
        'IV3FD+IV+IVSUFF_SUBJ:D_MOOD:I'         =>      'VIIA-3FD--',
        'IV3FD+IV+IVSUFF_SUBJ:D_MOOD:SJ'        =>      'VIDA-3FD--',
        'IV3FD+IV_PASS+IVSUFF_SUBJ:D_MOOD:I'    =>      'VIIP-3FD--',
        'IV3FD+IV_PASS+IVSUFF_SUBJ:D_MOOD:SJ'   =>      'VIDP-3FD--',

        'IV3FP+IV+IVSUFF_SUBJ:3FP'              =>      'VI-A-3FP--',
        'IV3FP+IV+IVSUFF_SUBJ:FP'               =>      'VI-A-3FP--',
        'IV3FP+IV_PASS+IVSUFF_SUBJ:FP'          =>      'VI-P-3FP--',

        'IV3FS+IV+IVSUFF_MOOD:I'                =>      'VIIA-3FS--',
        'IV3FS+IV+IVSUFF_MOOD:J'                =>      'VIJA-3FS--',
        'IV3FS+IV+IVSUFF_MOOD:S'                =>      'VISA-3FS--',
        'IV3FS+IV_PASS+IVSUFF_MOOD:I'           =>      'VIIP-3FS--',
        'IV3FS+IV_PASS+IVSUFF_MOOD:J'           =>      'VIJP-3FS--',
        'IV3FS+IV_PASS+IVSUFF_MOOD:S'           =>      'VISP-3FS--',

        'IV3MD+IV+IVSUFF_SUBJ:3D'               =>      'VI-A-3MD--',
        'IV3MD+IV+IVSUFF_SUBJ:D_MOOD:I'         =>      'VIIA-3MD--',
        'IV3MD+IV+IVSUFF_SUBJ:D_MOOD:SJ'        =>      'VIDA-3MD--',
        'IV3MD+IV_PASS+IVSUFF_SUBJ:D_MOOD:I'    =>      'VIIP-3MD--',
        'IV3MD+IV_PASS+IVSUFF_SUBJ:D_MOOD:SJ'   =>      'VIDP-3MD--',

        'IV3MP+IV+IVSUFF_SUBJ:3MP_MOOD:I'       =>      'VIIA-3MP--',
        'IV3MP+IV+IVSUFF_SUBJ:MP_MOOD:I'        =>      'VIIA-3MP--',
        'IV3MP+IV+IVSUFF_SUBJ:3MP_MOOD:SJ'      =>      'VIDA-3MP--',
        'IV3MP+IV+IVSUFF_SUBJ:MP_MOOD:SJ'       =>      'VIDA-3MP--',
        'IV3MP+IV_PASS+IVSUFF_SUBJ:MP_MOOD:I'   =>      'VIIP-3MP--',
        'IV3MP+IV_PASS+IVSUFF_SUBJ:MP_MOOD:SJ'  =>      'VIDP-3MP--',

        'IV3MS+IV+IVSUFF_MOOD:I'                =>      'VIIA-3MS--',
        'IV3MS+IV+IVSUFF_MOOD:J'                =>      'VIJA-3MS--',
        'IV3MS+IV+IVSUFF_MOOD:S'                =>      'VISA-3MS--',
        'IV3MS+IV_PASS+IVSUFF_MOOD:I'           =>      'VIIP-3MS--',
        'IV3MS+IV_PASS+IVSUFF_MOOD:J'           =>      'VIJP-3MS--',
        'IV3MS+IV_PASS+IVSUFF_MOOD:S'           =>      'VISP-3MS--',

        'PV+PVSUFF_SUBJ:1P'     =>      'VP-A-1-P--',
        'PV+PVSUFF_SUBJ:1S'     =>      'VP-A-1-S--',
        'PV+PVSUFF_SUBJ:2D'     =>      'VP-A-2-D--',
        'PV+PVSUFF_SUBJ:2FP'    =>      'VP-A-2FP--',
        'PV+PVSUFF_SUBJ:2FS'    =>      'VP-A-2FS--',
        'PV+PVSUFF_SUBJ:2MP'    =>      'VP-A-2MP--',
        'PV+PVSUFF_SUBJ:2MS'    =>      'VP-A-2MS--',
        'PV+PVSUFF_SUBJ:3FD'    =>      'VP-A-3FD--',
        'PV+PVSUFF_SUBJ:3FP'    =>      'VP-A-3FP--',
        'PV+PVSUFF_SUBJ:3FS'    =>      'VP-A-3FS--',
        'PV+PVSUFF_SUBJ:3MD'    =>      'VP-A-3MD--',
        'PV+PVSUFF_SUBJ:3MP'    =>      'VP-A-3MP--',
        'PV+PVSUFF_SUBJ:3MS'    =>      'VP-A-3MS--',

        'PV_PASS+PVSUFF_SUBJ:1P'        =>      'VP-P-1-P--',
        'PV_PASS+PVSUFF_SUBJ:1S'        =>      'VP-P-1-S--',
        'PV_PASS+PVSUFF_SUBJ:2D'        =>      'VP-P-2-D--',
        'PV_PASS+PVSUFF_SUBJ:2FP'       =>      'VP-P-2FP--',
        'PV_PASS+PVSUFF_SUBJ:2FS'       =>      'VP-P-2FS--',
        'PV_PASS+PVSUFF_SUBJ:2MP'       =>      'VP-P-2MP--',
        'PV_PASS+PVSUFF_SUBJ:2MS'       =>      'VP-P-2MS--',
        'PV_PASS+PVSUFF_SUBJ:3FD'       =>      'VP-P-3FD--',
        'PV_PASS+PVSUFF_SUBJ:3FP'       =>      'VP-P-3FP--',
        'PV_PASS+PVSUFF_SUBJ:3FS'       =>      'VP-P-3FS--',
        'PV_PASS+PVSUFF_SUBJ:3MD'       =>      'VP-P-3MD--',
        'PV_PASS+PVSUFF_SUBJ:3MP'       =>      'VP-P-3MP--',
        'PV_PASS+PVSUFF_SUBJ:3MS'       =>      'VP-P-3MS--',

        # <layosa> and derivatives!

        'NEG_PART+PVSUFF_SUBJ:1S'       =>      'VP---1-S--',
        'NEG_PART+PVSUFF_SUBJ:2MS'      =>      'VP---2MS--',
        'NEG_PART+PVSUFF_SUBJ:2FS'      =>      'VP---2FS--',
        'NEG_PART+PVSUFF_SUBJ:3MS'      =>      'VP---3MS--',
        'NEG_PART+PVSUFF_SUBJ:3FS'      =>      'VP---3FS--',
        'NEG_PART+PVSUFF_SUBJ:1P'       =>      'VP---1-P--',
        'NEG_PART+PVSUFF_SUBJ:3MP'      =>      'VP---3MP--',
        'NEG_PART+PVSUFF_SUBJ:3FP'      =>      'VP---3FP--',

        # ################################################################################
        #
        # ADVERBS, PREPOSITIONS, CONJUNCTIONS, PARTICLES, INTERJECTION ###################

        'ADV'                           =>      'D---------',
        'ADV+NSUFF_FEM_SG'              =>      'D-----FS--',
        'ADV+CASE_INDEF_ACC'            =>      'D-------4I',
        'ADV+CASE_DEF_ACC'              =>      'D-------4R',
        'ADV+NSUFF_MASC_SG_ACC_INDEF'   =>      'D-----MS4I',
        'ADV+NSUFF_MASC_DU_NOM_POSS'    =>      'D-----MD1R',

        'DET+ADV'                       =>      'D--------X',
        'DET+ADV+NSUFF_FEM_SG'          =>      'D-----FS-X',

        'REL_ADV'                       =>      'D---------',

        'PREP'                  =>  'P---------',
        'PREP+CASE_GEN'         =>  'P-------2-',
        'PREP+CASE_ACC'         =>  'P-------4-',

        'PREP+CASE_DEF_NOM'     =>  'P-------1R',
        'PREP+CASE_DEF_GEN'     =>  'P-------2R',
        'PREP+CASE_DEF_ACC'     =>  'P-------4R',
        'PREP+CASE_INDEF_NOM'   =>  'P-------1I',
        'PREP+CASE_INDEF_GEN'   =>  'P-------2I',

        'PREP+NSUFF_FEM_SG'                 =>  'P-----FS--',
        'PREP+NSUFF_FEM_SG+CASE_DEF_ACC'    =>  'P-----FS4R',
        'PREP+NSUFF_FEM_SG+CASE_DEF_GEN'    =>  'P-----FS2R',
        'PREP+NSUFF_FEM_SG+CASE_DEF_NOM'    =>  'P-----FS1R',
        'PREP+NSUFF_FEM_SG+CASE_INDEF_ACC'  =>  'P-----FS4I',
        'PREP+NSUFF_FEM_SG+CASE_INDEF_GEN'  =>  'P-----FS2I',
        'PREP+NSUFF_FEM_SG+CASE_INDEF_NOM'  =>  'P-----FS1I',

        # 'PREP+REL_PRON'   =>  '----------',

        'CONJ'          =>      'C---------',
        'SUB_CONJ'      =>      'C---------',
        'SUBJUNC'       =>      'C---------',
        'SUB'           =>      'C---------',
        'JUS'           =>      'C---------',

        'PART'                      =>      'F---------',
        'VERB_PART'                 =>      'F---------',
        'EXCEPT_PART'               =>      'F---------',
        'FOCUS_PART'                =>      'F---------',

        'RESULT_CLAUSE_PARTICLE'    =>      'F---------',
        'EMPHATIC_PARTICLE'         =>      'F---------',
        'EMPHATIC_PART'             =>      'F---------',
        'EMPH_PART'                 =>      'F---------',
        'RC_PART'                   =>      'F---------',

        # these are <&gt;ay~> or <&gt;ay~+ap> or <&gt;ay~+at+...>

        'INTERROG_PART'                                 =>  'FI--------',

        'INTERROG_PART+CASE_INDEF_NOM'                  =>  'FI------1I',
        'INTERROG_PART+CASE_INDEF_GEN'                  =>  'FI------2I',
        'INTERROG_PART+CASE_INDEF_ACC'                  =>  'FI------4I',
        'INTERROG_PART+CASE_DEF_NOM'                    =>  'FI------1R',
        'INTERROG_PART+CASE_DEF_GEN'                    =>  'FI------2R',
        'INTERROG_PART+CASE_DEF_ACC'                    =>  'FI------4R',

        'INTERROG_PART+NSUFF_FEM_SG'                    =>  'FI----FS--',

        'INTERROG_PART+NSUFF_FEM_SG+CASE_DEF_ACC'       =>  'FI----FS4R',
        'INTERROG_PART+NSUFF_FEM_SG+CASE_DEF_GEN'       =>  'FI----FS2R',
        'INTERROG_PART+NSUFF_FEM_SG+CASE_DEF_NOM'       =>  'FI----FS1R',
        'INTERROG_PART+NSUFF_FEM_SG+CASE_INDEF_ACC'     =>  'FI----FS4I',
        'INTERROG_PART+NSUFF_FEM_SG+CASE_INDEF_GEN'     =>  'FI----FS2I',
        'INTERROG_PART+NSUFF_FEM_SG+CASE_INDEF_NOM'     =>  'FI----FS1I',

        # some relics for <&gt;ay~>

        'INTERROG_PART+NSUFF_MASC_SG_ACC_INDEF'         =>  'FI----MS4I',

        # <gayor> and derivatives!

        'DET+NEG_PART'                  =>      'FN-------X',
        'DET+NEG_PART+CASE_DEF_ACC'     =>      'FN------4X',
        'DET+NEG_PART+CASE_DEF_GEN'     =>      'FN------2X',
        'DET+NEG_PART+CASE_DEF_NOM'     =>      'FN------1X',

        'NEG_PART'                      =>      'FN--------',
        'NEG_PART+CASE_INDEF_NOM'       =>      'FN------1I',
        'NEG_PART+CASE_INDEF_GEN'       =>      'FN------2I',
        'NEG_PART+CASE_DEF_NOM'         =>      'FN------1R',
        'NEG_PART+CASE_DEF_GEN'         =>      'FN------2R',
        'NEG_PART+CASE_DEF_ACC'         =>      'FN------4R',

        'FUT'               =>      'F---------',
        'FUNC_WORD'         =>      'F---------',
        'FUT_PART'          =>      'F---------',

        # <SaHiyH> with cases, normally <&lt;in~a>

        'INTERJ'                    =>  'I---------',
        'INTERJ+CASE_DEF_ACC'       =>  'I-------4R',
        'INTERJ+CASE_DEF_GEN'       =>  'I-------2R',
        'INTERJ+CASE_DEF_NOM'       =>  'I-------1R',
        'INTERJ+CASE_INDEF_ACC'     =>  'I-------4I',
        'INTERJ+CASE_INDEF_GEN'     =>  'I-------2I',
        'INTERJ+CASE_INDEF_NOM'     =>  'I-------1I',

        # <SaHiyHAF>, <$ukorAF>, <TaboEAF>, <&gt;aholAF> ...

        'INTERJ+NSUFF_MASC_SG_ACC_INDEF'    =>  'I-----MS4I',

        'DET+INTERJ'                =>  'I--------X',
        'DET+INTERJ+CASE_DEF_ACC'   =>  'I-------4X',
        'DET+INTERJ+CASE_DEF_GEN'   =>  'I-------2X',
        'DET+INTERJ+CASE_DEF_NOM'   =>  'I-------1X',

        # ################################################################################
        #
        # ################################################################################

        'NOUN_MP'                       =>  'N-----MP--',
        'NOUN_MS'                       =>  'N---------',

        'NOUN_SHOULD_BE_ADJ'            =>  'A---------',
        'ADJ_SHOULD_BE_NOUN'            =>  'N---------',
        'A_NAME'                        =>  'Z---------',

        'NO_SOLUTION'                   =>  '----------',
        'NO_MATCH'                      =>  '----------',

        'NIL'                           =>  '----------',

        # ################################################################################
        #
        # ################################################################################

        'DET+NOUN+CASE_DEF_GEN+CASE_DEF_ACC'    =>      'N-------4X',
        'DET+NOUN+CASE_DEF_GEN+CASE_DEF_GEN'    =>      'N-------2X',
        'DET+NOUN+CASE_DEF_GEN+CASE_DEF_NOM'    =>      'N-------1X',
        'DET+NOUN+CASE_DEF_GEN+CASE_INDEF_GEN'  =>      'N-------2X',
        'DET+NOUN+CASE_DEF_GEN+CASE_INDEF_NOM'  =>      'N-------1X',

        'VERB_PERFECT+PVSUFF_SUBJ:3MS+PVSUFF_SUBJ:3FS'  =>      'VP---3FS--',
        'VERB_PERFECT+PVSUFF_SUBJ:3MS+PVSUFF_SUBJ:3MS'  =>      'VP---3MS--',
        'VERB_PERFECT+PVSUFF_SUBJ:3MS+PVSUFF_SUBJ:3MP'  =>      'VP---3MP--',

        # ################################################################################
        #
        # SPOKEN DATA ####################################################################

        '-NONE-'                                =>  '----------',

        'ACT_PART'                              =>  'NP-A------',

        'ACT_PART+SUBJ:1FS'                     =>  'NP-A-1FS--',
        'ACT_PART+SUBJ:2FS'                     =>  'NP-A-2FS--',
        'ACT_PART+SUBJ:FS'                      =>  'NP-A--FS--',
        'ACT_PART+SUBJ:MS'                      =>  'NP-A--MS--',
        'ACT_PART+SUBJ:P'                       =>  'NP-A---P--',

        'ADJ+NSUFF_FEM_DU'                      =>  'A-----FD--',
        'ADJ+NSUFF_MASC_DU'                     =>  'A-----MD--',
        'ADJ+NSUFF_MASC_PL'                     =>  'A-----MP--',

        'ADV+NSUFF_MASC_DU'                     =>  'D-----MD--',
        'ADV+PRON_2FS'                          =>  'D---------',
        'ADV+PRON_2MS'                          =>  'D---------',
        'ADV+PRON_3MS'                          =>  'D---------',

        'ASP_PART'                              =>  'F---------',

        'DEM_PRON'                              =>  'SD--------',
        'DEM_PRON_M'                            =>  'SD----M---',
        'DEM_PRON_3MS'                          =>  'SD---3MS--',

        'DET+ACT_PART+SUBJ:FS'                  =>  'NP-A--FS-X',
        'DET+ACT_PART+SUBJ:P'                   =>  'NP-A---P-X',

        'DET+ADJ+NSUFF_MASC_DU'                 =>  'A-----MD-D',
        'DET+ADJ+NSUFF_MASC_PL'                 =>  'A-----MP-D',

        'DET+NOUN+NSUFF_FEM_DU'                 =>  'N-----FD-D',
        'DET+NOUN+NSUFF_MASC_DU'                =>  'N-----MD-D',
        'DET+NOUN+NSUFF_MASC_PL'                =>  'N-----MP-D',

        'DISFL'                                 =>  '----------',
        'DISFLIP'                               =>  '----------',

        'EXIST_PART'                            =>  'F---------',

        'INTERJ+NOUN'                           =>  'I---------',
        'INTERJ+NSUFF_MASC_DU'                  =>  'I-----MD--',

        'IV1P+IV'                               =>  'VI---1-P--',
        'IV1P+IV+IVSUFF'                        =>  'VI---1-P--',
        'IV1P+IV+IVSUFF_SUBJ:1P'                =>  'VI---1-P--',
        'IV1S+IV'                               =>  'VI---1-S--',
        'IV1S+IV+IVSUFF'                        =>  'VI---1-S--',
        'IV2FS+IV+IVSUFF_SUBJ:2FS'              =>  'VI---2FS--',
        'IV2MP+IV+IVSUFF_SUBJ:P'                =>  'VI---2MP--',
        'IV2MS+IV'                              =>  'VI---2MS--',
        'IV2MS+IV+IVSUFF'                       =>  'VI---2MS--',
        'IV2MS+IV_PASS'                         =>  'VI-P-2MS--',
        'IV3FD+IV+IVSUFF_SUBJ:D'                =>  'VI---3FD--',
        'IV3FS+IV'                              =>  'VI---3FS--',
        'IV3FS+IV+IVSUFF'                       =>  'VI---3FS--',
        'IV3FS+IV_PASS'                         =>  'VI-P-3FS--',
        'IV3MD+IV+IVSUFF_SUBJ:D'                =>  'VI---3MD--',
        'IV3MP+IV+IVSUFF_SUBJ:3MP'              =>  'VI---3MP--',
        'IV3MP+IV+IVSUFF_SUBJ:MP'               =>  'VI---3MP--',
        'IV3MP+IV+IVSUFF_SUBJ:P'                =>  'VI---3MP--',
        'IV3MS+IV'                              =>  'VI---3MS--',
        'IV3MS+IV+IVSUFF'                       =>  'VI---3MS--',
        'IV3MS+IV_PASS'                         =>  'VI-P-3MS--',

        'IV2S+IV'                               =>  'VI---2-S--',
        'IV3P+IV+IVSUFF_SUBJ:3P'                =>  'VI---3-P--',
        'IV3P+IV+IVSUFF_SUBJ:MP'                =>  'VI---3MP--',

        'IV1P+IV_PASS'                          =>  'VI-P-1-P--',
        'IV2FS+IV'                              =>  'VI---2FS--',
        'IV3F+IV'                               =>  'VI---3F---',

        'IV3MP+IV+MOOD:I'                       =>  'VII--3MP--',
        'IV3MP+IV+IVSUFF_MOOD:I'                =>  'VII--3MP--',
        'IV3MP+IV_PASS+IVSUFF_SUBJ:MP'          =>  'VI-P-3MP--',

        'NOUN+NSUFF_FEM_DU'                     =>  'N-----FD--',
        'NOUN+NSUFF_MASC_DU'                    =>  'N-----MD--',
        'NOUN+NSUFF_MASC_PL'                    =>  'N-----MP--',
        'NOUN+POSS_PRON_1S'                     =>  'N---------',
        'NOUN+POSS_PRON_3FS'                    =>  'N---------',
        'NOUN+POSS_PRON_3MP'                    =>  'N---------',
        'NOUN+POSS_PRON_3MS'                    =>  'N---------',

        'PV+PVSUFF_SUBJ:1S'                     =>  'VP---1-S--',
        'PV+PVSUFF_SUBJ:1MS'                    =>  'VP---1MS--',
        'PV+PVSUFF_SUBJ:3MS'                    =>  'VP---3MS--',
        'PV+PVSUFF_SUBJ:3F'                     =>  'VP---3-F--',
        'PV+PVSUFF_SUBJ:2P'                     =>  'VP---2-P--',
        'PV+PVSUFF_SUBJ:3P'                     =>  'VP---3-P--',
        'PV+PVSUFF_SUBJ:P'                      =>  'VP-----P--',

        'PV_PASS+PVSUFF_SUBJ:3F'                =>  'VP-P-3F---',

        'NUM+NSUFF_FEM_DU'                      =>  'Q-----FD--',
        'NUM+NSUFF_FEM_PL'                      =>  'Q-----FP--',
        'NUM+NSUFF_MASC_DU'                     =>  'Q-----MD--',
        'NUM+NSUFF_MASC_PL'                     =>  'Q-----MP--',

        'OATH'                                  =>  'F---------',

        'OBJ:1MS'                               =>  'S----1MS4-',
        'OBJ:2MS'                               =>  'S----2MS4-',
        'OBJ:2FS'                               =>  'S----2FS4-',
        'OBJ:3MS'                               =>  'S----3MS4-',
        'OBJ:3FS'                               =>  'S----3FS4-',
        'OBJ:1P'                                =>  'S----1-P4-',
        'OBJ:3P'                                =>  'S----3-P4-',

        'PRON'                                  =>  'S---------',
        'PRON_1MS'                              =>  'S----1MS--',
        'PRON_2S'                               =>  'S----2-S--',
        'PRON_FS'                               =>  'S-----FS--',
        'PRON_3P'                               =>  'S----3-P--',

        'POSS_PRON'                             =>  'S-------2-',
        'POSS_PRON_3P'                          =>  'S----3-P2-',

        'IVSUFF_DO:3P'                          =>  'S----3-P4-',

        'PVSUFF_DO:3M'                          =>  'S----3M-4-',
        'PVSUFF_DO:3P'                          =>  'S----3-P4-',

        'CV+CVSUFF_SUBJ:2P'                     =>  'VC---2-P--',
        'CV+CVSUFF_SUBJ:3FS'                    =>  'VC---3FS--',

        'CVSUFF_DO:2FS'                         =>  'S----2FS4-',
        'CVSUFF_DO:2MS'                         =>  'S----2MS4-',

        'NSUFF_FEM_SG'                          =>  '------FS--',

        'NSUFF_FEM_SG+CASE_INDEF_NOM'           =>  '------FS1I',
        'NSUFF_FEM_SG+CASE_INDEF_GEN'           =>  '------FS2I',
        'NSUFF_FEM_SG+CASE_INDEF_ACC'           =>  '------FS4I',
        'NSUFF_FEM_SG+CASE_DEF_NOM'             =>  '------FS1R',
        'NSUFF_FEM_SG+CASE_DEF_GEN'             =>  '------FS2R',
        'NSUFF_FEM_SG+CASE_DEF_ACC'             =>  '------FS4R',

        # ################################################################################

        # 'ASP_PART+IV1P+IV_PASS'                 =>      'VI-PC-----',
        # 'ASP_PART+IV2FM+IV+IVSUFF_SUBJ:2FS'     =>      'VI--C2FS--',
        # 'ASP_PART+IV2FS+IV'                     =>      'VI--C2FS--',
        # 'ASP_PART+IV3P+IV'                      =>      'VI--C3-P--',
        # 'ASP_PART+IV3P+IV+IVSUFF_SUBJ:3P'       =>      'VI--C3-P--',
        #
        # 'ASP_PART+IV1P+IV'                      =>      'VI--C1-P--',
        # 'ASP_PART+IV1P+IV+IVSUFF'               =>      'VI--C1-P--',
        # 'ASP_PART+IV1S+IV'                      =>      'VI--C1-S--',
        # 'ASP_PART+IV1S+IV+IVSUFF'               =>      'VI--C1-S--',
        # 'ASP_PART+IV1S+IV+IVSUFF_DO:2FS'        =>      'VI--C1-S--',
        # 'ASP_PART+IV1S+IV+IVSUFF_DO:2MS'        =>      'VI--C1-S--',
        # 'ASP_PART+IV2FS+IV+IVSUFF_SUBJ:2FS'     =>      'VI--C2FS--',
        # 'ASP_PART+IV2MP+IV+IVSUFF_SUBJ:P'       =>      'VI--C2MP--',
        # 'ASP_PART+IV2MS+IV'                     =>      'VI--C2MS--',
        # 'ASP_PART+IV2MS+IV+IVSUFF'              =>      'VI--C2MS--',
        # 'ASP_PART+IV3FS+IV'                     =>      'VI--C3FS--',
        # 'ASP_PART+IV3FS+IV+IVSUFF'              =>      'VI--C3FS--',
        # 'ASP_PART+IV3FS+IV_PASS'                =>      'VI-PC3FS--',
        # 'ASP_PART+IV3MP+IV+IVSUFF_SUBJ:3MP'     =>      'VI--C3MP--',
        # 'ASP_PART+IV3MP+IV+IVSUFF_SUBJ:MP'      =>      'VI--C3MP--',
        # 'ASP_PART+IV3MP+IV+IVSUFF_SUBJ:P'       =>      'VI--C3MP--',
        # 'ASP_PART+IV3MP+IV_PASS+IVSUFF_SUBJ:P'  =>      'VI-PC3MP--',
        # 'ASP_PART+IV3MS+IV'                     =>      'VI--C3MS--',
        # 'ASP_PART+IV3MS+IV+IVSUFF'              =>      'VI--C3MS--',
        # 'ASP_PART+IV3MS+IV+IVSUFF_DO:3MS'       =>      'VI--C3MS--',
        # 'ASP_PART+IV3MS+IV_PASS'                =>      'VI-PC3MS--',
        #
        # 'FUT+IV1P+IV'                           =>  'VI--F1-P--',
        # 'FUT+IV1S+IV+IVSUFF'                    =>  'VI--F1-S--',
        # 'FUT+IV3MS+IV'                          =>  'VI--F3MS--',
        # 'FUT+IV3MS+IV+IVSUFF'                   =>  'VI--F3MS--',
        #
        # 'PART+PRON_2FS'                         =>  'F---------',
        # 'PART+PRON_2MP'                         =>  'F---------',
        # 'PART+PRON_2MS'                         =>  'F---------',
        # 'PART+PRON_3FS'                         =>  'F---------',
        # 'PART+PRON_3MS'                         =>  'F---------',
        #
        # 'IVSUFF'                                =>  '----------',
        # 'CASE_INDEF_ACC'                        =>  '--------4I',
        #
        # 'JUS+IV1P+IV'                           =>  'VI---1-P--',
        #
        # 'NEG'                                   =>  'F---------',
        #
        # 'NO_FUNC'                               =>  '----------',
        #
        # 'DET+NUM+NSUFF_MASC_PL'                 =>  'Q-----MP-D',
        #
        # 'REL_ADV+PRON_2MS'                      =>  'D---------',
        # 'REL_ADV<'                              =>  'D---------',
        #
        # 'DET+ACT_PART+SUBJ:MS'                  =>  'NP-A-----X',
        #
        # 'DET+PROP_NOUN'                         =>  'Z--------X',
        #
        # 'FOCUS_PART+CASE_INDEF_ACC'             =>  'F-------4I',
        #
        # 'INTERJ+NSUFF_FEM_SG'                   =>  'I-----FS--',
        #
        # 'PARTIALWORD'                           =>  'T---------',

        # ################################################################################

        # 'ACT_PART+SUBJ:2FS+OBJ:3MS'             =>  'NP-A-2FS--',
        # 'ACT_PART+SUBJ:MS+OBJ:3MS'              =>  'NP-A--MS--',
        # 'ACT_PART+SUBJ:P+OBJ:1P'                =>  'NP-A---P--',
        # 'ACT_PART+SUBJ:P+OBJ:3P'                =>  'NP-A---P--',
        #
        # 'IV3MS+IV+IVSUFF_DO:3MS'                =>  'VI---3MS--',
        #
        # 'PV+PVSUFF_SUBJ:2FS+PVSUFF_DO:3FS'      =>  'VP---2FS--',
        # 'PV+PVSUFF_SUBJ:3MP+PVSUFF_DO:1S'       =>  'VP---3MP--',

               };
}


sub morph_is_prefix ($) {

    $_[0] =~ m{^(?: wa/CONJ | bi/PREP | fa/CONJ | li/PREP | sa/FUT | ka/PREP | [lm]A/NEG_PART |
                    lam/NEG_PART | li/SUB(?:JUNC)? | li/JUS | \>an/(?:SUB_)CONJ | mA/REL_PRON |
                    min/PREP | la/EMPH(?:ATIC)?_PART | la/RESULT_CLAUSE_PARTICLE | la/RC_PART |
                    \>a/INTERROG_PART | wa/OATH | wi?/CONJ | \>awi?/CONJ | .*/EXIST_PART |
                    [Hh]a?/FUT | b[ai]/ASP_PART | [bm]/ASP_PART | fA?/CONJ | b/CONJ | .*/PREP |
                    \<in/SUB_CONJ | ma/NEG_PART | fa/CONNEC_PART | .*/PUNC )}x;
}


sub morph_is_suffix ($) {

    $_[0] =~ m{^(?: .*/POSS_PRON_ | .*/PRON | mA/REL_PRON | man/REL_PRON | [lm]A/NEG_PART |
                    .*/[PIC]VSUFF_DO | \>ay~(?:ap)?/INTERROG_PART | kam/INTERROG_PART |
                    mA/INTERROG_PART | man/INTERROG_PART | mA\*A/INTERROG_PART | \$i/NEG_PART |
                    \$(?:iy)?/NEG_PART | i\$/NEG_PART | .*/OBJ )}x;
}


1;

__END__


=head1 NAME

MorphoMap - Approximation of Tim Buckwalter's Morphology into the Functional Morphology


=head1 DESCRIPTION

=over

=item The Other Arabic Treebank: Prague Dependencies and Functions

Otakar Smrz, Jan Hajic

L<http://ufal.mff.cuni.cz/~smrz/CSLI2007/csli-prague.pdf>

=item Feature-Based Tagger of Approximations of Functional Arabic Morphology

Jan Hajic, Otakar Smrz, Tim Buckwalter, Hubert Jin

L<http://ufal.mff.cuni.cz/~smrz/TLT2005/tlt-tagger.pdf>

L<http://ufal.mff.cuni.cz/~smrz/TLT2005/tlt-slides.pdf>

=item MorphoTrees of Arabic and Their Annotation in the TrEd Environment

Otakar Smrz, Petr Pajas

L<http://ufal.mff.cuni.cz/~smrz/NEMLAR2004/nemlar-tred.pdf>

=item Prague Arabic Dependency Treebank: Development in Data and Tools

Jan Hajic, Otakar Smrz, Petr Zemanek, Jan Snaidauf, Emanuel Beska

L<http://ufal.mff.cuni.cz/~smrz/NEMLAR2004/nemlar-padt.pdf>

=back

This is an extended version of mapping, compared to the one with the published results in tagging.
Nevertheless, the current mapping is consistent with the version that is used in the MorphoTrees of
the Prague Arabic Dependency Treebank 1.0.

The improvements are in better resolution of the values of formal definiteness and in the new
optional C<distinguish_POSVector> function expanding the value C<3> for case into C<2> and C<4>
and the value C<X> for definiteness to C<D> and C<C>. The C<-> case of pronouns expands to C<1>,
C<2>, C<4>.

The unspecified values for B<number and gender> are B<not expanded>, as it would mean to ignore
the already specified information for e.g. illusory feminine plural and overgenerate too much
(recall logical vs. formal vs. illusory categories treated in the papers).


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2003-2012 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
