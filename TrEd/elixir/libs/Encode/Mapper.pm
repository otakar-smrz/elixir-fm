# ############################################################################ Otakar Smrz, 2003/01/23
#
# Mapper Engine Class ##################################################################### 2003/06/19

package Encode::Mapper;

use 5.008;

use strict;
use warnings;

use Carp;

our $VERSION = '1.7';


use bytes;                  # ensures splitting into one-byte tokens .. lexically scoped


our %options;               # records of options per package .. global register
our %option;                # options of the caller package .. used with local


sub import {                # enforces setting of options
    my $cls = shift @_;
    $cls->options(@_) if @_;
}


sub whisper ($) {           # module's internal function

    carp shift unless $option{'silent'};
}


sub verify_rule ($$) {      # module's internal function

    unless (defined $_[0] and $_[0] ne '') {
        whisper "Rule's LHS is empty, rule ignored";
        return;
    }
    unless (defined $_[1]) {
        whisper "Rule's RHS is undefined, rule ignored";
        return;
    }

    if (UNIVERSAL::isa($_[1], 'ARRAY')) {
        unless (defined $_[1]->[0]) {
            whisper "Rule's RHS is undefined, rule ignored";
            return;
        }
        unless (ref \$_[1]->[0] eq 'SCALAR' or UNIVERSAL::isa($_[1]->[0], 'CODE')) {
            whisper "Rule's RHS is neither literal nor subroutine reference, rule ignored";
            return;
        }
        unless (defined $_[1]->[1] and length $_[1]->[1] < length $_[0]) {
            whisper "Rule type '\$A => [\$X, \$Y], length \$A > length \$Y' misused, considering it '\$A => \$X'";
            $_[1] = $_[1]->[0];
        }
    }
    elsif (ref \$_[1] ne 'SCALAR' and not UNIVERSAL::isa($_[1], 'CODE')) {
        whisper "Rule's RHS is neither literal nor subroutine reference, rule ignored";
        return;
    }

    return 1;
}


sub options ($%) {          # options for general compilation of Mappers
    my $cls = shift @_;
    my ($i, $opt, %opt);

    my $caller = caller 0; $caller = caller 1 if $caller eq __PACKAGE__;
    my @returns = exists $options{$caller} ? %{$options{$caller}} : ();

    while (@_) {
        $opt = lc shift @_;

        if ($opt =~ /^\:/) {
            $opt eq ':others' and $opt{'others'} = sub { shift } and next;
            $opt eq ':silent' and $opt{'silent'} = 1 and next;
            $opt eq ':join'   and $opt{'join'} = '';
        }
        else {
            $opt =~ /^\-*(.*)$/;
            $opt{$1} = shift @_;
        }
    }

    {
        local $option{'silent'} = exists $opt{'silent'} ? $opt{'silent'} : $options{$caller}{'silent'};

        if (defined $opt{'complement'} and UNIVERSAL::isa($opt{'complement'}, 'ARRAY')) {
            for ($i = 0; $i < @{$opt{'complement'}}; $i += 2) {
                verify_rule $opt{'complement'}->[$i], $opt{'complement'}->[$i + 1];
            }
        }

        if (defined $opt{'override'} and UNIVERSAL::isa($opt{'override'}, 'ARRAY')) {
            for ($i = 0; $i < @{$opt{'override'}}; $i += 2) {
                verify_rule $opt{'override'}->[$i], $opt{'override'}->[$i + 1];
            }
        }

        if (defined $opt{'others'} and not $option{'silent'}) {     # see whisper
            if (UNIVERSAL::isa($opt{'others'}, 'CODE')) {
                carp "The subroutine will be called with the 'other' LHS parameter to get the rule's RHS";
            }
            else {
                carp "The scalar value will become the RHS of each 'other' LHS";
            }
        }
    }

    return %opt unless defined $cls;

    $options{$caller}{$_} = $opt{$_} foreach keys %opt;

    return @returns;
}


*new = *compile{'CODE'};    # provides the 'new' constructor .. the 'compile' method
                            # *new = \&compile;     # might be known at compile-time


