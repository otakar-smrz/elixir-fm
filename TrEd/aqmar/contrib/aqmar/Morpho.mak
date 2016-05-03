# ########################################################################## Otakar Smrz, 2011/04/23
#
# AQMAR Morpho Context for the TrEd Environment ####################################################

package AQMAR::Morpho;

use 5.008;

use strict;

use MorphoMap;

use ElixirFM;

use ElixirFM::Exec ();

use Encode::Arabic ':modes';

use Algorithm::Diff;

use List::Util 'reduce', 'max', 'min';

use Scalar::Util 'reftype';

use File::Spec;
use File::Copy;

use File::Basename;

use JSON;

our $VERSION = '0.5';

# ##################################################################################################
#
# ##################################################################################################

#binding-context AQMAR::Morpho

BEGIN {

    import AQMAR 'switch_context_hook', 'pre_switch_context_hook', 'idx';

    import TredMacro;
}

our ($this, $root, $grp);

our ($Redraw);

our ($dims, $fill) = (10, ' ' x 4);

our ($elixir, $review, $window, $option) = ({}, {}, {}, {});

our ($JSON) = JSON->new()->allow_nonref();

# ##################################################################################################
#
# ##################################################################################################

our %maps = (

    'pos' => {

        'verb'        => 'V-',
        'verb_pseudo' => 'V-',
        'noun'        => 'N-',
        'noun_prop'   => 'N-',
        'noun_quant'  => 'N-',
        'noun_num'    => 'Q-',
        'adj'         => 'A-',
        'adj_comp'    => 'A-',
        'adj_num'     => 'A-',
        'pron'        => 'S-',
        'pron_rel'    => 'SR',
        'pron_dem'    => 'SD',
        'adv'         => 'D-',
        'adv_rel'     => 'D-',
        'prep'        => 'P-',
        'conj'        => 'C-',
        'conj_sub'    => 'C-',
        'part'        => 'F-',
        'part_verb'   => 'F-',
        'part_neg'    => 'F-',
        'part_focus'  => 'F-',
        'abbrev'      => 'Y-',
        'punc'        => 'G-',
    },

    'asp' => {
        'p' => 'P',
        'i' => 'I',
    },

    'mod' => {
        'i' => 'I',
        's' => 'S',
        'j' => 'J',
        'u' => '-',
    },

    'vox' => {
        'a' => 'A',
        'p' => 'P',
    },

    # 'rat' => {
    #   'y' => 'H',
    # },

    'per' => {
        '1' => '1',
        '2' => '2',
        '3' => '3',
    },

    'gen' => {
        'm' => 'M',
        'f' => 'F',
    },

    'num' => {
        's' => 'S',
        'd' => 'D',
        'p' => 'P',
    },

    'cas' => {
        'n' => '1',
        'g' => '2',
        'a' => '4',
        'u' => '-',
    },

    'stt' => {
        'i' => 'I',
        'c' => 'R',
        'd' => 'D',
    },

    );


sub convert_MADA {

    my (@feats) = map { split /[:]/ } map { split " " } @_;

    my (%feats) = map { split /[:]/ } map { split " " } @_;

    my @tags = map { exists $feats{$_} && exists $maps{$_}{$feats{$_}}
                                               ? $maps{$_}{$feats{$_}} : '-' }
    qw 'pos asp mod vox rat per gen num cas stt';

    if ($tags[0] eq 'V-') {

        $tags[0] = 'V';
    }
    else {

        $tags[1] = '';
    }

    # prc0
    # prc1
    # prc2
    # prc3
    # enc0

    return join "", @tags;
}


sub convert_BAMA {

    my @morph = grep { $_ ne "" } split /\+(?!\/)/, $_[0];

    if (@morph == 1 and $morph[0] =~ /^($AQMAR::regexG+)\/PUNC$/) {

        @morph = map { $_ . "/PUNC" } split //, $1;
    }

    my @data = ([], [], []);

    for (my $i = 0; $i < @morph; $i++) {

        my $where;

        if (MorphoMap::morph_is_prefix($morph[$i]) and $i < @morph - 1) {

            $where = $data[-1];
        }
        elsif (MorphoMap::morph_is_suffix($morph[$i]) and $i > 0) {

            $where = $data[1];
        }
        else {

            $where = $data[0];
        }

        push @{$where}, [ split /\/(?!\/)/, $morph[$i] ];
    }

    my $data = [[], []];

    for (my $i = 0; $i < @{$data[0]}; $i++) {

        $data->[0][$i] = $data[0][$i][0];
        $data->[1][$i] = $data[0][$i][1];
    }

    $data[0][0] = join "+", @{$data->[0]};
    $data[0][1] = join "+", @{$data->[1]};

    return @{$data[-1]}, ($data[0][0] eq '' ? () : $data[0]), @{$data[1]};

    # return $JSON->encode(\@data);

    # return join " ", map { MorphoMap::AraMorph_POSVector($_) } grep { $_ ne '' } map { $_->[1] } @{$data[-1]}, $data[0], @{$data[1]};
}

sub reconstruct {

    my ($token, $tag) = @_;

    $token =~ tr[{][A];

    $token =~ s/uwo/uw/g;
    $token =~ s/iyo/iy/g;

    $token =~ s/\+awo$/\+aw/;

    $token =~ s/^\~a$/ya/;
    $token =~ s/^\~A$/nA/;
    $token =~ s/^\~iy$/iy/;

    $token =~ s/([\|A])a/$1/g;

    $token =~ s/([tknhy])\+\1/$1\~/g;

    if ($tag =~ /^V/) {

        $token =~ s/\+aw$/\+awoA/;
        $token =~ s/\+uw$/\+uwA/;
    }
    else {

        $token =~ s/\+at((?:\+[aiuFKN])?)$/\+ap$1/;
    }

    $token =~ s/([\|Awyo])[\>\&\<\}OWI]((?:\+[aiu])?)$/$1\'$2/;

    $token =~ s/([\|A])\+a/$1/g;

    $token =~ s/([\|AY])\+[aui]$/$1/;
    $token =~ s/([\|AY])\+[FNK]$/$1\+F/;

    unless ($tag eq '----------') {

        $token =~ s/aY(?=\+F$)/Y/;
        $token =~ s/(?<!a)Y(?!\+F$)/aY/;
    }

    $token =~ s/(?<=a)Y(?=\+a)/y/;

    $token =~ s/[\+]//g if $token =~ /[^\+]/;

    $token =~ s/\(null\)//g;

    $token = decode 'buckwalter', $token unless $token =~ /^(?:$AQMAR::regexQ|$AQMAR::regexG)$/;

    return $token;
}

#bind restore_words Ctrl+W menu Restore Words
sub restore_words {

    ChangingFile(0);

    return if $review->{$grp}{'zoom'};

    ChangingFile(1);

    if ($this->{"#name"} eq "Unit") {

        DeleteSubtree($_) foreach $this->children();

        my ($head, $form, @word) = split /\n?(?:(?:;;=+\n)?;;; SENTENCE|(?:-+\n)?;;WORD) /, $this->{'data'};

        for (my $i = @word; $i > 0; $i--) {

            my $word = $word[$i - 1];

            my $node = NewSon($this);

            DetermineNodeType($node);

            $node->{'id'} = $this->{'id'} . 'w' . $i;

            $node->{'data'} = $word;

            restore_tokens($node);
        }
    }
    else {

        $this = $this->parent() until $this->{"#name"} eq "Word";

        DeleteSubtree($_) foreach grep { exists $_->{"form"} and $_->{"form"} =~ /\p{InArabic}/ and
                                         exists $_->{"note"} and $_->{"note"} ne "" } $this->children();

        restore_tokens($this);

        my @tuple = $this->children();

        for (my $i = @tuple; $i > 0; $i--) {

            my @token = $tuple[$i - 1]->children();

            for (my $j = @token; $j > 0; $j--) {

                $token[$j - 1]->{'id'} = $this->{'id'} . 't' . $j . (@tuple > 1 ? '-' . $i : '');
            }
        }
    }
}

sub restore_tokens {

    my $node = $_[0];

    return unless $node->{"#name"} eq "Word" and exists $node->{"data"};

    my $word = [ grep { $_ ne ';;NO-ANALYSIS' } split /\n/, $node->{"data"} ];

    $node->{'form'} = decode "buckwalter", $word->[0];

    my (undef, $form, @feats) = split " ", $word->[1];

    my $tuple = NewSon($node);

    DetermineNodeType($tuple);

    $node->{'note'} = decode "buckwalter", $form;

    $tuple->{'note'} = convert_MADA @feats;

    my ($score, @props) = split " ", $word->[2];

    $node->{'score'} = $score;

    my ($props) = convert_MADA grep { not /^(?:bw|diac|lex|stem|gloss):/ } @props;

    my ($diac) = map { /^diac:(.*)$/ ? $1 : () } @props;
    my ($lex) = map { /^lex:(.*)$/ ? $1 : () } @props;
    my ($gloss) = map { /^gloss:(.*)$/ ? $1 : () } @props;
    my ($stem) = map { /^stem:(.*)$/ ? $1 : () } @props;
    my ($bama) = map { /^bw:(.*)$/ ? $1 : () } @props;

    if (defined $bama and defined $diac) {

        my @data = convert_BAMA $bama;

        $lex =~ s/\_[0-9]+$//;

        $gloss =~ tr[_][ ];

        tr[_o][]d foreach $diac, $lex, $stem;

        $tuple->{'form'} = decode "buckwalter", $diac;

        for (my $j = @data; $j > 0; $j--) {

            my $data = $data[$j - 1];

            my $token = NewSon($tuple);

            DetermineNodeType($token);

            $token->{'id'} = $node->{'id'} . 't' . $j;

            $token->{'morphs'} = $data->[0];
            $token->{'morphs'} =~ tr[_o][]d;

            $token->{'extra'} = $data->[1];

            $token->{'tag'} = MorphoMap::AraMorph_POSVector($data->[1]);
            $token->{'tag'} =~ s/X$/D/;

            $token->{'form'} = reconstruct $token->{'morphs'}, $token->{'tag'};

            if ($token->{'morphs'} =~ quotemeta $stem or @data == 1) {

                $token->{'sense'} = $gloss;

                $token->{'lemma'} = decode "buckwalter", $lex;

                $token->{'cite'} = Treex::PML::Factory->createStructure();

                $token->{'cite'}{'morphs'} = $lex;
                $token->{'cite'}{'reflex'} = Treex::PML::Factory->createList([ split /[\;\:\/]/, $gloss ]);

                $token->{'note'} = $props unless $props eq $token->{'tag'};

                $tuple->{'note'} = '' if $props eq $tuple->{'note'};
            }
        }
    }
    # else {

    # }
}

# ##################################################################################################
#
# ##################################################################################################

