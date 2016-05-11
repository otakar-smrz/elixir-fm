# ########################################################################## Otakar Smrz, 2008/05/07
#
# ElixirFM Context for the TrEd Environment ########################################################

package ElixirFM;

use 5.008;

use strict;

use ElixirFM;

use File::Spec;
use File::Copy;

use File::Basename;

our $VERSION = '1.2.2';

# ##################################################################################################
#
# ##################################################################################################

#binding-context ElixirFM

BEGIN {

    # import ElixirFM 'switch_context_hook', 'pre_switch_context_hook';

    import TredMacro;
}

our ($this, $root, $grp);

our ($Redraw);

our ($dims, $fill) = (10, ' ' x 4);

our ($window, $option) = ({}, {});


sub entity {

    my $this = $_[0];

    return unless exists $this->{'entity'};

    return $this->{'entity'}[0][0];
}

sub plurals {

    my $this = $_[0];

    return unless exists $this->{'entity'} and exists $this->{'entity'}[0][0][1]{'plural'};

    return @{$this->{'entity'}[0][0][1]{'plural'}};
}

sub feminis {

    my $this = $_[0];

    return unless exists $this->{'entity'} and exists $this->{'entity'}[0][0][1]{'femini'};

    return @{$this->{'entity'}[0][0][1]{'femini'}};
}

sub masdars {

    my $this = $_[0];

    return unless exists $this->{'entity'} and exists $this->{'entity'}[0][0][1]{'masdar'};

    return @{$this->{'entity'}[0][0][1]{'masdar'}};
}

# ##################################################################################################
#
# ##################################################################################################

sub change_entity {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    ChangingFile(1);

    my $entity = ElixirFM::entity($this);

    @{$entity} = @_;

    return $entity->[1];
}

#bind change_entity_V Ctrl+V menu Change Entity Verb
sub change_entity_V {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    my $old = ElixirFM::entity($this)->[1];

    my $new = change_entity('Verb', Treex::PML::Factory->createStructure());

    foreach (qw 'form pfirst imperf second tense voice') {

        $new->{$_} = $old->{$_} if exists $old->{$_};
    }

    ChangingFile(1);
}

#bind change_entity_N Ctrl+N menu Change Entity Noun
sub change_entity_N {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    my $entity = ElixirFM::entity($this);

    my $cat = $entity->[0];
    my $old = $entity->[1];

    my $new = change_entity('Noun', Treex::PML::Factory->createStructure());

    foreach (qw 'plural femini') {

        $new->{$_} = $old->{$_} if exists $old->{$_};
    }

    if ($cat eq 'Adj') {

        unless (exists $new->{'plural'} and @{$new->{'plural'}}) {

            $new->{'plural'} = Treex::PML::Factory->createList([$this->{'morphs'} . ' |< Un']);
        }

        unless (exists $new->{'femini'} and @{$new->{'femini'}}) {

            $new->{'femini'} = Treex::PML::Factory->createList([$this->{'morphs'} . ' |< aT']);
        }
    }

    ChangingFile(1);
}

#bind change_entity_A Ctrl+A menu Change Entity Adj
sub change_entity_A {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    my $old = ElixirFM::entity($this)->[1];

    my $new = change_entity('Adj', Treex::PML::Factory->createStructure());

    foreach (qw 'plural femini') {

        $new->{$_} = $old->{$_} if exists $old->{$_};
    }

    if (exists $new->{'plural'} and @{$new->{'plural'}} == 1) {

        delete $new->{'plural'} if $new->{'plural'}[0] eq $this->{'morphs'} . ' |< Un';
    }

    if (exists $new->{'femini'} and @{$new->{'femini'}} == 1) {

        delete $new->{'femini'} if $new->{'femini'}[0] eq $this->{'morphs'} . ' |< aT';
    }

    ChangingFile(1);
}

#bind change_entity_S Ctrl+S menu Change Entity Pron
sub change_entity_S {

    change_entity('Pron', Treex::PML::Factory->createContainer());
}

#bind change_entity_Q Ctrl+Q menu Change Entity Num
sub change_entity_Q {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    my $old = ElixirFM::entity($this)->[1];

    my $new = change_entity('Num', Treex::PML::Factory->createStructure());

    foreach (qw 'plural femini') {

        $new->{$_} = $old->{$_} if exists $old->{$_};
    }

    ChangingFile(1);
}

