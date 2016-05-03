# ########################################################################## Otakar Smrz, 2011/04/24
#
# AQMAR Syntax Context for the TrEd Environment ####################################################

package AQMAR::Syntax;

use 5.008;

use strict;

use Encode::Arabic ':modes';

use List::Util 'reduce';

use File::Spec;
use File::Copy;

use File::Basename;

our $VERSION = '0.5';

# ##################################################################################################
#
# ##################################################################################################

#binding-context AQMAR::Syntax

BEGIN {

    import AQMAR 'switch_context_hook', 'pre_switch_context_hook', 'idx';

    import TredMacro;
}

our ($this, $root, $grp);

our ($Redraw);

our ($option, $fill) = ({}, ' ' x 4);

# ##################################################################################################
#
# ##################################################################################################

our %maps = (

    ''    => 'UNDEFINED',
    'SBJ' => 'SUBJECT',
    'OBJ' => 'OBJECT',
    'PRD' => 'PREDICATE',
    'TPC' => 'TOPIC',
    'MOD' => 'MODIFIER',
    'IDF' => 'IDHAFA',
    'TMZ' => 'TAMYIZ',
    '---' => 'INHERITED',

    );

sub describe {

    return exists $maps{$_[0]} ? $maps{$_[0]} : '';
}

sub assign_role {

    my $role = $_[0];

    if ($this->{'role'} eq $role or $this->{"#name"} eq 'Tree') {

        ChangingFile(0);
    }
    else {

        $this->{'role'} = $role;
    }
}

#bind assign_undefined question menu Role Undefined
sub assign_undefined {
    assign_role('');
}

#bind assign_subject s menu Assign SuBJect
sub assign_subject {
    assign_role('SBJ');
}

#bind assign_object o menu Assign OBJect
sub assign_object {
    assign_role('OBJ');
}

#bind assign_predicate p menu Assign PReDicate
sub assign_predicate {
    assign_role('PRD');
}

#bind assign_topic t menu Assign ToPiC
sub assign_topic {
    assign_role('TPC');
}

#bind assign_modifier m menu Assign MODifier
sub assign_modifier {
    assign_role('MOD');
}

#bind assign_idhafa i menu Assign IDhaFa
sub assign_idhafa {
    assign_role('IDF');
}

#bind assign_tamyiz z menu Assign TaMyiZ
sub assign_tamyiz {
    assign_role('TMZ');
}

#bind assign_flat minus menu Assign ---
sub assign_flat {
    assign_role('---');
}

# ##################################################################################################
#
# ##################################################################################################

sub CreateStylesheets {

    return << '>>';

style:<? AQMAR::Syntax::isClauseHead() ? '#{Line-fill:gold}' : '' ?>

node:<? $this->{'#name'} eq 'Tree' ? '#{darkmagenta}${form} ' . AQMAR::Syntax::idx($this) :
        exists $this->{'m'}
            ? ( $this->{'m'}{'form'} =~ /\p{InArabic}/
                ? $this->{'m'}{'form'}
                : ElixirFM::orth($this->{'m'}{'form'}) )
            : '#{red}${w/form}' ?>

node:<? $this->{'#name'} eq 'Tree' ? '' :
        exists $this->{'m'}
            ? '#{orange}' . ( $this->{'m'}{'form'} =~ /\p{InArabic}/
                ? AQMAR::Syntax::encode("buckwalter", $this->{'m'}{'form'})
                : ElixirFM::phon($this->{'m'}{'form'}) )
            : '#{orange}' . AQMAR::Syntax::encode("buckwalter", $this->{'w'}{'form'}) ?>

node:<? exists $this->{'m'} ? (
        exists $this->{'m'}{'note'} &&
               $this->{'m'}{'note'} ne '' ? '#{goldenrod}${m/note} ' : ''
        ) . '#{darkred}${m/tag}' : '' ?>

node:<? ( $this->{'note'} ne '' ? '#{magenta}${note} ' : '' ) . '#{darkviolet}${role}' ?>

hint:<? AQMAR::Syntax::describe($this->{"role"}) ?>
>>
}