sub CreateStylesheets {

    return << '>>';

rootstyle:<? $AQMAR::Morpho::review->{$grp}{'zoom'} && ! $AQMAR::Morpho::review->{$grp}{'mode'} ?
             '#{vertical}#{Node-textalign:left}#{Node-shape:rectangle}' .
             '#{skipHiddenLevels:1}#{lineSpacing:1.0}' : '#{skipHiddenLevels:1}' ?>

style:<? my @child = $this->children();
         my $score = exists $this->{'score'} ? $this->{'score'} :
                     exists $this->parent()->{'score'} ? $this->parent()->{'score'} : 0;
         ( exists $this->{'hide'} && $this->{'hide'} eq 'hide' ||
           $this->parent()->{'#name'} eq 'Word' ? '#{Node-hide:1}' : '' ) .
         ( $root->{'#name'} eq 'Unit' ? $this->{'#name'} ne 'Word' || @child == 1 ? '#{Line-fill:red}'
                                      : @child > 1 ? '#{Line-fill:purple}' : '' :
            exists $this->{'apply'} && $this->{'apply'} > 0 ? '#{Line-fill:red}' :
            $score > 0.98 ? '#{Line-fill:violetred}' :
            $score > 0.95 ? '#{Line-fill:darkviolet}' :
            $score > 0.90 ? '#{Line-fill:goldenrod}' :
            $score > 0.80 ? '#{Line-fill:tan}' : '' ) .
          ( $AQMAR::Morpho::review->{$grp}{'zoom'} && ! $AQMAR::Morpho::review->{$grp}{'mode'} ?
            '#{Line-coords:n,n,p,n,p,p}' : '' ) ?>

node:<? '#{magenta}${note} ' if $this->{'note'} ne '' and $this->{'note'} ne $this->{'form'}
                                                      and not $this->{'#name'} =~ /^(?:Token|Unit)$/
   ?><? $this->{'#name'} eq 'Token'
            ? ( $this->{"form"} =~ /\p{InArabic}/
                ? ( $this->{"form"} . ( InVerticalMode() ? " " : "\n" ) . AQMAR::Morpho::encode("buckwalter", $this->{"form"}) )
                : ( ElixirFM::orph($this->{'form'}, InVerticalMode() ? " " : "\n") ) )
            : (
            $this->{'#name'} eq 'Lexeme'
                ? ( ( $AQMAR::Morpho::review->{$grp}{'zoom'}
                        ? '#{purple}' . ( join ", ", exists $this->{'cite'}{'reflex'} ?
                                                          @{$this->{'cite'}{'reflex'}} : () ) . ' '
                        : '' ) .
                    '#{darkmagenta}' .
                    ( $this->{'form'} eq '[DEFAULT]'
                        ? $this->{'form'}
                        : $this->{'form'} =~ /^\([0-9]+,[0-9]+\)$/
                            ? ElixirFM::phor(ElixirFM::merge($this->{'root'}, $this->{'cite'}{'morphs'}))
                            : ElixirFM::phor($this->{'form'}) ) )
                : (
                $this->{'#name'} =~ /^(?:Component|Partition)$/
                    ? $this->{'form'}
                    : $this->{'#name'} eq 'Tuple'
                    ? '#{orange}' . ElixirFM::phon($this->{'form'})
                    : ( $this->{'#name'} eq 'Element'
                            ? '#{black}' . AQMAR::Morpho::idx($this) . ' ' : '' ) .
                      ( $this->{apply} > 0
                            ? '#{red}${form}' : '#{black}${form}' ) .
                      ( $this->{'#name'} eq 'Unit'
                            ? ' ' . '#{black}' . AQMAR::Morpho::idx($this) : '' ) ) ) ?>

node:<? my $index = 0;
        $this->{'#name'} eq 'Word'
            ? '#{orange}' . ( join " ", map { /\p{InArabic}/ ? AQMAR::Morpho::encode("buckwalter", $_) : ElixirFM::phon($_) }
                                        ElixirFM::nub { $_[0] } map { $_->{'form'} } $this->children() )
            :
        $this->{'#name'} eq 'Token'
            ? (( $this->{'note'} ne '' ? '#{goldenrod}${note} ' : '' ) . '#{darkred}' . $this->{'tag'} )
            : $AQMAR::Morpho::review->{$grp}{'mode'}
                ? ( exists $this->{'restrict'} ? ( exists $this->{'inherit'} && $this->{'inherit'} ne '' ? '#{orange}' : '#{red}' )
                                                 . $this->{'restrict'} : '' )
                : ( exists $this->{'restrict'} ? join "\n", map { exists $this->{'current'} && $this->{'current'} == $index++
                                                                  ? '#{red}' . $_ : '#{orange}' . $_ } @{$this->{'restrict'}}
                                               : '' ) ?>

node:<? $this->{'#name'} eq 'Group' ? '#{purple}' .
        ( join "\n", map { join ", ", @{$_->[1]{'cite'}{'reflex'}} } @{$this->{'data'}[0]} ) : '' ?>

hint:<? ElixirFM::describe($this->{"tag"}, 'terse') if $this->{'#name'} eq 'Token' ?>
>>
}

sub normalize {

    my $text = $_[0];

    $text =~ tr[\x{0640}\x{0652}][]d;

    $text =~ s/-.*//g;

    $text =~ s/([\x{064B}-\x{0650}\x{0652}\x{0670}])\x{0651}/\x{0651}$1/g;
    $text =~ s/([\x{0627}\x{0649}])\x{064B}/\x{064B}$1/g;

    $text =~ s/^(\x{0627}\x{064E}\x{0644}.)\x{0651}/$1/;

    $text =~ s/^(\x{0627}\x{064E}\x{0644})\x{0650}\x{0627}/$1\x{0627}\x{0650}/;

    $text =~ s/\x{064E}\x{0627}/\x{0627}/g;
    $text =~ s/\x{0627}[\x{064E}-\x{0650}]/\x{0627}/g;

    if (grep { $text eq decode "buckwalter", $_ } map { "hu" . $_, "hi" . $_ } "", "m", "n~a", "mA") {

        $text =~ s/[\x{064F}\x{0650}]//;
    }

    return $text;
}

sub node_release_hook {

    return 'stop' if defined $_[0]->{'#name'};
}

sub enable_edit_node_hook {

    return 'stop' if $review->{$grp}{'zoom'};
}

sub enable_attr_hook {

    return 'stop' if $review->{$grp}{'zoom'};
}

sub after_edit_attr_hook {

    return unless $_[2] and not $review->{$grp}{'zoom'};

    $review->{$grp}{$_} = undef for 'data', 'tree';
}

sub after_edit_node_hook {

    return unless $_[1] and not $review->{$grp}{'zoom'};

    $review->{$grp}{$_} = undef for 'data', 'tree';
}

sub file_opened_hook {

    $this = PML::GetNodeByID($review->{$grp}{'zoom'}->{'id'}) if $review->{$grp}{'zoom'};

    $grp->{'currentNode'} = $this;

    $review->{$grp}{$_} = undef for 'zoom', 'data', 'tree';

    Redraw();
}

sub file_reloaded_hook {

    $grp->{'currentNode'} = $grp->{'currentNode'}->root();

    $review->{$grp}{$_} = undef for 'zoom', 'data', 'tree';
}

sub file_resumed_hook {

    $this = PML::GetNodeByID($review->{$grp}{'zoom'}->{'id'}) if $review->{$grp}{'zoom'};

    $grp->{'currentNode'} = $this;

    $review->{$grp}{$_} = undef for 'zoom', 'data', 'tree';

    Redraw();
}

sub goto_file_hook {

    $this = PML::GetNodeByID($review->{$grp}{'zoom'}->{'id'}) if $review->{$grp}{'zoom'};

    $grp->{'currentNode'} = $this;

    $review->{$grp}{$_} = undef for 'zoom', 'data', 'tree';

    Redraw();
}

sub get_nodelist_hook {

    my ($fsfile, $index, $focus, $hiding) = @_;
    my ($nodes);

    if ($review->{$grp}{'zoom'}) {

        update_zoom_tree() unless $review->{$grp}{'tree'};

        $nodes = [$review->{$grp}{'tree'}, $review->{$grp}{'tree'}->descendants()];

        $focus = $review->{$grp}{'tree'} unless grep { $focus == $_ } @{$nodes};
    }
    else {

        ($nodes, $focus) = $fsfile->nodes($index, $focus, $hiding);
    }

    @{$nodes} = reverse @{$nodes} if $main::treeViewOpts->{reverseNodeOrder};

    return [$nodes, $focus];
}

sub get_value_line_hook {

    my ($fsfile, $index) = @_;
    my ($nodes, $words);

    my $tree = $fsfile->tree($index);

    if ($review->{$grp}{'zoom'}) {

        ($nodes, undef) = $fsfile->nodes($index, $review->{$grp}{'zoom'}, 1);

        $words = [ [ $tree->{'form'} . " " . idx($tree), $tree, '-foreground => purple' ],

                   [ " " ],

                   map {
                            [ $_->{'form'}, $_, $_->{'id'}, $_ == $review->{$grp}{'zoom'} ? ( '-underline => 1' ) : () ],

                            [ " " ],

                        } grep { $_->{'#name'} eq 'Word' } @{$nodes} ];
    }
    else {

        ($nodes, undef) = $fsfile->nodes($index, $grp->{'currentNode'}, 1);

        $words = [ [ $tree->{'form'} . " " . idx($tree), $tree, '-foreground => darkmagenta' ],

                   [ " " ],

                   map {
                            my @modern = grep { exists $_->{'form'} and $_->{'form'} ne '' } $_->children();

                            my @former = grep { not exists $_->{'form'} or $_->{'form'} eq '' } $_->children();

                            [ $_->{'form'}, $_, (

                                $option->{$grp}{'show'}

                                      ? ( @modern == 1 ? @former ? '-foreground => orange'
                                                                 : '-foreground => red'
                                                       : @modern > 1 ? @former ? '-foreground => violetred'
                                                                               : '-foreground => purple'
                                                                     : '-foreground => black' )
                                      : ( @modern == 1 ? @former ? '-foreground => goldenrod'
                                                                 : '-foreground => gray'
                                                       : @modern > 1 ? @former ? '-foreground => violetred'
                                                                               : '-foreground => purple'
                                                                     : '-foreground => black' )
                                ) ],

                            [ " " ],

                        } grep { $_->{'#name'} eq 'Word' } @{$nodes} ];
    }

    @{$words} = reverse @{$words} if $main::treeViewOpts->{reverseNodeOrder};

    return $words;
}

sub highlight_value_line_tag_hook {

    return $review->{$grp}{'zoom'} if $review->{$grp}{'zoom'};

    my $node = $grp->{'currentNode'};

    $node = $node->parent() while $node and not $node->{'#name'} =~ /^(?:Word|Unit)$/;

    return $node;
}

sub value_line_doubleclick_hook {

    return unless $review->{$grp}{'zoom'};

    my $id = $_[-2];            # reversed compared to get_value_line_hook

    return 'stop' unless $id;

    $review->{$grp}{'zoom'} = PML::GetNodeByID($id);

    update_zoom_tree();

    $this = $review->{$grp}{'tree'};

    Redraw();

    return 'stop';
}

sub node_doubleclick_hook {

    $grp->{'currentNode'} = $_[0];

    if ($_[1] eq 'Shift') {

        main::doEvalMacro($grp, __PACKAGE__ . '->switch_either_context');
    }
    else {

        main::doEvalMacro($grp, __PACKAGE__ . '->annotate_morphology');
    }

    return 'stop';
}

sub node_click_hook {

    $grp->{'currentNode'} = $_[0];

    if ($_[1] eq 'Shift') {

        main::doEvalMacro($grp, __PACKAGE__ . '->switch_either_context');
    }
    else {

        main::doEvalMacro($grp, __PACKAGE__ . '->annotate_morphology_click');
    }

    return 'stop';
}

#bind focus_score_ascending to Ctrl+Shift+Up menu Focus Score Ascending
sub focus_score_ascending {

    $Redraw = 'none';
    ChangingFile(0);

    if ($review->{$grp}{'zoom'} and $review->{$grp}{'tree'}) {

        $this = $this->parent() until $this->{'#name'} eq 'Tuple' or $this->{'#name'} eq 'Element';

        return if $this->{'#name'} eq 'Element';

        my $score = exists $this->{'score'} ? $this->{'score'} : 0.0;

        my @node = grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' }

                   grep { exists $_->{'score'} and $_->{'score'} > $score }

                   map { $_->children() } map { $_->children() } $review->{$grp}{'tree'}->children();

        $score = min map { $_->{'score'} } @node;

        @node = grep { $_->{'score'} == $score } @node;

        if (@node) {

            $this = $node[0];
        }
        else {

            $this = $review->{$grp}{'tree'};
        }
    }
    else {

        $this = $root;
    }
}

#bind focus_score_descending to Ctrl+Shift+Down menu Focus Score Descending
sub focus_score_descending {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $review->{$grp}{'tree'} and $review->{$grp}{'zoom'};

    my $node = $this;

    $node = $node->parent() until $node->{'#name'} eq 'Tuple' or $node->{'#name'} eq 'Element';

    my $score = exists $node->{'score'} ? $node->{'score'} : 1.1;

    my @node = grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' }

               grep { exists $_->{'score'} and $_->{'score'} < $score }

               map { $_->children() } map { $_->children() } $review->{$grp}{'tree'}->children();

    $score = max map { $_->{'score'} } @node;

    @node = grep { $_->{'score'} == $score } @node;

    $this = $node[0] if @node;
}

