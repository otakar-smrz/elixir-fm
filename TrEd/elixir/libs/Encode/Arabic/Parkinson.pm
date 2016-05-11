# ###################################################################### Otakar Smrz, 2003/01/23
#
# Encoding of Arabic: Dil Parkinson's Notation ###################################### 2006/02/03

package Encode::Arabic::Parkinson;

our $VERSION = '14.1';

use 5.008;

use strict;
use warnings;

use Scalar::Util 'blessed';

use Encode::Encoding;
use base 'Encode::Encoding';

__PACKAGE__->Define('Parkinson', 'Dil');


our $enmode;
our $demode;

our $optxml;

our %modemap = (

        'default'       => 0,
        'undef'         => 0,

        'fullvocalize'  => 0,
        'full'          => 0,

        'nowasla'       => 4,

        'vocalize'      => 3,
        'nosukuun'      => 3,

        'novocalize'    => 2,
        'novowels'      => 2,
        'none'          => 2,

        'noshadda'      => 1,
        'noneplus'      => 1,
    );


# use subs 'encoder', 'decoder';    # ignores later prototypes

sub encoder ($);    # respect prototypes
sub decoder ($);    # respect prototypes


sub import {            # perform import as if Encode were used one level before this module

    $optxml = defined $_[1] && $_[1] eq ':xml' ? 1 : 0;

    __PACKAGE__->enmode('full');
    __PACKAGE__->demode('full');

    splice @_, 1, 1;

    require Encode;

    push @Encode::ISA, 'Exporter' unless Encode->can('export_to_level');

    Encode->export_to_level(1, @_);
}


sub encode ($$;$) {
    my (undef, $text, $check) = @_;

    $_[1] = '' if $check;                   # needed by in-place edit

    $text = encoder $text;

    $text = Encode::encode "utf8", $text if Encode::is_utf8($text);

    return $text;
}


sub decode ($$;$) {
    my (undef, $text, $check) = @_;

    $_[1] = '' if $check;                   # needed by in-place edit

    $text = Encode::decode "utf8", $text unless Encode::is_utf8($text);

    $text = decoder $text;

    return $text;
}


sub enmode ($$;$$) {
    my ($cls, $mode, $xml, $kshd) = @_;

    $cls = blessed $cls if ref $cls;
    $xml = $optxml unless defined $xml;

    $mode = 'undef' unless defined $mode;
    $mode = $modemap{$mode} if exists $modemap{$mode};

    no strict 'refs';

    my $return = ${ $cls . '::enmode' };

    if (defined $mode) {

        ${ $cls . '::enmode' } = $mode;

        my @set = (

                ( $kshd
                    ? ''
                    : q [\x{0640}] ) .
                q [\x{0623}\x{0624}\x{0625}] .
                q [\x{060C}\x{061B}\x{061F}] .
                q [\x{0621}\x{0622}\x{0626}-\x{063A}\x{0641}-\x{064A}] .
                q [\x{0660}-\x{0669}] .
                q [\x{0671}] .
                q [\x{0651}] .
                q [\x{064B}-\x{0650}\x{0670}] .
                q [\x{0652}] .
                ( $kshd
                    ? q [\x{0640}]
                    : '' )

                ,

                ( $kshd
                    ? ''
                    : q [_] ) .
                q [LWE] .
                q [,;?] .
                q [CMYAbQtVjHxdvrzspSDTZcgfqklmnhwey] .
                q [0-9] .
                ( $mode == 0
                    ? q [O]
                    : q [A] ) .
                ( $mode == 1
                    ? ''
                    : q [~] . ( $mode == 2
                                    ? ''
                                    : q [NUIauiR] . ( $mode == 3
                                                        ? ''
                                                        : q [o] ) ) )

                );


        undef &encoder;

        eval q /

            sub encoder ($) {

                $_[0] =~ tr[/ . $set[0] . q /]
                           [/ . $set[1] . q /]d;

                return $_[0];
            }
        /;
    }

    return $return;
}


sub demode ($$;$$) {
    my ($cls, $mode, $xml, $kshd) = @_;

    $cls = blessed $cls if ref $cls;
    $xml = $optxml unless defined $xml;

    $mode = 'undef' unless defined $mode;
    $mode = $modemap{$mode} if exists $modemap{$mode};

    no strict 'refs';

    my $return = ${ $cls . '::demode' };

    if (defined $mode) {

        ${ $cls . '::demode' } = $mode;

        my @set = (

                ( $kshd
                    ? ''
                    : q [_] ) .
                q [LWE] .
                q [,;?] .
                q [CMYAbQtVjHxdvrzspSDTZcgfqklmnhwey] .
                q [0-9] .
                q [O] .
                q [~] .
                q [NUIauiR] .
                q [o] .
                ( $kshd
                    ? q [_]
                    : '' )

                ,

                ( $kshd
                    ? ''
                    : q [\x{0640}] ) .
                q [\x{0623}\x{0624}\x{0625}] .
                q [\x{060C}\x{061B}\x{061F}] .
                q [\x{0621}\x{0622}\x{0626}\x{0627}\x{0628}\x{0629}\x{062A}\x{062B}\x{062C}\x{062D}\x{062E}] .
                q [\x{062F}\x{0630}\x{0631}\x{0632}\x{0633}\x{0634}\x{0635}\x{0636}\x{0637}\x{0638}\x{0639}] .
                q [\x{063A}\x{0641}\x{0642}\x{0643}\x{0644}\x{0645}\x{0646}\x{0647}\x{0648}\x{0649}\x{064A}] .
                q [\x{0660}\x{0661}\x{0662}\x{0663}\x{0664}\x{0665}\x{0666}\x{0667}\x{0668}\x{0669}] .
                ( $mode == 0
                    ? q [\x{0671}]
                    : q [\x{0627}] ) .
                ( $mode == 1
                    ? ''
                    : q [\x{0651}] . ( $mode == 2
                                    ? ''
                                    : q [\x{064B}\x{064C}\x{064D}\x{064E}\x{064F}\x{0650}\x{0670}] . ( $mode == 3
                                                        ? ''
                                                        : q [\x{0652}] ) ) )

                );


        undef &decoder;

        eval q /

            sub decoder ($) {

                $_[0] =~ tr[/ . $set[0] . q /]
                           [/ . $set[1] . q /]/ . (($kshd or $mode > 0) ? 'd' : '') . q /;

                return $_[0];
            }
        /;
    }

    return $return;
}


1;

__END__


=head1 NAME

Encode::Arabic::Parkinson - Dil Parkinson's transliteration of Arabic


=head1 SYNOPSIS

    use Encode::Arabic::Parkinson;          # imports just like 'use Encode' would, plus more

    while ($line = <>) {                    # Dil Parkinson's mapping into the Arabic script

        print encode 'utf8', decode 'parkinson', $line;     # 'Parkinson' alias 'Dil'
    }

    # shell filter of data, e.g. in *n*x systems instead of viewing the Arabic script proper

    % perl -MEncode::Arabic::Parkinson -pe '$_ = encode "parkinson", decode "utf8", $_'


=head1 DESCRIPTION

Dil Parkinson's notation is a one-to-one transliteration of the Arabic script for Modern Standard
Arabic, using lower ASCII characters to encode the graphemes of the original script.


=head2 IMPLEMENTATION

Similar to that in L<Encode::Arabic::Buckwalter|Encode::Arabic::Buckwalter>.


=head1 SEE ALSO

L<Encode::Arabic|Encode::Arabic>, L<Encode|Encode>, L<Encode::Encoding|Encode::Encoding>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2003-2016 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