#bind change_entity_D Ctrl+D menu Change Entity Adv
sub change_entity_D {

    change_entity('Adv', Treex::PML::Factory->createContainer());
}

#bind change_entity_P Ctrl+P menu Change Entity Prep
sub change_entity_P {

    change_entity('Prep', Treex::PML::Factory->createContainer());
}

#bind change_entity_C Ctrl+C menu Change Entity Conj
sub change_entity_C {

    change_entity('Conj', Treex::PML::Factory->createContainer());
}

#bind change_entity_F Ctrl+F menu Change Entity Part
sub change_entity_F {

    change_entity('Part', Treex::PML::Factory->createContainer());
}

#bind change_entity_I Ctrl+I menu Change Entity Intj
sub change_entity_I {

    change_entity('Intj', Treex::PML::Factory->createContainer());
}

#bind change_entity_X Ctrl+X menu Change Entity Xtra
sub change_entity_X {

    change_entity('Xtra', Treex::PML::Factory->createContainer());
}

#bind change_entity_Y Ctrl+Y menu Change Entity Ynit
sub change_entity_Y {

    change_entity('Ynit', Treex::PML::Factory->createContainer());
}

#bind change_entity_Z Ctrl+Z menu Change Entity Zero
sub change_entity_Z {

    change_entity('Zero', Treex::PML::Factory->createContainer());
}

#bind change_entity_G Ctrl+G menu Change Entity Grph
sub change_entity_G {

    change_entity('Grph', Treex::PML::Factory->createContainer());
}

#bind enforce_literal Ctrl+l menu Enforce Literal
sub enforce_literal {

    ChangingFile(0);

    my $node = $this;

    $node = $node->parent() if $node->{'#name'} eq 'Entry';

    return unless $node->{'#name'} eq 'Nest';

    my %m = map { ElixirFM::morphs($_)->[0], 1 }
            map { $_->{'morphs'},
                  ElixirFM::plurals($_),
                  ElixirFM::feminis($_) } $node->children();

    my @m = keys %m;

    return unless @m == 1 and $m[0] ne '_____';

    $node->{'root'} = ElixirFM::merge($node->{'root'}, $m[0]);

    foreach ($node->children()) {

        $_ =~ s/^((?:.+\>\| )?)[^ ]+((?: \|\<.+)?)$/$1_____$2/

            foreach $_->{'morphs'}, ElixirFM::plurals($_), ElixirFM::feminis($_);
    }

    ChangingFile(1);
}

#bind enforce_string Ctrl+s menu Enforce String
sub enforce_string {

    ChangingFile(0);

    my $node = $this;

    $node = $node->parent() if $node->{'#name'} eq 'Entry';

    return unless $node->{'#name'} eq 'Nest';

    my %m = map { ElixirFM::morphs($_)->[0], 1 }
            map { $_->{'morphs'},
                  ElixirFM::plurals($_),
                  ElixirFM::feminis($_) } $node->children();

    my @m = keys %m;

    return unless @m == 1 and $m[0] !~ /^"[^ ]+"$/;

    $node->{'root'} = ElixirFM::merge($node->{'root'}, $m[0]);

    foreach ($node->children()) {

        $_ =~ s/^((?:.+\>\| )?)[^ ]+((?: \|\<.+)?)$/$1"$node->{'root'}"$2/

            foreach $_->{'morphs'}, ElixirFM::plurals($_), ElixirFM::feminis($_);
    }

    $node->{'root'} = join ' ', split /(?<![._^,])/, $node->{'root'};

    ChangingFile(1);
}