#bind focus_score_preceding to Ctrl+Shift+Left menu Focus Equal Preceding
sub focus_score_preceding {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $review->{$grp}{'tree'} and $review->{$grp}{'zoom'};

    my $node = $this;

    $node = $node->parent() until $node->{'#name'} eq 'Tuple' or $node->{'#name'} eq 'Element';

    return unless exists $node->{'score'};

    my @node = grep { exists $_->{'score'} and $_->{'score'} == $node->{'score'} }

               map { $_->children() } map { $_->children() } $review->{$grp}{'tree'}->children();

    my @view = grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' } @node;

    return unless @view;

    if (@view > 1) {

        @node = reverse @node;

        my ($i) = grep { $node[$_] == $node } 0 .. @node - 1;

        ($this) = grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' } @node[$i - @node + 1 .. @node - 1];
    }
    else {

        $this = $view[0];
    }
}

#bind focus_score_succeeding to Ctrl+Shift+Right menu Focus Equal Succeeding
sub focus_score_succeeding {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $review->{$grp}{'tree'} and $review->{$grp}{'zoom'};

    my $node = $this;

    $node = $node->parent() until $node->{'#name'} eq 'Tuple' or $node->{'#name'} eq 'Element';

    return unless exists $node->{'score'};

    my @node = grep { exists $_->{'score'} and $_->{'score'} == $node->{'score'} }

               map { $_->children() } map { $_->children() } $review->{$grp}{'tree'}->children();

    my @view = grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' } @node;

    return unless @view;

    if (@view > 1) {

        my ($i) = grep { $node[$_] == $node } 0 .. @node - 1;

        ($this) = grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' } @node[$i - @node + 1 .. @node - 1];
    }
    else {

        $this = $view[0];
    }
}

#bind update_morphology to Ctrl+Shift+space menu Update the Annotation
sub update_morphology {

    my @restrict = grep { reftype $_ eq 'ARRAY' } @_;

    my $zoom = $review->{$grp}{'zoom'};

    unless ($zoom) {

        return if $this->{'#name'} eq 'Unit';

        $this = $this->parent() until $this->{'#name'} eq 'Word';

        $review->{$grp}{'zoom'} = $this;
    }

    my $id = join 'e', split 'w', $review->{$grp}{'zoom'}->{'id'};

    if ($review->{$grp}{'data'} and $review->{$grp}{'data'}->{'id'} eq $id
                         and exists $review->{$grp}{'data'}->{'restrict'}) {

        @restrict = ($review->{$grp}{'data'}->{'restrict'}) if not @restrict;
    }

    @restrict = (Treex::PML::Factory->createList()) if not @restrict;

    $review->{$grp}{$_} = undef for 'data', 'tree', 'mode';

    update_zoom_tree();

    my @node = ();

    foreach (@restrict) {

        $review->{$grp}{'data'}->{'restrict'} = $_;

        reflect_restrict();

        push @node, grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' }

                    grep { exists $_->{'score'} and $_->{'score'} > 0.6 }

                    map { $_->children() } map { $_->children() } $review->{$grp}{'data'}->children();
    }

    if (@node) {

        my $score = max map { $_->{'score'} } @node;

        @node = grep { $_->{'score'} == $score } @node;

        foreach (@node) {

            $this = $_;

            annotate_morphology('click') unless $this->{'apply'} > 0;
        }
    }

    unless ($zoom) {

        $this = $review->{$grp}{'zoom'};

        $review->{$grp}{'zoom'} = undef;
    }
}

#bind annotate_morphology_click to Ctrl+space menu Annotate as if by Clicking
sub annotate_morphology_click {

    annotate_morphology('click');
}

#bind switch_review_mode Ctrl+M menu Switch Trees/Lists Mode
sub switch_review_mode {

    ChangingFile(0);

    $this = $review->{$grp}{'maps'}->{$this}[-1] if $review->{$grp}{'mode'} and exists $review->{$grp}{'maps'}->{$this};

    $review->{$grp}{'mode'} = not $review->{$grp}{'mode'};

    update_zoom_tree();

    $this = $review->{$grp}{'maps'}->{$this}[-1] if $review->{$grp}{'mode'} and exists $review->{$grp}{'maps'}->{$this};
}

sub update_zoom_tree {

    return unless $review->{$grp}{'zoom'};

    my $id = join 'e', split 'w', $review->{$grp}{'zoom'}->{'id'};

    unless ($review->{$grp}{'data'} and $review->{$grp}{'data'}->{'id'} eq $id) {

        my ($data) = resolve($review->{$grp}{'zoom'}->{'form'});

        my $node = Treex::PML::Factory->createTypedNode('Element.Lists', PML::Schema());

        $node->{'#name'} = 'Element';

        $node->{'id'} = $id;

        $node = morpholists($data, $node);

        $review->{$grp}{'data'} = $node;

        $review->{$grp}{'expect'} = {};
        $review->{$grp}{'select'} = {};

        score_nodes();
    }

    if ($review->{$grp}{'mode'}) {

        my $node = Treex::PML::Factory->createTypedNode('Element.Trees', PML::Schema());

        $node->{'#name'} = 'Element';

        $node->{'id'} = $id;

        $node = couple($node);

        $review->{$grp}{'tree'} = $node;
    }
    else {

        $review->{$grp}{'tree'} = $review->{$grp}{'data'};
    }
}

sub score_nodes {

    return unless $review->{$grp}{'data'} and $review->{$grp}{'zoom'};

    my $data = $review->{$grp}{'data'};
    my $zoom = $review->{$grp}{'zoom'};

    my @zoom = $zoom->children();

    return unless @zoom;

    my @none  = grep { not exists $_->{'form'} or $_->{'form'} eq '' } @zoom;

    @zoom = @none if @none;

    my @data = map { $_->children() } $data->children();

    foreach my $group (@data) {

        my @tuple = grep { my @t = $_->children(); @t == @{$group->{'data'}[0]} } @zoom;

        foreach my $tuple ($group->children()) {

            my @score = map { compute_score($tuple, $_) } @tuple;

            $tuple->{'score'} = max @score;
        }
    }
}

sub harmonic {

    return 0 if grep { $_ == 0 } @_;

    return @_ / ( reduce { $a + $b } map { 1 / $_ } @_ );
}

sub compute_score {

    my ($node, $done) = @_;

    my (@node, @done, @diff);

    my @score = ();

    my @n = $node->children();
    my @d = $done->children();

    return unless @n == @d;

    my %except = (

        "kAn"   => ['V...-...--', 'V...-...--'],
        "qAl"   => ['V...-...--', 'V...-...--'],
        "lays"  => ['VP.A-...--', 'V...-...--|FN--------'],

        "huwa"  => ['SP---....-', 'S.---....-'],

        "h_a_dA"    => ['SD----...-', 'S.----...-'],
        "_d_alika"  => ['SD----...-', 'S.----...-'],

        "alla_dI"   => ['SR----...-', 'S.----...-'],

        "wa"    => ['C---------', 'C---------'],
        "fa"    => ['C---------', 'C---------'],

        "lA"    => ['F---------', 'FN--------'],
        "lam"   => ['F---------', 'FN--------'],
        "lan"   => ['F---------', 'FN--------'],

        "sa"    => ['F---------', 'F---------'],
        "sawfa" => ['F---------', 'F---------'],
        "qad"   => ['F---------', 'F---------'],

        "hal"   => ['F---------', 'F.--------'],

        "li"    => ['[PCF]---------', '[PCF]---------'],
        "bi"    => ['P---------', 'P---------'],
        "ka"    => ['P---------', 'P---------'],

        "min"   => ['P---------', 'P---------'],
        "`an"   => ['P---------', 'P---------'],
        "ma`a"  => ['PI------.-', 'P---------'],

        "'amAma"    => ['PI------.-', 'P---------'],
        "warA'a"    => ['PI------.-', 'P---------'],
        "_hilAla"   => ['PI------.-', 'P---------'],
        "'a_tnA'a"  => ['PI------.-', 'P---------'],

        "muqAbila"  => ['PI------.-', 'P---------|N-------..'],

        "ba`da"     => ['PI------.-', 'P---------'],
        "qabla"     => ['PI------.-', 'P---------'],
        ".hawla"    => ['PI------.-', 'P---------'],
        "ta.hta"    => ['PI------.-', 'P---------'],
        "fawqa"     => ['PI------.-', 'P---------'],

        "mi_tla"    => ['PI------.-', 'P---------|N-------..'],
        "wifqa"     => ['PI------.-', 'P---------'],

        "mun_du"    => ['P---------', 'P---------'],

        ".hay_tu"   => ['C---------', 'D---------'],

        "l_akin"    => ['C---------', 'C---------'],
        "l_akinna"  => ['C---------', 'C---------'],

        "fImA"      => ['C---------', 'C---------'],

        "faqa.t"    => ['D---------', 'D---------'],

        "hunA"      => ['D---------', 'D---------'],
        "hunAka"    => ['D---------', 'D---------'],

        ".gayr" => ['N------S..', 'FN------..|N-------..'],

            );

    for (my $i = 0; $i < @n; $i++) {

        my %score = ();

        @node = split //, $n[$i]->{'tag'};
        @done = split //, $d[$i]->{'note'} || $d[$i]->{'tag'};

        $node[4] = $node[0];
        $done[4] = $done[0];

        if ($node[0] eq 'V') {

            $node[$_] = $done[$_] eq '-' ? '-' : $node[$_] foreach 2 .. 3;
        }
        elsif ($node[0] eq 'N') {

            $done[-4] = '-';

            $node[$_] = $done[$_] eq '-' ? '-' : $node[$_] foreach -3 .. -1;
        }
        elsif ($node[0] eq 'A') {

            $node[$_] = $done[$_] eq '-' ? '-' : $node[$_] foreach -4 .. -1;
        }
        elsif ($node[0] eq 'Q') {

            $done[0] = 'Q';
            $done[4] = 'Q';

            $done[-4] = '-';

            $node[$_] = $done[$_] eq '-' ? '-' : $node[$_] foreach 1, -4 .. -1;
            $done[$_] = $node[$_] eq '-' ? '-' : $done[$_] foreach 1, -4 .. -1;
        }
        elsif ($node[0] eq 'S') {

            $node[$_] = $done[$_] eq '-' ? '-' : $node[$_] foreach 1, -5 .. -1;
            $done[$_] = $node[$_] eq '-' ? '-' : $done[$_] foreach 1, -5 .. -1;
        }
        elsif ($node[0] eq 'P') {

            $done[0] = 'P';
            $done[4] = 'P';

            $node[$_] = $done[$_] eq '-' ? '-' : $node[$_] foreach 1, -2;
        }
        elsif ($node[0] eq 'F' and $done[0] eq 'F') {

            $done[1] = '-';
        }
        elsif ($node[0] eq 'X' and $done[0] eq 'Z') {

            $done[0] = 'X';
            $done[4] = 'X';

            $done[-1] = '-';
        }

        for (my $j = 0; $j < @node; $j++) {

            $score{'tag'} += $node[$j] eq $done[$j] ? 1.0 : $node[$j] eq '-' || $done[$j] eq '-' ? 0.5 : 0.0;
        }

        $score{'tag'} /= @node || $dims;

        @node = split //, normalize $n[$i]->{'form'} =~ /\p{InArabic}/ ? $n[$i]->{'form'} : ElixirFM::orth $n[$i]->{'form'};
        @done = split //, normalize $d[$i]->{'form'} =~ /\p{InArabic}/ ? $d[$i]->{'form'} : ElixirFM::orth $d[$i]->{'form'};

        @diff = Algorithm::Diff::LCS([@node], [@done]);

        $score{'form'} = @node + @done == 0 ? 1.0 : 2 * @diff / (@node + @done);

        my $group = $node->parent()->{'data'}[0][$i][1];

        @node = split //, normalize $group->{'form'}  =~ /\p{InArabic}/ ? $group->{'form'}  : ElixirFM::orth $group->{'form'};
        @done = split //, normalize $d[$i]->{'lemma'} =~ /\p{InArabic}/ ? $d[$i]->{'lemma'} : ElixirFM::orth $d[$i]->{'lemma'};

        @diff = Algorithm::Diff::LCS([@node], [@done]);

        $score{'lemma'} = @node + @done == 0 ? 1.0 : 2 * @diff / (@node + @done);

        @node = exists $group->{'cite'} && exists $group->{'cite'}{'reflex'} ? sort @{$group->{'cite'}{'reflex'}} : ();
        @done = exists $d[$i]->{'cite'} && exists $d[$i]->{'cite'}{'reflex'} ? sort @{$d[$i]->{'cite'}{'reflex'}} : ();

        @node = split '', join " ", @node;
        @done = split '', join " ", @done;

        @diff = Algorithm::Diff::LCS([@node], [@done]);

        $score{'reflex'} = @done ? 2 * @diff / (@node + @done) : 1.0;

        if (exists $d[$i]->{'sense'} and $d[$i]->{'sense'} ne '') {

            @done = sort split /[\/\:]/, $d[$i]->{'sense'};

            @done = split '', join " ", @done;

            @diff = Algorithm::Diff::LCS([@node], [@done]);

            $score{'sense'} = @done ? 2 * @diff / (@node + @done) : 1.0;
        }

        if (exists $except{$group->{'form'}} and $n[$i]->{'tag'} =~ /^(?:$except{$group->{'form'}}->[0])$/
                                             and $d[$i]->{'tag'} =~ /^(?:$except{$group->{'form'}}->[1])$/) {

            delete $score{'reflex'};
            delete $score{'sense'};
            delete $score{'lemma'};
        }

        if ($n[$i]->{'tag'} =~ /^Q[^IU]..-.....$/) {

            delete $score{'reflex'};
            delete $score{'sense'};
            delete $score{'lemma'};
        }

        # $score{'reflex'} = @node + @done == 0 ? 1 : 2 * @diff / (@node + @done);

        # $score[$i] = reduce { $a * $b } map { $score{$_} } keys %score;

        $score[$i] = harmonic values %score;
    }

    return harmonic @score;
}

