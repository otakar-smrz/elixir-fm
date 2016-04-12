# ########################################################################## Otakar Smrz, 2008/07/07
#
# ElixirFM Resolve #################################################################################

package ElixirFM::Resolve;

use 5.008;

use strict;

our $VERSION = '1.1.0';

# ##################################################################################################
#
# ##################################################################################################

use base 'ElixirFM::Data::Compose';

use ElixirFM;

use Encode::Arabic;
use Encode::Arabic::Buckwalter ':xml';

use Data::Dumper;

$Data::Dumper::Indent = 0;
$Data::Dumper::Terse = 1;


sub data {

    return $_[0]->{'data'}{$_[1]} if exists $_[0]->{'data'}{$_[1]};

    return [];
}

sub lexs {

    return $_[0]->{'lexs'}[$_[1]];
}

sub tags {

    return $_[0]->{'tags'}[$_[1]];
}

sub tmpl {

    return $_[0]->{'tmpl'}[$_[1]];
}

sub cont {

    return $_[0]->{'cont'}[$_[1]];
}


sub resolve {

    my ($q, $word) = @_;

    return $q->resolves([], ['----------'], $word);
}


sub resolves {

    my ($q, $p, $r, $word) = @_;

    if ($word eq '') {

        return $p if grep { $_ eq '' } @{$r};

        return;
    }

    my @return = ();

    for (my $i = length $word; $i > 0; $i--) {

        my $lookup = $q->data(substr $word, 0, $i);

        my %assoc = ();

        foreach (@{$lookup}) {

            my ($lexs, @data) = @{$_};

            foreach (ElixirFM::tuples @data) {

                foreach my $cont (map { Data::Dumper->Dump([$_]) } @{$q->cont($_->[1])}) {

                    $assoc{$cont} = [] unless exists $assoc{$cont};

                    push @{$assoc{$cont}}, [$lexs, $_->[0]];
                }
            }
        }

        my $next = substr $word, $i;

        foreach (keys %assoc) {

            my @data = $q->filter($r, @{$assoc{$_}});

            next unless @data;

            my $cont = eval $_;

            push @return, $q->resolves([@{$p}, [@data]], $cont, $next);

            if ($i == 1 and 'll' eq substr $word, 0, 2) {

                push @return, $q->resolves([@{$p}, [@data]], $cont, 'A'  . $next),
                              $q->resolves([@{$p}, [@data]], $cont, 'Al' . $next);
            }
        }
    }

    return @return;
}


sub filter {

    my ($q, $r, @data) = @_;

    my @return;

    foreach (@data) {

        my ($lexs, $data) = @{$_};

        my @lexs = ();

        foreach (ElixirFM::tuples @{$data}) {

            my ($tmpl, $tags) = @{$_};

            my @tmpl = grep { my $t = $_->[0]; grep { ElixirFM::restrict($_, $t) eq $t and ($_ eq $t or $_ ne 'S---------') }
                                               grep { $_ ne '' } @{$r} } @{$q->tags($tags)};

            push @lexs, [$tmpl, [@tmpl]] if @tmpl;
        }

        push @return, [$lexs, [@lexs]] if @lexs;
    }

    return @return;
}


sub pretty {

    my ($q, @data) = @_;

    return join "\n::\n", map { join "\n:\n", map { join "", map {

                my ($lexs, $data) = @{$_};

                $lexs = $q->lexs($lexs);

                my $r = "\n";

                $r .= join "\t", @{$lexs}[0 .. 2], $lexs->[4], "($lexs->[5],$lexs->[6])" . "\n",
                                 Data::Dumper->Dump([$lexs->[3]]);

                foreach (@{$data}) {

                    my ($tmpl, $tags) = ($q->tmpl($_->[0]), $_->[1]);

                    $r .= join "", map { "\n\t" . $_ } map {

                        my $t = ElixirFM::template($tmpl, $_->[1], $_->[-1]);
                        my $m = ElixirFM::merge($lexs->[1], $t);
                        my $p = encode "utf8", decode "zdmg", $m;

                        join "\t", $_->[0], $t, $m, $p } @{$tags};
                }

                $r . "\n" } @{$_} } @{$_} } @data;
}


1;

__END__


=head1 NAME

ElixirFM::Resolve - Interfaces to the ElixirFM system in Haskell


=head1 SYNOPSIS

    use ElixirFM::Resolve;


=head1 DESCRIPTION

The L<ElixirFM|ElixirFM> module reimplements some of the functionality of the ElixirFM system
written in Haskell.

In particular, it includes the L<ElixirFM::Resolve|ElixirFM::Resolve> and
L<ElixirFM::Data::Compose|ElixirFM::Data::Compose> modules providing the algorithms and data for
advanced Arabic morphological analysis, see also the L<elixir-resolve|elixir-resolve> executable.
Other applications, such as morphological generation, can also be implemented with ElixirFM.


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc ElixirFM


You can also look for information at L<http://sourceforge.net/projects/elixir-fm/>.


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT & LICENSE

Copyright (C) 2009-2005 Otakar Smrz, 2002 Tim Buckwalter

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License version 3.


=cut