sub compile ($@) {          # returns Mapper .. modified Aho-Corasick and Boyer-Moore search engine
    my $cls = shift @_;
    my (@tree, @bell, @skip, @queue, %redef);
    my ($q, $r, $s, $t, $i, $token, $trick);

    my ($null_list, $null_hash) = ([], {});     # references to empties need not consume unique memory
    my ($no_code, $no_list) = (1, 1);           # optimization indicators

    local %option = exists $options{caller 0} ? %{$options{caller 0}} : ();
                                                # options be local due to verify_rule and whisper

    if (UNIVERSAL::isa($_[0], 'ARRAY')) {
        %option = (%option, options undef, @{shift @_});
    }
    elsif (UNIVERSAL::isa($_[0], 'HASH')) {
        %option = (%option, options undef, %{shift @_});
    }

    $skip[0] = undef;       # never ever used .. fix the number of list elements equal
    $bell[0] = $null_list;  # important .. depth-wise inheritation of the lists

    if (defined $option{'complement'}) {
        for ($i = 0; $i < @{$option{'complement'}}; $i += 2) {

            $q = 0;

            foreach $token (split //, $option{'complement'}->[$i]) {
                $tree[$q]->{$token} = ++$r unless defined $tree[$q]->{$token};  # increment $r ^^
                $q = $tree[$q]->{$token};
            }

            $tree[$q] = {} unless defined $tree[$q];    # define trees correctly, economize below

            whisper "Redefining the mapping for '" . $option{'complement'}->[$i] . "'" if defined $bell[$q];

            $bell[$q] = [ $option{'complement'}->[$i + 1] ];
        }
    }

    for ($i = 0; $i < @_; $i += 2) {    # generate $tree[$q] transition function and initial $bell[$q]

        next unless verify_rule $_[$i], $_[$i + 1];

        $q = 0;

        foreach $token (split //, $_[$i]) {
            $tree[$q]->{$token} = ++$r unless defined $tree[$q]->{$token};  # increment $r ^^
            $q = $tree[$q]->{$token};
        }

        $tree[$q] = {} unless defined $tree[$q];    # define trees correctly, economize below

        whisper "Redefining the mapping for '$_[$i]'" if $redef{$q}++;

        $bell[$q] = [ $_[$i + 1] ];
    }

    if (defined $option{'override'}) {
        for ($i = 0; $i < @{$option{'override'}}; $i += 2) {

            $q = 0;

            foreach $token (split //, $option{'override'}->[$i]) {
                $tree[$q]->{$token} = ++$r unless defined $tree[$q]->{$token};  # increment $r ^^
                $q = $tree[$q]->{$token};
            }

            $tree[$q] = {} unless defined $tree[$q];    # define trees correctly, economize below

            whisper "Redefining the mapping for '" . $option{'override'}->[$i] . "'" if $redef{$q}++;

            $bell[$q] = [ $option{'override'}->[$i + 1] ];
        }
    }

    foreach $token (map { chr } 0x00..0xFF) {
        unless (defined $tree[0]->{$token}) {
            unless (defined $option{'others'}) {
                $tree[0]->{$token} = 0;
            }
            else {
                $tree[0]->{$token} = ++$r;  # increment $r ^^
                $tree[$r] = {};             # define trees correctly
            }
        }

        $q = $tree[0]->{$token};    # including existing prefixes

        unless ($q == 0) {
            unless (defined $bell[$q]) {
                if (not defined $option{'others'}) {
                    $bell[$q] = $bell[0];
                }
                elsif (UNIVERSAL::isa($option{'others'}, 'CODE')) {
                    $bell[$q] = [ $option{'others'}->($token) ];
                }
                else {
                    $bell[$q] = [ $option{'others'} ];
                }
            }

            $skip[$q] = 0;

            push @queue, $q;
        }
    }

    while (@queue) {                # generate $skip[$q] backward function and complete $bell[$q]
        $q = shift @queue;

        foreach $token (keys %{$tree[$q]}) {
            $t = $tree[$q]->{$token};
            push @queue, $t;

            if (defined $bell[$t]) {
                $skip[$t] = 0;

                if (UNIVERSAL::isa($bell[$t]->[0], 'ARRAY')) {  # shortening property of the rules
                    $s = $skip[$t];

                    foreach $trick (split //, $bell[$t]->[0]->[1]) {
                        until (defined $tree[$s]->{$trick}) {   # loops only if not in the root ^^
                            push @{$bell[$t]}, @{$bell[$s]};
                            $s = $skip[$s];
                        }
                        $s = $tree[$s]->{$trick};
                    }

                    $skip[$t] = $s;
                    $bell[$t]->[0] = $bell[$t]->[0]->[0];
                }
            }
            else {
                $s = $skip[$q];
                $bell[$t] = [ @{$bell[$q]} ];   # unique reference quite important ^^

                until (defined $tree[$s]->{$token}) {   # extremely tricky ...
                    push @{$bell[$t]}, @{$bell[$s]};
                    $s = $skip[$s];
                }

                $skip[$t] = $tree[$s]->{$token};
            }
        }

        $tree[$q] = $null_hash unless keys %{$tree[$q]};    # economize with memory
    }

    for ($q = 1; $q < @bell; $q++) {    # optimize the bell function for $q > 0

        if (grep { UNIVERSAL::isa($_, 'CODE') } @{$bell[$q]}) {
            $no_code = 0;
        }
        elsif (defined $option{'join'}) {
            $bell[$q] = join $option{'join'}, @{$bell[$q]};
            next;
        }

        if (@{$bell[$q]} == 1) {
            $bell[$q] = $bell[$q]->[0];
        }
        else {
            $bell[$q] = $null_list if @{$bell[$q]} == 0;
            $no_list = 0;
        }
    }

    return bless {
                    'current' => 0,
                    'tree' => \@tree,
                    'bell' => \@bell,
                    'skip' => \@skip,
                    'null' => { 'list' => $null_list, 'hash' => $null_hash },
                    'join' => $option{'join'},
                    'no_code' => $no_code,
                    'no_list' => $no_list,
        }, $cls;
}