#bind switch_either_context Shift+space menu Switch Either Context
sub switch_either_context {

    $Redraw = 'win';

    ChangingFile(0);

    if ($review->{$grp}{'zoom'}) {

        $this = $review->{$grp}{'zoom'};

        $review->{$grp}{'zoom'} = undef;
    }
    else {

        return if $this->{'#name'} eq 'Unit';

        $this = $this->parent() until $this->{'#name'} eq 'Word';

        $review->{$grp}{'zoom'} = $this;

        update_zoom_tree();
    }
}


my %binding = map { $_ => OverrideBuiltinBinding('*', $_) } "Prior", "Next";

OverrideBuiltinBinding(__PACKAGE__, "Prior", [ sub {

        $grp = $_[1]->{'focusedWindow'};

        if ($review->{$grp}{'zoom'}) {

            my $node = $review->{$grp}{'zoom'}->lbrother();

            if ($node) {

                $review->{$grp}{'zoom'} = $node;

                update_zoom_tree();

                $this = $review->{$grp}{'tree'};

                Redraw();
            }

            Tk->break;
        }
        else {

            $binding{"Prior"}->[0](@_);
        }

    }, 'Display Previous Tree / Word' ]);

OverrideBuiltinBinding(__PACKAGE__, "Next", [ sub {

        $grp = $_[1]->{'focusedWindow'};

        if ($review->{$grp}{'zoom'}) {

            my $node = $review->{$grp}{'zoom'}->rbrother();

            if ($node) {

                $review->{$grp}{'zoom'} = $node;

                update_zoom_tree();

                $this = $review->{$grp}{'tree'};

                Redraw();
            }

            Tk->break;
        }
        else {

            $binding{"Next"}->[0](@_);
        }

    }, 'Display Next Tree / Word' ]);


#bind move_to_prev_paragraph Shift+Prior menu Move to Prev Paragraph
sub move_to_prev_paragraph {

    PrevTree();

    move_word_end();

    $review->{$grp}{'zoom'} = $this;

    update_zoom_tree();

    ChangingFile(0);
}

#bind move_to_next_paragraph Shift+Next menu Move to Next Paragraph
sub move_to_next_paragraph {

    NextTree() if $review->{$grp}{'zoom'};

    move_word_home();

    $review->{$grp}{'zoom'} = $this;

    update_zoom_tree();

    ChangingFile(0);
}

#bind move_word_home Home menu Move to First Word
sub move_word_home {

    $this = ($root->children())[0];

    if ($review->{$grp}{'zoom'}) {

        $review->{$grp}{'zoom'} = $this;

        update_zoom_tree();
    }

    ChangingFile(0);
}

#bind move_word_end End menu Move to Last Word
sub move_word_end {

    $this = ($root->children())[-1];

    if ($review->{$grp}{'zoom'}) {

        $review->{$grp}{'zoom'} = $this;

        update_zoom_tree();
    }

    ChangingFile(0);
}

OverrideBuiltinBinding(__PACKAGE__, "Shift+Home", [ MacroCallback('move_next_home'), 'Move to First on Level' ]);

#bind move_next_home Shift+Home menu Move to First on Level
sub move_next_home {

    my $node = $this;
    my $level = $node->level();

    my ($done, @children);

    do {

        $done = $node if $level == $node->level();

        $node = PrevVisibleNode($node);
    }
    while $node;

    if ($done == $this and @children = grep { $_->{'hide'} ne 'hide' } $this->children()) {

        $this = $children[0];
    }
    else {

        $this = $done;
    }

    $Redraw = 'none';
    ChangingFile(0);
}

OverrideBuiltinBinding(__PACKAGE__, "Shift+End", [ MacroCallback('move_next_end'), 'Move to Last on Level' ]);

#bind move_next_end Shift+End menu Move to Last on Level
sub move_next_end {

    my $node = $this;
    my $level = $node->level();

    my ($done, @children);

    do {

        $done = $node if $level == $node->level();

        $node = NextVisibleNode($node);
    }
    while $node;

    if ($done == $this and @children = grep { $_->{'hide'} ne 'hide' } $this->children()) {

        $this = $children[-1];
    }
    else {

        $this = $done;
    }

    $Redraw = 'none';
    ChangingFile(0);
}

#bind move_par_home Ctrl+Home menu Move to First Paragraph
sub move_par_home {

    GotoTree(1);

    $review->{$grp}{'zoom'} = undef;

    $Redraw = 'win';
    ChangingFile(0);
}

#bind move_par_end Ctrl+End menu Move to Last Paragraph
sub move_par_end {

    GotoTree($grp->{'FSFile'}->lastTreeNo() + 1);

    $review->{$grp}{'zoom'} = undef;

    $Redraw = 'win';
    ChangingFile(0);
}

sub move_to_fork {

    my $node = $this;
    my (@children);

    while (@children = $node->children()) {

        @children = grep { $_->{'hide'} ne 'hide' } @children;

        last unless @children == 1;

        $node = $children[0];
    }

    $this = $node unless $node == $this;

    $Redraw = 'none';
    ChangingFile(0);
}

#bind follow_apply_up Ctrl+Up menu Follow Annotation Up
sub follow_apply_up {

    $Redraw = 'none';
    ChangingFile(0);

    my $node = $this->parent();

    return unless $node;

    if ($node->{'apply'} > 0) {

        $this = $node;

        return;
    }

    my $level = $node->level();

    my $done = $node;

    { do {

        $node = NextVisibleNode($node) until not $node or $node->level() == $level;
        $done = PrevVisibleNode($done) until not $done or $done->level() == $level;

        if ($node) {

            if ($node->{'apply'} > 0) {

                $this = $node;
                last;
            }

            $node = NextVisibleNode($node);
        }

        if ($done) {

            if ($done->{'apply'} > 0) {

                $this = $done;
                last;
            }

            $done = PrevVisibleNode($done);
        }
    }
    while $node or $done; }
}

#bind follow_apply_down Ctrl+Down menu Follow Annotation Down
sub follow_apply_down {

    my $node = $this;
    my (@children);

    while (@children = $node->children()) {

        @children = grep { $_->{'hide'} ne 'hide' and $_->{'apply'} > 0 } @children;

        last unless @children == 1;

        $node = $children[0];
    }

    $node = $children[0] if @children;

    $this = $node unless $node == $this;

    $Redraw = 'none';
    ChangingFile(0);
}

#bind follow_apply_right Ctrl+Right menu Follow Annotation Right
sub follow_apply_right {

    $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode() ?
        ctrl_currentLeftWholeLevel() :
        ctrl_currentRightWholeLevel();

    $Redraw = 'none';
    ChangingFile(0);
}

#bind follow_apply_left Ctrl+Left menu Follow Annotation Left
sub follow_apply_left {

    $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode() ?
        ctrl_currentRightWholeLevel() :
        ctrl_currentLeftWholeLevel();

    $Redraw = 'none';
    ChangingFile(0);
}

sub ctrl_currentRightWholeLevel {    # modified copy of main::currentRightWholeLevel

    my $node = $this;
    my $level = $node->level();

    do {

        $node = NextVisibleNode($node);
    }
    until not $node or $level == $node->level() and $node->{'apply'} > 0;

    $this = $node if $node;

    ChangingFile(0);
}

sub ctrl_currentLeftWholeLevel {     # modified copy of main::currentLeftWholeLevel

    my $node = $this;
    my $level = $node->level();

    do {

        $node = PrevVisibleNode($node);
    }
    until not $node or $level == $node->level() and $node->{'apply'} > 0;

    $this = $node if $node;

    ChangingFile(0);
}

#bind invoke_undo BackSpace menu Undo Annotate / Restrict
sub invoke_undo {

    warn 'Undoooooing ;)';

    main::undo($grp);
    $this = $grp->{currentNode};

    ChangingFile(0);
}

#bind invoke_redo Shift+BackSpace menu Redo Annotate / Restrict
sub invoke_redo {

    warn 'Redoooooing ;)';

    main::re_do($grp);
    $this = $grp->{currentNode};

    ChangingFile(0);
}

#bind edit_note to exclam menu Edit Annotation Note
sub edit_note {

    return if $review->{$grp}{'zoom'};

    return unless $this->{'#name'} eq 'Token' or $this->{'#name'} eq 'Word';

    if (exists $this->{'note'} and $this->{'note'} ne "") {

        delete $this->{'note'};
    }
    else {

        my $note = main::QueryString($grp->{framegroup}, "Enter the note", 'note');

        $this->{'note'} = $note if defined $note;
    }
}

# ##################################################################################################
#
# ##################################################################################################

#bind display_elixir_lexicon to Ctrl+L menu ElixirFM Lexicon

sub display_elixir_lexicon {

    my $win = $grp;

    open_level_elixir();

    Redraw();

    SetCurrentWindow($win);
}

#bind elixir_dictionary to Ctrl+D menu ElixirFM Dictionary

sub elixir_dictionary {

    my @data = exists $elixir->{'dictionary'} ? keys %{$elixir->{'dictionary'}} : ();

    my ($level, $name, $path, @file) = inter_with_level('elixir');

    return unless defined $level;

    if (@data) {

        open F, '>', $file[1] or return;

        local $\ = "\n";

        print F encode "utf8", $elixir->{'dictionary'}{$_} foreach sort @data;

        close F;
    }
    else {

        open F, '<', -f $file[1] ? $file[1] : $file[2] or return;

        local $/ = undef;

        dictionary($_) foreach ElixirFM::unwords(decode "utf8", <F>);

        close F;
    }
}

sub dictionary {

    my ($text) = @_;

    my (undef, $word) = split /^[\t ]*[:]{3,4}[\t ]+/m, $text;

    $word = join " ", split " ", $word;

    $elixir->{'dictionary'}{$word} = $text;
}

sub resolve {

    elixir_dictionary() unless exists $elixir->{'dictionary'};

    my @word = map { split " " } @_;

    my @need = grep { not exists $elixir->{'resolve'}{$_} } @word;

    my @none = grep { not exists $elixir->{'dictionary'}{$_} } @need;

    if (@none) {

        import ElixirFM::Exec;

        my $none = join " ", @none;

        my $data = ElixirFM::Exec::elixir('resolve', ['--lists'], $none);

        my @data = ElixirFM::unwords $data;

        dictionary($_) foreach @data;
    }

    foreach (@need) {

        my ($data) = exists $elixir->{'dictionary'}{$_}
                        ? ElixirFM::concat ElixirFM::unpretty $elixir->{'dictionary'}{$_}
                        : [[$_]];

        my (undef, @data) = @{$data};

        foreach (@data) {

            my (undef, @data) = @{$_};

            foreach (@data) {

                foreach (@{$_->[0]}) {

                    $_ = [
                            $_->[4],                 #   "qAl"
                            $JSON->decode($_->[5]),  #   "q w l"
                            $_->[6],                 #   "FAL"
                            $_->[2],                 #   "Verb [] [FUL] []"
                            $JSON->decode($_->[1])   #   ["say","tell"]
                         ];
                }
            }
        }

        $elixir->{'resolve'}{$_} = $data;
    }

    return map { $elixir->{'resolve'}{$_} } @word;
}