#bind enforce_variant Ctrl+y menu Enforce Variant
sub enforce_variant {

    ChangingFile(0);

    my $node = $this;

    $node = $node->parent() if $node->{'#name'} eq 'Entry';

    return unless $node->{'#name'} eq 'Nest';

    my @root = split " ", $node->{'root'};

    return unless @root == 3 and $root[-1] =~ /^[wy]$/;

    foreach ($node->children()) {

        foreach ($_->{'morphs'}, ElixirFM::plurals($_), ElixirFM::feminis($_)) {

            my $morphs = ElixirFM::morphs($_);

            if ($root[-1] eq 'w') {

                $morphs->[0] =~ s/L/w/g;
                $morphs->[0] =~ s/y([^FCw]*)$/L$1/;
            }
            else {

                $morphs->[0] =~ s/L/y/g;
                $morphs->[0] =~ s/w([^FCy]*)$/L$1/;
            }

            $_ =  ElixirFM::unmorphs($morphs);
        }
    }

    $node->{'root'} = join ' ', @root[0, 1], $root[-1] eq 'w' ? 'y' : 'w';

    ChangingFile(1);
}

#bind new_Nest Ctrl+n menu New Nest
sub new_Nest {

    my $level = $this->level();

    my $node;

    if ($level == 0) {

        $node = NewSon($this);
    }
    else {

        $this = $this->parent() foreach 1 .. $level - 1;

        $node = NewLBrother($this);
    }

    DetermineNodeType($node);

    $node->{'root'} = $this->{'root'} if exists $this->{'root'};

    return $node;
}

#bind new_Entry Ctrl+e menu New Entry
sub new_Entry {

    my $level = $this->level();

    my $node;

    ChangingFile(0);

    if ($level == 0) {

        $this = new_Nest($this);

        $level++;
    }

    if ($level == 1) {

        $node = NewSon($this);
    }
    else {

        $this = $this->parent() foreach 1 .. $level - 2;

        $node = NewLBrother($this);
    }

    DetermineNodeType($node);

    $node->{'morphs'} = '_____';

    $node->{'entity'} = Treex::PML::Factory->createSeq();

    $node->{'entity'}->set_content_pattern('(Verb|Noun|Adj|Pron|Num|Adv|Prep|Conj|Part|Intj|Xtra|Ynit|Zero|Grph)');
    $node->{'entity'}->push_element('Grph', Treex::PML::Factory->createStructure());

    ChangingFile(1);

    return $node;
}

#bind new_Frame Ctrl+f menu New Frame
sub new_Frame {

    my $level = $this->level();

    my $node;

    ChangingFile(0);

    return unless $level > 1;

    $node = NewSon($this);

    DetermineNodeType($node);

    if ($level == 3 and not $node->rbrother()) {

        $node->{'role'} = 'ACT';
        $node->{'type'} = 'OBL';
    }

    ChangingFile(1);

    return $node;
}

#bind paradigm_except Ctrl+p menu Paradigm Except
sub paradigm_except {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    my $entity = ElixirFM::entity($this);

    return unless $entity->[0] eq 'Noun';

    $entity->[1]{'except'} = exists $entity->[1]{'except'} && $entity->[1]{'except'} ne ''
                                  ? $entity->[1]{'except'} eq 'Triptote' ? 'Diptote' : ''
                                  : 'Triptote';

    ChangingFile(1);
}

#bind paradigm_restrict Ctrl+w menu Paradigm Restrict
sub paradigm_restrict {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Entry';

    my $entity = ElixirFM::entity($this);

    return unless $entity->[0] eq 'Noun';

    if (exists $entity->[1]{'plural'} and @{$entity->[1]{'plural'}}) {

        return unless @{$entity->[1]{'plural'}} == 1 and $this->{'morphs'} eq $entity->[1]{'plural'}[0];

        return if not exists $this->{'limits'} or exists $this->{'limits'}{'snd'} and @{$this->{'limits'}{'snd'}};

        return unless exists $this->{'limits'}{'fst'} and $this->{'limits'}{'fst'} eq "-------P--";

        delete $entity->[1]{'plural'};

        delete $this->{'limits'};
    }
    else {

        return if exists $this->{'limits'} and exists $this->{'limits'}{'fst'} and $this->{'limits'}{'fst'} ne "";

        return if exists $this->{'limits'} and exists $this->{'limits'}{'snd'} and @{$this->{'limits'}{'snd'}};

        $entity->[1]{'plural'} = Treex::PML::Factory->createList([$this->{'morphs'}]);

        $this->{'limits'} = Treex::PML::Factory->createStructure();

        $this->{'limits'}{'fst'} = "-------P--";
    }

    ChangingFile(1);
}