sub process ($@) {          # returns the list of search results performed by Mapper
    my $obj = shift @_;
    my (@returns, $phrase, $token, $q);

    $q = $obj->{'current'};

    if ($obj->{'no_list'}) {
        foreach $phrase (@_) {
            foreach $token (split //, $phrase) {
                until (defined $obj->{'tree'}[$q]->{$token}) {
                    push @returns, $obj->{'bell'}[$q];
                    $q = $obj->{'skip'}[$q];
                }
                $q = $obj->{'tree'}[$q]->{$token};
            }
        }
    }
    else {
        foreach $phrase (@_) {
            foreach $token (split //, $phrase) {
                until (defined $obj->{'tree'}[$q]->{$token}) {
                    push @returns, ref $obj->{'bell'}[$q] eq 'ARRAY' ?
                         @{$obj->{'bell'}[$q]} : $obj->{'bell'}[$q];
                    $q = $obj->{'skip'}[$q];
                }
                $q = $obj->{'tree'}[$q]->{$token};
            }
        }
    }

    $obj->{'current'} = $q;

    return @returns;
}


sub recover ($;$$) {        # returns the 'in-progress' search result and resets Mapper
    my ($obj, $r, $q) = @_;
    my (@returns);

    $q = $obj->{'current'} unless defined $q;

    if ($obj->{'no_list'}) {
        until ($q == 0) {
            push @returns, $obj->{'bell'}[$q];
            $q = $obj->{'skip'}[$q];
        }
    }
    else {
        until ($q == 0) {
            push @returns, ref $obj->{'bell'}[$q] eq 'ARRAY' ?
                 @{$obj->{'bell'}[$q]} : $obj->{'bell'}[$q];
            $q = $obj->{'skip'}[$q];
        }
    }

    $obj->{'current'} = defined $r ? $r : 0;

    return @returns;
}


sub compute ($@) {
    my $obj = shift @_;
    my (@returns, $phrase, $token, $q);

    $obj->recover();

    foreach $phrase (@_) {
        foreach $token (split //, $phrase) {
            push @returns, [$token, $obj->{'current'}];
            push @{$returns[-1]}, [$obj->process($token)];
            $q = $obj->{'current'};
            push @{$returns[-1]}, $q, $obj->{'bell'}[$q], $obj->{'skip'}[$q];
        }
    }

    push @returns, ['recover', $obj->{'current'}];
    push @{$returns[-1]}, [$obj->recover()];
    $q = $obj->{'current'};
    push @{$returns[-1]}, $q, $obj->{'bell'}[$q], ($q == 0 ? 'undef' : $obj->{'skip'}[$q]);

    return @returns;
}


sub dumper ($;$) {
    my ($obj, $ref) = @_;

    $ref = ['L', 'H', 'mapper'] unless defined $ref;

    require Data::Dumper;

    return Data::Dumper->new([$obj->{'null'}{'list'}, $obj->{'null'}{'hash'}, $obj], $ref);
}