sub lexeme {

    my $text = $_[0];

    my $data = Treex::PML::Factory->createStructure();

    $data->{'form'} = $text->[0];
    $data->{'root'} = $text->[1];

    $data->{'cite'} = Treex::PML::Factory->createStructure();

    $data->{'cite'}{'morphs'} = $text->[2];
    $data->{'cite'}{'entity'} = entity($text->[3]);
    $data->{'cite'}{'reflex'} = Treex::PML::Factory->createList($text->[4]);

    return $data;
}

sub identity {

    my $data = $_[0];

    my $text = [];

    $text->[0] = $data->{'form'};
    $text->[1] = $data->{'root'};
    $text->[2] = $data->{'cite'}{'morphs'};

    $text->[3] = join " ", $_->[0], ( $_->[0] eq 'Verb' ?

                                        (exists $_->[1]{'pfirst'} ? "[" . ( join ",", @{$_->[1]{'pfirst'}} ) . "]" : "[]",
                                         exists $_->[1]{'imperf'} ? "[" . ( join ",", @{$_->[1]{'imperf'}} ) . "]" : "[]",
                                         exists $_->[1]{'second'} ? "[" . ( join ",", @{$_->[1]{'second'}} ) . "]" : "[]")

                                    : $_->[0] eq 'Noun' ?

                                        (exists $_->[1]{'plural'} ? "[" . ( join ",", @{$_->[1]{'plural'}} ) . "]" : "[]")

                                    : $_->[0] eq 'Adj' || $_->[0] eq 'Num' ?

                                        (exists $_->[1]{'plural'} ? "[" . ( join ",", @{$_->[1]{'plural'}} ) . "]" : "[]",
                                         exists $_->[1]{'femini'} ? "[" . ( join ",", @{$_->[1]{'femini'}} ) . "]" : "[]")

                                    : () )

                                    for $data->{'cite'}{'entity'}[0][0];

    $text->[4] = [ @{$data->{'cite'}{'reflex'}} ];

    return $JSON->encode($text);
}

