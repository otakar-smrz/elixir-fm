# ##################################################################### Otakar Smrz, 2003/08/05
#
# Encoding of Arabic: ArabTeX Notation by Klaus Lagally, ZDMG #################################

package Encode::Arabic::ArabTeX::ZDMG;

our $VERSION = '14.1';

use 5.008;

use strict;
use warnings;

use Carp;

use Encode::Arabic::ArabTeX ();
use base 'Encode::Arabic::ArabTeX';


use Encode::Encoding;
use base 'Encode::Encoding';

__PACKAGE__->Define('ZDMG', 'ArabTeX-ZDMG');


use Encode::Mapper ':others', ':silent', ':join';


our %options;               # records of options per package .. global register
our %option;                # options of the caller package .. used with local


sub import {            # perform import as if Encode were used one level before this module

    if (defined $_[1] and $_[1] eq ':xml') {    # interfere little with possible Encode's options

        Encode::Mapper->options (

            'override' => [             # override rules of these LHS .. no other tricks ^^

                    (                   # combinations of '<' and '>' with the other bytes
                        map {

                            my $x = chr $_;

                            "<" . $x, [ "<" . $x, ">" ],    # propagate the '>' sign implying ..
                            ">" . $x, [ $x, ">" ],          # .. preservation of the bytes

                        } 0x00 .. 0x3B, 0x3D, 0x3F .. 0xFF
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

            );

        splice @_, 1, 1;
    }

    if (defined $_[1] and $_[1] eq ':describe') {

        __PACKAGE__->options($_[1]);
        splice @_, 1, 1;
    }

    require Encode;

    push @Encode::ISA, 'Exporter' unless Encode->can('export_to_level');

    Encode->export_to_level(1, @_);
}


sub encoder ($;%) {
    my ($cls, %opt) = @_;

    my $encoder = [];


    $encoder->[0] = Encode::Mapper->compile (

                [
                    'silent' => 0,
                ],

                    "\x{0054}",         "\\cap t",          "\x{0074}",         "t",

                    "\x{1E6E}",         "\\cap _t",         "\x{1E6F}",         "_t",
                    "\x{0054}\x{0331}", "\\cap _t",         "\x{0074}\x{0331}", "_t",

                    "\x{0044}",         "\\cap d",          "\x{0064}",         "d",

                    "\x{1E0E}",         "\\cap _d",         "\x{1E0F}",         "_d",
                    "\x{0044}\x{0331}", "\\cap _d",         "\x{0064}\x{0331}", "_d",

                    "\x{0052}",         "\\cap r",          "\x{0072}",         "r",

                    "\x{005A}",         "\\cap z",          "\x{007A}",         "z",

                    "\x{0053}",         "\\cap s",          "\x{0073}",         "s",

                    "\x{0160}",         "\\cap ^s",         "\x{0161}",         "^s",
                    "\x{0053}\x{030C}", "\\cap ^s",         "\x{0073}\x{030C}", "^s",

                    "\x{1E62}",         "\\cap .s",         "\x{1E63}",         ".s",
                    "\x{0053}\x{0323}", "\\cap .s",         "\x{0073}\x{0323}", ".s",

                    "\x{1E0C}",         "\\cap .d",         "\x{1E0D}",         ".d",
                    "\x{0044}\x{0323}", "\\cap .d",         "\x{0064}\x{0323}", ".d",

                    "\x{1E6C}",         "\\cap .t",         "\x{1E6D}",         ".t",
                    "\x{0054}\x{0323}", "\\cap .t",         "\x{0074}\x{0323}", ".t",

                    "\x{1E92}",         "\\cap .z",         "\x{1E93}",         ".z",
                    "\x{005A}\x{0323}", "\\cap .z",         "\x{007A}\x{0323}", ".z",

                    "\x{004C}",         "\\cap l",          "\x{006C}",         "l",

                    "\x{004E}",         "\\cap n",          "\x{006E}",         "n",

                    # "\x{0054}",         "\\cap T",          "\x{0074}",         "T",
                    # "\x{004E}",         "\\cap N",          "\x{006E}",         "N",
                    # "\x{0057}",         "\\cap W",          "\x{0077}",         "W",

                    "\x{0041}",         "\\cap a",          "\x{0061}",         "a",

                    "\x{0045}",         "\\cap e",          "\x{0065}",         "e",

                    "\x{0049}",         "\\cap i",          "\x{0069}",         "i",

                    "\x{004F}",         "\\cap o",          "\x{006F}",         "o",

                    "\x{0055}",         "\\cap u",          "\x{0075}",         "u",

                    "\x{0100}",         "\\cap A",          "\x{0101}",         "A",
                    "\x{0041}\x{0304}", "\\cap A",          "\x{0061}\x{0304}", "A",

                    "\x{0112}",         "\\cap E",          "\x{0113}",         "E",
                    "\x{0045}\x{0304}", "\\cap E",          "\x{0065}\x{0304}", "E",

                    "\x{012A}",         "\\cap I",          "\x{012B}",         "I",
                    "\x{0049}\x{0304}", "\\cap I",          "\x{0069}\x{0304}", "I",

                    "\x{014C}",         "\\cap O",          "\x{014D}",         "O",
                    "\x{004F}\x{0304}", "\\cap O",          "\x{006F}\x{0304}", "O",

                    "\x{016A}",         "\\cap U",          "\x{016B}",         "U",
                    "\x{0055}\x{0304}", "\\cap U",          "\x{0075}\x{0304}", "U",

                    "\x{02BC}",         "\"",
                    "\x{02BE}",         "'",
                    "\x{02BF}",         "`",

                    "\x{0042}",         "\\cap b",          "\x{0062}",         "b",

                    "\x{01E6}",         "\\cap ^g",         "\x{01E7}",         "^g",
                    "\x{0047}\x{030C}", "\\cap ^g",         "\x{0067}\x{030C}", "^g",

                    "\x{1E24}",         "\\cap .h",         "\x{1E25}",         ".h",
                    "\x{0048}\x{0323}", "\\cap .h",         "\x{0068}\x{0323}", ".h",

                    "\x{1E2A}",         "\\cap _h",         "\x{1E2B}",         "_h",
                    "\x{0048}\x{032E}", "\\cap _h",         "\x{0068}\x{032E}", "_h",

                    "\x{0120}",         "\\cap .g",         "\x{0121}",         ".g",
                    "\x{0047}\x{0307}", "\\cap .g",         "\x{0067}\x{0307}", ".g",

                    "\x{0046}",         "\\cap f",          "\x{0066}",         "f",

                    "\x{0051}",         "\\cap q",          "\x{0071}",         "q",

                    "\x{004B}",         "\\cap k",          "\x{006B}",         "k",

                    "\x{004D}",         "\\cap m",          "\x{006D}",         "m",

                    "\x{0048}",         "\\cap h",          "\x{0068}",         "h",

                    "\x{0057}",         "\\cap w",          "\x{0077}",         "w",

                    "\x{0059}",         "\\cap y",          "\x{0079}",         "y",


                    "\x{0050}",         "\\cap p",          "\x{0070}",         "p",

                    "\x{0056}",         "\\cap v",          "\x{0076}",         "v",

                    "\x{0047}",         "\\cap g",          "\x{0067}",         "g",


                    "\x{0043}",         "\\cap c",          "\x{0063}",         "c",

                    "\x{010C}",         "\\cap ^c",         "\x{010D}",         "^c",
                    "\x{0043}\x{030C}", "\\cap ^c",         "\x{0063}\x{030C}", "^c",

                    "\x{0106}",         "\\cap ,c",         "\x{0107}",         ",c",
                    "\x{0043}\x{0301}", "\\cap ,c",         "\x{0063}\x{0301}", ",c",

                    "\x{017D}",         "\\cap ^z",         "\x{017E}",         "^z",
                    "\x{005A}\x{030C}", "\\cap ^z",         "\x{007A}\x{030C}", "^z",

                    "\x{00D1}",         "\\cap ^n",         "\x{00F1}",         "^n",
                    "\x{004E}\x{0303}", "\\cap ^n",         "\x{006E}\x{0303}", "^n",

                    "\x{004C}\x{0303}", "\\cap ^l",         "\x{006C}\x{0303}", "^l",

                    "\x{0052}\x{0307}", "\\cap .r",         "\x{0072}\x{0307}", ".r",

            );


    no strict 'refs';

    ${ $cls . '::encoder' } = $encoder;

    if ($option{'describe'}) {

        $_->describe('') foreach @{${ $cls . '::encoder' }};
    }

    return ${ $cls . '::encoder' };
}


sub decoder ($;$$) {
    my ($cls, undef, undef) = @_;

    my $decoder = [];


    my @sunny = (
                    [   "t",        "\x{0074}"          ],
                    [   "_t",       "\x{0074}\x{0331}"  ],  #   "\x{1E6F}"
                    [   "d",        "\x{0064}"          ],
                    [   "_d",       "\x{0064}\x{0331}"  ],  #   "\x{1E0F}"
                    [   "r",        "\x{0072}"          ],
                    [   "z",        "\x{007A}"          ],
                    [   "s",        "\x{0073}"          ],
                    [   "^s",       "\x{0073}\x{030C}"  ],  #   "\x{0161}"
                    [   ".s",       "\x{0073}\x{0323}"  ],  #   "\x{1E63}"
                    [   ".d",       "\x{0064}\x{0323}"  ],  #   "\x{1E0D}"
                    [   ".t",       "\x{0074}\x{0323}"  ],  #   "\x{1E6D}"
                    [   ".z",       "\x{007A}\x{0323}"  ],  #   "\x{1E93}"
                    [   "l",        "\x{006C}"          ],
                    [   "n",        "\x{006E}"          ],
                );


    my @extra = (
                    [   "T",        "\x{0074}"          ],
                    [   "H",        "\x{0068}"          ],  #   ""
                    [   "N",        "\x{006E}"          ],
                    [   "W",        "\x{0077}"          ],  #   ""
                );


    my @vowel = (
                    [   "a",        "\x{0061}"          ],
                    [   "_a",       "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "_aA",      "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "_aY",      "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "_aU",      "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "_aI",      "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "A",        "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "^A",       "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "_A",       "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                    [   "e",        "\x{0065}"          ],
                    [   "E",        "\x{0065}\x{0304}"  ],  #   "\x{0113}"
                    [   "i",        "\x{0069}"          ],
                    [   "_i",       "\x{0069}\x{0304}"  ],  #   "\x{012B}"
                    [   "I",        "\x{0069}\x{0304}"  ],  #   "\x{012B}"
                    [   "^I",       "\x{0069}\x{0304}"  ],  #   "\x{012B}"
                    [   "_I",       "\x{0069}"          ],
                    [   "o",        "\x{006F}"          ],
                    [   "O",        "\x{006F}\x{0304}"  ],  #   "\x{014D}"
                    [   "u",        "\x{0075}"          ],
                    [   "_u",       "\x{0075}\x{0304}"  ],  #   "\x{016B}"
                    [   "U",        "\x{0075}\x{0304}"  ],  #   "\x{016B}"
                    [   "^U",       "\x{0075}\x{0304}"  ],  #   "\x{016B}"
                    [   "_U",       "\x{0075}"          ],
                    [   "Y",        "\x{0061}\x{0304}"  ],  #   "\x{0101}"
                );


    my @minor = (
                    [   "'",        "\x{02BE}"          ],  #   "\x{02BC}"
                    [   "`",        "\x{02BF}"          ],  #   "\x{02BB}"
                );


    my @empty = (
                    [   "\"",       "",                 ],  #   "\x{02BC}"
                    [   "|",        "",                 ],
                    [   "B",        "",                 ],
                );


    my @moony = (
                    [   "b",        "\x{0062}"          ],
                    [   "^g",       "\x{0067}\x{030C}"  ],  #   "\x{01E7}"
                    [   ".h",       "\x{0068}\x{0323}"  ],  #   "\x{1E25}"
                    [   "_h",       "\x{0068}\x{032E}"  ],  #   "\x{1E2B}"
                    [   ".g",       "\x{0067}\x{0307}"  ],  #   "\x{0121}"
                    [   "f",        "\x{0066}"          ],
                    [   "q",        "\x{0071}"          ],
                    [   "k",        "\x{006B}"          ],
                    [   "m",        "\x{006D}"          ],
                    [   "h",        "\x{0068}"          ],
                    [   "w",        "\x{0077}"          ],
                    [   "y",        "\x{0079}"          ],

                    [   "p",        "\x{0070}"          ],
                    [   "v",        "\x{0076}"          ],
                    [   "g",        "\x{0067}"          ],

                    [   "c",        "\x{0063}"          ],
                    [   "^c",       "\x{0063}\x{030C}"  ],  #   "\x{010D}"
                    [   ",c",       "\x{0063}\x{0301}"  ],  #   "\x{0107}"
                    [   "^z",       "\x{007A}\x{030C}"  ],  #   "\x{017E}"
                    [   "^n",       "\x{006E}\x{0303}"  ],  #   "\x{00F1}"
                    [   "^l",       "\x{006C}\x{0303}"  ],
                    [   ".r",       "\x{0072}\x{0307}"  ],
                );


    $decoder->[0] = Encode::Mapper->compile (

                [
                    'silent' => 0,
                ],

                # definite article assimilation .. non-linguistic
                (
                    map {

                        "l-" . $_->[0] x 2, [ "", $_->[0] . "-" . $_->[0] ],

                    } @sunny, @moony
                ),

                # initial vowel tying
                (
                    map {

                        my $x = $_;

                        map {

                            my $y = $_;

                            map {

                                $x->[0] . $_ . $y, $x->[1] . $_ . "\x{02BC}",  # "\x{02C8}"

                                "\\cap\x09" . $x->[0] . $_ . $y, ucfirst $x->[1] . $_ . "\x{02BC}",  # "\x{02C8}"
                                "\\cap\x0A" . $x->[0] . $_ . $y, ucfirst $x->[1] . $_ . "\x{02BC}",  # "\x{02C8}"
                                "\\cap\x0D" . $x->[0] . $_ . $y, ucfirst $x->[1] . $_ . "\x{02BC}",  # "\x{02C8}"
                                "\\cap\x20" . $x->[0] . $_ . $y, ucfirst $x->[1] . $_ . "\x{02BC}",  # "\x{02C8}"

                            } "-", "\x09", "\x0A", "\x0D", "\x20", "\x0D\x0A",
                              "\x20\x20", "\x20\x20\x20", "\x20\x20\x20\x20"

                        } "a", "e", "i", "o", "u"

                    } @vowel
                ),

                # silence the silent

                    "_W",           "",

                    "WA",           [ "", "W" ],

                    "UW",           [ "", "U" ],
                    "UA",           [ "", "U" ],

                    "NA",           [ "", "N" ],
                    "NY",           [ "", "N" ],
                    "NU",           [ "", "N" ],
                    "N_A",          [ "", "N" ],

                # regular capitalization
                (
                    map {

                        $_->[0], $_->[1],

                        "\\cap\x09" . $_->[0], ucfirst $_->[1],
                        "\\cap\x0A" . $_->[0], ucfirst $_->[1],
                        "\\cap\x0D" . $_->[0], ucfirst $_->[1],
                        "\\cap\x20" . $_->[0], ucfirst $_->[1],

                    } @sunny, @moony, @empty, @vowel, @extra
                ),

                (
                    map {

                        $_->[0] . "i", $_->[1] . "i",
                        $_->[0] . "u", $_->[1] . "u",

                        "\\cap\x09" . $_->[0] . "i", ucfirst $_->[1] . "i",
                        "\\cap\x0A" . $_->[0] . "i", ucfirst $_->[1] . "i",
                        "\\cap\x0D" . $_->[0] . "i", ucfirst $_->[1] . "i",
                        "\\cap\x20" . $_->[0] . "i", ucfirst $_->[1] . "i",

                        "\\cap\x09" . $_->[0] . "u", ucfirst $_->[1] . "u",
                        "\\cap\x0A" . $_->[0] . "u", ucfirst $_->[1] . "u",
                        "\\cap\x0D" . $_->[0] . "u", ucfirst $_->[1] . "u",
                        "\\cap\x20" . $_->[0] . "u", ucfirst $_->[1] . "u",

                    } @sunny, @moony, @empty
                ),

                (
                    map {

                        my $x = $_;

                        map {

                            $x->[0] . "i" . $_, [ $x->[1], "i" . $_ ],
                            $x->[0] . "u" . $_, [ $x->[1], "u" . $_ ],

                            "\\cap\x09" . $x->[0] . "i" . $_, [ ucfirst $x->[1], "i" . $_ ],
                            "\\cap\x0A" . $x->[0] . "i" . $_, [ ucfirst $x->[1], "i" . $_ ],
                            "\\cap\x0D" . $x->[0] . "i" . $_, [ ucfirst $x->[1], "i" . $_ ],
                            "\\cap\x20" . $x->[0] . "i" . $_, [ ucfirst $x->[1], "i" . $_ ],

                            "\\cap\x09" . $x->[0] . "u" . $_, [ ucfirst $x->[1], "u" . $_ ],
                            "\\cap\x0A" . $x->[0] . "u" . $_, [ ucfirst $x->[1], "u" . $_ ],
                            "\\cap\x0D" . $x->[0] . "u" . $_, [ ucfirst $x->[1], "u" . $_ ],
                            "\\cap\x20" . $x->[0] . "u" . $_, [ ucfirst $x->[1], "u" . $_ ],

                        }   "-", "\x09", "\x0A", "\x0D", "\x20"

                    } @sunny, @moony, @empty
                ),

                # initial vowel assimilation
                (
                    map {

                        my $fix = $_;

                        "i" . $_, [ "", "I" ],
                        "u" . $_, [ "", "U" ],

                        "\\cap\x09" . "i" . $_, [ "", "\\cap\x09" . "I" ],
                        "\\cap\x0A" . "i" . $_, [ "", "\\cap\x0A" . "I" ],
                        "\\cap\x0D" . "i" . $_, [ "", "\\cap\x0D" . "I" ],
                        "\\cap\x20" . "i" . $_, [ "", "\\cap\x20" . "I" ],

                        "\\cap\x09" . "u" . $_, [ "", "\\cap\x09" . "U" ],
                        "\\cap\x0A" . "u" . $_, [ "", "\\cap\x0A" . "U" ],
                        "\\cap\x0D" . "u" . $_, [ "", "\\cap\x0D" . "U" ],
                        "\\cap\x20" . "u" . $_, [ "", "\\cap\x20" . "U" ],

                        map {

                            "i" . $fix . $_->[0], [ "i", $fix . $_->[0] ],
                            "u" . $fix . $_->[0], [ "u", $fix . $_->[0] ],

                            "\\cap\x09" . "i" . $fix . $_->[0], [ "I", $fix . $_->[0] ],
                            "\\cap\x0A" . "i" . $fix . $_->[0], [ "I", $fix . $_->[0] ],
                            "\\cap\x0D" . "i" . $fix . $_->[0], [ "I", $fix . $_->[0] ],
                            "\\cap\x20" . "i" . $fix . $_->[0], [ "I", $fix . $_->[0] ],

                            "\\cap\x09" . "u" . $fix . $_->[0], [ "U", $fix . $_->[0] ],
                            "\\cap\x0A" . "u" . $fix . $_->[0], [ "U", $fix . $_->[0] ],
                            "\\cap\x0D" . "u" . $fix . $_->[0], [ "U", $fix . $_->[0] ],
                            "\\cap\x20" . "u" . $fix . $_->[0], [ "U", $fix . $_->[0] ],

                        } @vowel, $empty[0]

                    } "y", "w"  # "'"
                ),

                # capitalization of minors
                (
                    map {

                        $_->[0], $_->[1],

                        $_->[0] . "i", $_->[1] . "i",
                        $_->[0] . "u", $_->[1] . "u",

                        "\\cap\x09" . $_->[0], [ $_->[1], "\\cap " ],
                        "\\cap\x0A" . $_->[0], [ $_->[1], "\\cap " ],
                        "\\cap\x0D" . $_->[0], [ $_->[1], "\\cap " ],
                        "\\cap\x20" . $_->[0], [ $_->[1], "\\cap " ],

                        "\\cap\x09" . $_->[0] . "i", $_->[1] . ucfirst "i",
                        "\\cap\x0A" . $_->[0] . "i", $_->[1] . ucfirst "i",
                        "\\cap\x0D" . $_->[0] . "i", $_->[1] . ucfirst "i",
                        "\\cap\x20" . $_->[0] . "i", $_->[1] . ucfirst "i",

                        "\\cap\x09" . $_->[0] . "u", $_->[1] . ucfirst "u",
                        "\\cap\x0A" . $_->[0] . "u", $_->[1] . ucfirst "u",
                        "\\cap\x0D" . $_->[0] . "u", $_->[1] . ucfirst "u",
                        "\\cap\x20" . $_->[0] . "u", $_->[1] . ucfirst "u",

                    } @minor
                ),

                (
                    map {

                        my $x = $_;

                        map {

                            $x->[0] . "i" . $_, [ $x->[1], "i" . $_ ],
                            $x->[0] . "u" . $_, [ $x->[1], "u" . $_ ],

                            "\\cap\x09" . $x->[0] . "i" . $_, [ $x->[1], "\\cap i" . $_ ],
                            "\\cap\x0A" . $x->[0] . "i" . $_, [ $x->[1], "\\cap i" . $_ ],
                            "\\cap\x0D" . $x->[0] . "i" . $_, [ $x->[1], "\\cap i" . $_ ],
                            "\\cap\x20" . $x->[0] . "i" . $_, [ $x->[1], "\\cap i" . $_ ],

                            "\\cap\x09" . $x->[0] . "u" . $_, [ $x->[1], "\\cap u" . $_ ],
                            "\\cap\x0A" . $x->[0] . "u" . $_, [ $x->[1], "\\cap u" . $_ ],
                            "\\cap\x0D" . $x->[0] . "u" . $_, [ $x->[1], "\\cap u" . $_ ],
                            "\\cap\x20" . $x->[0] . "u" . $_, [ $x->[1], "\\cap u" . $_ ],

                        }   "-", "\x09", "\x0A", "\x0D", "\x20"

                    } @minor
                ),

                # white-space collapsing
                (
                    map {

                        "\\cap\x09" . $_, [ "", "\\cap " ],
                        "\\cap\x0A" . $_, [ "", "\\cap " ],
                        "\\cap\x0D" . $_, [ "", "\\cap " ],
                        "\\cap\x20" . $_, [ "", "\\cap " ],

                    } "\x09", "\x0A", "\x0D", "\x20"
                ),

            );


    no strict 'refs';

    ${ $cls . '::decoder' } = $decoder;

    if ($option{'describe'}) {

        $_->describe('') foreach @{${ $cls . '::decoder' }};
    }

    return ${ $cls . '::decoder' };
}


1;

__END__


=head1 NAME

Encode::Arabic::ArabTeX::ZDMG - ZDMG phonetic transcription of Arabic using the ArabTeX notation


=head1 SYNOPSIS

    use Encode::Arabic::ArabTeX::ZDMG;  # imports just like 'use Encode' would, plus extended options

    while ($line = <>) {                # maps the ArabTeX notation for Arabic into the Latin symbols

        print encode 'utf8', decode 'zdmg', $line;        # 'ZDMG' alias 'ArabTeX-ZDMG'
    }

    # ArabTeX lower ASCII transliteration <--> Latin phonetic transcription, ZDMG style

    $string = decode 'ArabTeX-ZDMG', $octets;
    $octets = encode 'ArabTeX-ZDMG', $string;


=head1 DESCRIPTION

ArabTeX is an excellent extension to TeX/LaTeX designed for typesetting the right-to-left scripts of
the Orient. It comes up with very intuitive and comprehensible lower ASCII transliterations, the
expressive power of which is even better than that of the scripts.

L<Encode::Arabic::ArabTeX::ZDMG|Encode::Arabic::ArabTeX::ZDMG> implements the rules needed for proper
interpretation of the ArabTeX notation of Arabic into the phonetic transcription in the ZDMG style.
The conversion ifself is done by L<Encode::Mapper|Encode::Mapper>, and the user interface is built
on the L<Encode::Encoding|Encode::Encoding> module.

Relevant guidance is given in L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX>, from which this module
inherits. The transformation rules are, however, quite different ;)


=head1 SEE ALSO

L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX>,
L<Encode::Arabic|Encode::Arabic>, L<Encode::Mapper|Encode::Mapper>,
L<Encode::Encoding|Encode::Encoding>, L<Encode|Encode>

ArabTeX system      L<ftp://ftp.informatik.uni-stuttgart.de/pub/arabtex/arabtex.htm>

Klaus Lagally       L<http://www.informatik.uni-stuttgart.de/ifi/bs/people/lagall_e.htm>

ArabTeX extensions  L<http://sourceforge.net/projects/encode-arabic/>

ArabXeTeX           L<http://tug.ctan.org/info/?id=arabxetex>

Encode Arabic: Exercise in Functional Parsing
    L<http://ufal.mff.cuni.cz/padt/online/2006/06/encode-arabic.html>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2003-2010 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