sub describe ($;$) {
    my ($obj, $ref) = @_;
    my ($q, $nodes, $edges, $skips, $bells, $paths, $lists);

    $nodes = @{$obj->{'tree'}};
    $edges = [];
    $lists = [];

    if ($obj->{'no_list'}) {
        for ($q = 0; $q < @{$obj->{'tree'}}; $q++) {
            $lists->[$q * 3] = scalar %{$obj->{'tree'}[$q]};
            $lists->[$q * 3] =~ m{^([0-9]+)(?:/([0-9]+))?$};

            $edges->[0] += scalar keys %{$obj->{'tree'}[$q]};
            $lists->[$q * 3] .= " " . keys %{$obj->{'tree'}[$q]};

            if (defined $2) {
                $edges->[1] += $1;
                $edges->[2] += $2;
            }
            else {
                $paths++ unless $1;
            }

            $lists->[$q * 3 + 1] = $obj->{'bell'}[$q] eq "" ? 0 : 1;
            $bells += $lists->[$q * 3 + 1];

            next if $q == 0;

            $lists->[$obj->{'skip'}[$q] * 3 + 2]++;
            $skips++ unless $obj->{'skip'}[$q] == 0;
        }
    }
    else {
        for ($q = 0; $q < @{$obj->{'tree'}}; $q++) {
            $lists->[$q * 3] = scalar %{$obj->{'tree'}[$q]};
            $lists->[$q * 3] =~ m{^([0-9]+)(?:/([0-9]+))?$};

            $edges->[0] += scalar keys %{$obj->{'tree'}[$q]};
            $lists->[$q * 3] .= " " . keys %{$obj->{'tree'}[$q]};

            if (defined $2) {
                $edges->[1] += $1;
                $edges->[2] += $2;
            }
            else {
                $paths++ unless $1;
            }

            $lists->[$q * 3 + 1] = ref $obj->{'bell'}[$q] eq 'ARRAY' ? scalar @{$obj->{'bell'}[$q]} : 1;
            $bells += $lists->[$q * 3 + 1];

            next if $q == 0;

            $lists->[$obj->{'skip'}[$q] * 3 + 2]++;
            $skips++ unless $obj->{'skip'}[$q] == 0;
        }
    }

    my $return = {'nodes' => $nodes, 'edges' => $edges->[0], 'slots' => $edges->[1] . "/" . $edges->[2],
                  'skips' => $skips, 'bells' => $bells, 'paths' => $paths, 'lists' => $lists};

    if (defined $ref) {
        $ref = *STDERR if ref $ref ne 'GLOB';
        print $ref ( join ", ", map { ( defined $return->{$_} ? $return->{$_} : 'undef' ) . " " . $_ }
                                    grep { $_ ne 'lists' } keys %{$return} ) . "\n";
    }

    return $return;
}


sub encode ($$$;$) {
    my ($cls, $text, $encoder, $enc) = @_;
    my ($mapper, $join);

    local %option = exists $options{caller 0} ? %{$options{caller 0}} : ();
                                                # options be local due to whisper

    require Encode;

    unless (Encode::is_utf8($text)) {
        whisper "The input text is not in Perl's internal utf8 .. note only, might be fine";
    }

    if ($enc) {
        unless (Encode::resolve_alias($enc)) {
            carp "Cannot resolve the proposed '$enc' encoding";
            return undef;
        }

        $text = Encode::encode($enc, $text);
    }

    if (not UNIVERSAL::isa($encoder, 'ARRAY') or grep { defined $_ and not $_->isa($cls) } @{$encoder}) {
        carp "Expecting a reference to an array of '$cls' objects";
        return undef;
    }

    foreach $mapper (@{$encoder}) {
        last unless defined $mapper;

        $join = defined $mapper->{'join'} ? $mapper->{'join'} :
                defined $option{'join'} ? $option{'join'} : "";

        if ($mapper->{'no_code'}) {
            $text = join $join, $mapper->process($text), $mapper->recover();
        }
        else {
            $text = join $join, map {
                        UNIVERSAL::isa($_, 'CODE') ? $_->() : $_
                    } $mapper->process($text), $mapper->recover();
        }
    }

    return $text;
}