#bind ChangeStylesheet to Ctrl+S menu Change Stylesheet
sub ChangeStylesheet {

    return unless $grp->{FSFile};

    my ($type, $pattern) = ('node:', '#{custom2}${m/tag}');

    my $code = q {<? exists $this->{'m'} ? (
        exists $this->{'m'}{'note'} &&
               $this->{'m'}{'note'} ne '' ? '#{goldenrod}${m/note} ' : ''
        ) . '#{darkred}${m/tag}' : '' ?>};

    my $role = q {<? ( $this->{'note'} ne '' ? '#{magenta}${note} ' : '' ) . '#{darkviolet}${role}' ?>};

    my ($hint, $cntxt, $style) = GetStylesheetPatterns();

    my @filter = grep { $_ !~ /^(?:\Q${type}\E\s*)?(?:\Q${code}\E|\Q${pattern}\E|\Q${role}\E)$/ } @{$style};

    SetStylesheetPatterns([ $hint, $cntxt, [ @filter, ( @{$style} == 1 + @filter ? $type . ' ' . $code : () ), $type . ' ' . $role ] ]);

    ChangingFile(0);
}

sub get_value_line_hook {

    my ($fsfile, $index) = @_;
    my ($nodes, $words, $views);

    ($nodes, undef) = $fsfile->nodes($index, $this, 1);

    $views->{$_->{'ord'}} = $_ foreach GetVisibleNodes($root);

    $words = [ [ $nodes->[0]->{'form'} . " " . idx($nodes->[0]), $nodes->[0], '-foreground => darkmagenta' ],
               [ " " ],

               map {

                   show_value_line_node($views, $_, $_->{'w'}{'form'}, not exists $_->{'m'})

               } @{$nodes}[1 .. $#{$nodes}] ];

    @{$words} = reverse @{$words} if $main::treeViewOpts->{reverseNodeOrder};

    return $words;
}

sub show_value_line_node {

    my ($view, $node, $text, $warn) = @_;

    if (HiddenVisible()) {

        return if exists $node->{'m'} and $node->{'m'}{'id'} !~ /t1(?:-[0-9]+)?$/;

        return [ $text, $node, exists $view->{$node->{'ord'}} ? $warn ? '-foreground => red' : ()
                                                                      : '-foreground => gray' ],
               [ " " ];
    }
    else {

        return [ '.....', $view->{$node->{'ord'} - 1}, '-foreground => magenta' ],
               [ " " ]
                       if not exists $view->{$node->{'ord'}} and exists $view->{$node->{'ord'} - 1};

        return if not exists $view->{$node->{'ord'}};

        return if exists $node->{'m'} and $node->{'m'}{'id'} !~ /t1(?:-[0-9]+)?$/;

        return  [ $text, $node, $warn ? '-foreground => red' : () ],
                [ " " ];
    }
}

sub highlight_value_line_tag_hook {

    my $node = $grp->{currentNode};

    $node = PrevNodeLinear($node, 'ord') until !$node or exists $node->{'w'} and exists $node->{'w'}{'form'} and $node->{'w'}{'form'} ne '';

    return $node;
}

sub node_release_hook {

    my ($node, $done) = @_;
    my (@line);

    return unless $done;

    return unless $option->{$grp}{'hook'};

    until ($done->{'role'} ne '' or exists $done->{'score'} and @{$done->{'score'}} > 0) {

        unshift @line, $done;

        $done = $done->parent();
    }
}

sub node_moved_hook {

    return unless $option->{$grp}{'hook'};

    my (undef, $done) = @_;

    my @line;

    until ($done->{'role'} ne '' or exists $done->{'score'} and @{$done->{'score'}} > 0) {

        unshift @line, $done;

        $done = $done->parent();
    }
}

sub root_style_hook {

}

sub node_style_hook {

    my ($node, $styles) = @_;

    if ($node->{'coref'} eq 'Ref') {

        my $T = << 'TARGET';
[!
    return AQMAR::Syntax::referring_Ref($this);
!]
TARGET

        my $C = << "COORDS";
n,n,
(n + x$T) / 2 + (abs(xn - x$T) > abs(yn - y$T) ? 0 : -40),
(n + y$T) / 2 + (abs(yn - y$T) > abs(xn - x$T) ? 0 :  40),
x$T,y$T
COORDS

    AddStyle($styles,   'Line',
             -coords => 'n,n,p,p&'. # coords for the default edge to parent
                        $C,         # coords for our line
             -arrow =>  '&last',
             -dash =>   '&_',
             -width =>  '&1',
             -fill =>   '&#C000D0', # color
             -smooth => '&1'        # approximate our line with a smooth curve
            );
    }


    if ($node->{arabspec} eq 'Msd') {

        my $T = << 'TARGET';
[!
    return AQMAR::Syntax::referring_Msd($this);
!]
TARGET

        my $C = << "COORDS";
n,n,
(n + x$T) / 2 + (abs(xn - x$T) > abs(yn - y$T) ? 0 : -40),
(n + y$T) / 2 + (abs(yn - y$T) > abs(xn - x$T) ? 0 :  40),
x$T,y$T
COORDS

    AddStyle($styles,   'Line',
             -coords => 'n,n,p,p&'. # coords for the default edge to parent
                        $C,         # coords for our line
             -arrow =>  '&last',
             -dash =>   '&_',
             -width =>  '&1',
             -fill =>   '&#FFA000', # color
             -smooth => '&1'        # approximate our line with a smooth curve
            );
    }
}

# ##################################################################################################
#
# ##################################################################################################

#bind thisToParent to Alt+Up menu Annotate: Current node up one level to grandparent
sub thisToParent {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this->parent() and $this->parent()->parent();

    my $act = $this;
    my $p = $act->parent()->parent();

    CutPaste($act, $p);
    $this = $act;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToRBrother to Alt+Left menu Annotate: Current node to brother on the left
sub thisToRBrother {

    $Redraw = 'none';
    ChangingFile(0);

    my $p = $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode()
            ? $this->rbrother() : $this->lbrother();

    return unless $p;

    my $c = $this;

    CutPaste($c, $p);
    $this = $c;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToLBrother to Alt+Right menu Annotate: Current node to brother on the right
sub thisToLBrother {

    $Redraw = 'none';
    ChangingFile(0);

    my $p = $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode()
            ? $this->lbrother() : $this->rbrother();

    return unless $p;

    my $c = $this;

    CutPaste($c, $p);
    $this = $c;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToParentRBrother to Alt+Shift+Left menu Annotate: Current node to uncle on the left
sub thisToParentRBrother {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this->parent();

    my $p = $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode()
            ? $this->parent()->rbrother() : $this->parent()->lbrother();

    return unless $p;

    my $c = $this;

    CutPaste($c, $p);
    $this = $c;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToParentLBrother to Alt+Shift+Right menu Annotate: Current node to uncle on the right
sub thisToParentLBrother {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this->parent();

    my $p = $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode()
            ? $this->parent()->lbrother() : $this->parent()->rbrother();

    return unless $p;

    my $c = $this;

    CutPaste($c, $p);
    $this = $c;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToEitherBrother to Alt+Down menu Annotate: Current node to either side brother if unique
sub thisToEitherBrother {

    $Redraw = 'none';
    ChangingFile(0);

    my $lb = $this->lbrother();
    my $rb = $this->rbrother();

    return unless $lb xor $rb;

    my $c = $this;
    my $p = $lb || $rb;

    CutPaste($c, $p);
    $this = $c;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind SwapNodesUp to Alt+Shift+Down menu Annotate: Current node exchanged with parent
sub SwapNodesUp {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this;

    my $parent = $this->parent();

    return unless $parent;

    my $grandParent = $parent->parent();

    return unless $grandParent;

    CutPaste($this, $grandParent);
    CutPaste($parent, $this);
    $this = $parent;

    $Redraw = 'tree';
    ChangingFile(1);
}

##bind SwapNodesDown to Alt+Shift+Down menu Annotate: Current node exchanged with son if unique
sub SwapNodesDown {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this;

    my @childs = $this->children();
    my $parent = $this->parent();

    return unless @childs == 1 and $parent;

    CutPaste($childs[0], $parent);
    CutPaste($this, $childs[0]);
    $this = $childs[0];

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToRoot to Alt+Shift+Up menu Annotate: Current node to the root
sub thisToRoot {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this and $this->parent();

    return unless $root;

    CutPaste($this, $root);

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToLeftClauseHead to Ctrl+Alt+Right menu Annotate: Current node to preceeding clause head
sub thisToLeftClauseHead {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this and $this->parent();

    $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode() ?
        thisToPrevClauseHead() :
        thisToNextClauseHead();
}

#bind thisToRightClauseHead to Ctrl+Alt+Left menu Annotate: Current node to following clause head
sub thisToRightClauseHead {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this and $this->parent();

    $main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode() ?
        thisToNextClauseHead() :
        thisToPrevClauseHead();
}

sub thisToPrevClauseHead {

    my $node = $this->parent();

    do { $node = $node->previous() } while $node and not isClauseHead($node);

    return unless $node;

    CutPaste($this, $node);

    $Redraw = 'tree';
    ChangingFile(1);
}

sub thisToNextClauseHead {

    my $node = $this->parent();

    do { $node = $node->following() } until $node == $this or isClauseHead($node);

    unless ($node == $this) {

        CutPaste($this, $node);
    }
    else {

        $node = $this->rightmost_descendant();

        do { $node = $node->following() } while $node and not isClauseHead($node);

        return unless $node;

        CutPaste($this, $node);
    }

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToSuperClauseHead to Ctrl+Alt+Up menu Annotate: Current node to superior clause head
sub thisToSuperClauseHead {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this and $this->parent();

    my $node = $this->parent();

    do { $node = $node->parent() } while $node and not isClauseHead($node);

    return unless $node;

    CutPaste($this, $node);

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind thisToInferClauseHead to Ctrl+Alt+Down menu Annotate: Current node to inferior clause head
sub thisToInferClauseHead {

    $Redraw = 'none';
    ChangingFile(0);

    return unless $this and $this->parent();

    my $node = $this;

    do { $node = $node->following($this) } while $node and not isClauseHead($node);

    return unless $node;

    CutPaste($node, $this->parent());
    CutPaste($this, $node);

    $Redraw = 'tree';
    ChangingFile(1);
}

# ##################################################################################################
#
# ##################################################################################################

sub isPredicate {

    my $this = defined $_[0] ? $_[0] : $this;

    return $this->{'clause'} ne "" || exists $this->{'m'} &&
                                             $this->{'m'}{'tag'} =~ /^V/ &&
                                             $this->{'role'} !~ /^Aux/
                                   || $this->{'role'} =~ /^Pred[ECMP]?$/;
}

sub theClauseHead ($;&) {

    my $this = defined $_[0] ? $_[0] : $this;

    my $code = defined $_[1] ? $_[1] : sub { return undef };

    my ($return, $effect, @children, $main);

    my $head = $this;

    while ($head) {

        $effect = $head->{'role'};

        if ($head->{'role'} =~ /^(?:Coord|Apos)$/) {

            @children = grep { $_->{'parallel'} =~ /^(?:Co|Ap)$/ } $head->children();

            if (grep { $_->{'role'} eq 'Atv' } @children) {

                $effect = 'Atv';
            }
            elsif (grep { isPredicate($_) } @children) {

                $effect = 'Pred';
            }
            elsif (grep { $_->{'role'} eq 'Pnom'} @children) {

                $effect = 'Pnom';
            }
        }

        if ($head->{'role'} =~ /^(?:Pnom|Atv)$/ or $effect =~ /^(?:Pnom|Atv)$/) {

            $main = $head;                      # {Pred} <- [Pnom] = [Pnom] and there exist [Verb] <- [Verb]

            if ($main->{'parallel'} =~ /^(?:Co|Ap)$/) {

                do {

                    $main = $main->parent();
                }
                while $main and $main->{'parallel'} =~ /^(?:Co|Ap)$/ and $main->{'role'} =~ /^(?:Coord|Apos)$/;

                $main = $head unless $main and $main->{'role'} =~ /^(?:Coord|Apos)$/;
            }

            if ($main->parent() and isPredicate($main->parent())) {

                return $main->parent();
            }
            elsif ($head->{'role'} eq 'Pnom') {

                return $head;
            }
        }

        last if isPredicate($head) or $effect =~ /^(?:Pred|Pnom)$/;

        if ($return = $code->($head)) {

            return $return;
        }

        $head = $head->parent();
    }

    return $head;
}

sub isClauseHead {

    my $this = defined $_[0] ? $_[0] : $this;

    my $head = theClauseHead($this, sub { return 'stop' } );

    return $this == $head;
}

sub referring_Ref {

    my $this = defined $_[0] ? $_[0] : $this;

    my $head = $this->parent();

    $head = theClauseHead($head, sub {                  # attributive pseudo-clause .. approximation only

            return $_[0] if $_[0]->{'role'} eq 'Atr' and exists $_[0]->{'m'} and
                                                                $_[0]->{'m'}{'tag'} =~ /^A/
                            and $this->level() > $_[0]->level() + 1;
            return undef;

        } );

    if ($head) {

        my $ante = $head;

        $ante = $ante->following($head) while $ante and $ante->{'role'} ne 'Ante' and $ante != $this;

        unless ($ante) {

            $head = $head->parent() while $head->{'parallel'} =~ /^(?:Co|Ap)$/;

            $ante = $head;

            $ante = $ante->following($head) while $ante and $ante->{'role'} ne 'Ante' and $ante != $this;
        }

        $ante = $ante->parent() while $ante and $ante->{'parallel'} =~ /^(?:Co|Ap)$/;

        if ($ante) {

            $this = $this->parent() while $this and $this != $ante;

            return $ante if $this != $ante;
        }

        $head = $head->parent() while $head->{'parallel'} =~ /^(?:Co|Ap)$/;

        $head = $head->parent();

        return $head;
    }
    else {

        return undef;
    }
}

sub referring_Msd {

    my $this = defined $_[0] ? $_[0] : $this;

    my $head = $this->parent();                                                         # the token itself might feature the critical tags

    $head = $head->parent() if $this->{'role'} eq 'Atr';                                # constructs like <_hAfa 'a^sadda _hawfiN>

    $head = $head->parent() until not $head or exists $head->{'m'} and
                                                      $head->{'m'}{'tag'} =~ /^[VNA]/;  # the verb, governing masdar or participle

    return $head;
}

# ##################################################################################################
#
# ##################################################################################################

#bind edit_note to exclam menu Annotate: Edit Annotation Note
sub edit_note {

    if (exists $this->{'note'} and $this->{'note'} ne "") {

        delete $this->{'note'};
    }
    else {

        my $note = main::QueryString($grp->{framegroup}, "Enter the note", 'note');

        $this->{'note'} = $note if defined $note;
    }
}

#bind invoke_undo BackSpace menu Annotate: Undo recent annotation action
sub invoke_undo {

    warn 'Undoooooing ;)';

    main::undo($grp);
    $this = $grp->{currentNode};

    ChangingFile(0);
}

#bind annotate_following space menu Move to Next Undefined
sub annotate_following {

    my $node = $this;

    do { $this = $this->following() } while $this and $this->{'role'} ne '';

    $this = $node unless $this and $this->{'role'} eq '';

    $Redraw = 'none';
    ChangingFile(0);
}

#bind annotate_previous Shift+space menu Move to Prev Undefined
sub annotate_previous {

    my $node = $this;

    do { $this = $this->previous() } while $this and $this->{'role'} ne '';

    $this = $node unless $this and $this->{'role'} eq '';

    $Redraw = 'none';
    ChangingFile(0);
}

# ##################################################################################################
#
# ##################################################################################################

#bind move_word_home Home menu Move to First Word
sub move_word_home {

    $this = reduce { $a->{'ord'} < $b->{'ord'} ? $a : $b } GetVisibleNodes($root);

    $Redraw = 'none';
    ChangingFile(0);
}

#bind move_word_end End menu Move to Last Word
sub move_word_end {

    $this = reduce { $a->{'ord'} > $b->{'ord'} ? $a : $b } GetVisibleNodes($root);

    $Redraw = 'none';
    ChangingFile(0);
}

OverrideBuiltinBinding(__PACKAGE__, "Shift+Home", [ MacroCallback('move_deep_home'), 'Move to Rightmost Descendant' ]);

#bind move_deep_home Shift+Home menu Move to Rightmost Descendant
sub move_deep_home {

    $this = $this->leftmost_descendant();

    $this = PrevVisibleNode($this) if IsHidden($this);

    $Redraw = 'none';
    ChangingFile(0);
}

OverrideBuiltinBinding(__PACKAGE__, "Shift+End", [ MacroCallback('move_deep_end'), 'Move to Leftmost Descendant' ]);

#bind move_deep_end Shift+End menu Move to Leftmost Descendant
sub move_deep_end {

    $this = $this->rightmost_descendant();

    $this = NextVisibleNode($this) || PrevVisibleNode($this) if IsHidden($this);

    $Redraw = 'none';
    ChangingFile(0);
}

#bind move_par_home Ctrl+Home menu Move to First Paragraph
sub move_par_home {

    GotoTree(1);

    $Redraw = 'win';
    ChangingFile(0);
}

#bind move_par_end Ctrl+End menu Move to Last Paragraph
sub move_par_end {

    GotoTree($grp->{FSFile}->lastTreeNo + 1);

    $Redraw = 'win';
    ChangingFile(0);
}

#bind move_to_next_paragraph Shift+Next menu Move to Next Paragraph
sub move_to_next_paragraph {

    NextTree();

    $Redraw = 'win';
    ChangingFile(0);
}

#bind move_to_prev_paragraph Shift+Prior menu Move to Prev Paragraph
sub move_to_prev_paragraph {

    PrevTree();

    $Redraw = 'win';
    ChangingFile(0);
}

#bind tree_hide_mode Ctrl+equal menu Toggle Children Hiding
sub tree_hide_mode {

    foreach my $node ($this->children()) {

        $node->{'hide'} = $node->{'hide'} ? '' : 'hide';
    }

    ChangingFile(0);
}

#bind unhide_subtree Ctrl+plus menu Unhide Children Recursively
sub unhide_subtree {

    my $this = ref $_[0] ? $_[0] : $this;

    $this->{'hide'} = '';

    foreach my $node ($this->children()) {

        unhide_subtree($node);
    }

    ChangingFile(0);
}

#bind hide_children Ctrl+minus menu Hide Children Subtrees
sub hide_children {

    foreach my $node ($this->children()) {

        $node->{'hide'} = 'hide';
    }

    ChangingFile(0);
}

#bind hide_this Ctrl+underscore menu Hide This Subtree
sub hide_this {

    $this->{'hide'} = $this->{'hide'} ? '' : 'hide';

    ChangingFile(0);
}

#bind move_to_root Ctrl+Shift+Up menu Move Up to Root
sub move_to_root {

    $this = $root unless $root == $this;

    $Redraw = 'none';
    ChangingFile(0);
}

#bind move_to_fork Ctrl+Shift+Down menu Move Down to Fork
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

#bind prev_clause_head Ctrl+Right menu Move to the Preceeding Clause Head
sub prev_clause_head {

    my $node = $this;

    if ($main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode()) {

        do { $this = $this->previous() } while $this and not isClauseHead($this);
    }
    else {

        do { $this = $this->following() } while $this and not isClauseHead($this);
    }

    $this = $node unless $this;

    $Redraw = 'none';
    ChangingFile(0);
}

#bind next_clause_head Ctrl+Left menu Move to the Following Clause Head
sub next_clause_head {

    my $node = $this;

    if ($main::treeViewOpts->{reverseNodeOrder} && ! InVerticalMode()) {

        do { $this = $this->following() } while $this and not isClauseHead($this);
    }
    else {

        do { $this = $this->previous() } while $this and not isClauseHead($this);
    }

    $this = $node unless $this;

    $Redraw = 'none';
    ChangingFile(0);
}

#bind super_clause_head Ctrl+Up menu Move to the Superior Clause Head
sub super_clause_head {

    my $node = $this;

    do { $this = $this->parent() } while $this and not isClauseHead($this);

    $this = $node unless $this;

    $Redraw = 'none';
    ChangingFile(0);
}

#bind infer_clause_head Ctrl+Down menu Move to the Inferior Clause Head
sub infer_clause_head {

    my $node = $this;

    do { $this = $this->following($node) } while $this and not isClauseHead($this);

    $this = $node unless $this;

    $Redraw = 'none';
    ChangingFile(0);
}

# ##################################################################################################
#
# ##################################################################################################

sub path (@) {

    return File::Spec->join(@_);
}

sub escape ($) {

    return $^O eq 'MSWin32' ? '"' . $_[0] . '"' : "'" . $_[0] . "'";
}

sub espace ($) {

    my $name = $_[0];

    $name =~ s/\\/\//g if $^O eq 'MSWin32' and $name =~ / /;

    return escape $name;
}

sub inter_with_level ($) {

    my ($inter, $level) = ('syntax', $_[0]);

    my (@file, $path, $name, $exts);

    my $file = File::Spec->canonpath(FileName());

    ($name, $path, $exts) = fileparse($file, '.exclude.pml', '.pml');

    ($name, undef, undef) = fileparse($name, ".$inter");

    $file[0] = path $path, $name . ".$inter" . $exts;

    $file[1] = $level eq 'elixir' ? ( path $path, $name . ".$level" . (substr $exts, 0, -3) . "dat" )
                                  : ( path $path, $name . ".$level" . $exts );

    $file[2] = $level eq 'morpho' ? ( path $path, $name . ".$inter" . $exts )
                                  : ( path $path, $name . ".$level" . $exts );

    $file[3] = path $path, $name . ".$inter.pml.anno.pml";

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

    warn "Synchronizing is implemented in the PADT extension ...\n";
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

#bind open_level_morpho to Ctrl+Alt+1 menu Action: Morpho Context
sub open_level_morpho {

    ChangingFile(0);

    my ($level, $name, $path, @file) = inter_with_level 'morpho';

    return unless defined $level;

    unless (-f $file[1]) {

        ToplevelFrame()->messageBox (
            -icon => 'warning',
            -message => "There is no " . $file[1] . " file!$fill",
            -title => 'Error',
            -type => 'OK',
        );

        return;
    }

    my ($tree, %id) = (idx($root));

    $id{$_} = exists $this->{$_} && exists $this->{$_}{'id'} ? $this->{$_}{'id'} : '' foreach 'm', 'w';

    if (Open($file[1])) {

        GotoTree($tree);

        $this = PML::GetNodeByID($id{'m'}) || PML::GetNodeByID($id{'w'}) || $root;
    }
    else {

        SwitchContext('AQMAR::Syntax');
    }
}

#bind open_level_syntax to Ctrl+Alt+2 menu Action: Syntax Context
sub open_level_syntax {

    ChangingFile(0);
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

    my ($tree, $node) = idx($this);
    my ($tree, $id) = (idx($root), join 'e-', split 's-', $this->{'id'});

    if (Open($file[1])) {

        GotoTree($tree);

        $this = PML::GetNodeByID($id) ||
                PML::GetNodeByID($id . 't1') ||
                PML::GetNodeByID($id . 't1-1') || $root;
    }
    else {

        SwitchContext('AQMAR::Syntax');
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

# ##################################################################################################
#
# ##################################################################################################

no strict;

1;


=head1 NAME

AQMAR::Syntax - Combining ElixirFM and PADT with MADA and CATiB


=head1 DESCRIPTION

This version of the AQMAR::Syntax annotation extension is based on the Analytic mode of the
Prague Arabic Dependency Treebank L<http://ufal.mff.cuni.cz/padt/online/>. Original PADT
extensions for TrEd are available at L<http://ufal.mff.cuni.cz/tred/extensions/>.

For reference, see AQMAR::Syntax macros and key-bindings in the Macros menu of TrEd.

TrEd Tree Editor L<http://ufal.mff.cuni.cz/tred/>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004-2011 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