sub entity {

    my ($text, @text) = split /\s+(?=\[)/, $_[0];

    my $data = Treex::PML::Factory->createSeq();

    my @data = map { [ grep { $_ ne '' } split /\s*[\[,\]]\s*/, $_ ] } @text;

    if ($text eq 'Verb') {

        $data->push_element($text, Treex::PML::Factory->createStructure());

        $data->[0][0][1]{'pfirst'} = Treex::PML::Factory->createList($data[0]) if @{$data[0]};
        $data->[0][0][1]{'imperf'} = Treex::PML::Factory->createList($data[1]) if @{$data[1]};
        $data->[0][0][1]{'second'} = Treex::PML::Factory->createList($data[2]) if @{$data[2]};
    }
    elsif ($text eq 'Noun') {

        $data->push_element($text, Treex::PML::Factory->createStructure());

        $data->[0][0][1]{'plural'} = Treex::PML::Factory->createList($data[0]) if @{$data[0]};
    }
    elsif ($text eq 'Adj' or $text eq 'Num') {

        $data->push_element($text, Treex::PML::Factory->createStructure());

        $data->[0][0][1]{'plural'} = Treex::PML::Factory->createList($data[0]) if @{$data[0]};
        $data->[0][0][1]{'femini'} = Treex::PML::Factory->createList($data[1]) if @{$data[1]};
    }
    else {

        $data->push_element($text, Treex::PML::Factory->createContainer());
    }

    return $data;
}

#bind elixir_resolve to Ctrl+R menu ElixirFM Resolve

sub elixir_resolve {

    resolve map { $_->{'form'} } $root->children() if $root->{'#name'} eq 'Unit';
}

sub morpholists {

    my ($resolve, $node) = @_;

    my ($form, @data) = @{$resolve};

    $node->{'form'} = $form->[0];

    foreach (reverse @data) {

        my $node = NewSon($node);

        DetermineNodeType($node);

        my (undef, @data) = @{$_};

        foreach (reverse @data) {

            my $node = NewSon($node);

            DetermineNodeType($node);

            my ($data, @data) = @{$_};

            $node->{'data'} = Treex::PML::Factory->createSeq();

            $node->{'data'}->push_element('Lexeme', lexeme($_)) foreach @{$data};

            foreach (reverse @data) {

                my $node = NewSon($node);

                DetermineNodeType($node);

                $node->{'form'} = substr $_->[0][0], 1, -1;

                my (undef, @data) = @{$_};

                foreach (reverse @data) {

                    my $node = NewSon($node);

                    DetermineNodeType($node);

                    $node->{'tag'} = $_->[0];
                    $node->{'form'} = $_->[1];
                    $node->{'morphs'} = $_->[3];
                }
            }

            demode "arabtex", "noneplus";

            $node->{'form'} = join "  ", ElixirFM::nub { $_[0] } map { join " ", map {

                                                ElixirFM::orth $_->{'form'}

                                            } $_->children() } $node->children();

            demode "arabtex", "default";
        }

        $node->{'form'} = join "    ", ElixirFM::nub { $_[0] } map { $_->{'form'} } $node->children();
    }

    return $node;
}

sub relate {

    if (exists $review->{$grp}{'maps'}{$_[0]}) {

        push @{$review->{$grp}{'maps'}{$_[0]}}, $_[1] unless grep { $_ == $_[1] } @{$review->{$grp}{'maps'}{$_[0]}};
    }
    else {

        $review->{$grp}{'maps'}{$_[0]} = [$_[1]];
    }

    if (exists $review->{$grp}{'maps'}{$_[1]}) {

        push @{$review->{$grp}{'maps'}{$_[1]}}, $_[0] unless grep { $_ == $_[0] } @{$review->{$grp}{'maps'}{$_[1]}};
    }
    else {

        $review->{$grp}{'maps'}{$_[1]} = [$_[0]];
    }
}

sub couple {

    my $tree = $_[0];

    my $data = $review->{$grp}{'data'};

    my $hash = {};

    $review->{$grp}{'maps'} = {};

    foreach ($data->children()) {

        foreach my $node ($_->children()) {

            foreach ($node->children()) {

                my @data = $_->children();

                my @form = map { $_->{'form'} } @data;

                my @path;

                demode "arabtex", "noneplus";

                $path[0] = ElixirFM::orth join " ", @form;

                demode "arabtex", "default";

                for (0 .. @data - 1) {

                    $path[1] = $_;

                    $path[2] = identity($node->{'data'}[0][$_][1]);

                    $path[3] = join " ", @{$data[$_]}{'form', 'tag'};

                    if (exists $hash->{$path[0]}[$path[1]]{$path[2]}{$path[3]}) {

                        push @{$hash->{$path[0]}[$path[1]]{$path[2]}{$path[3]}}, $data[$_];
                    }
                    else {

                        $hash->{$path[0]}[$path[1]]{$path[2]}{$path[3]} = [$data[$_]];
                    }
                }
            }
        }
    }

    foreach my $p (sort { $b =~ tr/ / / <=> $a =~ tr/ / / or $b cmp $a } keys %{$hash}) {

        my $node = NewSon($tree);

        DetermineNodeType($node);

        $node->{'form'} = $p;

        my $done = $node;

        foreach my $c (reverse 0 .. @{$hash->{$p}} - 1) {

            my $node = NewSon($done);

            DetermineNodeType($node);

            my $component = $node;

            my $done = $node;

            foreach my $l (reverse sort keys %{$hash->{$p}[$c]}) {

                my $node = NewSon($done);

                DetermineNodeType($node);

                my $lexeme = lexeme($JSON->decode($l));

                $node->{$_} = $lexeme->{$_} foreach 'root', 'form', 'cite';

                foreach my $t (sort keys %{$hash->{$p}[$c]{$l}}) {

                    my $node = NewSon($node);

                    DetermineNodeType($node);

                    my $data = $hash->{$p}[$c]{$l}{$t};

                    $node->{$_} = $data->[-1]{$_} foreach 'morphs', 'form', 'tag';

                    my $score = max map { exists $_->parent()->{'score'} ? $_->parent()->{'score'} : 0 } @{$data};

                    $node->{'score'} = $score if $score > 0;

                    unless (exists $component->{'form'}) {

                        demode "arabtex", "noneplus";

                        $component->{'form'} = ElixirFM::orth $node->{'form'};

                        demode "arabtex", "default";
                    }

                    relate($_, $node) foreach @{$data};
                }
            }
        }
    }

    $tree->{'form'} = $data->{'form'};

    $review->{$grp}{'tree'} = $tree;

    relate($review->{$grp}{'data'}, $review->{$grp}{'tree'});

    return $tree;
}

sub morphotrees {

    my ($resolve, $done) = @_;

    my $tree = {};

    # my $element;

    my ($form, @data) = @{$resolve};

    $done->{'form'} = $form->[0];

    foreach (@data) {

        # my $partition;

        my (undef, @data) = @{$_};

        foreach (@data) {

            # my $group;

            my ($node, @data) = @{$_};

            foreach (@data) {

                # my $reading;

                my (undef, @data) = @{$_};

                my @form = map { $_->[1] } @data;

                my @path;

                demode "arabtex", "noneplus";

                $path[0] = ElixirFM::orth join " ", @form;

                demode "arabtex", "default";

                for (0 .. @data - 1) {

                    # my $token;

                    $path[1] = $_;

                    $path[2] = $node->[$_][0];

                    $path[3] = join " ", @{$data[$_]}[3, 0];

                    $tree->{$path[0]}[$path[1]]{$path[2]}{$path[3]} = $data[$_];
                }
            }
        }
    }

    foreach my $p (sort { $b =~ tr/ / / <=> $a =~ tr/ / / or $b cmp $a } keys %{$tree}) {

        my $node = NewSon($done);

        DetermineNodeType($node);

        $node->{'form'} = $p;

        my $done = $node;

        foreach my $c (reverse 0 .. @{$tree->{$p}} - 1) {

            my $node = NewSon($done);

            DetermineNodeType($node);

            my $component = $node;

            my $done = $node;

            foreach my $l (reverse sort keys %{$tree->{$p}[$c]}) {

                my $node = NewSon($done);

                DetermineNodeType($node);

                $node->{'form'} = $l;

                my $lexeme = lexicon($l);

                $node->{'root'} = $lexeme->{'root'};

                $node->{'cite'} = Treex::PML::Factory->createStructure();

                $node->{'cite'}{$_} = $lexeme->{'cite'}{$_} foreach 'morphs', 'entity', 'reflex';

                foreach my $t (sort keys %{$tree->{$p}[$c]{$l}}) {

                    my $node = NewSon($node);

                    DetermineNodeType($node);

                    my $token = $tree->{$p}[$c]{$l}{$t};

                    $node->{'tag'} = $token->[0];
                    $node->{'form'} = $token->[1];
                    $node->{'morphs'} = $token->[3];

                    unless (exists $component->{'form'}) {

                        demode "arabtex", "noneplus";

                        $component->{'form'} = ElixirFM::orth $node->{'form'};

                        demode "arabtex", "default";
                    }
                }
            }
        }
    }

    return $done;
}

# ##################################################################################################
#
# ##################################################################################################

#bind annotate_morphology to space menu Annotate Morphology
sub annotate_morphology {

    $Redraw = 'win';

    ChangingFile(0);

    unless ($review->{$grp}{'zoom'}) {

        switch_either_context();

        return;
    }

    # indicated below when the file or the redraw mode actually change

    my ($quick, @tips) = @_;

    $quick = undef unless $quick eq 'click';

    my (@children, $diff, $done, $word);

    my $node = $this;

    if ($review->{$grp}{'mode'}) {

        while (@children = $node->children()) {

            @children = grep { $_->{'hide'} ne 'hide' and ( not defined $_->{'tips'} or $_->{'tips'} > 0 ) } @children;

            last unless @children == 1;

            $node = $children[0];
        }

        unless (@children) {

            if ($node->{'#name'} eq 'Token') {

                $diff = $node->{'apply'} == 0 ? 1 : $node == $this ? -1 : 0;

                $done = $node;

                $node->{'apply'} += $diff;

                while ($node = $node->parent()) {

                    if ($node->{'#name'} eq 'Partition') {

                        @children = grep { $_->{'apply'} < 1 } $node->children();

                        if ($diff == -1) {

                            last if not @children or not $node->{'apply'} == 1;
                        }
                        else {

                            last if @children or $node->{'apply'} == 1;
                        }
                    }

                    $node->{'apply'} += $diff;
                }

                reflect_choice($done, $diff);

                $Redraw = 'tree';

                ChangingFile(1);

                unless ($diff == -1) {

                    if (@children) {

                        $this = defined $tips[0] && ( grep { $tips[0] == $_ } @children ) ? $tips[0] : $children[0];

                        remove_inherited_restrict() if defined $this->{'tips'} and $this->{'tips'} == 0;

                        # annotate_morphology($quick);
                    }
                    elsif (not $quick) {

                        $node = $review->{$grp}{'zoom'}->rbrother();

                        if ($node) {

                            $review->{$grp}{'zoom'} = $node;

                            update_zoom_tree();

                            $this = $review->{$grp}{'tree'};
                        }
                    }
                }
            }
        }
        else {

            $this = defined $tips[0] && ( grep { $tips[0] == $_ } @children ) ? $tips[0] : $children[0];
        }
    }
    else {

        while ($node->{'#name'} ne 'Tuple' and @children = $node->children()) {

            @children = grep { $_->{'hide'} ne 'hide' } @children;

            last unless @children == 1;

            $node = $children[0];
        }

        $node = $node->parent() if $node->{'#name'} eq 'Token';

        if ($node->{'#name'} eq 'Tuple') {

            $diff = $node->{'apply'} == 0 ? 1 : -1;

            reflect_tuple($node, $diff);

            $Redraw = 'tree';

            ChangingFile(1);

            if ($diff == 1 and not $quick) {

                $node = $review->{$grp}{'zoom'}->rbrother();

                if ($node) {

                    $review->{$grp}{'zoom'} = $node;

                    update_zoom_tree();

                    $this = $review->{$grp}{'tree'};
                }
            }
        }
        else {

            $this = $children[0] if @children;
        }
    }
}


sub reflect_choice {

    my $node = $_[0];

    my $expect = $review->{$grp}{'expect'};
    my $select = $review->{$grp}{'select'};

    my %tuple = map { $_->parent(), $_->parent() } @{$review->{$grp}{'maps'}{$node}};

    foreach (keys %{$expect}) {

        delete $expect->{$_} unless exists $tuple{$_};
    }

    unless (keys %{$expect}) {

        $expect->{$_} = $tuple{$_} foreach keys %tuple;
    }

    my @expect = keys %{$expect};

    if (@expect == 1) {

        if (exists $select->{$expect[-1]}) {

            delete $select->{$expect[-1]};

            reflect_tuple($tuple{$expect[-1]}, -1);
        }
        else {

            $select->{$expect[-1]} = 1;

            reflect_tuple($tuple{$expect[-1]}, 1);
        }

        delete $expect->{$expect[-1]};
    }
}


sub reflect_tuple {

    my ($done, $diff) = @_;

    my $node = $done;

    $node->{'apply'} += $diff;

    $node->{'apply'} += $diff while $node = $node->following($done);

    $node = $done;

    $node->{'apply'} += $diff while $node = $node->parent();

    my $zoom = $review->{$grp}{'zoom'};

    foreach ($zoom->children()) {

        next unless exists $done->{'score'} and $done->{'score'} == 1.0 or
                    exists $_->{'form'} and $_->{'form'} ne '';

        CutNode($_);
    }

    my $data = $review->{$grp}{'data'};

    my @tuple = grep { $_->{'apply'} > 0 } map { $_->children() }
                grep { $_->{'apply'} > 0 } map { $_->children() } $data->children();

    for (my $i = @tuple; $i > 0; $i--) {

        my $tuple = NewSon($zoom);

        DetermineNodeType($tuple);

        $tuple->{'form'} = $tuple[$i - 1]->{'form'};

        my @group = map { $_->[1] } @{$tuple[$i - 1]->parent()->{'data'}[0]};

        my @token = $tuple[$i - 1]->children();

        for (my $j = @token; $j > 0; $j--) {

            my $token = NewSon($tuple);

            $token->{'#name'} = 'Token';

            DetermineNodeType($token);

            $token->{$_} = $token[$j - 1]{$_} foreach 'morphs', 'tag', 'form', 'note', 'sense', 'score';

            $token->{$_} = $group[$j - 1]{$_} foreach 'root', 'cite';

            $token->{'lemma'} = $group[$j - 1]{'form'};

            $token->{'id'} = $zoom->{'id'} . 't' . $j . (@tuple > 1 ? '-' . $i : '');
        }
    }

    return $zoom;
}


sub comply {

    my @restrict = split //, length $_[0] == $dims ? $_[0] : '-' x $dims;
    my @inherit = split //, $_[1];

    return not grep { $restrict[$_] ne '-' && defined $inherit[$_] &&
                      $inherit[$_] ne '-' && $restrict[$_] ne $inherit[$_] } 0 .. @restrict - 1;
}


sub restrict {

    my @restrict = split //, length $_[0] == $dims ? $_[0] : '-' x $dims;
    my @inherit = split //, $_[1];

    return join '', map { $restrict[$_] eq '-' && defined $inherit[$_] ? $inherit[$_] : $restrict[$_] } 0 .. @restrict - 1;
}


sub restrict_hide {

    ChangingFile(0);

    return unless $review->{$grp}{'zoom'};

    $Redraw = 'win';

    ChangingFile(1);

    if ($review->{$grp}{'mode'}) {

        restrict_hide_morphotrees(@_);
    }
    else {

        restrict_hide_morpholists(@_);
    }
}


sub restrict_hide_morpholists {

    ChangingFile(0);

    return if $review->{$grp}{'mode'};

    my $restrict = $_[0];

    my $node = $review->{$grp}{'data'};

    $node->{'current'} = 0 unless exists $node->{'current'};

    $node->{'restrict'} = Treex::PML::Factory->createList(['-' x $dims]) unless exists $node->{'restrict'} and @{$node->{'restrict'}};

    $node->{'current'} = exists $node->{'current'} ? $node->{'current'} % @{$node->{'restrict'}} : 0;

    if ($restrict eq '-' x $dims) {

        my $clear = 'clear';

        foreach (@{$node->{'restrict'}}) {

            next if $_ eq '-' x $dims;

            $_ = '-' x $dims;

            $clear = '';
        }

        if ($clear) {

            delete $node->{'restrict'};
            delete $node->{'current'};
        }
    }
    elsif ($restrict eq '') {

        if ($node->{'restrict'}[$node->{'current'}] eq '-' x $dims) {

            splice @{$node->{'restrict'}}, $node->{'current'}, 1;

            if (@{$node->{'restrict'}}) {

                $node->{'current'} = @{$node->{'restrict'}} - 1 unless $node->{'current'} < @{$node->{'restrict'}};
            }
            else {

                delete $node->{'restrict'};
                delete $node->{'current'};
            }
        }
        else {

            $node->{'restrict'}[$node->{'current'}] = '-' x $dims;
        }
    }
    else {

        $node->{'restrict'}[$node->{'current'}] = restrict($restrict, $node->{'restrict'}[$node->{'current'}]);
    }

    reflect_restrict();
}


sub reflect_restrict {

    return unless $review->{$grp}{'zoom'};

    my $node = $review->{$grp}{'data'};

    my $list = exists $node->{'restrict'} ? $node->{'restrict'} : [];

    foreach ($node->children()) {

        foreach ($_->children()) {

            foreach ($_->children()) {

                my @tags = map { $_->{'tag'} } $_->children();

                my $hide = restrict_comply($list, @tags) ? '' : 'hide';

                $_->{'hide'} = $hide foreach $_->children(), $_;
            }

            $_->{'hide'} = (grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' } $_->children()) ? '' : 'hide';
        }

        $_->{'hide'} = (grep { not exists $_->{'hide'} or $_->{'hide'} ne 'hide' } $_->children()) ? '' : 'hide';
    }

    $Redraw = 'win';

    ChangingFile(1);
}


sub restrict_comply {

    my ($list, @tags) = @_;

    return unless defined $list and reftype $list eq 'ARRAY';

    return if @{$list} > @tags;

    my $any = '';

    for (my $i = 0; $i <= @tags - @{$list} and not $any; $i++) {

        my $all = 'all';

        for (my $j = 0; $j < @{$list} and $all; $j++) {

            $all = '' unless comply($list->[$j], $tags[$i + $j]);
        }

        $any = 'any' if $all eq 'all';
    }

    return $any eq 'any';
}


sub restrict_hide_morphotrees {

    my $restrict = $_[0];

    my $node = $this->{'#name'} eq 'Token' ? $this->parent() : $this;
    my $roof = $node;

    my (@tips, %tips, $orig, $diff, $clear);

    if ($restrict eq '-' x $dims) {

        $node->{'restrict'} = $restrict;

        $node->{'inherit'} = '';
    }
    elsif ($restrict eq '') {

        if ($node->{'restrict'} eq '') {

            $clear = 'clear';
        }
        else {

            $node->{'restrict'} = $restrict;

            if ($node->parent()) {

                $node->{'inherit'} = restrict($node->parent()->{'restrict'}, $node->parent()->{'inherit'});
                $node->{'inherit'} = '' if $node->{'inherit'} eq '-' x $dims;
            }
            else {

                $node->{'inherit'} = '';
            }
        }
    }
    else {

        $node->{'restrict'} = restrict($restrict, $node->{'restrict'});
    }

    while ($node = $node->following($roof)) {

        if ($clear eq 'clear') {

            $node->{'restrict'} = '';
            $node->{'inherit'} = $node->parent()->{'inherit'};
        }
        else {

            $node->{'inherit'} = restrict($node->parent()->{'restrict'}, $node->parent()->{'inherit'});
            $node->{'inherit'} = '' if $node->{'inherit'} eq '-' x $dims;
        }

        if ($node->{'#name'} eq 'Token') {

            if (restrict($node->{'inherit'}, $node->{'tag'}) ne $node->{'tag'}) {

                $node->{'hide'} = 'hide';
            }
            else {

                $node->{'hide'} = '';
                unshift @tips, $node;
            }
        }
        else {

            $node->{'hide'} = $option->{$grp}{'hide'} ? 'hide' : '';
            $node->{'tips'} = 0;
        }
    }

    $orig = defined $roof->{'tips'} && $roof->{'tips'} == 0 ? 0 : 1;
    $roof->{'tips'} = 0;

    while ($node = shift @tips) {

        next if $node == $roof;

        $node->{'hide'} = '';

        $node->parent()->{'tips'}++ unless $node->{'hide'} eq 'hide' or defined $node->{'tips'} and $node->{'tips'} == 0;
        $tips{$node->parent()} = $node->parent();

        unless (@tips) {

            @tips = values %tips;
            %tips = ();
        }
    }

    $node = $roof;

    { do {

        last if $node == $review->{$grp}{'tree'};   # ~~ # $root->parent(), $this->following() etc. are defined # ~~ # never hide the root

        $node->{'hide'} = $option->{$grp}{'hide'} && $node->{'tips'} == 0 ? 'hide' : '';

        if (defined $node->parent()->{'tips'}) {    # optimizing, if this is necessary ^^

            $diff = ( $node->{'tips'} > 0 ? 1 : 0 ) - $orig;
            $orig = $node->parent()->{'tips'} > 0 ? 1 : 0;
            $node->parent()->{'tips'} += $diff;
        }
        else {

            $orig = 1;
            $node->parent()->{'tips'} = grep { not defined $_->{'tips'} or $_->{'tips'} > 0 } $node->parent()->children();
        }
    }
    while $node = $node->parent(); }

    ($this, @tips) = ($roof, $this);

    annotate_morphology(undef, @tips) if $this->{'tips'} > 0 and $restrict ne '' and $restrict ne '-' x $dims;
}


#bind remove_induced_restrict Escape menu Remove Induced Restrict
sub remove_induced_restrict {

    restrict_hide('');
}


#bind remove_inherited_restrict Shift+Escape menu Remove Inherited Restrict
sub remove_inherited_restrict {

    restrict_hide('-' x $dims);
}

#bind restrict_after plus
sub restrict_after {

    return if $review->{$grp}{'mode'};

    my $node = $this->root();

    if (exists $node->{'restrict'} and @{$node->{'restrict'}}) {

        $node->{'current'} = exists $node->{'current'} ? $node->{'current'} + 1 : @{$node->{'restrict'}};

        splice @{$node->{'restrict'}}, $node->{'current'}, 0, '-' x $dims;
    }
    else {

        $node->{'restrict'} = Treex::PML::Factory->createList(['-' x $dims, '-' x $dims]);

        $node->{'current'} = 1;
    }

    reflect_restrict();
}

#bind restrict_before underscore
sub restrict_before {

    return if $review->{$grp}{'mode'};

    my $node = $this->root();

    if (exists $node->{'restrict'} and @{$node->{'restrict'}}) {

        $node->{'current'} = 0 unless exists $node->{'current'};

        splice @{$node->{'restrict'}}, $node->{'current'}, 0, '-' x $dims;
    }
    else {

        $node->{'restrict'} = Treex::PML::Factory->createList(['-' x $dims, '-' x $dims]);

        $node->{'current'} = 0;
    }

    reflect_restrict();
}

#bind restrict_plus equal menu Token Index Plus
sub restrict_plus {

    return if $review->{$grp}{'mode'};

    my $node = $this->root();

    if (exists $node->{'restrict'} and @{$node->{'restrict'}}) {

        $node->{'current'} = exists $node->{'current'} ? $node->{'current'} + 1 : 0;

        $node->{'current'} %= @{$node->{'restrict'}};
    }
    else {

        $node->{'restrict'} = Treex::PML::Factory->createList(['-' x $dims]);

        $node->{'current'} = 0;
    }
}

#bind restrict_minus minus menu Token Index Minus
sub restrict_minus {

    return if $review->{$grp}{'mode'};

    my $node = $this->root();

    if (exists $node->{'restrict'} and @{$node->{'restrict'}}) {

        $node->{'current'} = exists $node->{'current'} ? $node->{'current'} - 1 : -1;

        $node->{'current'} %= @{$node->{'restrict'}};
    }
    else {

        $node->{'restrict'} = Treex::PML::Factory->createList(['-' x $dims]);

        $node->{'current'} = 0;
    }
}

#bind tree_hide_mode Ctrl+equal menu Toggle Tree Hide Mode
sub tree_hide_mode {

    if ($review->{$grp}{'zoom'}) {

        $option->{$grp}{'hide'} = not $option->{$grp}{'hide'};
    }
    else {

        $option->{$grp}{'show'} = not $option->{$grp}{'show'};
    }

    ChangingFile(0);
}

# ##################################################################################################
#
# ##################################################################################################

#bind delete_subtree Ctrl+d menu Edit: Delete Subtree
sub delete_subtree {

    ChangingFile(0);

    my $node = $this;

    $node = $node->parent() if not $review->{$grp}{'zoom'} and $node->{'#name'} eq 'Token';

    my $done = $node->rbrother() || $node->lbrother() || $node->parent();

    return unless defined $done;

    CutNode($node);

    $this = $done;

    ChangingFile(1);
}

#bind delete_neighbors Ctrl+D menu Edit: Delete Neighbors
sub delete_neighbors {

    ChangingFile(0);

    my $node = $this;

    $node = $node->parent() if not $review->{$grp}{'zoom'} and $node->{'#name'} eq 'Token';

    my @node = grep { $_ != $node } $node->parent()->children();

    return unless @node;

    CutNode($_) foreach @node;

    ChangingFile(1);
}

#bind cut_subtree Ctrl+x menu Edit: Cut Subtree
sub cut_subtree {

    ChangingFile(0);

    my $node = $this;

    $node = $node->parent() if not $review->{$grp}{'zoom'} and $node->{'#name'} eq 'Token';

    my $done = $node->rbrother() || $node->lbrother() || $node->parent();

    return unless defined $done;

    $TredMacro::nodeClipboard = CutNode($node);

    $this = $done;

    ChangingFile(1);
}

#bind paste_subtree Ctrl+v menu Edit: Paste Subtree
sub paste_subtree {

    ChangingFile(0);

    return unless defined $TredMacro::nodeClipboard;

    my $node = $this;

    $node = $node->parent() if not $review->{$grp}{'zoom'} and $node->{'#name'} eq 'Token';

    if (not $node->test_child_type($TredMacro::nodeClipboard) and
        $node->parent() and
        $node->parent()->test_child_type($TredMacro::nodeClipboard)) {

        PasteNodeAfter($TredMacro::nodeClipboard, $node);

        $TredMacro::nodeClipboard = undef;
    }
    else {

        TredMacro::PasteFromClipboard();
    }

    ChangingFile(1);
}

#bind copy_subtree Ctrl+c menu Edit: Copy Subtree
sub copy_subtree {

    my $node = $this;

    $node = $node->parent() if not $review->{$grp}{'zoom'} and $node->{'#name'} eq 'Token';

    $TredMacro::nodeClipboard = CloneSubtree($node);
}


#bind restrict_verb v menu Restrict Verb
sub restrict_verb {
    restrict_hide('V---------');
}

#bind restrict_noun n menu Restrict Noun
sub restrict_noun {
    restrict_hide('N---------');
}

#bind restrict_adj a menu Restrict Adjective
sub restrict_adj {
    restrict_hide('A---------');
}

#bind restrict_pron s menu Restrict Pronoun
sub restrict_pron {
    restrict_hide('S---------');
}

#bind restrict_num q menu Restrict Numeral
sub restrict_num {
    restrict_hide('Q---------');
}

#bind restrict_adv D menu Restrict Adverb
sub restrict_adv {
    restrict_hide('D---------');
}

#bind restrict_prep p menu Restrict Preposition
sub restrict_prep {
    restrict_hide('P---------');
}

#bind restrict_conj c menu Restrict Conjunction
sub restrict_conj {
    restrict_hide('C---------');
}

#bind restrict_part f menu Restrict Particle
sub restrict_part {
    restrict_hide('F---------');
}

#bind restrict_intj j menu Restrict Interjection
sub restrict_intj {
    restrict_hide('I---------');
}

#bind restrict_xtra x menu Restrict Xtra
sub restrict_xtra {
    restrict_hide('X---------');
}

#bind restrict_ynit y menu Restrict Ynit
sub restrict_ynit {
    restrict_hide('Y---------');
}

#bind restrict_zero z menu Restrict Zero
sub restrict_zero {
    restrict_hide('Z---------');
}

#bind restrict_grph g menu Restrict Grph
sub restrict_grph {
    restrict_hide('G---------');
}

#bind restrict_perfect P menu Restrict Verb Perfective
sub restrict_perfect {
    restrict_hide('-P--------');
}

#bind restrict_imperfect Ctrl+i menu Restrict Verb Imperfective
sub restrict_imperfect {
    restrict_hide('-I--------');
}

#bind restrict_imperative Ctrl+c menu Restrict Verb Imperative
sub restrict_imperative {

    if ($review->{$grp}{'zoom'}) {

        restrict_hide('-C--------');
    }
    else {

        copy_subtree();
    }
}

#bind restrict_two Y menu Restrict Numeral Two
sub restrict_two {
    restrict_hide('-Y--------');
}

#bind restrict_three V menu Restrict Numeral Three
sub restrict_three {
    restrict_hide('-V--------');
}

#bind restrict_ten X menu Restrict Numeral Ten
sub restrict_ten {
    restrict_hide('-X--------');
}

#bind restrict_teen u menu Restrict Numeral Teen
sub restrict_teen {
    restrict_hide('-U--------');
}

#bind restrict_twenty l menu Restrict Numeral Twenty
sub restrict_twenty {
    restrict_hide('-L--------');
}

#bind restrict_thousand m menu Restrict Numeral Thousand
sub restrict_thousand {
    restrict_hide('-M--------');
}

#bind restrict_demo M menu Restrict Pronoun Demonstrative
sub restrict_demo {
    restrict_hide('-D--------');
}

#bind restrict_relative R menu Restrict Pronoun Relative
sub restrict_relative {
    restrict_hide('-R--------');
}

#bind restrict_indicative I menu Restrict Mood Indicative
sub restrict_indicative {
    restrict_hide('--I-------');
}

#bind restrict_subjunctive S menu Restrict Mood Subjunctive
sub restrict_subjunctive {
    restrict_hide('--S-------');
}

#bind restrict_jussive J menu Restrict Mood Jussive
sub restrict_jussive {
    restrict_hide('--J-------');
}

#bind restrict_energetic E menu Restrict Mood Energetic
sub restrict_energetic {
    restrict_hide('--E-------');
}

#bind restrict_active Ctrl+a menu Restrict Voice Active
sub restrict_active {
    restrict_hide('---A------');
}

#bind restrict_passive Ctrl+v menu Restrict Voice Passive
sub restrict_passive {

    if ($review->{$grp}{'zoom'}) {

        restrict_hide('---P------');
    }
    else {

        paste_subtree();
    }
}

#bind restrict_first Ctrl+1 menu Restrict Person First
sub restrict_first {
    restrict_hide('-----1----');
}

#bind restrict_second Ctrl+2 menu Restrict Person Second
sub restrict_second {
    restrict_hide('-----2----');
}

#bind restrict_third Ctrl+3 menu Restrict Person Third
sub restrict_third {
    restrict_hide('-----3----');
}

#bind restrict_third_prime 3 menu Restrict Person Third ;)
sub restrict_third_prime {
    restrict_hide('-----3----');
}

#bind restrict_masculine Ctrl+m menu Restrict Gender Masculine
sub restrict_masculine {
    restrict_hide('------M---');
}

#bind restrict_feminine Ctrl+f menu Restrict Gender Feminine
sub restrict_feminine {
    restrict_hide('------F---');
}

#bind restrict_singular Ctrl+s menu Restrict Number Singular
sub restrict_singular {
    restrict_hide('-------S--');
}

#bind restrict_dual Ctrl+d menu Restrict Number Dual
sub restrict_dual {

    if ($review->{$grp}{'zoom'}) {

        restrict_hide('-------D--');
    }
    else {

        delete_subtree();
    }
}

#bind restrict_plural Ctrl+p menu Restrict Number Plural
sub restrict_plural {
    restrict_hide('-------P--');
}

#bind restrict_case_nom 1 menu Restrict Case Nominative
sub restrict_case_nom {
    restrict_hide('--------1-');
}

#bind restrict_case_gen 2 menu Restrict Case Genitive
sub restrict_case_gen {
    restrict_hide('--------2-');
}

#bind restrict_case_acc 4 menu Restrict Case Accusative
sub restrict_case_acc {
    restrict_hide('--------4-');
}

#bind restrict_state_i i menu Restrict State Indefinite
sub restrict_state_i {
    restrict_hide('---------I');
}

#bind restrict_state_d d menu Restrict State Definite
sub restrict_state_d {
    restrict_hide('---------D');
}

#bind restrict_state_a A menu Restrict State Absolute
sub restrict_state_a {
    restrict_hide('---------A');
}

#bind restrict_state_r r menu Restrict State Reduced
sub restrict_state_r {
    restrict_hide('---------R');
}

#bind restrict_state_c C menu Restrict State Complex
sub restrict_state_c {
    restrict_hide('---------C');
}

#bind restrict_state_l L menu Restrict State Lifted
sub restrict_state_l {
    restrict_hide('---------L');
}

# ##################################################################################################
#
# ##################################################################################################

sub path (@) {

    return File::Spec->join(@_);
}

sub inter_with_level ($) {

    my ($inter, $level) = ('morpho', $_[0]);

    my (@file, $path, $name, $exts);

    my $file = File::Spec->canonpath(FileName());

    ($name, $path, $exts) = fileparse($file, '.exclude.pml', '.pml');

    ($name, undef, undef) = fileparse($name, ".$inter");

    $file[0] = path $path, $name . ".$inter" . $exts;

    $file[1] = $level eq 'elixir' ? ( path $path, $name . ".$level" . (substr $exts, 0, -3) . "dat" )
                                  : ( path $path, $name . ".$level" . $exts );

    $file[2] = $level eq 'elixir' ? ( path $path, '.elixir.dat' ) :
               $level eq 'words'  ? ( path $path, $name . ".$inter" . $exts )
                                  : ( path $path, $name . ".$level" . $exts );

    $file[3] = $level eq 'elixir' ? ( path TrEd::Extensions::getExtensionsDir(), 'elixir', 'data' )
                                  : ( path $path, $name . ".$inter.pml.anno.pml" );

    unless ($file[0] eq $file) {

        ToplevelFrame()->messageBox (
            -icon => 'warning',
            -message => "This file's name does not fit the directory structure!$fill\n" .
                        "Relocate it to " . $name . ".$inter" . $exts . ".$fill",
            -title => 'Error',
            -type => 'OK',
        );

        return;
    }

    return $level, $name, $path, @file;
}

#bind synchronize_file to Ctrl+Alt+equal menu Action: Synchronize Annotations
sub synchronize_file {

    ChangingFile(0);

    open_level_syntax();

    AQMAR::Syntax::synchronize_file();
}

#bind open_level_morpho_prime to Alt+1
sub open_level_morpho_prime {

    open_level_morpho();
}

#bind open_level_syntax_prime to Alt+2
sub open_level_syntax_prime {

    open_level_syntax();
}

#bind open_level_entity_prime to Alt+3
sub open_level_entity_prime {

    open_level_entity();
}

#bind open_level_elixir_prime to Alt+9
sub open_level_elixir_prime {

    open_level_elixir();
}

#bind open_level_morpho to Ctrl+Alt+1 menu Action: Morpho Context
sub open_level_morpho {

    ChangingFile(0);
}

#bind open_level_syntax to Ctrl+Alt+2 menu Action: Syntax Context
sub open_level_syntax {

    ChangingFile(0);

    my ($level, $name, $path, @file) = inter_with_level 'syntax';

    return unless defined $level;

    unless (-f $file[1]) {

        my $reply = main::userQuery($grp,
                        "\nThere is no " . $name . ".$level.pml" . " file.$fill" .
                        "\nReally create a new one?$fill",
                        -bitmap=> 'question',
                        -title => "Creating",
                        -buttons => ['Yes', 'No']);

        return unless $reply eq 'Yes';

        create_level_syntax();
    }

    switch_either_context() if $review->{$grp}{'zoom'};

    my ($tree, $id) = (idx($root), join 's-', split 'm-', $this->{'id'});

    if (Open($file[1])) {

        GotoTree($tree);

        $this = PML::GetNodeByID($id) ||
                PML::GetNodeByID($id . 't1') ||
                PML::GetNodeByID($id . 't1-1') || $root;
    }
    else {

        SwitchContext('AQMAR::Morpho');
    }
}

sub create_level_syntax {

    my ($name, $path, undef) = fileparse(FileName(), '.morpho.pml');

    my $data = '<?xml version="1.0" encoding="utf-8"?>
                <AQMAR-Syntax xmlns="http://ufal.mff.cuni.cz/pdt/pml/">
                  <head>
                    <schema href="aqmar.syntax.schema.xml" />
                    <references>
                      <reffile id="m" name="morpho" href="' . $name . '.morpho.pml" />
                    </references>
                  </head>
                  <meta>
                    <revision>$' . 'Revision: ' . '$</revision>
                    <date>$' . 'Date: ' . '$</date>
                  </meta>
                  <data>
                  </data>
                </AQMAR-Syntax>';

    my $syntax = Treex::PML::Instance->load({ 'string' => $data, 'filename' => $path . '/' . $name . '.syntax.pml' })->convert_to_fsfile();

    my $index;

    pretty_unit($_, $syntax->new_tree($index++), $syntax) foreach GetTrees();

    $syntax->writeFile();
}

sub pretty_unit {

    my ($unit, $tree, $syntax) = @_;

    my @id = $unit->{'id'} =~ /^m-p([0-9]+(?:-[0-9]+)?)$/;

    $tree->set_type_by_name($syntax->metaData('schema'), 'Tree');

    $tree->{'#name'} = 'Tree';

    $tree->{'id'} = sprintf 's-p%s', @id;

    $tree->{'form'} = $unit->{'form'} if exists $unit->{'form'};

    pretty_word($_, $tree, $syntax) foreach reverse $unit->children();

    my $ord = 0;

    $_->{'ord'} = $ord++ foreach $tree, $tree->children();
}


sub pretty_word {

    my ($word, $tree, $syntax) = @_;

    my @id = $word->{'id'} =~ /^m-p([0-9]+(?:-[0-9]+)?)w([0-9]+(?:-[0-9]+)?)$/;

    my @child = map { $_->children() } $word->children();

    if (@child) {

        pretty_node($_, $tree, $syntax) foreach reverse @child;
    }
    else {

        my $node = Treex::PML::Factory->createTypedNode('Node', $syntax->metaData('schema'));

        $node->{'#name'} = 'Node';

        $node->{'id'} = sprintf 's-p%sw%s', @id;

        $node->{'role'} = '';

        $node->{'w.rf'} = "m#" . $word->{'id'};

        PasteNode($node, $tree, $syntax->FS);
    }
}

sub pretty_node {

    my ($word, $tree, $syntax) = @_;

    my @id = $word->{'id'} =~ /^m-p([0-9]+(?:-[0-9]+)?)w([0-9]+(?:-[0-9]+)?)t([0-9]+(?:-[0-9]+)?)$/;

    my $node = Treex::PML::Factory->createTypedNode('Node', $syntax->metaData('schema'));

    $node->{'#name'} = 'Node';

    $node->{'id'} = sprintf 's-p%sw%st%s', @id;

    $node->{'role'} = '';

    $node->{'w.rf'} = "m#" . $word->parent()->parent()->{'id'};

    $node->{'m.rf'} = "m#" . $word->{'id'};

    PasteNode($node, $tree, $syntax->FS);
}

#bind open_level_entity to Ctrl+Alt+3 menu Action: Entity Context
sub open_level_entity {

    ChangingFile(0);

    my ($level, $name, $path, @file) = inter_with_level 'entity';

    return unless defined $level;

    unless (-f $file[1]) {

        ToplevelFrame()->messageBox (
            -icon => 'warning',
            -message => "There is no " . $name . ".$level.pml" . " file!$fill",
            -title => 'Error',
            -type => 'OK',
        );

        return;
    }

    switch_either_context() if $review->{$grp}{'zoom'};

    my ($tree, $id) = (idx($root), join 's-', split 'm-', $this->{'id'});

    if (Open($file[1])) {

        GotoTree($tree);

        $this = PML::GetNodeByID($id) ||
                PML::GetNodeByID($id . 't1') ||
                PML::GetNodeByID($id . 't1-1') || $root;
    }
    else {

        SwitchContext('AQMAR::Morpho');
    }
}

#bind open_level_elixir to Ctrl+Alt+9 menu Action: Display ElixirFM Lexicon
sub open_level_elixir {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Token' or $this->{'#name'} eq 'Lexeme';

    my $node = $this;
    my $data = {};

    if ($node->root()->{'#name'} eq 'Unit') {

        return unless exists $node->{'root'} and exists $node->{'cite'};
    }
    else {

        if ($review->{$grp}{'mode'}) {

            $node = $node->parent() unless $node->{'#name'} eq 'Lexeme';
        }
        else {

            my @data = map { $_->[1] } @{$node->parent()->parent()->{'data'}[0]};

            shift @data while $node = $node->lbrother();

            $node = shift @data;
        }
    }

    $data->{$_} = $node->{$_} foreach 'root', 'cite';

    return if $data->{'root'} eq '';

    my $name = (ElixirFM::isSunny($data->{'root'}) ? 'sunny' : 'moony') . '-' .
               (ElixirFM::isComplex($data->{'root'}) ? 'complex' : 'regular');

    my ($level, undef, $path, @file) = inter_with_level 'elixir';

    unless (exists $ElixirFM::window->{$grp} and grep { $ElixirFM::window->{$grp} == $_ } TrEdWindows()) {

        my $win = SplitWindowHorizontally({ 'ratio' => 0.45, 'no_init' => 1 });

        $ElixirFM::window->{$grp} = $win;

        $AQMAR::Morpho::window->{$win} = $grp;
    }

    SetCurrentWindow($ElixirFM::window->{$grp});

    if (Open(path $file[3], $name . ".$level.pml")) {

        my $idx = CurrentTreeNumber();

        my @tree = GetTrees();

        TREE: for (my $i = $idx - @tree; $i < $idx; $i++) {

            foreach my $node ($tree[$i]->children()) {

                next unless $node->{'root'} eq $data->{'root'};

                $this = $node;

                foreach my $node ($node->children()) {

                    next unless $node->{'morphs'} eq $data->{'cite'}{'morphs'} or
                                $node->{'morphs'} . ' |< aT' eq $data->{'cite'}{'morphs'} and
                                exists $node->{'entity'}[0][0][1]{'derive'} and
                                $node->{'entity'}[0][0][1]{'derive'} eq '------F---';

                    next unless $node->{'entity'}[0][0][0] eq $data->{'cite'}{'entity'}[0][0][0];

                    GotoTree($i < 0 ? $i + @tree + 1 : $i + 1);

                    $this = $node;

                    last TREE;
                }
            }
        }
    }
    else {

        SwitchContext('AQMAR::Morpho');
    }
}

#bind ThisAddressClipBoard Ctrl+Return menu ThisAddress() to Clipboard
sub ThisAddressClipBoard {

    my $reply = main::userQuery($grp,
                        "\nCopy this node's address to clipboard?$fill",
                        -bitmap=> 'question',
                        -title => "Clipboard",
                        -buttons => ['Yes', 'No']);

    return unless $reply eq 'Yes';

    my $widget = ToplevelFrame();

    $widget->clipboardClear();
    $widget->clipboardAppend(ThisAddress());

    $Redraw = 'none';
    ChangingFile(0);
}

sub update_references {

    my ($file) = GetSecondaryFiles();

    return unless defined $file;

    my $w = [ map { $_->children() } map { $_->children() } $file->trees() ];
    my $m = [ map { $_->children() } GetTrees() ];

    Algorithm::Diff::traverse_balanced($w, $m, {

            'MATCH' => sub {

                    $m->[$_[1]]->{'w.rf'} = 'w#' . $w->[$_[0]]->{'id'};

                },

            'CHANGE' => sub {

                    $m->[$_[1]]->{'w.rf'} = 'w#' . $w->[$_[0]]->{'id'};

                    warn "--" . "\t" . ThisAddress($w->[$_[0]], $file) . "\n";
                    warn "++" . "\t" . ThisAddress($m->[$_[1]]) . "\n";
                },

            'DISCARD_A' => sub {

                    warn "--" . "\t" . ThisAddress($w->[$_[0]], $file) . "\n";
                },

            'DISCARD_B' => sub {

                    delete $m->[$_[1]]->{'w.rf'};

                    warn "++" . "\t" . ThisAddress($m->[$_[1]]) . "\n";
                },

        }, sub { $_[0]->{'form'} });

    ChangingFile(1);
}

# ##################################################################################################
#
# ##################################################################################################

no strict;

1;


=head1 NAME

AQMAR::Morpho - Combining ElixirFM and PADT with MADA and CATiB


=head1 DESCRIPTION

This version of the AQMAR::Morpho annotation extension is based on the MorphoTrees of the
Prague Arabic Dependency Treebank L<http://ufal.mff.cuni.cz/padt/online/>. Original PADT
extensions for TrEd are available at L<http://ufal.mff.cuni.cz/tred/extensions/>.

For reference, see AQMAR::Morpho macros and key-bindings in the Macros menu of TrEd.

TrEd Tree Editor L<http://ufal.mff.cuni.cz/tred/>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004-2011 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