sub decode ($$$;$) {
    my ($cls, $text, $decoder, $enc) = @_;
    my ($mapper, $join);

    local %option = exists $options{caller 0} ? %{$options{caller 0}} : ();
                                                # options be local due to tradition ^^

    require Encode;

    $enc = 'utf8' unless $enc;

    unless (Encode::resolve_alias($enc)) {
        carp "Cannot resolve the proposed '$enc' encoding";
        return undef;
    }

    if (not UNIVERSAL::isa($decoder, 'ARRAY') or grep { defined $_ and not $_->isa($cls) } @{$decoder}) {
        carp "Expecting a reference to an array of $cls objects";
        return undef;
    }

    foreach $mapper (@{$decoder}) {
        last unless defined $mapper;

        $join = defined $mapper->{'join'} ? $mapper->{'join'} :
                defined $option{'join'} ? $option{'join'} : "";

        if ($mapper->{'no_code'}) {
            $text = join $join, $mapper->process($text), $mapper->recover();
        }
        else {
            $text = join $join, map {
                        UNIVERSAL::isa($_, 'CODE') ? $_->() : $_
                    } $mapper->process($text), $mapper->recover();
        }
    }

    return Encode::is_utf8($text) ? $text : Encode::decode($enc, $text);
}


1;

__END__


=head1 NAME

Encode::Mapper - Intuitive yet efficient mappings for Encode


=head1 SYNOPSIS

    use Encode::Mapper;     ############################################# Enjoy the ride ^^

    use Encode::Mapper ':others', ':silent';    # syntactic sugar for compiler options ..

    Encode::Mapper->options (                   # .. equivalent, see more in the text
            'others' => sub { shift },
            'silent' => 1,
        );

    Encode::Mapper->options (                   # .. resetting, but not to use 'use' !!!
            'others' => undef,
            'silent' => 0
        );

    ## Types of rules for mapping the data and controlling the engine's configuration #####

    @rules = (
        'x',            'y',            # single 'x' be 'y', unless greediness prefers ..
        'xx',           'Y',            # .. double 'x' be 'Y' or other rules

        'uc(x)x',       sub { 'sorry ;)' },     # if 'x' follows 'uc(x)', be sorry, else ..

        'uc(x)',        [ '', 'X' ],            # .. alias this *engine-initial* string
        'xuc(x)',       [ '', 'xX' ],           # likewise, alias for the 'x' prefix

        'Xxx',          [ sub { $i++; '' }, 'X' ],      # count the still married 'x'
    );

    ## Constructors of the engine, i.e. one Encode::Mapper instance #######################

    $mapper = Encode::Mapper->compile( @rules );        # engine constructor
    $mapper = Encode::Mapper->new( @rules );            # equivalent alias

    ## Elementary performance of the engine ###############################################

    @source = ( 'x', 'xx', 'xxuc(x)', 'xxx', '', 'xx' );    # distribution of the data ..
    $source = join '', @source;                             # .. is ignored in this sense

    @result = ($mapper->process(@source), $mapper->recover());  # the mapping procedure
    @result = ($mapper->process($source), $mapper->recover());  # completely equivalent

    $result = join '', map { ref $_ eq 'CODE' ? $_->() : $_ } @result;

        # maps 'xxxxxuc(x)xxxxx' into ( 'Y', 'Y', '', 'y', CODE(...), CODE(...), 'y' ), ..
        # .. then converts it into 'YYyy', setting $i == 2

    @follow = $mapper->compute(@source);    # follow the engine's computation over @source
    $dumper = $mapper->dumper();            # returns the engine as a Data::Dumper object

    ## Module's higher API implemented for convenience ####################################

    $encoder = [ $mapper, Encode::Mapper->compile( ... ), ... ];    # reference to mappers
    $result = Encode::Mapper->encode($source, $encoder, 'utf8');    # encode down to 'utf8'

    $decoder = [ $mapper, Encode::Mapper->compile( ... ), ... ];    # reference to mappers
    $result = Encode::Mapper->decode($source, $decoder, 'utf8');    # decode up from 'utf8'


=head1 ABSTRACT

    Encode::Mapper serves for intuitive, yet efficient construction of mappings for Encode.
    The module finds direct application in Encode::Arabic. It provides an object-oriented
    programming interface to convert data consistently, follow the engine's computation,
    dump the engine using Data::Dumper, etc.


=head1 DESCRIPTION

