# ###################################################################### Otakar Smrz, 2003/01/23
#
# Encoding of Arabic: Habash-Soudi-Buckwalter Notation ############################## 2003/06/19

package Encode::Arabic::Habash;

use 5.008;

use strict;
use warnings;

use Scalar::Util 'blessed';

use Encode::Encoding;
use base 'Encode::Encoding';

__PACKAGE__->Define('Habash', 'Soudi', 'HSB');


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
                q [\x{067E}\x{0686}\x{0698}\x{06A4}\x{06AF}] .
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
                    : q [\x{005F}] ) .
                q [\x{00C2}\x{0175}\x{01CD}] .
                q [\x{002C}\x{003B}\x{003F}] .
                q [\x{0027}\x{0100}\x{0177}\x{0041}\x{0062}\x{0127}\x{0074}\x{03B8}\x{006A}\x{0048}\x{0078}] .
                q [\x{0064}\x{00F0}\x{0072}\x{007A}\x{0073}\x{0161}\x{0053}\x{0044}\x{0054}\x{010E}\x{03C2}] .
                q [\x{03B3}\x{0066}\x{0071}\x{006B}\x{006C}\x{006D}\x{006E}\x{0068}\x{0077}\x{00FD}\x{0079}] .
                q [\x{0070}\x{0063}\x{017E}\x{0076}\x{0067}] .
                q [0-9] .
                ( $mode == 0
                    ? q [\x{00C4}]
                    : q [\x{0041}] ) .
                ( $mode == 1
                    ? ''
                    : q [\x{007E}] .
                      ( $mode == 2
                          ? ''
                          : q [\x{00E3}\x{0169}\x{0129}\x{0061}\x{0075}\x{0069}\x{00E1}] .
                            ( $mode == 3
                                ? ''
                                : q [\x{00B7}] ) ) )

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
                    : q [\x{005F}] ) .
                q [\x{00C2}\x{0175}\x{01CD}] .
                q [\x{002C}\x{003B}\x{003F}] .
                q [\x{0027}\x{0100}\x{0177}\x{0041}\x{0062}\x{0127}\x{0074}\x{03B8}\x{006A}\x{0048}\x{0078}] .
                q [\x{0064}\x{00F0}\x{0072}\x{007A}\x{0073}\x{0161}\x{0053}\x{0044}\x{0054}\x{010E}\x{03C2}] .
                q [\x{03B3}\x{0066}\x{0071}\x{006B}\x{006C}\x{006D}\x{006E}\x{0068}\x{0077}\x{00FD}\x{0079}] .
                q [\x{0070}\x{0063}\x{017E}\x{0076}\x{0067}] .
                q [0-9] .
                q [\x{00C4}] .
                q [\x{007E}] .
                q [\x{00E3}\x{0169}\x{0129}\x{0061}\x{0075}\x{0069}\x{00E1}] .
                q [\x{00B7}] .
                ( $kshd
                    ? q [\x{005F}]
                    : '' )

                ,

                ( $kshd
                    ? ''
                    : q [\x{0640}] ) .
                q [\x{0623}\x{0624}\x{0625}] .
                q [\x{060C}\x{061B}\x{061F}] .
                q [\x{0621}\x{0622}\x{0626}-\x{063A}\x{0641}-\x{064A}] .
                q [\x{067E}\x{0686}\x{0698}\x{06A4}\x{06AF}] .
                q [\x{0660}-\x{0669}] .
                ( $mode == 0
                    ? q [\x{0671}]
                    : q [\x{0627}] ) .
                ( $mode == 1
                    ? ''
                    : q [\x{0651}] . ( $mode == 2
                                    ? ''
                                    : q [\x{064B}-\x{0650}\x{0670}] . ( $mode == 3
                                                        ? ''
                                                        : q [\x{0652}] ) ) )

                );


        undef &decoder;

        eval q /

            sub decoder ($) {

                $_[0] =~ tr[/ . $set[0] . q /]
                           [/ . $set[1] . q /]d;

                return $_[0];
            }
        /;
    }

    return $return;
}


1;

__END__


=head1 NAME

Encode::Arabic::Habash - Habash-Soudi-Buckwalter transliteration of Arabic


=head1 SYNOPSIS

    use Encode::Arabic::Habash;             # imports just like 'use Encode' would, plus more

    while ($line = <>) {                    # Habash-Soudi-Buckwalter mapping into the Arabic script

        print encode 'utf8', decode 'habash', $line;        # 'Habash' alias 'Soudi' alias 'HSB'
    }

    # shell filter of data, e.g. in *n*x systems instead of viewing the Arabic script proper

    % perl -MEncode::Arabic::Habash -pe '$_ = encode "habash", decode "utf8", $_'


=head1 DESCRIPTION

Habash-Soudi-Buckwalter notation is a one-to-one transliteration of the graphemes of the Arabic script
into various symbols of Unicode defined in L<http://scholar.google.com/scholar?q=habash+soudi+buckwalter>.


=head2 IMPLEMENTATION

Similar to that in L<Encode::Arabic::Buckwalter|Encode::Arabic::Buckwalter>.


=head1 SEE ALSO

L<Encode::Arabic|Encode::Arabic>, L<Encode|Encode>, L<Encode::Encoding|Encode::Encoding>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2003-2012 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