#bind change_frame_properties Ctrl+q menu Change Frame Properties
sub change_frame_properties {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Frame';

    $this->{'example'} = Treex::PML::Factory->createList([Treex::PML::Factory->createStructure()])

                                    unless exists $this->{'example'} and @{$this->{'example'}};

    unless (exists $this->{'reciprocity'}) {

        $this->{'reciprocity'} = Treex::PML::Factory->createStructure();

        $this->{'reciprocity'}{'example'} = Treex::PML::Factory->createList([Treex::PML::Factory->createStructure()])

                                    unless exists $this->{'reciprocity'}{'example'} and @{$this->{'reciprocity'}{'example'}};
    }

    unless (exists $this->{'passivity'}) {

        $this->{'passivity'} = Treex::PML::Factory->createStructure();

        $this->{'passivity'}{'example'} = Treex::PML::Factory->createList([Treex::PML::Factory->createStructure()])

                                    unless exists $this->{'passivity'}{'example'} and @{$this->{'passivity'}{'example'}};
    }

    main::editAttrsDialog($grp, $this);
}

#bind change_slot_role Ctrl+r menu Change Slot Role
sub change_slot_role {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Slot';

    main::doEditAttr($grp, $this, 'role');
}

#bind change_slot_type Ctrl+t menu Change Slot Type
sub change_slot_type {

    ChangingFile(0);

    return unless $this->{'#name'} eq 'Slot';

    main::doEditAttr($grp, $this, 'type');
}

#bind delete_subtree Ctrl+d menu Edit: Delete Subtree
sub delete_subtree {

    ChangingFile(0);

    my $node = $this->rbrother() || $this->lbrother() || $this->parent();

    return unless defined $node;

    CutNode($this);

    $this = $node;

    ChangingFile(1);
}

#bind cut_subtree Ctrl+x menu Edit: Cut Subtree
sub cut_subtree {

    ChangingFile(0);

    my $node = $this->rbrother() || $this->lbrother() || $this->parent();

    return unless defined $node;

    $TredMacro::nodeClipboard = CutNode($this);

    $this = $node;

    ChangingFile(1);
}

#bind paste_subtree Ctrl+v menu Edit: Paste Subtree
sub paste_subtree {

    ChangingFile(0);

    return unless defined $TredMacro::nodeClipboard;

    if (not $this->test_child_type($TredMacro::nodeClipboard) and
        $this->parent() and
        $this->parent()->test_child_type($TredMacro::nodeClipboard)) {

        PasteNodeAfter($TredMacro::nodeClipboard, $this);

        $this = $TredMacro::nodeClipboard;

        $TredMacro::nodeClipboard = undef;
    }
    else {

        TredMacro::PasteFromClipboard();
    }

    ChangingFile(1);
}

#bind copy_subtree Ctrl+c menu Edit: Copy Subtree
sub copy_subtree {

    $TredMacro::nodeClipboard = CloneSubtree($this);
}

# ##################################################################################################
#
# ##################################################################################################