It looks like the author of the extension ... ;) preferred giving formal and terse examples to
writing English. Please, see L<Encode::Arabic|Encode::Arabic> where L<Encode::Mapper|Encode::Mapper>
is used for solving complex real-world problems.


=head2 INTRO AND RULE TYPES

The module's core is an algoritm which, from the rules given by the user, builds a finite-state
transducer, i.e. an engine performing greedy search in the input stream and producing output
data and side effects relevant to the results of the search. Transducers may be linked one with
another, thus forming multi-level devices suitable for nontrivial encoding/decoding tasks.

The rules declare which input sequences of L<bytes|bytes> to search for, and what to do upon their
occurence. If the left-hand side (LHS) of a rule is the longest left-most string out of those
applicable on the input, the righ-hand side (RHS) of the rule is evaluated. The RHS defines the
corresponding output string, and possibly controls the engine as if the extra text were prepended
before the rest of the input:

    $A => $X            # $A .. literal string
                        # $X .. literal string or subroutine reference
    $A => [$X, $Y]      # $Y .. literal string for which 'length $Y < length $A'

The order of the rules does not matter, except when several rules with the same LHS are stated.
In such a case, redefinition warning is usually issued before overriding the RHS.


=head2 LOW-LEVEL METHODS

=over


=item compile (I<$class,> @rules)

=item compile (I<$class,> $opts, @rules)

The constructor of an L<Encode::Mapper|Encode::Mapper> instance. The first argument is the name of the
class, the rest is the list of rules ... LHS odd elements, RHS even elements, unless the first element
is a reference to an array or a hash, which then becomes C<$opts>.

If C<$opts> is recognized, it is used to modify the compiler C<options> locally for the engine being
constructed. If an option is not overridden, its global setting holds.

The compilation algorithm, and the search algorithm itself, were inspired by Aho-Corasick and Boyer-Moore
algorithms, and by the studies of finite automata with the restart operation. The engine is implemented
in the classical sense, using hashes for the transition function for instance. We expect to improve this
to Perl code evaluation, if the speed-up is significant.

It is to explore the way Perl's regular expressions would cope with the task, i.e. verify our initial
doubts which prevented us from trying. Since L<Encode::Mapper|Encode::Mapper>'s functionality is much
richer than pure search, simulating it completely might be resource-expensive and non-elegant. Therefore,
experiment reports are welcome.


=item new (I<$class,> @list)

Name alias to the C<compile> constructor.


=item process (I<$obj,> @list)

Process the input list with the engine. There is no resetting within the call of the method. Internally,
the text in the list is C<split> into L<bytes|bytes>, and there is just no need for the user to C<join>
his/hers strings or lines of data. Note the unveiled properties of the L<Encode::Mapper|Encode::Mapper>
class as well:

    sub process ($@) {          # returns the list of search results performed by Mapper
        my $obj = shift @_;
        my (@returns, $phrase, $token, $q);

        use bytes;              # ensures splitting into one-byte tokens

        $q = $obj->{'current'};

        foreach $phrase (@_) {
            foreach $token (split //, $phrase) {
                until (defined $obj->{'tree'}[$q]->{$token}) {
                    push @returns, @{$obj->{'bell'}[$q]};
                    $q = $obj->{'skip'}[$q];
                }
                $q = $obj->{'tree'}[$q]->{$token};
            }
        }

        $obj->{'current'} = $q;

        return @returns;
    }


=item recover (I<$obj,> $r, $q)

Since the search algorithm is greedy and the engine does not know when the end of the data comes,
there must be a method to tell. Normally, C<recover> is called on the object without the other two
optional parameters setting the initial and the final state, respectively.

    sub recover ($;$$) {        # returns the 'in-progress' search result and resets Mapper
        my ($obj, $r, $q) = @_;
        my (@returns);

        $q = $obj->{'current'} unless defined $q;

        until ($q == 0) {
            push @returns, @{$obj->{'bell'}[$q]};
            $q = $obj->{'skip'}[$q];
        }

        $obj->{'current'} = defined $r ? $r : 0;

        return @returns;
    }


=item compute (I<$obj,> @list)

