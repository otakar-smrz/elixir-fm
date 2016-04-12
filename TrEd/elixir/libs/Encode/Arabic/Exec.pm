# ########################################################################## Otakar Smrz, 2009/03/21
#
# Encode Arabic Executable #########################################################################

package Encode::Arabic::Exec;

use strict;

our $VERSION = '0.1.0';


use Encode;

use File::Spec;

use File::Temp;

use File::Which;


our $encode = 'encode';
our $decode = 'decode';

our %encode = ();
our %decode = ();


sub import {

    my $caller = caller 0;

    if (@_ > 1 and $_[1] ne '') {

        my @path = File::Spec->splitpath($_[1]);

        if ($path[0] . $path[1] eq '' and $path[2] ne '.' and $path[2] ne '..') {

            if (defined which $_[1]) {

                $elixir{$caller} = $_[1];
            }
            else {

                $elixir{$caller} = File::Spec->join($_[1], $elixir);

                warn "No program like '$_[1]' or '$elixir{$caller}' can be executed"

                    unless grep { -x $elixir{$caller} . $_ } '', split ';', $ENV{'PATHEXT'} || '.exe;.com;.bat';
            }
        }
        else {

            $elixir{$caller} = -d $_[1] ? File::Spec->join($_[1], $elixir) : $_[1];

            warn "No program like '$elixir{$caller}' can be executed"

                unless grep { -x $elixir{$caller} . $_ } '', split ';', $ENV{'PATHEXT'} || '.exe;.com;.bat';
        }
    }
    else {

        delete $elixir{$caller};

        warn "No program like '$elixir' can be executed" unless defined which $elixir;
    }

    return exists $elixir{$caller} ? $elixir{$caller} : $elixir;
}


sub elixir {

    my $mode = defined $_[0] && ! ref $_[0] ? shift : '';

    my $opts = defined $_[0] && ref $_[0] eq 'ARRAY' ? shift : [];

    my $text = join "", map { $_ =~ /\n$/ ? $_ : $_ . "\n" } @_;

    my $code = Encode::is_utf8($text);

    my $caller = caller 0;

    $caller = caller 1 if $caller eq __PACKAGE__;

    my $system = exists $elixir{$caller} ? $elixir{$caller} : $elixir;

    my $params = join " ", $mode, map { '"' . $_ . '"' } @{$opts};

    my $handle = new File::Temp;

    local $\ = "";

    print $handle $code ? encode "utf8", $text : $text;

    my $data = scalar `"$system" $params < "$handle"`;

    return $code ? decode "utf8", $data : $data;
}


sub main {

    return elixir @_;
}


sub resolve {

    return elixir 'resolve', @_;
}


sub inflect {

    return elixir 'inflect', @_;
}


sub derive {

    return elixir 'derive', @_;
}


sub lookup {

    return elixir 'lookup', @_;
}


1;

__END__


=head1 NAME

Encode::Arabic::Exec - Interface to the Encode Arabic executables


=head1 SYNOPSIS

    use Encode::Arabic::Exec;                   #   'encode' and 'decode' will be tried out

    use ElixirFM::Exec '.';                     #   './elixir' will be invoked
    use ElixirFM::Exec './elixir';              #   './elixir' will be invoked

    use ElixirFM::Exec 'some/other';            #   'some/other/elixir' unless
                                                #   'some/other' is executable

    ElixirFM::Exec::elixir 'help';

    import ElixirFM::Exec 'other/elixir';       #   switching to 'other/elixir'

    ElixirFM::Exec::elixir 'inflect',           #   requested mode of operation
                           ["V[PI]---3MS--"],   #   optional command-line params
                           "(1320,1)",          #   supplied standard-input data
                           "(1234,[])";         #   which can be split by lines

    ElixirFM::Exec::inflect ["V[PI]---3MS--"], "(1320,1)", "(1234,[])";


=head1 DESCRIPTION

The L<ElixirFM::Exec|ElixirFM::Exec> module provides a simple interface for invoking the
Encode Arabic executables, which you need to install on your system yourself.

The download and further information are at L<http://sourceforge.net/projects/encode-arabic/>.


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT & LICENSE

Copyright (C) 2005-2012 Otakar Smrz

This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License version 3.


=cut