sub CreateStylesheets {

    return << '>>';

rootstyle:<? '#{vertical}#{Node-textalign:left}#{Node-shape:rectangle}' .
             '#{skipHiddenLevels:1}#{lineSpacing:1.1}' ?>

style:<? my $level = $this->level();
         ( $level < 6 ? '#{Line-coords:n,n,p,n,p,p}' : '' ) .
         ( $ElixirFM::option->{$grp}{'hide'} &&
           $ElixirFM::option->{$grp}{'hide'} < $level
               ? '#{Node-hide:1}' :
           $level == 0 ? '#{Node-hide:1}' :
           $level == 4 ? '#{Node-rellevel:1}' . (
                 $this->{'type'} eq 'OBL'
               ? '#{Line-dash}#{Line-width:3}#{Line-fill:black}'
               : $this->{'type'} eq 'OPT'
               ? '#{Line-dash:-}#{Line-width:2}#{Line-fill:black}'
               : '#{Line-dash:-}#{Line-width:2}#{Line-fill:red}' ) :
           $level == 6 ? '#{Node-rellevel}' . (
                 '#{Line-dash}#{Line-width:2}#{Line-fill:black}'
           ) : '' ) ?>

node:<? $this->{'#name'} eq 'Entry'
      ? '${entity=' . ElixirFM::entity($this)->[0] . '}   #{custom6}${entity=' .
        ( join '}  #{custom3}${entity=',
          map { ref $_ ? @{$_} : () }
          map { $_->{'form'}, $_->{'imperf'}, $_->{'second'}, $_->{'pfirst'} }
          ElixirFM::entity($this)->[1] ) . '}' .
        ( exists $this->{'limits'} &&
          exists $this->{'limits'}{'fst'} ?
          "\n" . '#{custom7}${limits=limited} #{custom3}${limits="' .
          $this->{'limits'}{'fst'} . '"}' : '' ) .
        ( exists ElixirFM::entity($this)->[1]{'except'} &&
                 ElixirFM::entity($this)->[1]{'except'} ne '' ?
          "\n" . '#{custom7}${entity=excepts} #{custom3}${entity="' .
          ElixirFM::entity($this)->[1]{'except'} . '"}' : '' ) .
        ( exists ElixirFM::entity($this)->[1]{'derive'} &&
                 ElixirFM::entity($this)->[1]{'derive'} ne '' ?
          "\n" . '#{custom7}${entity=derives} #{custom3}${entity="' .
          ElixirFM::entity($this)->[1]{'derive'} . '"}' : '' )
      : $this->{'#name'} eq 'Slot'
      ? ( $this->{'type'} eq 'OBL' ? '#{custom2}' :
          $this->{'type'} eq 'OPT' ? '#{custom6}' : '') .
          '${=' . $this->{'role'} . '}'
      : $this->{'#name'} eq 'Node'
      ? ( join "\n", $this->{'form'} eq '' ? ()
                     : '${=' . ElixirFM::phor($this->{'form'}) . '}',
                     $this->{'tag'} eq '' ? ()
                     : '#{custom2}${=' . $this->{'tag'} . '}' )
      : '#{darkgrey}${entity=' . $this->{'#name'} . '}'
   ?><? $this->{'#name'} eq 'Nest'
      ? '  #{custom6}' . ElixirFM::phor(ElixirFM::cling($this->{'root'})) .
        '  #{custom2}' . '${root}'
      : '' ?>

node:<? $this->{'#name'} eq 'Entry'
      ? '#{custom2}${morphs=' . $this->{'morphs'} . '}'
        . ( join "", map { "\n" . $_ } map {
              '#{custom6}${entity=' . $_ . '}' }
            ElixirFM::plurals($this),
            ElixirFM::masdars($this) )
        . ( join "", map { "\n" . $_ } map {
              '#{custom3}${entity=' . $_ . '}' }
            ElixirFM::feminis($this) )
      : '' ?>

node:<? $this->{'#name'} eq 'Entry'
      ? ElixirFM::phon(ElixirFM::merge($this->parent()->{'root'}, $this->{'morphs'})) .
        '#{slategrey}' . ( join "",
          map { "\n" . ElixirFM::phon(ElixirFM::merge($_->[0], $_->[1])) }
          map { [$this->parent()->{'root'}, $_] }
          ElixirFM::plurals($this),
          ElixirFM::masdars($this),
          ElixirFM::feminis($this) )
      : '' ?>

node:<? $this->{'#name'} eq 'Entry'
      ? ElixirFM::orth(ElixirFM::merge($this->parent()->{'root'}, $this->{'morphs'})) .
        '#{slategrey}' . ( join "",
          map { "\n" . ElixirFM::orth(ElixirFM::merge($_->[0], $_->[1])) }
          map { [$this->parent()->{'root'}, $_] }
          ElixirFM::plurals($this),
          ElixirFM::masdars($this),
          ElixirFM::feminis($this) )
      : '' ?>

node:<? join "\n", ( exists $this->{'reflex'}
          ? $this->{'#name'} eq 'Entry'
            ? '#{custom3}${reflex=' . (join ", ", @{$this->{'reflex'}}) . '}'
            : ( ( exists $this->{'reflex'}{'en'} && @{$this->{'reflex'}{'en'}} ?
                '#{custom2}${reflex=' . (join ", ", @{$this->{'reflex'}{'en'}}) . '}' : () ),
                ( exists $this->{'reflex'}{'cs'} && @{$this->{'reflex'}{'cs'}} ?
                '#{custom6}${reflex=' . (join ", ", @{$this->{'reflex'}{'cs'}}) . '}' : () ) )
          : () ),
        ( exists $this->{'note'} ? '#{darkgrey}${note=' . $this->{'note'} . '}' : () ) ?>

>>
}