Tracks down the computation over the list of data, resetting the engine before and after to its
initial state. Developers might like this ;)

    local $\ = "\n";    local $, = ":\t";           # just define the display

    foreach $result ($mapper->compute($source)) {   # follow the computation

        print "Token"   ,   $result->[0];
        print "Source"  ,   $result->[1];
        print "Output"  ,   join " + ", @{$result->[2]};
        print "Target"  ,   $result->[3];
        print "Bell"    ,   join ", ", @{$result->[4]};
        print "Skip"    ,   $result->[5];
    }


=item dumper (I<$obj,> $ref)

The individual instances of L<Encode::Mapper|Encode::Mapper> can be stored as revertible data
structures. For minimalistic reasons, dumping needs to include explicit short-identifier
references to the empty array and the empty hash of the engine. For details, see
L<Data::Dumper|Data::Dumper>.

    sub dumper ($;$) {
        my ($obj, $ref) = @_;

        $ref = ['L', 'H', 'mapper'] unless defined $ref;

        require Data::Dumper;

        return Data::Dumper->new([$obj->{'null'}{'list'}, $obj->{'null'}{'hash'}, $obj], $ref);
    }


=item describe (I<$obj,> $ref)

Describes the L<Encode::Mapper|Encode::Mapper> object and returns a hash of the characteristics.
If C<$ref> is defined, the information is also C<print>ed into the C<$ref>erenced stream, or to
C<STDERR> if C<$ref> is not a filehandle.


=back


=head2 HIGH-LEVEL METHODS

In the L<Encode|Encode> world, one can work with different encodings and is also provided a function
for telling if the data are in Perl's internal utf8 format or not. In the
L<Encode::Mapper|Encode::Mapper> business, one is encouraged to compile different mappers and stack
them on top of each other, getting an easy-to-work-with filtering device.

In combination, this module offers the following C<encode> and C<decode> methods. In their prototypes,
C<$encoder>/C<$decoder> represent merely a reference to an array of mappers, although mathematics might
do more than that in future implementations ;)

Currently, the mappers involved are not reset with C<recover> before the computation. See the C<--join>
option for more comments on the code:

    foreach $mapper (@{$_[2]}) {    # either $encoder or $decoder
        $join = defined $mapper->{'join'} ? $mapper->{'join'} :
                defined $option{'join'} ? $option{'join'} : "";
        $text = join $join, map {
                    UNIVERSAL::isa($_, 'CODE') ? $_->() : $_
                } $mapper->process($text), $mapper->recover();
    }


=over


=item encode (I<$class,> $text, $encoder, $enc)

If C<$enc> is defined, the C<$text> is encoded into that encoding, using L<Encode|Encode>. Then, the
C<$encoder>'s engines are applied in series on the data. The returned text should have the utf8
flag off.


=item decode (I<$class,> $text, $decoder, $enc)

The C<$text> is run through the sequence of engines in C<$decoder>. If the result does not have the
utf8 flag on, decoding from C<$enc> is further performed by L<Encode|Encode>. If C<$enc> is not defined,
utf8 is assumed.


=back


=head2 OPTIONS AND EXPORT

The language the L<Encode::Mapper|Encode::Mapper> engine works on is not given exclusively by the rules
passed as parameters to the C<compile> or C<new> constructor methods. The nature of the compilation is
influenced by the current setting of the following options:

=over

=item --complement

This option accepts a reference to an array declaring rules which are to complement the rules of
the constructor. Redefinition warnings are issued only if you redefine within the option's list,
not when a rule happens to be overridden during compilation.

=item --override

Overrides the rules of the constructor. Redefinition warnings are issued, though. You might, for
example, want to preserve all XML markup in the data you are going to process through your
encoders/decoders:

    'override' => [             # override rules of these LHS .. there's no other tricks ^^

            (                   # combinations of '<' and '>' with the other bytes
                map {

                    my $x = chr $_;

                    "<" . $x, [ "<" . $x, ">" ],    # propagate the '>' sign implying ..
                    ">" . $x, [ $x, ">" ],          # .. preservation of the bytes

                } 0x00..0x3B, 0x3D, 0x3F..0xFF
            ),

                ">>",           ">",                # stop the whole process ..
                "<>",           "<>",               # .. do not even start it

                "><",           [ "<", ">" ],       # rather than nested '<' and '>', ..
                "<<",           [ "<<", ">" ],

                ">\\<",         [ "<", ">" ],       # .. prefer these escape sequences
                ">\\\\",        [ "\\", ">" ],
                ">\\>",         [ ">", ">" ],

                ">",            ">",                # singular symbols may migrate right ..
                "<",            "<",                # .. or preserve the rest of the data
        ]

