# ########################################################################## Otakar Smrz, 2008/07/07
#
# ElixirFM Interfaces ##############################################################################

package ElixirFM;

use 5.008;

use strict;

our $VERSION = '1.2.1';

use Encode::Arabic;

use XML::Parser;

use Unicode::Normalize;

# ##################################################################################################
#
# ##################################################################################################

use subs 'foldr', 'foldl';

no warnings 'recursion';

sub foldr (&$@) {

    my ($fun, $nil, @lst, $lst) = @_;

    return $nil unless @lst;

    ($lst, @lst) = @lst;

    return $fun->($lst, foldr $fun, $nil, @lst);
}

sub foldl (&$@) {

    my ($fun, $nil, @lst, $lst) = @_;

    return $nil unless @lst;

    ($lst, @lst) = @lst;

    return foldl $fun, $fun->($nil, $lst), @lst;
}

sub nub (&@) {

    my ($fun, @lst, %nub) = @_;

    return grep { my $r = $fun->($_); exists $nub{$r} ? 0 : ++$nub{$r} } @lst;
}

sub groups (@) {

    my @list = @_;

    my $tree = [];
    my @tree = ($tree);

    for (my $i = 0; $i < @list; $i ++) {

        my ($n, $l) = (0, @{$list[$i]} - 1);

        $n++ until split " ", $list[$i][$n];

        my $f = foldr { [$_[0], $_[1]] } [$list[$i][$l]], @{$list[$i]}[$n .. $l - 1];
        my $t = $n - @tree + 1;

        if ($t < 0) {

            splice @tree, $t;
        }
        elsif ($t > 0) {

            push @tree, $tree[-1][-1] for 1 .. $t;
        }

        push @{$tree[-1]}, $f;
    }

    return $tree;
}

sub tuples {

    my @data = @_;

    push @data, undef if @data % 2;

    my @pair;

    for (my $i = 0; $i < @data; $i += 2) {

        push @pair, [$data[$i], $data[$i + 1]];
    }

    return @pair;
}

sub concat {

    return map { ref $_ eq 'ARRAY' ? @{$_} : $_ } @_;
}

# ##################################################################################################
#
# ##################################################################################################

sub orth {

    my $text = decode "arabtex", $_[0];

    return $_[0] eq '"' || $text eq '' ? $_[0] : $text;
}

sub phon {

    my $text = decode "arabtex-zdmg", $_[0];

    return $_[0] eq '"' || $text eq '' ? $_[0] : $text;
}

sub orph {

    return join defined $_[1] ? $_[1] : " ", grep { $_ ne '' } orth($_[0]), phon($_[0]);
}

sub phor {

    return join defined $_[1] ? $_[1] : " ", grep { $_ ne '' } phon($_[0]), orth($_[0]);
}

sub cling {

    return join defined $_[1] ? $_[1] : "", split " ", $_[0];
}