sub node_release_hook {

    my ($node, $done, $mode) = @_;

    return unless $done;

    my $diff = $node->level() - $done->level();

    if ($diff == 1) {

        return;
    }
    else {

        if ($diff == 0) {

            shuffle_node($node, $done);

            Redraw_FSFile_Tree();
            main::centerTo($grp, $grp->{currentNode});
            ChangingFile(1);
        }

        return 'stop';
    }
}

sub shuffle_node ($$) {

    my ($node, $done) = @_;

    my ($fore) = grep { $_ == $node or $_ == $done } GetNodes();

    if ($node == $fore) {

        CutPasteAfter($node, $done);
    }
    else {

        CutPasteBefore($node, $done);
    }
}

sub get_nodelist_hook {

    my ($fsfile, $index, $focus, $hiding) = @_;
    my ($nodes);

    ($nodes, $focus) = $fsfile->nodes($index, $focus, $hiding);

    ($focus) = $focus->children() unless $focus->parent() or $hiding;

    @{$nodes} = reverse @{$nodes} if $main::treeViewOpts->{reverseNodeOrder};

    return [$nodes, $focus];
}

sub get_value_line_hook {

    my ($fsfile, $index) = @_;

    return [];
}

sub highlight_value_line_tag_hook {

}

sub value_line_doubleclick_hook {

    return 'stop';
}

sub node_doubleclick_hook {

    return 'stop';
}

sub node_click_hook {

    return 'stop';
}

#bind move_word_home Home menu Move to First Nest
sub move_word_home {

    $this = ($root->children())[0];

    $Redraw = 'none';
    ChangingFile(0);
}

#bind move_word_end End menu Move to Last Nest
sub move_word_end {

    $this = ($root->children())[-1];

    $Redraw = 'none';
    ChangingFile(0);
}

OverrideBuiltinBinding(__PACKAGE__, "Shift+Home", [ MacroCallback('move_entry_home'), 'Move to First Entry' ]);

#bind move_entry_home Shift+Home menu Move to First Entry
sub move_entry_home {

    my $node = $this;
    my $level = $node->level();

    my $done;
    my $roof = $level > 1 ? $this->parent() : $this;

    my @children = grep { not IsHidden($_) } $this->children();

    do {

        $done = $node if $level == $node->level();

        $node = PrevVisibleNode($node, $roof);
    }
    while $node and not $node == $roof;     # unexpected extra check ...

    if ($done == $this and @children) {

        $this = $children[0];
    }
    else {

        $this = $done;
    }

    $Redraw = 'none';
    ChangingFile(0);
}

OverrideBuiltinBinding(__PACKAGE__, "Shift+End", [ MacroCallback('move_entry_end'), 'Move to Last Entry' ]);

#bind move_entry_end Shift+End menu Move to Last Entry
sub move_entry_end {

    my $node = $this;
    my $level = $node->level();

    my $done;
    my $roof = $level > 1 ? $this->parent() : $this;

    my @children = grep { not IsHidden($_) } $this->children();

    do {

        $done = $node if $level == $node->level();

        $node = NextVisibleNode($node, $roof);
    }
    while $node;

    if ($done == $this and @children) {

        $this = $children[-1];
    }
    else {

        $this = $done;
    }

    $Redraw = 'none';
    ChangingFile(0);
}

#bind move_cluster_home Ctrl+Home menu Move to First Cluster
sub move_cluster_home {

    GotoTree(1);

    $Redraw = 'win';
    ChangingFile(0);
}