=item --others

If defined, this option controls how to deal with 'others', i.e. bytes of input for which there is no
rule, by defining rules for them. In case this option gets a code reference, the referenced subroutine
will be called with the 'other' LHS parameter to get the rule's RHS. Otherwise, a defined scalar value
will become the RHS of each 'other' LHS.

To preserve the 'other' bytes, you can use

    'others' => sub { shift }   # preserve every non-treated byte

the effect of which is similar to including the C<map> to the C<--complement> rules:

    'complement' => [ ( map { ( chr $_ ) x 2 } 0x00..0xFF ), ... ]  # ... is your rules

You may of course wish to return undefined values if there are any non-treated bytes in the input. In
order for the C<undef> to be a correct RHS, you have to protect it once more by the C<sub> like this:

    'others' => sub { sub { undef } }

=item --silent

Setting it to a true value will prevent any warnings issued during the engine's compilation, mostly
reflecting an incorrect or dubious use of a rule.

=item --join

This option enables less memory-requiring representation of the engines. If this option is defined when
the constructor is called, the setting is stored in the instance internally. Any lists of literal RHS
which are to be emitted simultaneously from the engine are joined into a string with the option's value,
empty lists turn into empty strings. If an engine was compiled with this option defined, the value will
be used to join output of C<encode> and C<decode>, too. If not, either the current value of the option
or the empty string will help instead.

=back

The keywords of options can be in mixed case and/or start with any number of dashes, and the next element
in the list is taken as the option's value. There are special keywords, however, beginning with a colon
and not gulping down the next element:

=over

=item :others

Equivalent to the code C<< 'others' => sub { shift } >> explained above.

=item :silent

Equivalent to C<< 'silent' => 1 >>, or rather to the maximum silence if more degrees of it are introduced
in the future.

=item :join

Equivalent to C<< 'join' => '' >>. Use this option if you are going to dump and load the new engine often,
and if you do not miss the list-supporting uniformity of C<process> and C<recover>.

=back


Compiler options are associated with package names in the C<%Encode::Mapper::options> variable, and confined
to them. While C<options> and C<import> perform the setting with respect to the caller package, accessing
the hash directly is neither recommended, nor restricted.

There is a nice compile-time invocation of C<import> with the C<use>C< Encode::Mapper LIST> idiom, which you
might prefer to explicit method calls. Local modification of the package's global setting that applies just
to the engine being constructed is done by supplying the options as an extra parameter to C<compile>.

    use Data::Dump 'dump';                  # pretty data printing is below

    $Encode::Mapper::options{'ByForce'} = { qw ':others - silent errors' };

    package ByMethod;                       # import called at compile time
                                            # no warnings, 'silent' is true
    Encode::Mapper->options('complement' => [ 'X', 'Y' ], 'others' => 'X');
    use Encode::Mapper 'silent' => 299_792_458;

    package main;                           # import called at compile time
                                            # 'non-existent' may exist once
    print dump %Encode::Mapper::options;
    use Encode::Mapper ':others', ':silent', 'non-existent', 'one';

    # (
    #   "ByMethod",
    #   { complement => ["X", "Y"], others => "X", silent => 299_792_458 },
    #   "ByForce",
    #   { ":others" => "-", silent => "errors" },
    #   "main",
    #   { "non-existent" => "one", others => sub { "???" }, silent => 1 },
    # )


=over


=item options (I<$class,> @list)

If C<$class> is defined, enforces the options in the list globally for the calling package. The return value
of this method is the state of the options before the proposed changes were set. If C<$class> is undefined,
nothing is set, only the canonized forms of the declared keywords and their values are returned.


=item import (I<$class,> @list)

This module does not export any symbols. This method just calls C<options>, provided there are some
elements in the list.


=back


=head1 SEE ALSO

There are related theoretical studies which the implementation may have touched.
You might be interested in Aho-Corasick and Boyer-Moore algorithms as well as in
finite automata with the restart operation.

L<Encode|Encode>, L<Encode::Arabic|Encode::Arabic>, L<Data::Dumper|Data::Dumper>

Encode Arabic: Exercise in Functional Parsing
    L<http://ufal.mff.cuni.cz/padt/online/2006/06/encode-arabic.html>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2003-2012 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