sub nice {

    my $morphs = morphs($_[0]);

    $morphs->[0] = $morphs->[0] =~ /^(?:_____|Identity)$/ ? '_____' : merge("", $morphs->[0]);

    $morphs->[0] =~ s/([FCL]|[KRDS])/|$1|/g;

    $morphs->[1] = [ map { $_ =~ /"/ ? showPrefix($_) : $_ } @{$morphs->[1]} ];

    $morphs->[2] = [ map { $_ =~ /"/ ? showSuffix($_) : $_ } @{$morphs->[2]} ];

    return join "-", map { $_ eq "iy" ? $_ : phon($_) } @{$morphs->[1]}, $morphs->[0], @{$morphs->[2]};
}

our $tagset = [

    [ "",
      { "V-" => "verb",
        "VI" => "imperfective",
        "VP" => "perfective",
        "VC" => "imperative",
        "N-" => "noun",
        "A-" => "adjective",
        "S-" => "pronoun",
        "SP" => "personal",
        "SD" => "demonstrative",
        "SR" => "relative",
        "Q-" => "numeral",
        "QI" => "",
        "QU" => "",
        "QV" => "",
        "QX" => "",
        "QY" => "",
        "QL" => "",
        "QC" => "",
        "QD" => "",
        "QM" => "",
        "D-" => "adverb",
        "P-" => "preposition",
        "PI" => "inflected",
        "C-" => "conjunction",
        "F-" => "particle",
        "FN" => "negative",
        "FI" => "interrogative",
        "I-" => "interjection",
        "X-" => "foreign word",
        "Y-" => "acronym/unit",
        "Z-" => "zero inflections",
        "G-" => "graphical symbol" } ],

    [ "", {} ],

    [ "mood",
      { "I" => "indicative",
        "S" => "subjunctive",
        "J" => "jussive",
        "E" => "energetic" } ],

    [ "voice",
      { "A" => "active",
        "P" => "passive" } ],

    [ "", {} ],

    [ "person",
      { "1" => "first",
        "2" => "second",
        "3" => "third" } ],

    [ "gender",
      { "M" => "masculine",
        "F" => "feminine" } ],

    [ "number",
      { "S" => "singular",
        "D" => "dual",
        "P" => "plural" } ],

    [ "case",
      { "1" => "nominative",
        "2" => "genitive",
        "4" => "accusative" } ],

    [ "state",
      { "I" => "indefinite",
        "D" => "definite",
        "R" => "reduced/construct",
        "A" => "absolute/negative",
        "C" => "complex/overdetermined",
        "L" => "lifted/underdetermined" } ]

    ];

our $dims = scalar @{$tagset};

sub describe {

    my $i = 0;

    my @slot = map { $i++ % 2 ? [ split //, $_ ] : map { [ $_ ne '-' ? $_ : () ] } split //, $_ } split /[\[\]]/, $_[0];

    my $terse = defined $_[1] ? $_[1] : '';

    if (@slot > $dims) {

        splice @slot, $dims, (@slot - $dims);
    }
    else {

        push @slot, ([]) x ($dims - @slot);
    }

    my @type = map { my $x = $_;

                     [ exists $tagset->[0][1]{$_ . '-'} ? $tagset->[0][1]{$_ . '-'} : '',

                       join " ", grep { $_ ne '' }

                            map { exists $tagset->[0][1]{$x . $_} ? $tagset->[0][1]{$x . $_} : '' } @{$slot[1]} ]

                } @{$slot[0]};

    my @cats = map { my $x = $_;

                     [ $terse && $_ != 5 ? '' : $tagset->[$x][0],

                       join " ", grep { $_ ne '' }

                            map { exists $tagset->[$x][1]{$_} ? $tagset->[$x][1]{$_} : '' } @{$slot[$x]} ]

                } 2 .. $dims - 1;

    return join ", ", grep { $_ ne '' }

                      ( join " ", map { grep { $_ ne '' } $_->[1], $_->[0] } @type ),

                      ( map { join " ", grep { $_ ne '' } $_->[1] ne '' ? ($_->[1], $_->[0]) : () } @cats );
}

sub retrieve {

    my @word = grep { $_ ne '' } map { split /([()])/, $_ } split ' ', $_[0];

    my $tags = [ map { [] } 1 .. $dims ];

    my @tags = ($tags);

    my @slot = ();

    foreach my $word (@word) {

        $word =~ /^verb/i               and push @{$tags->[0]}, 'V' and next;
        $word =~ /^noun/i               and push @{$tags->[0]}, 'N' and next;
        $word =~ /^adj/i                and push @{$tags->[0]}, 'A' and next;
        $word =~ /^pron/i               and push @{$tags->[0]}, 'S' and next;
        $word =~ /^num/i                and push @{$tags->[0]}, 'Q' and next;
        $word =~ /^adv/i                and push @{$tags->[0]}, 'D' and next;
        $word =~ /^prep/i               and push @{$tags->[0]}, 'P' and next;
        $word =~ /^conj/i               and push @{$tags->[0]}, 'C' and next;
        $word =~ /^part/i               and push @{$tags->[0]}, 'F' and next;
        $word =~ /^int(?:er)?j/i        and push @{$tags->[0]}, 'I' and next;

        $word =~ /^(?:e)?xtra/i         and push @{$tags->[0]}, 'X' and next;
        $word =~ /^foreign/i            and push @{$tags->[0]}, 'X' and next;
        $word =~ /^[yu]nit/i            and push @{$tags->[0]}, 'Y' and next;
        $word =~ /^acronym/i            and push @{$tags->[0]}, 'Y' and next;
        $word =~ /^zero/i               and push @{$tags->[0]}, 'Z' and next;
        $word =~ /^null/i               and push @{$tags->[0]}, 'Z' and next;
        $word =~ /^gr(?:a)?ph/i         and push @{$tags->[0]}, 'G' and next;
        $word =~ /^symbol/i             and push @{$tags->[0]}, 'G' and next;

        $word =~ /^perf/i               and push @{$tags->[1]}, 'P' and next;
        $word =~ /^imp(?:er)?f/i        and push @{$tags->[1]}, 'I' and next;
        $word =~ /^imp(?:er)?a/i        and push @{$tags->[1]}, 'C' and next;
        $word =~ /^imp(?:er)?/i         and push @{$tags->[1]}, 'I',
                                                                'C' and next;

        $word =~ /^pers(?:ona)?l/i      and push @{$tags->[1]}, 'P' and next;
        $word =~ /^dem/i                and push @{$tags->[1]}, 'D' and next;
        $word =~ /^rel/i                and push @{$tags->[1]}, 'R' and next;

        $word =~ /^inf/i                and push @{$tags->[1]}, 'I' and next;
        $word =~ /^neg/i                and push @{$tags->[1]}, 'N' and next;
        $word =~ /^int(?:er)?r/i        and push @{$tags->[1]}, 'I' and next;

        $word =~ /^ind(?![ef])/i        and push @{$tags->[2]}, 'I' and next;
        $word =~ /^sub/i                and push @{$tags->[2]}, 'S' and next;
        $word =~ /^jus/i                and push @{$tags->[2]}, 'J' and next;
        $word =~ /^ene/i                and push @{$tags->[2]}, 'E' and next;

        $word =~ /^act/i                and push @{$tags->[3]}, 'A' and next;
        $word =~ /^pas/i                and push @{$tags->[3]}, 'P' and next;

        $word =~ /^(?:fir|[1f])st/i     and push @{$tags->[5]}, '1' and next;
        $word =~ /^(?:seco|[2s])nd/i    and push @{$tags->[5]}, '2' and next;
        $word =~ /^(?:thi|[3t])rd/i     and push @{$tags->[5]}, '3' and next;

        $word =~ /^mas/i                and push @{$tags->[6]}, 'M' and next;
        $word =~ /^fem/i                and push @{$tags->[6]}, 'F' and next;

        $word =~ /^s(?:in)?g/i          and push @{$tags->[7]}, 'S' and next;
        $word =~ /^du/i                 and push @{$tags->[7]}, 'D' and next;
        $word =~ /^pl/i                 and push @{$tags->[7]}, 'P' and next;

        $word =~ /^nom/i                and push @{$tags->[8]}, '1' and next;
        $word =~ /^gen(?![dr])/i        and push @{$tags->[8]}, '2' and next;
        $word =~ /^acc/i                and push @{$tags->[8]}, '4' and next;
        $word =~ /^obl/i                and push @{$tags->[8]}, '2',
                                                                '4' and next;

        $word =~ /^ind[ef]/i            and push @{$tags->[9]}, 'I' and next;
        $word =~ /^red/i                and push @{$tags->[9]}, 'R' and next;
        $word =~ /^cons/i               and push @{$tags->[9]}, 'R' and next;
        $word =~ /^def/i                and push @{$tags->[9]}, 'D' and next;
        $word =~ /^com/i                and push @{$tags->[9]}, 'C' and next;
        $word =~ /^over/i               and push @{$tags->[9]}, 'C' and next;
        $word =~ /^abs/i                and push @{$tags->[9]}, 'A' and next;
        $word =~ /^lift/i               and push @{$tags->[9]}, 'L' and next;
        $word =~ /^under/i              and push @{$tags->[9]}, 'L' and next;

        if (@slot = $word =~ /\G([-A-Z1-4]|\[[-A-Z1-4]*\])/g) {

            if (@slot > $dims) {

                splice @slot, $dims, (@slot - $dims);
            }
            else {

                push @slot, ('-') x ($dims - @slot);
            }

            push @tags, join "", @slot;
        }

        if ($word =~ /[()]/ or @slot) {

            $tags = [ map { [] } 1 .. $dims ];

            push @tags, $tags;
        }
    }

    return map { ref $_ ? ( grep { @{$_} } @{$_} ) ?

                          join "", map { @{$_} == 0 ? '-' : @{$_} == 1 ? $_->[0] :

                                         '[' . (join '', @{$_}) . ']' } @{$_}

                        : () : $_ } @tags;
}

sub restrict {

    my @restrict = split //, length $_[0] == $dims ? $_[0] : '-' x $dims;
    my @inherit = split //, $_[1];

    return join '', map { $restrict[$_] eq '-' && defined $inherit[$_] ? $inherit[$_] : $restrict[$_] } 0 .. @restrict - 1;
}

sub prune {

    my $data = $_[0];

    return $data unless ref $data eq 'ARRAY' and @{$data};

    @{$data} = ($data->[0], grep {

                                not grep { not @{$_}[1 .. @{$_} - 1] } @{$_}[1 .. @{$_} - 1]

                            } @{$data}[1 .. @{$data} - 1]);

    return $data;
}

sub concise {

    return @_ unless @_ > 1;

    my @data = @_;

    my $data = pop @data;

    return foldr {

            return @_ unless ref $_[0] eq 'ARRAY' and ref $_[1] eq 'ARRAY';

            return @_ unless @{$_[0]} > 1 and @{$_[1]} > 1 and @{$_[0]} == @{$_[1]};

            for (1 .. @{$_[0]} - 1) {

                return @_ unless $_[0][$_] eq $_[1][$_];
            }

            my @fst = $_[0]->[0] =~ /^("?[A-Z1-4-]{6})([MF])([A-Z1-4-]{3}"?)$/;

            my @snd = $_[1]->[0] =~ /^("?[A-Z1-4-]{6})([MF])([A-Z1-4-]{3}"?)$/;

            return @_ unless @fst == 3 and @snd == 3;

            return @_ unless $fst[0] eq $snd[0] and $fst[2] eq $snd[2] and $fst[1] ne $snd[1];

            return [ $fst[0] . '-' . $fst[2], @{$_[0]}[1 .. @{$_[0]} - 1] ], @_[2 .. @_ - 1];

        } $data, @data;
}

sub normalize {

    my ($text, $code) = @_;

    $code = 'UTF' unless defined $code;

    my @data = split " ", $text;

    if ($code eq 'UTF') {

        $text = Unicode::Normalize::normalize('KC', $text);

        $text =~ tr[\x{06A9}\x{06AA}][\x{0643}];
        $text =~ tr[\x{06CC}][\x{064A}];
        $text =~ tr[\x{0640}][]d;

        $text =~ s/([\x{064B}-\x{0650}\x{0652}\x{0670}])\x{0651}/\x{0651}$1/g;
        $text =~ s/([\x{0627}\x{0649}])\x{064B}/\x{064B}$1/g;

        @data = $text =~ /( (?: \p{Arabic} | [\x{064B}-\x{0652}\x{0670}\x{0657}\x{0656}\x{0640}] )+ )/gx;
    }
    elsif ($code eq 'Tim') {

        $text =~ tr[>&<][OWI];
        $text =~ tr[_][]d;

        $text =~ s/([FNKauio\`])\~/\~$1/g;
        $text =~ s/([AY])F/F$1/g;

        @data = $text =~ /( [OWI\'\|\}AbptvjHxd\*rzs\$SDTZEgfqklmnhwYyPJRVG\{A\~FNKaui\`o]+ )/gx;
    }
    elsif ($code eq 'TeX') {

        $text = Unicode::Normalize::normalize('KD', $text);

        $text =~ s/a[\x{0304}\x{0301}]/A/g;
        $text =~ s/i[\x{0304}\x{0301}]/I/g;
        $text =~ s/u[\x{0304}\x{0301}]/U/g;

        $text =~ s/aa/A/g;
        $text =~ s/ii/I/g;
        $text =~ s/uu/U/g;

        $text =~ s/j/\^g/g;
        $text =~ s/x/\_h/g;

        $text =~ s/(.)[\x{030C}\x{0303}]/\^$1/g;
        $text =~ s/(.)[\x{0331}\x{032E}]/\_$1/g;
        $text =~ s/(.)[\x{0323}\x{0307}]/\.$1/g;
        $text =~ s/(.)[\x{0301}]/\,$1/g;

        $text =~ s/\x{02BE}/\'/g;
        $text =~ s/\x{02BF}/\`/g;

        @data = $text =~ /( (?: \.[hsdtzgr] | \_[thdaIU] | \^[gscznl] | \,[c] | ['btdrzs`fqklmnhwyTaiuAIUYNW|"-] )+ )/gx;
    }

    return join " ", @data;
}

sub identify {

    my ($text, $code) = @_;

    $code = 'UTF' unless defined $code;

    my @data = ();

    while ($text ne '') {

        my $data = '';

        $text =~ s/^ +//;

        if (($data) = $text =~ /^(\( *-? *[1-9][0-9]* *, *(?:-? *[1-9][0-9]*|\[ *\]|\[ *-? *[1-9][0-9]* *(?:\, *-? *[1-9][0-9]* *)*\]) *\))/) {

            $text = substr $text, length $data;
        }
        elsif (($data) = $text =~ /^(\( *-? *[0-9]+ *, *(?:-? *[0-9]+|\[ *\]|\[ *-? *[0-9]+ *(?:\, *-? *[0-9]+ *)*\]) *\))/) {

            $text = substr $text, length $data;

            $data = '';
        }
        elsif (($data) = $text =~ /^(\"\"|(?: *\"(?:\\.|[^\"\\]+)+\")+)/) {

            $text = substr $text, length $data;
        }
        elsif (($data) = $text =~ /^(\p{InArabic}{2,}|\p{InArabic}(?: +\p{InArabic}(?!\p{InArabic}))*)/) {

            $text = substr $text, length $data;

            $data = normalize $data, 'UTF';
        }
        elsif (($data) = $text =~ /^((?:[._^,]?[^ ._^,]){2,}|(?:[._^,]?[^ ._^,])(?: +(?:[._^,]?[^ ._^,])(?![^ ]))*)/ and $code ne 'UTF') {

            $text = substr $text, length $data;

            $data = normalize $data, $code;
        }
        elsif (($data) = $text =~ /^(.[^\(\)\"\p{InArabic}]*)/) {

            $text = substr $text, length $data;

            $data =~ tr[\(\)\/\-][ ];

            $data =~ s/ +$//;
        }

        push @data, $data unless $data eq '';
    }

    return @data;
}

sub parse {

    my $parser = new XML::Parser 'Handlers' => {

        'Init'  => sub {
                            my $expat = shift;

                            $expat->{'Lists'} = [];
                            $expat->{'Tree'} = [];

                            $expat->{'Curlist'} = [ '', {}, $expat->{'Tree'} ];
                    },

        'Start' => sub {
                            my $expat = shift;
                            my $name = shift;
                            my $elem = [ $name, { @_ }, [] ];

                            push @{ $expat->{'Curlist'}[-1] }, $elem;
                            push @{ $expat->{'Lists'} }, $expat->{'Curlist'};

                            $expat->{'Curlist'} = $elem;
                    },

        'End'   => sub {
                            my $expat = shift;
                            my $name = shift;

                            my $elem = $expat->{'Curlist'};

                            my $hash = $expat->{'Curlist'}[1];
                            my $list = $expat->{'Curlist'}[-1];


                            if (@{$list} == 1 and not ref $list->[0]) {

                                $expat->{'Curlist'}[-1] = $list->[0];
                            }
                            else {

                                @{$list} = grep { ref $_ or $_ !~ /^\s*$/ } @{$list};

                                my $memo = {};
                                my $quit = '';

                                foreach my $one (@{$list}) {

                                    if (ref $one and $one->[0] !~ /^[A-Z]/ and
                                        not exists $hash->{$one->[0]} and
                                        not exists $memo->{$one->[0]}) {

                                        $memo->{$one->[0]} = $one;
                                    }
                                    else {

                                        $quit = 'quit';

                                        last;
                                    }
                                }

                                unless ($quit) {

                                    foreach my $one (keys %{$memo}) {

                                        if (keys %{$memo->{$one}[1]}) {

                                            if (ref $memo->{$one}[-1] and not @{$memo->{$one}[-1]}) {

                                                $hash->{$one} = $memo->{$one}[1];
                                            }
                                        }
                                        else {

                                            $hash->{$one} = $memo->{$one}[-1];
                                        }
                                    }

                                    $expat->{'Curlist'}[-1] = [];
                                }
                            }

                            $expat->{'Curlist'} = pop @{ $expat->{'Lists'} };
                    },

        'Char'  => sub {
                            my $expat = shift;
                            my $text = shift;
                            my $list = $expat->{'Curlist'}[-1];

                            if (@{$list} > 0 and not ref $list->[-1]) {

                                $list->[-1] .= $text;
                            }
                            else {

                                push @{$list}, $text;
                            }
                    },

        'Final' => sub {
                            my $expat = shift;

                            delete $expat->{'Curlist'};
                            delete $expat->{'Lists'};

                            return $expat->{'Tree'}[0];
                    },

        };

    return $parser->parse($_[0]);
}

sub clear {

    my $data = [@{$_[0]}];

    my $ents = $data->[1];

    if ($data->[0] eq 'Entry') {

        if (exists $ents->{'reflex'}) {

            $_ = [ ref $_ ? map { $_->[-1] } @{$_} : $_ ]

                foreach $ents->{'reflex'};
        }

        if (exists $ents->{'entity'}) {

            $ents->{'entity'} = $ents->{'entity'}[0];

            foreach ('plural', 'femini', 'masdar',
                     'imperf', 'pfirst', 'second', 'form') {

                next unless exists $ents->{'entity'}[1]{$_};

                $_ = [ ref $_ ? map { $_->[-1] } @{$_} : $_ ]

                    foreach $ents->{'entity'}[1]{$_};
            }

            pop @{$ents->{'entity'}};
        }

        if (exists $ents->{'limits'}) {

            if (exists $ents->{'limits'}{'snd'}) {

                $_ = [ ref $_ eq 'ARRAY' ? map { $_->[-2] } @{$_} : $_ ]

                    foreach $ents->{'limits'}{'snd'};
            }
        }

        pop @{$data};
    }
    else {

        foreach ('plural', 'femini', 'masdar',
                 'imperf', 'pfirst', 'second', 'form') {

            next unless exists $ents->{$_};

            $_ = [ ref $_ ? map { $_->[-1] } @{$_} : $_ ]

                foreach $ents->{$_};
        }

        pop @{$data};
    }

    return $data;
}

sub lists_trees {

    my ($node, @data) = split /^[\t ]*[:]{1}(?=[\t ]+)/m, $_[0];

    return  $node =~ /[()]/

        ?   [
                [
                    map {

                        [ split /[\n ]*\t/, $_ ]
                    }

                    grep { $_ ne '' } split /[\n ]*(?=\((?:[0-9]+,[0-9]+)?\)[\n ]*\t|$)/, $node
                ],

                map {

                    my ($i, $q) = /^(?:[\t ]*\n    )*([\t ]*)([^\t\n ](?:.*[^\t\n ])?)[\t\n ]*$/s;

                    my ($node, @data) = split /(?<![\t\n ])(?:[\t ]*\n)+$i    (?![\t\n ])/, $q;

                    [
                        [ join ' ', split ' ', $node ],

                        map {

                            [ split /[\n ]*\t/, $_ ]

                        } @data
                    ]

                } @data
            ]

        :   [
                [ join ' ', split ' ', $node ],

                map {

                    my ($i, $q) = /^(?:[\t ]*\n    )*([\t ]*)([^\t\n ](?:.*[^\t\n ])?)[\t\n ]*$/s;

                    my ($node, @data) = split /(?<![\t\n ])(?:[\t ]*\n)+$i    (?![\t\n ])/, $q;

                    [
                        [ split /[\n ]*\t/, $node ],

                        map {

                            [ split /[\n ]*\t/, $_ ]

                        } @data
                    ]

                } @data
            ];
}

sub unlines {

    my ($data, $type) = @_;

    $type = $data =~ /^\s*[:]{4}/ ? 'resolve' # : $data =~ /^\s*[()]/ ? 'lookup'
                                                : $data =~ /^\s*[<>]/ ? 'lexicon' : '' unless defined $type;

    my @data;

    if ($type eq 'resolve') {

        @data = split /(?:(?<=\n\n)\n|(?<=^\n)\n|(?<=^)\n)/, $data, -1;
    }
    elsif ($type eq 'lookup') {

        @data = split /(?:(?<=\n)\n|(?<=^)\n)/, $data, -1;
    }
    elsif ($type eq 'lexicon') {

        @data = split /(?:(?<=<\/Cluster>)\s*|\s*(?=<Cluster>))/, $data, -1;

        shift @data if @data and $data[0] !~ /^<Cluster>/;
        pop @data if @data and $data[-1] !~ /<\/Cluster>$/;
    }
    else {

        @data = split /(?:(?<=\n)\n|(?<=^)\n)/, $data, -1;
    }

    pop @data if @data and $data[-1] eq '';

    return @data;
}

sub unwords {

    my ($data, $type) = @_;

    $type = $data =~ /^\s*[:]{4}/ ? 'resolve' # : $data =~ /^\s*[()]/ ? 'lookup'
                                                : $data =~ /^\s*[<>]/ ? 'lexicon' : '' unless defined $type;

    my @data = unlines $data, $type;

    if ($type eq 'resolve') {

        @data = map {

            split /^(?=[\t ]*[:]{4}[\t ]+)/m, $_

        } @data;
    }
    elsif ($type eq 'lookup') {

        @data = map {

            split /^(?=[\t ]*\(\ *-?\ *[1-9][0-9]*\ *,
                               \ *(?:\[\ *\]|
                                     \[\ *-?\ *[1-9][0-9]*\ *(?:\,\ *-?\ *[1-9][0-9]*\ *)*\])\ *\))/xm, $_
        } @data;
    }
    elsif ($type eq 'lexicon') {

        @data = map {

            split /(?:(?<=<\/Nest>)\s*|\s*(?=<Nest>))/, $_

        } @data;

        shift @data if @data and $data[0] !~ /^<Nest>/;
        pop @data if @data and $data[-1] !~ /<\/Nest>$/;
    }
    else {

        @data = map {

            split /(?:(?<=\n)\n|(?<=^)\n)/, $_, -1

        } @data;
    }

    return @data;
}

sub unpretty {

    my ($data, $mode) = @_;

    my $type = $data =~ /^\s*[:]{4}/ ? 'resolve' # : $data =~ /^\s*[()]/ ? 'lookup'
                                                   : $data =~ /^\s*[<>]/ ? 'lexicon' : '';

    my @data = unlines $data, $type;

    if ($type eq 'resolve') {

        @data = map {

            my @data = unwords $_, $type;

            [
                map {

                    my (undef, $data) = split /^[\t ]*[:]{4}[\t ]+/m, $_;

                    my ($node, @data) = split /^[\t ]*[:]{3}[\t ]+/m, $data;

                    [
                        [ split ' ', $node ],

                        map {

                            my ($node, @data) = split /^[\t ]*[:]{2}[\t ]+/m, $_;

                            [
                                [ map { join ' ', split ' ' } split /(?<=[>])\s+(?=[<])/, $node ],

                                map {

                                    lists_trees($_)

                                } @data
                            ]

                        } @data
                    ]

                } @data
            ]

        } @data;
    }
    elsif ($type eq 'lookup') {

        @data = map {

            my @data = unwords $_, $type;

            [
                map {

                    my ($clip, @data) = split /\n(?=[(])/, $_;

                    [ ( join '', split ' ', $clip ),

                      map {

                          my ($fst, @rst) = map {

                              [ split /\t/, $_ ]

                          } split /\n/, $_;

                          my ($idx, @ent) = @{$fst};

                          foldl {

                              my (undef, $data, @data) = @{$_[1]};

                              push @{$_[0]}, [$data] unless $data eq ' ' x 10;

                              push @{$_[0][-1]}, [@data] if @data;

                              return $_[0];

                          } [ ( join '', split ' ', $idx ), [@ent] ], @rst;

                        } @data,
                    ]

                } @data
            ]

        } @data;
    }
    elsif ($type eq 'lexicon') {

        $mode = '' unless defined $mode;

        if ($mode eq 'parse' or $mode eq 'clear') {

            $data = parse($data);

            $data = clear($data) if $mode eq 'clear';
        }

        @data = ($data);
    }
    else {

        @data = map {

            my @data = unwords $_, $type;

            groups

            map {

                [ split /\t/, $_ ]

            }

            map {

                split /\n/, $_

            } @data

        } @data;
    }

    return @data;
}

sub template {

    my ($t, $p, $s) = @_;

    $p = $p =~ /\"$/ ? $p . " >>| " : $p . " >| " unless $p eq '';
    $s = $s =~ /^\"/ ? " |<< " . $s : " |< " . $s unless $s eq '';

    return $p . $t . $s;
}

# ##################################################################################################
#
# ##################################################################################################

sub merge {

    my ($root, $template) = @_;

    my $morphs = morphs($template);

    my $prefixes = sub { foldr { mergePrefix($_[0], $_[1]) } $_[0], @{$morphs->[1]} };

    my $suffixes = sub { foldl { (substr $_[0], 0, -1) . mergeSuffix(
                                 (substr $_[0], -1, 1), $_[1])
                                                           } $_[0], @{$morphs->[-1]} };

    return $prefixes->($suffixes->(interlocks($morphs->[1], $morphs->[-1],
                                              $morphs->[0], split ' ', $root)));
}

sub morphs {

    my (@fields) = $_[0];

    my $morphs = [ $_[0], [], [] ];

    return $morphs if $_[0] eq '';

    @fields = split /(?<!\") \>\| |(?<=\") \>\>\| /, $fields[-1];

    @{$morphs->[1]} = @fields[0 .. @fields - 2];

    @fields = split / \|\< (?!\")| \|\<\< (?=\")/, $fields[-1];

    @{$morphs->[-1]} = @fields[1 .. @fields - 1];

    $morphs->[0] = $fields[0];

    return $morphs;
}

sub unmorphs {

    my $morphs = $_[0];

    @{$morphs->[1]} = map { /"/ ? $_ . " >>| " : $_ . " >| " } @{$morphs->[1]};
    @{$morphs->[2]} = map { /"/ ? " |<< " . $_ : " |< " . $_ } @{$morphs->[2]};

    return join '', @{$morphs->[1]}, $morphs->[0], @{$morphs->[2]};
}

sub showPrefix {

    my $text = $_[0];

    return $text if $text =~ tr["][]d;

    return $text . '-';
}

sub showSuffix {

    my $text = $_[0];

    $text =~ tr["][]d;

    return $text;
}

sub assimVIII {

    my ($c, $normal) = @_;

    my %h = (       "'"     =>  [ $c . "t",
                                  "t" . "t" ],

                    "_t"    =>    $c . "_t",

                    "_d"    =>  [ "d" . "d",
                                  $c . "_d" ],

                    "d"     =>  $c . "d",

                    "z"     =>  $c . "d",

                    ".s"    =>  $c . ".t",

                    ".d"    =>  [ $c . ".t",
                                  $c . ".d" ],

                    ".t"    =>  [ $c . ".t",
                                  ".d" . ".t" ],

                    ".z"    =>  $c . ".z",

                    "w"     =>  "t" . "t"    );

    return exists $h{$c} ? ref $h{$c} ? $normal ? $h{$c}[0] : $h{$c}[1]
                                      : $h{$c}
                         : $c . "t";
}

sub assimVII {

    my ($c, $normal) = @_;

    my %h = (       "m"     =>  [ "n" . $c, "m" . $c ]     );

    return exists $h{$c} ? ref $h{$c} ? $normal ? $h{$c}[0] : $h{$c}[1]
                                      : $h{$c}
                         : "n" . $c;
}

sub interlock {

    return interlocks([], [], @_);
}

sub interlocks {

    my ($p, $s, $pattern, @root) = @_;

    if ($pattern =~ /^\"([^\"]+)\"$/) {

        $pattern = $1;

        $pattern .= 'w' if $pattern =~ /A$/ and @{$s} and $s->[0] eq "Iy";

        $pattern =~ s/^H/'/;
        $pattern =~ s/^([IMNSTUY])/\l$1/;

        return $pattern unless @root;

        if ("' _h _d" eq join ' ', @root) {

            $pattern =~ s/Ft/assimVIII($root[0], 1)/e;
        }
        else {

            $pattern =~ s/Ft/assimVIII($root[0], 0)/e;
        }

        $pattern =~ s/nF/assimVII($root[0], 0)/e;

        $pattern =~ s/F/$root[0]/g if defined $root[0];
        $pattern =~ s/C/$root[1]/g if defined $root[1];
        $pattern =~ s/L/$root[2]/g if defined $root[2];

        $pattern =~ s/K/$root[0]/g if defined $root[0];
        $pattern =~ s/R/$root[1]/g if defined $root[1];
        $pattern =~ s/D/$root[2]/g if defined $root[2];
        $pattern =~ s/S/$root[3]/g if defined $root[3];
    }
    elsif ($pattern =~ /^(?:_____|Identity)$/) {

        $pattern = join "", @root;

        $pattern = (substr $pattern, 0, -1) . 'm' if $pattern =~ /^(?:`an|min)$/
                                                  and @{$s} and $s->[0] eq '"mA"';

        $pattern = (substr $pattern, 0, -1) . 'ah' if $pattern =~ /^(?:mA)$/
                                                   and @{$s} and $s->[0] eq '"mA"';

        $pattern = (substr $pattern, 0, -1) . 'l' if $pattern =~ /^(?:'an|'in)$/
                                                  and @{$s} and $s->[0] eq '"lA"';

        $pattern = (substr $pattern, 0, -1) . 'm' if $pattern =~ /^(?:'an|'in)$/
                                                  and @{$s} and $s->[0] eq '"mA"';
    }
    elsif ($pattern =~ /[FCL]/) {

        @root = (@root, ('F', 'C', 'L')[@root .. 2]);

        $pattern = (substr $pattern, 0, -1) . 'w' if $pattern =~ /^F(?:aC[Ly]|[iu]CL|[IU]L)A'$/
                                                  and @root and $root[-1] ne 'w'
                                                  and @{$s} and not $s->[0] =~ /^"[aiu]N?"$/;

        $pattern =~ s/UC/U\|C/                    if $pattern =~ /^(?:Tu)?FUC(?:i?L|I)$/
                                                  and @root > 1 and $root[1] eq 'w';

        $pattern =~ s/^H/'/;
        $pattern =~ s/^([IMNSTUY])/\l$1/;

        if ("' _h _d" eq join ' ', @root) {

            $pattern =~ s/Ft/assimVIII($root[0], 0)/e;
        }
        else {

            $pattern =~ s/Ft/assimVIII($root[0], 1)/e;
        }

        $pattern =~ s/[nN]F/assimVII($root[0], 1)/e;

        $pattern =~ s/F/$root[0]/g;
        $pattern =~ s/C/$root[1]/g;
        $pattern =~ s/L/$root[2]/g;
    }
    elsif ($pattern =~ /[KRDS]/) {

        @root = (@root, ('K', 'R', 'D', 'S')[@root .. 3]);

        $pattern =~ s/^H/'/;
        $pattern =~ s/^([IMNSTUY])/\l$1/;

        $pattern =~ s/K/$root[0]/g;
        $pattern =~ s/R/$root[1]/g;
        $pattern =~ s/D/$root[2]/g;
        $pattern =~ s/S/$root[3]/g;
    }

    return $pattern;
}

our @sunny = ( "t", "_t", "d", "_d", "r", "z", "s", "^s",
               ".s", ".d", ".t", ".z", "l", "n" );

our @moony = ( "'", "b", "^g", ".h", "_h", "`", ".g",
               "f", "q", "k", "m", "h", "w", "y",
               "B", "p", "v", "g", "^c", "^z",
               "c", ",c", "^n", "^l", ".r" );

our %sunny = map { $_ => '' } @sunny;

our %moony = map { $_ => '' } @moony;

sub letters {

    return split /(?<![._^,])/, $_[0];
}

sub isSunny {

    my @r = map { letters $_ } split " ", $_[0];

    return exists $sunny{$r[0]};
}

sub isMoony {

    return not isSunny $_[0];
}

sub isComplex {

    my @r = map { letters $_ } split " ", $_[0];

    return @r < 2 || $r[-2] eq $r[-1] || grep { /^['wy]$/ } @r;
}

sub isRegular {

    return not isComplex $_[0];
}

sub isClosed {

    return not $_[0] =~ /^[aiuAIUY]/;
}

sub mergePrefix {

    my $p = $_[0];
    my $y = substr $_[1], 0, 1;
    my $s = substr $_[1], 1;

    my ($x, $l);

    if ($_[0] =~ /^[Aa]l$/) {

        ($l) = grep { $_[1] =~ /^\Q$_/ } @sunny;

        return "a" . ( defined $l ? $l : $_[1] =~ /^i/ ? "l-i" : "l" ) . "-" . $_[1];
    }

    return "'A" . $s if $p eq "\"'a\"" and $y eq '\'' and isClosed($s);
    return "'U" . $s if $p eq "\"'u\"" and $y eq '\'' and isClosed($s);

    return $x . "U" . $s if ($x) = $p =~ /^"(.)u"$/ and $y =~ /[wy]/ and isClosed($s);

    return showPrefix($_[0]) . $_[1];
}

sub mergeSuffix {

    my (%rules, $x);

    if ($_[0] eq 'Y') {

        return "AT"   if $_[1] =~ /^[Aa]T$/;
        return "awIy" if $_[1] eq "Iy";

        return "awn"  if $_[1] eq "Un";
        return "ayn"  if $_[1] eq "In";

        %rules = ( ""    => "a",

                   "Una" => "awna",
                   "U"   => "aw",
                   "UW"  => "aW",

                   "Ina" => "ayna",
                   "I"   => "ay",

                   "^g"  => "a^g"   );

        if (($x) = $_[1] =~ /^"(.*)"$/) {

            return $rules{$x} if exists $rules{$x};

            return "Y"   if $x =~ /^[aiu]$/;
            return "aNY" if $x =~ /^[aiu]N$/;

            return $x if $x =~ /^at/;

            return "aw" . $x if $x =~ /^u/;
        }

        return "ay" . showSuffix($_[1]);
    }

    if ($_[0] eq 'I') {

        return "iyaT" if $_[1] =~ /^[Aa]T$/;
        return "awIy" if $_[1] eq "Iy";

        return "Un"   if $_[1] eq "Un";
        return "In"   if $_[1] eq "In";

        %rules = ( ""    => "i",

                   "Una" => "Una",
                   "U"   => "U",
                   "UW"  => "UW",

                   "Ina" => "Ina",
                   "I"   => "I",

                   "Iy"  => "Iy",

                   "mA"  => "ImA",
                   "ka"  => "Ika"   );

        if (($x) = $_[1] =~ /^"(.*)"$/) {

            return $rules{$x} if exists $rules{$x};

            return "I"  if $x =~ /^[iu]$/;
            return "iN" if $x =~ /^[iu]N$/;

            return "I" . $x if $x =~ /^[nt]/;

            return $x if $x =~ /^[iu]/;
        }

        return "iy" . showSuffix($_[1]);
    }

    if ($_[0] eq 'A') {

        return "AT"   if $_[1] =~ /^[Aa]T$/;
        return "awIy" if $_[1] eq "Iy";

        return "awn"  if $_[1] eq "Un";
        return "ayn"  if $_[1] eq "In";

        %rules = ( ""    => "a",

                   "Una" => "awna",
                   "U"   => "aw",
                   "UW"  => "aW",

                   "Ina" => "ayna",
                   "I"   => "ay",

                   "Iy"  => "AnIy",
                   "At"  => "A'At",

                   "t"   => "At",
                   "_dA" => "A_dA",
                   "li"  => "Ali",
                   "ka"  => "Aka"   );

        if (($x) = $_[1] =~ /^"(.*)"$/) {

            return $rules{$x} if exists $rules{$x};

            return "A"  if $x =~ /^[aiu]$/;
            return "aN" if $x =~ /^[aiu]N$/;

            return $x if $x =~ /^at/;

            return "aw" . $x if $x =~ /^u/;
        }

        return "aw" . showSuffix($_[1]);
    }

    if ($_[0] eq 'U') {

        return "UhAt" if $_[1] eq "At";

        return "Un"   if $_[1] eq "Un";
        return "In"   if $_[1] eq "In";

        %rules = ( ""    => "u",

                   "Una" => "Una",
                   "U"   => "U",
                   "UW"  => "UW",

                   "Ina" => "Ina",
                   "I"   => "I",

                   "u"   => "U",
                   "i"   => "I",

                   "l"   => "Ul",
                   "f"   => "Uf",
                   "^g"  => "U^g"   );

        if (($x) = $_[1] =~ /^"(.*)"$/) {

            return $rules{$x} if exists $rules{$x};

            return $x if $x =~ /^[ui]N$/;

            return "U" . $x if $x =~ /^[nt]/;

            return $x if $x =~ /^[iu]/;
        }

        return "uw" . showSuffix($_[1]);
    }

    return $_[0] . showSuffix($_[1]);
}


1;

__END__


=head1 NAME

ElixirFM - Interfaces to the ElixirFM system implementing Functional Arabic Morphology


=head1 SYNOPSIS

    use ElixirFM;


=head1 DESCRIPTION

The L<ElixirFM|ElixirFM> module reimplements some of the functionality of the ElixirFM system
written in Haskell.

You can find documentation for this module at L<http://sourceforge.net/projects/elixir-fm/>.


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT & LICENSE

Copyright (C) 2005-2013 Otakar Smrz

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License version 3.


=cut