#bind move_cluster_end Ctrl+End menu Move to Last Cluster
sub move_cluster_end {

    GotoTree($grp->{FSFile}->lastTreeNo + 1);

    $Redraw = 'win';
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

#bind move_node_forward to Alt+Right menu Move Node Forward
sub move_node_forward {

    $Redraw = 'none';
    ChangingFile(0);

    my $node = $this;

    if ($main::treeViewOpts->{reverseNodeOrder} and not InVerticalMode()) {

        CutPasteBefore($node, $node->lbrother()) if $node->lbrother();
    }
    else {

        CutPasteAfter($node, $node->rbrother()) if $node->rbrother();
    }

    $this = $node;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind move_node_backward to Alt+Left menu Move Node Backward
sub move_node_backward {

    $Redraw = 'none';
    ChangingFile(0);

    my $node = $this;

    if ($main::treeViewOpts->{reverseNodeOrder} and not InVerticalMode()) {

        CutPasteAfter($node, $node->rbrother()) if $node->rbrother();
    }
    else {

        CutPasteBefore($node, $node->lbrother()) if $node->lbrother();
    }

    $this = $node;

    $Redraw = 'tree';
    ChangingFile(1);
}

#bind invoke_undo BackSpace menu Undo Action
sub invoke_undo {

    warn 'Undoooooing ;)';

    main::undo($grp);
    $this = $grp->{currentNode};

    ChangingFile(0);
}

#bind invoke_redo Shift+BackSpace menu Redo Action
sub invoke_redo {

    warn 'Redoooooing ;)';

    main::re_do($grp);
    $this = $grp->{currentNode};

    ChangingFile(0);
}

#bind hiding_level_deeper Ctrl+plus menu Hiding Level Deeper
sub hiding_level_deeper {

    $option->{$grp}{'hide'}++;

    $option->{$grp}{'hide'} %= 6;

    ChangingFile(0);
}

#bind hiding_level_higher Ctrl+minus menu Hiding Level Higher
sub hiding_level_higher {

    $option->{$grp}{'hide'}--;

    $option->{$grp}{'hide'} %= 6;

    ChangingFile(0);
}

#bind hiding_level_reset Ctrl+equal menu Hiding Level Reset
sub hiding_level_reset {

    $option->{$grp}{'hide'} = $option->{$grp}{'hide'} ? 0 : 2;

    ChangingFile(0);
}

# ##################################################################################################
#
# ##################################################################################################

sub path (@) {

    return File::Spec->join(@_);
}

sub inter_with_level ($) {

    my ($inter, $level) = ('elixir', $_[0]);

    my ($path, $name);

    my $file = File::Spec->canonpath(FileName());

    ($name, $path, undef) = fileparse($file, '.pml');
    ($name, undef, undef) = fileparse($name, ".$inter");
    (undef, $path, undef) = fileparse((substr $path, 0, -1), '');

    return $level, $name, $path;
}

#bind open_level_morpho_prime to Alt+1
sub open_level_morpho_prime {

    open_level_morpho();
}

#bind open_level_syntax_prime to Alt+2
sub open_level_syntax_prime {

    open_level_syntax();
}

#bind open_level_tecto_prime to Alt+3
sub open_level_tecto_prime {

    open_level_tecto();
}

#bind open_level_morpho to Ctrl+Alt+1 menu Action: Edit MorphoTrees File
sub open_level_morpho {

    ChangingFile(0);

    SetCurrentWindow($MorphoTrees::window->{$grp}) if exists $MorphoTrees::window->{$grp};
}

#bind open_level_syntax to Ctrl+Alt+2 menu Action: Edit Analytic File
sub open_level_syntax {

    ChangingFile(0);

    my ($level, $name, $path, @file) = inter_with_level 'syntax';
}

#bind open_level_tecto to Ctrl+Alt+3 menu Action: Edit DeepLevels File
sub open_level_tecto {

    ChangingFile(0);

    my ($level, $name, $path, @file) = inter_with_level 'deeper';
}

sub switch_the_levels {

    ChangingFile(0);
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

ElixirFM - Context for Annotation of the ElixirFM Lexicon in the TrEd Environment


=head1 DESCRIPTION

ElixirFM is a high-level implementation of Functional Arabic Morphology documented at
L<http://github.com/otakar-smrz/elixir-fm/>. The core of ElixirFM is written in Haskell,
while interfaces in Perl and Python support lexicon editing and other interactions.

TrEd Tree Editor L<http://ufal.mff.cuni.cz/tred/>

Prague Arabic Dependency Treebank L<http://ufal.mff.cuni.cz/padt/online/>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006-2016 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
