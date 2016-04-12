#! perl -w

BEGIN {

    our $VERSION = '1.1.0';

    use Getopt::Std;

    $Getopt::Std::STANDARD_HELP_VERSION = 1;

    our $options = {};

    getopts('v', $options);

    warn $VERSION . "\n" and exit if exists $options->{'v'};
}


BEGIN {

    warn "Initializing ...\n";
}


use ElixirFM::Resolve;

use strict;

my $elixir = new ElixirFM::Resolve;


warn "ElixirFM is now expecting your input!\n\n";


while (my $line = <>) {

    my @word = split ' ', undiacritize($line);

    print $elixir->pretty($elixir->resolve($_)), "\n\n" foreach @word;
}


warn "Quitting ...\n";


sub undiacritize {

    my $text = $_[0];

    $text =~ tr[aiuo~`FNK][]d;

    return $text;
}


__END__


=head1 NAME

elixir-resolve - Arabic morphological analyzer derived from ElixirFM


=head1 OPTIONS

  elixir-resolve [OPTIONS]
    -v       --version      show program's version
             --help         show usage information


=head1 SEE ALSO

ElixirFM Project                L<http://sourceforge.net/projects/elixir-fm/>

Encode Arabic Project           L<http://sourceforge.net/projects/encode-arabic/>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009-2005 Otakar Smrz, 2009 Viktor Bielicky, 2002 Tim Buckwalter

This library is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3.


=cut
