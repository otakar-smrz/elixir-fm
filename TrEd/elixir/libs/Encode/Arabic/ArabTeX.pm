# ##################################################################### Otakar Smrz, 2003/01/23
#
# Encoding of Arabic: ArabTeX Notation by Klaus Lagally ############################ 2003/06/19

package Encode::Arabic::ArabTeX;

our $VERSION = '14.1';

use 5.008;

use strict;
use warnings;

use Scalar::Util 'blessed';
use Carp;

use Encode::Encoding;
use base 'Encode::Encoding';

__PACKAGE__->Define('ArabTeX', 'Lagally', 'TeX');


use Encode::Mapper ':others', ':silent', ':join';


our %options;               # records of options per package .. global register
our %option;                # options of the caller package .. used with local

our $enmode;
our $demode;

our $enlevel = 2;
our $delevel = 3;

our %modemap = (

        'default'       => 3,
        'undef'         => 0,

        'fullvocalize'  => 4,
        'full'          => 4,

        'vocalize'      => 3,
        'nosukuun'      => 3,

        'novocalize'    => 2,
        'novowels'      => 2,
        'none'          => 2,

        'noshadda'      => 1,
        'noneplus'      => 1,
    );


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

    if (defined $_[1] and $_[1] eq ':simple') {

        __PACKAGE__->options($_[1]);
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


sub options ($%) {
    my $cls = shift @_;
    my ($i, $opt, %opt);

    my @returns = %option;

    while (@_) {

        $opt = lc shift @_;

        if ($opt =~ /^\:/) {

            $opt eq ':simple' and $opt{'non-quoting'} = 1 and $opt{'non-refined'} = 1 and next;
            $opt eq ':describe' and $opt{'describe'} = 1 and next;
        }
        else {

            $opt =~ /^\-*(.*)$/;
            $opt{$1} = shift @_;
        }
    }

    return %opt unless defined $cls;

    $option{$_} = $opt{$_} foreach keys %opt;

    return @returns;
}


sub encode ($$;$) {
    my ($cls, $text, $check) = @_;

    $cls = blessed $cls if ref $cls;

    no strict 'refs';

    $cls->encoder() unless defined ${ $cls . '::encoder' };

    return Encode::Mapper->encode($text, ${ $cls . '::encoder' }, undef);
}


sub decode ($$;$) {
    my ($cls, $text, $check) = @_;

    $cls = blessed $cls if ref $cls;

    no strict 'refs';

    $cls->decoder() unless defined ${ $cls . '::decoder' };

    return Encode::Mapper->decode($text, ${ $cls . '::decoder' }, 'utf8');
}


sub encoder ($@) {
    my $cls = shift @_;

    my $encoder = $cls->eecoder('encoder', @_);

    return $encoder unless defined $encoder and $encoder == -1;

    $encoder = [];


    $encoder->[0] = Encode::Mapper->compile (

                [
                    'silent' => 0,
                ],

                (
                    map {

                        chr 0x0660 + $_, "" . $_,

                    } 0 .. 9
                ),

                    "\x{064B}",     "aN",           # 240 "\xF0", # "\xD9\x8B" <aN>
                    "\x{064C}",     "uN",           # 241 "\xF1", # "\xD9\x8C" <uN>
                    "\x{064D}",     "iN",           # 242 "\xF2", # "\xD9\x8D" <iN>
                    "\x{064E}",     "a",            # 243 "\xF3", # "\xD9\x8E" <a>
                    "\x{064F}",     "u",            # 245 "\xF5", # "\xD9\x8F" <u>
                    "\x{0650}",     "i",            # 246 "\xF6", # "\xD9\x90" <i>
                    "\x{0670}",     "_a",
                    "\x{0657}",     "_u",
                    "\x{0656}",     "_i",

                    "\x{060C}",     ",",            # 161 "\xA1", # "\xD8\x8C" right-to-left-comma
                    "\x{061B}",     ";",            # 186 "\xBA", # "\xD8\x9B" right-to-left-semicolon
                    "\x{061F}",     "?",            # 191 "\xBF", # "\xD8\x9F" right-to-left-question-mark
                    "\x{0621}",     "'",            # 193 "\xC1", # "\xD8\xA1" hamza-on-the-line
                    "\x{0622}",     "'A",           # 194 "\xC2", # "\xD8\xA2" madda-over-'alif
                    "\x{0623}",     "'",            # 195 "\xC3", # "\xD8\xA3" hamza-over-'alif
                    "\x{0624}",     "'",            # 196 "\xC4", # "\xD8\xA4" hamza-over-waaw
                    "\x{0625}",     "'",            # 197 "\xC5", # "\xD8\xA5" hamza-under-'alif
                    "\x{0626}",     "'",            # 198 "\xC6", # "\xD8\xA6" hamza-over-yaa'
                    "\x{0627}",     "A",            # 199 "\xC7", # "\xD8\xA7" bare 'alif
                    "\x{0628}",     "b",            # 200 "\xC8", # "\xD8\xA8" <b>
                    "\x{0629}",     "T",            # 201 "\xC9", # "\xD8\xA9" <T>
                    "\x{062A}",     "t",            # 202 "\xCA", # "\xD8\xAA" <t>
                    "\x{062B}",     "_t",           # 203 "\xCB", # "\xD8\xAB" <_t>
                    "\x{062C}",     "^g",           # 204 "\xCC", # "\xD8\xAC" <^g>
                    "\x{062D}",     ".h",           # 205 "\xCD", # "\xD8\xAD" <.h>
                    "\x{062E}",     "_h",           # 206 "\xCE", # "\xD8\xAE" <_h>
                    "\x{062F}",     "d",            # 207 "\xCF", # "\xD8\xAF" <d>
                    "\x{0630}",     "_d",           # 208 "\xD0", # "\xD8\xB0" <_d>
                    "\x{0631}",     "r",            # 209 "\xD1", # "\xD8\xB1" <r>
                    "\x{0632}",     "z",            # 210 "\xD2", # "\xD8\xB2" <z>
                    "\x{0633}",     "s",            # 211 "\xD3", # "\xD8\xB3" <s>
                    "\x{0634}",     "^s",           # 212 "\xD4", # "\xD8\xB4" <^s>
                    "\x{0635}",     ".s",           # 213 "\xD5", # "\xD8\xB5" <.s>
                    "\x{0636}",     ".d",           # 214 "\xD6", # "\xD8\xB6" <.d>
                    "\x{0637}",     ".t",           # 216 "\xD8", # "\xD8\xB7" <.t>
                    "\x{0638}",     ".z",           # 217 "\xD9", # "\xD8\xB8" <.z>
                    "\x{0639}",     "`",            # 218 "\xDA", # "\xD8\xB9" <`>
                    "\x{063A}",     ".g",           # 219 "\xDB", # "\xD8\xBA" <.g>
                    "\x{0640}",     "--",           # 220 "\xDC", # "\xD9\x80" ta.twiil
                    "\x{0641}",     "f",            # 221 "\xDD", # "\xD9\x81" <f>
                    "\x{0642}",     "q",            # 222 "\xDE", # "\xD9\x82" <q>
                    "\x{0643}",     "k",            # 223 "\xDF", # "\xD9\x83" <k>
                    "\x{0644}",     "l",            # 225 "\xE1", # "\xD9\x84" <l>
                    "\x{0645}",     "m",            # 227 "\xE3", # "\xD9\x85" <m>
                    "\x{0646}",     "n",            # 228 "\xE4", # "\xD9\x86" <n>
                    "\x{0647}",     "h",            # 229 "\xE5", # "\xD9\x87" <h>
                    "\x{0648}",     "w",            # 230 "\xE6", # "\xD9\x88" <w>
                    "\x{0649}",     "Y",            # 236 "\xEC", # "\xD9\x89" 'alif maq.suura
                    "\x{064A}",     "y",            # 237 "\xED", # "\xD9\x8A" <y>
                    "\x{0651}",     "\\shadda{}",   # 248 "\xF8", # "\xD9\x91" ^sadda
                  # "\x{0652}",     '"',            # 250 "\xFA", # "\xD9\x92" sukuun
                    "\x{0652}",     "",             # 250 "\xFA", # "\xD9\x92" sukuun
                    "\x{0671}",     "A",            # 199 "\xC7", # "\xD9\xB1" wa.sla-on-'alif

                    "\x{067E}",     "p",
                    "\x{06A4}",     "v",
                    "\x{06AF}",     "g",

                    "\x{0681}",     "c",
                    "\x{0686}",     "^c",
                    "\x{0685}",     ",c",
                    "\x{0698}",     "^z",
                    "\x{06AD}",     "^n",
                    "\x{06B5}",     "^l",
                    "\x{0695}",     ".r",

                    "\x{0628}\x{0651}",  "bb",           # 200 "\xC8", # "\xD8\xA8" <b>
                    "\x{062A}\x{0651}",  "tt",           # 202 "\xCA", # "\xD8\xAA" <t>
                    "\x{062B}\x{0651}",  "_t_t",         # 203 "\xCB", # "\xD8\xAB" <_t>
                    "\x{062C}\x{0651}",  "^g^g",         # 204 "\xCC", # "\xD8\xAC" <^g>
                    "\x{062D}\x{0651}",  ".h.h",         # 205 "\xCD", # "\xD8\xAD" <.h>
                    "\x{062E}\x{0651}",  "_h_h",         # 206 "\xCE", # "\xD8\xAE" <_h>
                    "\x{062F}\x{0651}",  "dd",           # 207 "\xCF", # "\xD8\xAF" <d>
                    "\x{0630}\x{0651}",  "_d_d",         # 208 "\xD0", # "\xD8\xB0" <_d>
                    "\x{0631}\x{0651}",  "rr",           # 209 "\xD1", # "\xD8\xB1" <r>
                    "\x{0632}\x{0651}",  "zz",           # 210 "\xD2", # "\xD8\xB2" <z>
                    "\x{0633}\x{0651}",  "ss",           # 211 "\xD3", # "\xD8\xB3" <s>
                    "\x{0634}\x{0651}",  "^s^s",         # 212 "\xD4", # "\xD8\xB4" <^s>
                    "\x{0635}\x{0651}",  ".s.s",         # 213 "\xD5", # "\xD8\xB5" <.s>
                    "\x{0636}\x{0651}",  ".d.d",         # 214 "\xD6", # "\xD8\xB6" <.d>
                    "\x{0637}\x{0651}",  ".t.t",         # 216 "\xD8", # "\xD8\xB7" <.t>
                    "\x{0638}\x{0651}",  ".z.z",         # 217 "\xD9", # "\xD8\xB8" <.z>
                    "\x{0639}\x{0651}",  "``",           # 218 "\xDA", # "\xD8\xB9" <`>
                    "\x{063A}\x{0651}",  ".g.g",         # 219 "\xDB", # "\xD8\xBA" <.g>
                    "\x{0641}\x{0651}",  "ff",           # 221 "\xDD", # "\xD9\x81" <f>
                    "\x{0642}\x{0651}",  "qq",           # 222 "\xDE", # "\xD9\x82" <q>
                    "\x{0643}\x{0651}",  "kk",           # 223 "\xDF", # "\xD9\x83" <k>
                    "\x{0644}\x{0651}",  "ll",           # 225 "\xE1", # "\xD9\x84" <l>
                    "\x{0645}\x{0651}",  "mm",           # 227 "\xE3", # "\xD9\x85" <m>
                    "\x{0646}\x{0651}",  "nn",           # 228 "\xE4", # "\xD9\x86" <n>
                    "\x{0647}\x{0651}",  "hh",           # 229 "\xE5", # "\xD9\x87" <h>
                    "\x{0648}\x{0651}",  "ww",           # 230 "\xE6", # "\xD9\x88" <w>
                    "\x{064A}\x{0651}",  "yy",           # 237 "\xED", # "\xD9\x8A" <y>

            );


    no strict 'refs';

    ${ $cls . '::encoder' } = $encoder;

    if ($option{'describe'}) {

        $_->describe('') foreach @{${ $cls . '::encoder' }};
    }

    $cls->enmode(defined ${ $cls . '::enmode' } ? ${ $cls . '::enmode' } : 'default');

    return ${ $cls . '::encoder' };
}


sub decoder ($@) {
    my $cls = shift @_;

    my $decoder = $cls->eecoder('decoder', @_);

    return $decoder unless defined $decoder and $decoder == -1;

    $decoder = [];


    my @sunny = (
                    [ "t",           "\x{062A}" ],              # "\xD8\xAA" <t>
                    [ "_t",          "\x{062B}" ],              # "\xD8\xAB" <_t>
                    [ "d",           "\x{062F}" ],              # "\xD8\xAF" <d>
                    [ "_d",          "\x{0630}" ],              # "\xD8\xB0" <_d>
                    [ "r",           "\x{0631}" ],              # "\xD8\xB1" <r>
                    [ "z",           "\x{0632}" ],              # "\xD8\xB2" <z>
                    [ "s",           "\x{0633}" ],              # "\xD8\xB3" <s>
                    [ "^s",          "\x{0634}" ],              # "\xD8\xB4" <^s>
                    [ ".s",          "\x{0635}" ],              # "\xD8\xB5" <.s>
                    [ ".d",          "\x{0636}" ],              # "\xD8\xB6" <.d>
                    [ ".t",          "\x{0637}" ],              # "\xD8\xB7" <.t>
                    [ ".z",          "\x{0638}" ],              # "\xD8\xB8" <.z>
                    [ "l",           "\x{0644}" ],              # "\xD9\x84" <l>
                    [ "n",           "\x{0646}" ],              # "\xD9\x86" <n>
                );


    my @empty = (
                    [ "|",           ""         ],              # ArabTeX's "invisible consonant"
                    [ "",            "\x{0627}" ],              # "\xD8\xA7" bare 'alif
                );


    my @taaaa = (
                    [ "T",           "\x{0629}" ],              # "\xD8\xA9" <T>
                    [ "H",           "\x{0629}" ],              # "\xD8\xA9" <T>
                );


    my @moony = (
                    [ "'A",          "\x{0622}" ],              # "\xD8\xA2" madda-over-'alif
                    [ "'a",          "\x{0623}" ],              # "\xD8\xA3" hamza-over-'alif
                    [ "'i",          "\x{0625}" ],              # "\xD8\xA5" hamza-under-'alif
                    [ "'w",          "\x{0624}" ],              # "\xD8\xA4" hamza-over-waaw
                    [ "'y",          "\x{0626}" ],              # "\xD8\xA6" hamza-over-yaa'
                    [ "'|",          "\x{0621}" ],              # "\xD8\xA1" hamza-on-the-line
                    [ "b",           "\x{0628}" ],              # "\xD8\xA8" <b>
                    [ "^g",          "\x{062C}" ],              # "\xD8\xAC" <^g>
                    [ ".h",          "\x{062D}" ],              # "\xD8\xAD" <.h>
                    [ "_h",          "\x{062E}" ],              # "\xD8\xAE" <_h>
                    [ "`",           "\x{0639}" ],              # "\xD8\xB9" <`>
                    [ ".g",          "\x{063A}" ],              # "\xD8\xBA" <.g>
                    [ "f",           "\x{0641}" ],              # "\xD9\x81" <f>
                    [ "q",           "\x{0642}" ],              # "\xD9\x82" <q>
                    [ "k",           "\x{0643}" ],              # "\xD9\x83" <k>
                    [ "m",           "\x{0645}" ],              # "\xD9\x85" <m>
                    [ "h",           "\x{0647}" ],              # "\xD9\x87" <h>
                    [ "w",           "\x{0648}" ],              # "\xD9\x88" <w>
                    [ "y",           "\x{064A}" ],              # "\xD9\x8A" <y>

                    [ "B",           "\x{0640}" ],              # ArabTeX's "consonantal ta.twiil"

                    [ "p",           "\x{067E}" ],
                    [ "v",           "\x{06A4}" ],
                    [ "g",           "\x{06AF}" ],

                    [ "c",           "\x{0681}" ],              # .ha with hamza
                    [ "^c",          "\x{0686}" ],              # gim with three
                    [ ",c",          "\x{0685}" ],              # _ha with three
                    [ "^z",          "\x{0698}" ],              # zay with three
                    [ "^n",          "\x{06AD}" ],              # kaf with three
                    [ "^l",          "\x{06B5}" ],              # lam with a bow above
                    [ ".r",          "\x{0695}" ],              # ra' with a bow below
                );


    my @scope = (
                    "b", "t", "_t", "^g", ".h", "_h", "d", "_d", "r", "z", "s", "^s", ".s",
                    ".d", ".t", ".z", "`", ".g", "f", "q", "k", "l", "m", "n", "h", "w",
                    "p", "v", "g", "c", "^c", ",c", "^z", "^n", "^l", ".r", "|", "B",
                    # "'", "y" treated specifically in some cases -- "T", "H" must as well
                );


    $decoder->[0] = Encode::Mapper->compile (

                [
                    'silent' => 0,
                ],

                    "_A",           [ "", "Y" ],
                    "_U",           [ "", "U" ],

                    "WA",           [ "", "W" ],

                    "y_A",          [ "", "yY" ],

                    "yaN_A",        [ "", "yaNY" ],
                    "yaNY",         [ "", "yaN" ],

                    "yY",           [ "y", "A" ],

                # word-internal occurrence

                    "TA",           [ "t", "A" ],
                    "TU",           [ "t", "U" ],
                    "TI",           [ "t", "I" ],
                    "TY",           [ "t", "Y" ],

                    "T_I",          [ "t", "_I" ],

                    "T_A",          [ "t", "_A" ],
                    "T_U",          [ "t", "_U" ],

                (
                    map {

                        "T" . $_, [ "t", $_ ],

                        "Ta" . $_, [ "t", "a" . $_ ],
                        "Tu" . $_, [ "t", "u" . $_ ],
                        "Ti" . $_, [ "t", "i" . $_ ],

                        ( $option{'non-quoting'} ? () : (

                        "T\"" . $_, [ "t", "\"" . $_ ],

                        "T\"a" . $_, [ "t", "\"a" . $_ ],
                        "T\"u" . $_, [ "t", "\"u" . $_ ],
                        "T\"i" . $_, [ "t", "\"i" . $_ ],

                        ) ),

                    } @scope, "y"   # "T", "H", "W"
                ),

                    "Ta'", [ "t", "a'" ],
                    "Tu'", [ "t", "u'" ],
                    "Ti'", [ "t", "i'" ],

                    ( $option{'non-quoting'} ? () : (

                    "T\"'", [ "t", "\"'" ],

                    "T\"a'", [ "t", "\"a'" ],
                    "T\"u'", [ "t", "\"u'" ],
                    "T\"i'", [ "t", "\"i'" ],

                    ) ),

                (
                    map {

                        "Y" . $_, [ "A", $_ ],

                    } @scope, "y", "T", "H" # "W"
                ),

                # vowel-quoted sequences

                    ( $option{'non-quoting'} ? (

                    "\"",           "",             # use non-quoting quotes only on no purpose ^^

                    ) : (

                    "\"",           "\"",

                    ) ),

                # general non-protection of \TeX directives
                (
                    map {

                        "\\cap" . $_, [ "\\", "cap" . $_ ],

                    } 'A' .. 'Z', 'a' .. 'z', '_', '0' .. '9'
                ),

                    "\\",           "\\",

                # strict \cap removal and white-space collapsing
                (
                    map {

                        "\\cap" . $_ . "\x09", [ "", "\\cap " ],
                        "\\cap" . $_ . "\x0A", [ "", "\\cap " ],
                        "\\cap" . $_ . "\x0D", [ "", "\\cap " ],
                        "\\cap" . $_ . "\x20", [ "", "\\cap " ],

                        "\\cap" . $_, "",

                    } "\x09", "\x0A", "\x0D", "\x20"
                ),

                    "\\cap",        "",

                # interfering rarely with the notation, or erroneous

                    "^A'a",         [ "^A'|", "a" ],

                    "^A",           [ "^A", "|" ],
                    "^I",           [ "^I", "|" ],
                    "^U",           [ "^U", "|" ],

                    "_a",           [ "_a", "|" ],
                    "_i",           [ "_i", "|" ],
                    "_u",           [ "_u", "|" ],

                    "_aA",          [ "_aA", "|" ],
                    "_aY",          [ "_aY", "|" ],
                    "_aU",          [ "_aU", "|" ],
                    "_aI",          [ "_aI", "|" ],

                    "'_a",          [ "", "_a" ],
                    "'_i",          [ "", "_i" ],
                    "'_u",          [ "", "_u" ],

                    "'^A",          [ "", "^A" ],
                    "'^I",          [ "", "^I" ],
                    "'^U",          [ "", "^U" ],

                # word-initial carriers

                    "'",            "'a",               # covers much implicitly

                    "'i",           [ "'i", "i" ],

                    "'A",           [ "'", "A" ],
                    "'I",           [ "'i", "I" ],

                    "'_I",          [ "'i", "_I" ],

                    "''",            "'a'a",            # .. still needed ^^

                    "''i",          [ "'i'i", "i" ],
                    "''I",          [ "'i'i", "I" ],

                    "''_I",         [ "'i'i", "_I" ],

                    ( $option{'non-quoting'} ? () : (

                    "'\"i",         [ "'i\"", "i" ],

                    "'\"A",         [ "'", "A" ],
                    "'\"I",         [ "'i\"", "I" ],

                    "'\"_I",        [ "'i\"", "_I" ],

                    "''\"i",        [ "'i'i\"", "i" ],
                    "''\"I",        [ "'i'i\"", "I" ],

                    "''\"_I",       [ "'i'i\"", "_I" ],

                    ) ),

                # word-final carriers

                    "Y'",           "A'|",

                    "A'",           "A'|",
                    "I'",           "I'|",
                    "U'",           "U'|",

                    # "a'",           "a'a",
                    # "a'i",          "a'ii",
                    # "a'\"i",        "a'i\"i",

                    "i'",           "i'y",
                    "u'",           "u'w",

                    "Y''",          "A'|'|",

                    "A''",          "A'|'|",
                    "I''",          "I'|'|",
                    "U''",          "U'|'|",

                    # "a''",          "a'a'a",
                    # "a''i",         "a'i'ii",
                    # "a''\"i",       "a'i'i\"i",

                    "i''",          "i'y'y",
                    "u''",          "u'w'w",

                (
                    map {       # covers cases in the map below over @scope and # quoted included

                        $_ . "'", $_ . "'|",
                        $_ . "''", $_ . "'|'|",

                    } @scope, "y", $option{'non-quoting'} ? () : "\""   # quoted included
                ),

                    "T'", "t'|",
                    "T''", "t'|'|",

                # word-internal carriers                            # doubled

                    "a'A",          [ "a'", "A" ],                  # unclear ^^
                    "a'I",          [ "a'y", "I" ],                 "a''I",         [ "a'y'y", "I" ],
                    "a'U",          [ "a'w", "U" ],                 "a''U",         [ "a'w'w", "U" ],

                    "a'_I",         [ "a'y", "_I" ],                "a''_I",        [ "a'y'y", "_I" ],

                    "u'I",          [ "u'y", "I" ],                 "u''I",         [ "u'y'y", "I" ],

                    "u'_I",         [ "u'y", "_I" ],                "u''_I",         [ "u'y'y", "_I" ],

                    "I'aN",         [ "I'y", "aN" ],                "I''aN",        [ "I'y'y", "aN" ],
                    "y'aN",         [ "y'y", "aN" ],                "y''aN",        [ "y'y'y", "aN" ],

                    "A'A",          [ "A'|", "A" ],                 "A''A",         [ "A'|'|", "A" ],
                    "A'I",          [ "A'y", "I" ],                 "A''I",         [ "A'y'y", "I" ],
                    "A'U",          [ "A'w", "U" ],                 "A''U",         [ "A'w'w", "U" ],
                    "A'Y",          [ "A'|", "Y" ],                 "A''Y",         [ "A'|'|", "Y" ],

                    "A'_I",         [ "A'y", "_I" ],                "A''_I",        [ "A'y'y", "_I" ],

                    "A'_U",         [ "", "A'U" ],                  "A''_U",        [ "", "A''U" ],
                    "A'_A",         [ "", "A'Y" ],                  "A''_A",        [ "", "A''Y" ],

                    "I'A",          [ "I'y", "A" ],                 "I''A",         [ "I'y'y", "A" ],
                    "I'I",          [ "I'y", "I" ],                 "I''I",         [ "I'y'y", "I" ],
                    "I'U",          [ "I'y", "U" ],                 "I''U",         [ "I'y'y", "U" ],
                    "I'Y",          [ "I'y", "Y" ],                 "I''Y",         [ "I'y'y", "Y" ],

                    "I'_I",         [ "I'y", "_I" ],                "I''_I",        [ "I'y'y", "_I" ],

                    "I'_U",         [ "", "I'U" ],                  "I''_U",        [ "", "I''U" ],
                    "I'_A",         [ "", "I'Y" ],                  "I''_A",        [ "", "I''Y" ],

                    "y'A",          [ "y'y", "A" ],                 "y''A",         [ "y'y'y", "A" ],
                    "y'I",          [ "y'y", "I" ],                 "y''I",         [ "y'y'y", "I" ],
                    "y'U",          [ "y'y", "U" ],                 "y''U",         [ "y'y'y", "U" ],
                    "y'Y",          [ "y'y", "Y" ],                 "y''Y",         [ "y'y'y", "Y" ],

                    "y'_I",         [ "y'y", "_I" ],                "y''_I",        [ "y'y'y", "_I" ],

                    "y'_U",         [ "", "y'U" ],                  "y''_U",        [ "", "y''U" ],
                    "y'_A",         [ "", "y'Y" ],                  "y''_A",        [ "", "y''Y" ],

                    "U'A",          [ "U'w", "A" ],                 "U''A",         [ "U'w'w", "A" ],
                    "U'I",          [ "U'y", "I" ],                 "U''I",         [ "U'y'y", "I" ],
                    "U'U",          [ "U'w", "U" ],                 "U''U",         [ "U'w'w", "U" ],
                    "U'Y",          [ "U'w", "Y" ],                 "U''Y",         [ "U'w'w", "Y" ],

                    "U'_I",         [ "U'y", "_I" ],                "U''_I",        [ "U'y'y", "_I" ],

                    "U'_U",         [ "", "U'U" ],                  "U''_U",        [ "", "U''U" ],
                    "U'_A",         [ "", "U'Y" ],                  "U''_A",        [ "", "U''Y" ],

                    "uw'A",         [ "uw'w", "A" ],                "uw''A",        [ "uw'w'w", "A" ],
                    "uw'I",         [ "uw'y", "I" ],                "uw''I",        [ "uw'y'y", "I" ],
                    "uw'U",         [ "uw'w", "U" ],                "uw''U",        [ "uw'w'w", "U" ],
                    "uw'Y",         [ "uw'w", "Y" ],                "uw''Y",        [ "uw'w'w", "Y" ],

                    "uw'_I",        [ "uw'y", "_I" ],               "uw''_I",       [ "uw'y'y", "_I" ],

                    "uw'_U",        [ "", "uw'U" ],                 "uw''_U",       [ "", "uw''U" ],
                    "uw'_A",        [ "", "uw'Y" ],                 "uw''_A",       [ "", "uw''Y" ],

                    ( $option{'non-quoting'} ? () : (

                    "a'\"A",        [ "a'", "A" ],                  # unclear ^^
                    "a'\"I",        [ "a'y\"", "I" ],               "a''\"I",       [ "a'y'y\"", "I" ],
                    "a'\"U",        [ "a'w\"", "U" ],               "a''\"U",       [ "a'w'w\"", "U" ],

                    "a'\"_I",       [ "a'y\"", "_I" ],              "a''\"_I",      [ "a'y'y\"", "_I" ],

                    "u'\"I",        [ "u'y\"", "I" ],               "u''\"I",       [ "u'y'y\"", "I" ],

                    "u'\"_I",       [ "u'y\"", "_I" ],              "u''\"_I",      [ "u'y'y\"", "_I" ],

                    "I'\"aN",       [ "I'y\"", "aN" ],              "I''\"aN",      [ "I'y'y\"", "aN" ],
                    "y'\"aN",       [ "y'y\"", "aN" ],              "y''\"aN",      [ "y'y'y\"", "aN" ],

                    "y\"'\"aN",     [ "y\"'y\"", "aN" ],            "y\"''\"aN",    [ "y\"'y'y\"", "aN" ],
                    "y\"'aN",       [ "y\"'y", "aN" ],              "y\"''aN",      [ "y\"'y'y", "aN" ],

                    "A'\"A",        [ "A'|\"", "A" ],               "A''\"A",       [ "A'|'|\"", "A" ],
                    "A'\"I",        [ "A'y\"", "I" ],               "A''\"I",       [ "A'y'y\"", "I" ],
                    "A'\"U",        [ "A'w\"", "U" ],               "A''\"U",       [ "A'w'w\"", "U" ],
                    "A'\"Y",        [ "A'|\"", "Y" ],               "A''\"Y",       [ "A'|'|\"", "Y" ],

                    "A'\"_I",       [ "A'y\"", "_I" ],              "A''\"_I",      [ "A'y'y\"", "_I" ],

                    "A'\"_U",       [ "", "A'\"U" ],                "A''\"_U",      [ "", "A''\"U" ],
                    "A'\"_A",       [ "", "A'\"Y" ],                "A''\"_A",      [ "", "A''\"Y" ],

                    "I'\"A",        [ "I'y\"", "A" ],               "I''\"A",       [ "I'y'y\"", "A" ],
                    "I'\"I",        [ "I'y\"", "I" ],               "I''\"I",       [ "I'y'y\"", "I" ],
                    "I'\"U",        [ "I'y\"", "U" ],               "I''\"U",       [ "I'y'y\"", "U" ],
                    "I'\"Y",        [ "I'y\"", "Y" ],               "I''\"Y",       [ "I'y'y\"", "Y" ],

                    "I'\"_I",       [ "I'y\"", "_I" ],              "I''\"_I",      [ "I'y'y\"", "_I" ],

                    "I'\"_U",       [ "", "I'\"U" ],                "I''\"_U",      [ "", "I''\"U" ],
                    "I'\"_A",       [ "", "I'\"Y" ],                "I''\"_A",      [ "", "I''\"Y" ],

                    "y'\"A",        [ "y'y\"", "A" ],               "y''\"A",       [ "y'y'y\"", "A" ],
                    "y'\"I",        [ "y'y\"", "I" ],               "y''\"I",       [ "y'y'y\"", "I" ],
                    "y'\"U",        [ "y'y\"", "U" ],               "y''\"U",       [ "y'y'y\"", "U" ],
                    "y'\"Y",        [ "y'y\"", "Y" ],               "y''\"Y",       [ "y'y'y\"", "Y" ],

                    "y'\"_I",       [ "y'y\"", "_I" ],              "y''\"_I",      [ "y'y'y\"", "_I" ],

                    "y'\"_U",       [ "", "y'\"U" ],                "y''\"_U",      [ "", "y''\"U" ],
                    "y'\"_A",       [ "", "y'\"Y" ],                "y''\"_A",      [ "", "y''\"Y" ],

                    "y\"'\"A",      [ "y\"'y\"", "A" ],             "y\"''\"A",     [ "y\"'y'y\"", "A" ],
                    "y\"'\"I",      [ "y\"'y\"", "I" ],             "y\"''\"I",     [ "y\"'y'y\"", "I" ],
                    "y\"'\"U",      [ "y\"'y\"", "U" ],             "y\"''\"U",     [ "y\"'y'y\"", "U" ],
                    "y\"'\"Y",      [ "y\"'y\"", "Y" ],             "y\"''\"Y",     [ "y\"'y'y\"", "Y" ],

                    "y\"'\"_I",     [ "y\"'y\"", "_I" ],            "y\"''\"_I",    [ "y\"'y'y\"", "_I" ],

                    "y\"'\"_U",     [ "", "y\"'\"U" ],              "y\"''\"_U",    [ "", "y\"''\"U" ],
                    "y\"'\"_A",     [ "", "y\"'\"Y" ],              "y\"''\"_A",    [ "", "y\"''\"Y" ],

                    "y\"'A",        [ "y\"'y", "A" ],               "y\"''A",       [ "y\"'y'y", "A" ],
                    "y\"'I",        [ "y\"'y", "I" ],               "y\"''I",       [ "y\"'y'y", "I" ],
                    "y\"'U",        [ "y\"'y", "U" ],               "y\"''U",       [ "y\"'y'y", "U" ],
                    "y\"'Y",        [ "y\"'y", "Y" ],               "y\"''Y",       [ "y\"'y'y", "Y" ],

                    "y\"'_I",       [ "y\"'y", "_I" ],              "y\"''_I",      [ "y\"'y'y", "_I" ],

                    "y\"'_U",       [ "", "y\"'U" ],                "y\"''_U",      [ "", "y\"''U" ],
                    "y\"'_A",       [ "", "y\"'Y" ],                "y\"''_A",      [ "", "y\"''Y" ],

                    "U'\"A",        [ "U'w\"", "A" ],               "U''\"A",       [ "U'w'w\"", "A" ],
                    "U'\"I",        [ "U'y\"", "I" ],               "U''\"I",       [ "U'y'y\"", "I" ],
                    "U'\"U",        [ "U'w\"", "U" ],               "U''\"U",       [ "U'w'w\"", "U" ],
                    "U'\"Y",        [ "U'w\"", "Y" ],               "U''\"Y",       [ "U'w'w\"", "Y" ],

                    "U'\"_I",       [ "U'y\"", "_I" ],              "U''\"_I",      [ "U'y'y\"", "_I" ],

                    "U'\"_U",       [ "", "U'\"U" ],                "U''\"_U",      [ "", "U''\"U" ],
                    "U'\"_A",       [ "", "U'\"Y" ],                "U''\"_A",      [ "", "U''\"Y" ],

                    "uw'\"A",       [ "uw'w\"", "A" ],              "uw''\"A",      [ "uw'w'w\"", "A" ],
                    "uw'\"I",       [ "uw'y\"", "I" ],              "uw''\"I",      [ "uw'y'y\"", "I" ],
                    "uw'\"U",       [ "uw'w\"", "U" ],              "uw''\"U",      [ "uw'w'w\"", "U" ],
                    "uw'\"Y",       [ "uw'w\"", "Y" ],              "uw''\"Y",      [ "uw'w'w\"", "Y" ],

                    "uw'\"_I",      [ "uw'y\"", "_I" ],             "uw''\"_I",     [ "uw'y'y\"", "_I" ],

                    "uw'\"_U",      [ "", "uw'\"U" ],               "uw''\"_U",     [ "", "uw''\"U" ],
                    "uw'\"_A",      [ "", "uw'\"Y" ],               "uw''\"_A",     [ "", "uw''\"Y" ],

                    ) ),

                (
                    map {                                           # doubled

                        "a'i" . $_, [ "a'y", "i" . $_ ],            "a''i" . $_, [ "a'y'y", "i" . $_ ],
                        "a'u" . $_, [ "a'w", "u" . $_ ],            "a''u" . $_, [ "a'w'w", "u" . $_ ],
                        "u'i" . $_, [ "u'y", "i" . $_ ],            "u''i" . $_, [ "u'y'y", "i" . $_ ],

                        "A'a" . $_, [ "A'|", "a" . $_ ],            "A''a" . $_, [ "A'|'|", "a" . $_ ],
                        "A'i" . $_, [ "A'y", "i" . $_ ],            "A''i" . $_, [ "A'y'y", "i" . $_ ],
                        "A'u" . $_, [ "A'w", "u" . $_ ],            "A''u" . $_, [ "A'w'w", "u" . $_ ],

                        "I'a" . $_, [ "I'y", "a" . $_ ],            "I''a" . $_, [ "I'y'y", "a" . $_ ],
                        "I'i" . $_, [ "I'y", "i" . $_ ],            "I''i" . $_, [ "I'y'y", "i" . $_ ],
                        "I'u" . $_, [ "I'y", "u" . $_ ],            "I''u" . $_, [ "I'y'y", "u" . $_ ],

                        "y'a" . $_, [ "y'y", "a" . $_ ],            "y''a" . $_, [ "y'y'y", "a" . $_ ],
                        "y'i" . $_, [ "y'y", "i" . $_ ],            "y''i" . $_, [ "y'y'y", "i" . $_ ],
                        "y'u" . $_, [ "y'y", "u" . $_ ],            "y''u" . $_, [ "y'y'y", "u" . $_ ],

                        "U'a" . $_, [ "U'w", "a" . $_ ],            "U''a" . $_, [ "U'w'w", "a" . $_ ],
                        "U'i" . $_, [ "U'y", "i" . $_ ],            "U''i" . $_, [ "U'y'y", "i" . $_ ],
                        "U'u" . $_, [ "U'w", "u" . $_ ],            "U''u" . $_, [ "U'w'w", "u" . $_ ],

                        "uw'a" . $_, [ "uw'w", "a" . $_ ],          "uw''a" . $_, [ "uw'w'w", "a" . $_ ],
                        "uw'i" . $_, [ "uw'y", "i" . $_ ],          "uw''i" . $_, [ "uw'y'y", "i" . $_ ],
                        "uw'u" . $_, [ "uw'w", "u" . $_ ],          "uw''u" . $_, [ "uw'w'w", "u" . $_ ],

                        ( $option{'non-quoting'} ? () : (

                        "a'\"i" . $_, [ "a'y\"", "i" . $_ ],        "a''\"i" . $_, [ "a'y'y\"", "i" . $_ ],
                        "a'\"u" . $_, [ "a'w\"", "u" . $_ ],        "a''\"u" . $_, [ "a'w'w\"", "u" . $_ ],
                        "u'\"i" . $_, [ "u'y\"", "i" . $_ ],        "u''\"i" . $_, [ "u'y'y\"", "i" . $_ ],

                        "A'\"a" . $_, [ "A'|\"", "a" . $_ ],        "A''\"a" . $_, [ "A'|'|\"", "a" . $_ ],
                        "A'\"i" . $_, [ "A'y\"", "i" . $_ ],        "A''\"i" . $_, [ "A'y'y\"", "i" . $_ ],
                        "A'\"u" . $_, [ "A'w\"", "u" . $_ ],        "A''\"u" . $_, [ "A'w'w\"", "u" . $_ ],

                        "I'\"a" . $_, [ "I'y\"", "a" . $_ ],        "I''\"a" . $_, [ "I'y'y\"", "a" . $_ ],
                        "I'\"i" . $_, [ "I'y\"", "i" . $_ ],        "I''\"i" . $_, [ "I'y'y\"", "i" . $_ ],
                        "I'\"u" . $_, [ "I'y\"", "u" . $_ ],        "I''\"u" . $_, [ "I'y'y\"", "u" . $_ ],

                        "y'\"a" . $_, [ "y'y\"", "a" . $_ ],        "y''\"a" . $_, [ "y'y'y\"", "a" . $_ ],
                        "y'\"i" . $_, [ "y'y\"", "i" . $_ ],        "y''\"i" . $_, [ "y'y'y\"", "i" . $_ ],
                        "y'\"u" . $_, [ "y'y\"", "u" . $_ ],        "y''\"u" . $_, [ "y'y'y\"", "u" . $_ ],

                        "y\"'\"a" . $_, [ "y\"'y\"", "a" . $_ ],    "y\"''\"a" . $_, [ "y\"'y'y\"", "a" . $_ ],
                        "y\"'\"i" . $_, [ "y\"'y\"", "i" . $_ ],    "y\"''\"i" . $_, [ "y\"'y'y\"", "i" . $_ ],
                        "y\"'\"u" . $_, [ "y\"'y\"", "u" . $_ ],    "y\"''\"u" . $_, [ "y\"'y'y\"", "u" . $_ ],

                        "y\"'a" . $_, [ "y\"'y", "a" . $_ ],        "y\"''a" . $_, [ "y\"'y'y", "a" . $_ ],
                        "y\"'i" . $_, [ "y\"'y", "i" . $_ ],        "y\"''i" . $_, [ "y\"'y'y", "i" . $_ ],
                        "y\"'u" . $_, [ "y\"'y", "u" . $_ ],        "y\"''u" . $_, [ "y\"'y'y", "u" . $_ ],

                        "U'\"a" . $_, [ "U'w\"", "a" . $_ ],        "U''\"a" . $_, [ "U'w'w\"", "a" . $_ ],
                        "U'\"i" . $_, [ "U'y\"", "i" . $_ ],        "U''\"i" . $_, [ "U'y'y\"", "i" . $_ ],
                        "U'\"u" . $_, [ "U'w\"", "u" . $_ ],        "U''\"u" . $_, [ "U'w'w\"", "u" . $_ ],

                        "uw'\"a" . $_, [ "uw'w\"", "a" . $_ ],      "uw''\"a" . $_, [ "uw'w'w\"", "a" . $_ ],
                        "uw'\"i" . $_, [ "uw'y\"", "i" . $_ ],      "uw''\"i" . $_, [ "uw'y'y\"", "i" . $_ ],
                        "uw'\"u" . $_, [ "uw'w\"", "u" . $_ ],      "uw''\"u" . $_, [ "uw'w'w\"", "u" . $_ ],

                        ) ),

                    } "'", @scope, "y", "T", "H", "W", "_W"
                ),

                (
                    map {                                           # doubled

                        my $fix = $_;

                        $_ . "'A", [ $_ . "'", "A" ],               $_ . "''A", [ $_ . "'a'a", "A" ],
                        $_ . "'I", [ $_ . "'y", "I" ],              $_ . "''I", [ $_ . "'y'y", "I" ],
                        $_ . "'U", [ $_ . "'w", "U" ],              $_ . "''U", [ $_ . "'w'w", "U" ],

                        $_ . "'Y", [ $_ . "'a", "Y" ],              $_ . "''Y", [ $_ . "'a'a", "Y" ],

                        $_ . "'aNY", [ $_ . "'a", "aNY" ],          $_ . "''aNY", [ $_ . "'a'a", "aNY" ],

                        $_ . "'_I", [ $_ . "'y", "_I" ],            $_ . "''_I", [ $_ . "'y'y", "_I" ],

                        $_ . "'_U", [ "", $_ . "'U" ],              $_ . "''_U", [ "", $_ . "''U" ],

                        ( $option{'non-quoting'} ? () : (

                        $_ . "'\"A", [ $_ . "'", "A" ],             $_ . "''\"A", [ $_ . "'a'a\"", "A" ],
                        $_ . "'\"I", [ $_ . "'y\"", "I" ],          $_ . "''\"I", [ $_ . "'y'y\"", "I" ],
                        $_ . "'\"U", [ $_ . "'w\"", "U" ],          $_ . "''\"U", [ $_ . "'w'w\"", "U" ],

                        $_ . "'\"Y", [ $_ . "'a\"", "Y" ],          $_ . "''\"Y", [ $_ . "'a'a\"", "Y" ],

                        $_ . "'\"aNY", [ $_ . "'a\"", "aNY" ],      $_ . "''\"aNY", [ $_ . "'a'a\"", "aNY" ],

                        $_ . "'\"_I", [ $_ . "'y\"", "_I" ],        $_ . "''\"_I", [ $_ . "'y'y\"", "_I" ],

                        $_ . "'\"_U", [ "", $_ . "'\"U" ],          $_ . "''\"_U", [ "", $_ . "''\"U" ],

                        ) ),

                        map {                                                   # doubled

                            $fix . "'a" . $_, [ $fix . "'a", "a" . $_ ],        $fix . "''a" . $_, [ $fix . "'a'a", "a" . $_ ],
                            $fix . "'i" . $_, [ $fix . "'y", "i" . $_ ],        $fix . "''i" . $_, [ $fix . "'y'y", "i" . $_ ],
                            $fix . "'u" . $_, [ $fix . "'w", "u" . $_ ],        $fix . "''u" . $_, [ $fix . "'w'w", "u" . $_ ],

                            ( $option{'non-quoting'} ? () : (

                            $fix . "'\"a" . $_, [ $fix . "'a\"", "a" . $_ ],    $fix . "''\"a" . $_, [ $fix . "'a'a\"", "a" . $_ ],
                            $fix . "'\"i" . $_, [ $fix . "'y\"", "i" . $_ ],    $fix . "''\"i" . $_, [ $fix . "'y'y\"", "i" . $_ ],
                            $fix . "'\"u" . $_, [ $fix . "'w\"", "u" . $_ ],    $fix . "''\"u" . $_, [ $fix . "'w'w\"", "u" . $_ ],

                            ) ),

                        } "'", @scope, "y", "T", "H", "W", "_W"

                    } @scope, $option{'non-quoting'} ? () : "\""    # quoted included
                ),

                    "T'A", [ "t'", "A" ],               "T''A", [ "t'a'a", "A" ],
                    "T'I", [ "t'y", "I" ],              "T''I", [ "t'y'y", "I" ],
                    "T'U", [ "t'w", "U" ],              "T''U", [ "t'w'w", "U" ],

                    "T'_I", [ "t'y", "_I" ],            "T''_I", [ "t'y'y", "_I" ],

                    "T'_U", [ "", "T'U" ],              "T''_U", [ "", "T''U" ],

                    ( $option{'non-quoting'} ? () : (

                    "T'\"A", [ "t'", "A" ],             "T''\"A", [ "t'a'a\"", "A" ],
                    "T'\"I", [ "t'y\"", "I" ],          "T''\"I", [ "t'y'y\"", "I" ],
                    "T'\"U", [ "t'w\"", "U" ],          "T''\"U", [ "t'w'w\"", "U" ],

                    "T'\"_I", [ "t'y\"", "_I" ],        "T''\"_I", [ "t'y'y\"", "_I" ],

                    "T'\"_U", [ "", "T'\"U" ],          "T''\"_U", [ "", "T''\"U" ],

                    ) ),

                (
                    map {                                       # doubled

                        "T'a" . $_, [ "t'a", "a" . $_ ],        "T''a" . $_, [ "t'a'a", "a" . $_ ],
                        "T'i" . $_, [ "t'y", "i" . $_ ],        "T''i" . $_, [ "t'y'y", "i" . $_ ],
                        "T'u" . $_, [ "t'w", "u" . $_ ],        "T''u" . $_, [ "t'w'w", "u" . $_ ],

                        ( $option{'non-quoting'} ? () : (

                        "T'\"a" . $_, [ "t'a\"", "a" . $_ ],    "T''\"a" . $_, [ "t'a'a\"", "a" . $_ ],
                        "T'\"i" . $_, [ "t'y\"", "i" . $_ ],    "T''\"i" . $_, [ "t'y'y\"", "i" . $_ ],
                        "T'\"u" . $_, [ "t'w\"", "u" . $_ ],    "T''\"u" . $_, [ "t'w'w\"", "u" . $_ ],

                        ) ),

                    } "'", @scope, "y"  # "T", "H", "W"
                ),

            );


    $decoder->[1] = Encode::Mapper->compile (

                [
                    'others' => undef,
                    'silent' => 0,
                ],

                # non-exciting entities

                    "\x09",         "\x09",
                    "\x0A",         "\x0A",
                    "\x0D",         "\x0D",

                    " ",            " ",
                    ".",            ".",
                    ":",            ":",
                    "!",            "!",

                    "/",            "/",
                    "\\",           "\\",

                    ",",            "\x{060C}",                 # "\xD8\x8C" right-to-left-comma
                    ";",            "\x{061B}",                 # "\xD8\x9B" right-to-left-semicolon
                    "?",            "\x{061F}",                 # "\xD8\x9F" right-to-left-question-mark

                    "--",           "\x{0640}",                 # "\xD9\x80" ta.twiil

                (
                    map {

                        "" . $_, chr 0x0660 + $_,

                    } 0 .. 9
                ),

                # improper auxiliary vowels -- the case of conditioned deletion

                    "-a",           "",
                    "-u",           "",
                    "-i",           "",

                (
                    map {

                        "-a" . $_->[0], [ "", "a" . $_->[0] ],
                        "-i" . $_->[0], [ "", "i" . $_->[0] ],
                        "-u" . $_->[0], [ "", "u" . $_->[0] ],

                    } @sunny, @moony, @taaaa, $empty[0]
                ),

                # non-voweled/sukuuned sunnies and moonies
                (
                    map {

                        my $x = 1 + $_;
                        my $y = "\x{0651}" x $_;                        # "\xD9\x91" ^sadda

                        map {

                            my $fix = $_;

                            $_->[0] x $x, $_->[1] . $y . "\x{0652}",   # "\xD9\x92" sukuun

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "-a", $_->[1] . $y . "\x{064E}",
                            $_->[0] x $x . "-u", $_->[1] . $y . "\x{064F}",
                            $_->[0] x $x . "-i", $_->[1] . $y . "\x{0650}",

                            $_->[0] x $x . "-A", $_->[1] . $y . "\x{064E}\x{0627}",
                            $_->[0] x $x . "-Y", $_->[1] . $y . "\x{064E}\x{0649}",

                            $_->[0] x $x . "-U", $_->[1] . $y . "\x{064F}\x{0648}",
                            $_->[0] x $x . "-I", $_->[1] . $y . "\x{0650}\x{064A}",

                            $_->[0] x $x . "-aN", $_->[1] . $y . "\x{064B}" . ( $_->[0] eq "'a" ? "" : "\x{0627}" ),
                            $_->[0] x $x . "-uN", $_->[1] . $y . "\x{064C}",
                            $_->[0] x $x . "-iN", $_->[1] . $y . "\x{064D}",

                            $_->[0] x $x . "-aNA", $_->[1] . $y . "\x{064B}\x{0627}",
                            $_->[0] x $x . "-uNA", $_->[1] . $y . "\x{064C}\x{0627}",
                            $_->[0] x $x . "-iNA", $_->[1] . $y . "\x{064D}\x{0627}",

                            $_->[0] x $x . "-aNY", $_->[1] . $y . "\x{064B}\x{0649}",
                            $_->[0] x $x . "-uNY", $_->[1] . $y . "\x{064C}\x{0649}",
                            $_->[0] x $x . "-iNY", $_->[1] . $y . "\x{064D}\x{0649}",

                            $_->[0] x $x . "-aNU", $_->[1] . $y . "\x{064B}\x{0648}",
                            $_->[0] x $x . "-uNU", $_->[1] . $y . "\x{064C}\x{0648}",
                            $_->[0] x $x . "-iNU", $_->[1] . $y . "\x{064D}\x{0648}",

                            ) ),

                            ( $option{'non-quoting'} ? () : (

                            $_->[0] x $x . "\"", $_->[1] . $y . "\"\x{0652}",   # "\xD9\x92" sukuun

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "-\"a", $_->[1] . $y . "\"\x{064E}",
                            $_->[0] x $x . "-\"u", $_->[1] . $y . "\"\x{064F}",
                            $_->[0] x $x . "-\"i", $_->[1] . $y . "\"\x{0650}",

                            $_->[0] x $x . "-\"A", $_->[1] . $y . "\"\x{064E}\x{0627}",
                            $_->[0] x $x . "-\"Y", $_->[1] . $y . "\"\x{064E}\x{0649}",

                            $_->[0] x $x . "-\"U", $_->[1] . $y . "\"\x{064F}\x{0648}",
                            $_->[0] x $x . "-\"I", $_->[1] . $y . "\"\x{0650}\x{064A}",

                            $_->[0] x $x . "-\"aN", $_->[1] . $y . "\"\x{064B}" . ( $_->[0] eq "'a" ? "" : "\x{0627}" ),
                            $_->[0] x $x . "-\"uN", $_->[1] . $y . "\"\x{064C}",
                            $_->[0] x $x . "-\"iN", $_->[1] . $y . "\"\x{064D}",

                            $_->[0] x $x . "-\"aNA", $_->[1] . $y . "\"\x{064B}\x{0627}",
                            $_->[0] x $x . "-\"uNA", $_->[1] . $y . "\"\x{064C}\x{0627}",
                            $_->[0] x $x . "-\"iNA", $_->[1] . $y . "\"\x{064D}\x{0627}",

                            $_->[0] x $x . "-\"aNY", $_->[1] . $y . "\"\x{064B}\x{0649}",
                            $_->[0] x $x . "-\"uNY", $_->[1] . $y . "\"\x{064C}\x{0649}",
                            $_->[0] x $x . "-\"iNY", $_->[1] . $y . "\"\x{064D}\x{0649}",

                            $_->[0] x $x . "-\"aNU", $_->[1] . $y . "\"\x{064B}\x{0648}",
                            $_->[0] x $x . "-\"uNU", $_->[1] . $y . "\"\x{064C}\x{0648}",
                            $_->[0] x $x . "-\"iNU", $_->[1] . $y . "\"\x{064D}\x{0648}",

                            ) ),

                            ) ),

                            map {

                                ( $option{'non-refined'} ? () : (

                                $fix->[0] x $x . "-a" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "a" . $_->[0] ],
                                $fix->[0] x $x . "-u" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "u" . $_->[0] ],
                                $fix->[0] x $x . "-i" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "i" . $_->[0] ],

                                $fix->[0] x $x . "-A" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "A" . $_->[0] ],
                                $fix->[0] x $x . "-Y" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "Y" . $_->[0] ],

                                $fix->[0] x $x . "-U" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "U" . $_->[0] ],
                                $fix->[0] x $x . "-I" . $_->[0], [ $fix->[1] . $y . "\x{0652}", "I" . $_->[0] ],

                                ( $option{'non-quoting'} ? () : (

                                $fix->[0] x $x . "-\"a" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "a" . $_->[0] ],
                                $fix->[0] x $x . "-\"u" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "u" . $_->[0] ],
                                $fix->[0] x $x . "-\"i" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "i" . $_->[0] ],

                                $fix->[0] x $x . "-\"A" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "A" . $_->[0] ],
                                $fix->[0] x $x . "-\"Y" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "Y" . $_->[0] ],

                                $fix->[0] x $x . "-\"U" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "U" . $_->[0] ],
                                $fix->[0] x $x . "-\"I" . $_->[0], [ $fix->[1] . $y . "\x{0652}\"", "I" . $_->[0] ],

                                ) ),

                                ) ),

                            } @sunny, @moony, @taaaa, $empty[0]

                        } @sunny, @moony[1 .. $#moony], $empty[0]   # $moony[0] excluded as long as <a''A> is unclear ^^

                    } 0, 1
                ),

                    $moony[0]->[0],     $moony[0]->[1],             # now necessary of course ^^

                # voweled/non-sukuuned sunnies and moonies
                (
                    map {

                        my $x = 1 + $_;
                        my $y = "\x{0651}" x $_;                        # "\xD9\x91" ^sadda

                        map {

                            my $fix = $_;

                            $_->[0] x $x . "a", $_->[1] . $y . "\x{064E}",
                            $_->[0] x $x . "u", $_->[1] . $y . "\x{064F}",
                            $_->[0] x $x . "i", $_->[1] . $y . "\x{0650}",

                            $_->[0] x $x . "_a", $_->[1] . $y . "\x{0670}",

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "_u", $_->[1] . $y . "\x{0657}",
                            $_->[0] x $x . "_i", $_->[1] . $y . "\x{0656}",

                            $_->[0] x $x . "_aA", $_->[1] . $y . "\x{0670}\x{0627}",
                            $_->[0] x $x . "_aY", $_->[1] . $y . "\x{0670}\x{0649}",
                            $_->[0] x $x . "_aU", $_->[1] . $y . "\x{0670}\x{0648}",
                            $_->[0] x $x . "_aI", $_->[1] . $y . "\x{0670}\x{064A}",

                            ) ),

                            $_->[0] x $x . "A", $_->[1] . $y . "\x{064E}\x{0627}",
                            $_->[0] x $x . "Y", $_->[1] . $y . "\x{064E}\x{0649}",

                            $_->[0] x $x . "_I", $_->[1] . $y . "\x{0650}\x{0627}",

                            $_->[0] x $x . "U", $_->[1] . $y . "\x{064F}\x{0648}",
                            $_->[0] x $x . "I", $_->[1] . $y . "\x{0650}\x{064A}",

                            $_->[0] x $x . "Uw", [ $_->[1] . $y . "\x{064F}", "ww" ],
                            $_->[0] x $x . "Iy", [ $_->[1] . $y . "\x{0650}", "yy" ],

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "^A", $_->[1] . $y . "\x{064F}\x{0627}\x{0653}",
                            $_->[0] x $x . "^U", $_->[1] . $y . "\x{064F}\x{0648}\x{0653}",
                            $_->[0] x $x . "^I", $_->[1] . $y . "\x{0650}\x{064A}\x{0653}",

                            $_->[0] x $x . "^Uw", [ $_->[1] . $y . "\x{064F}\x{0648}\x{0655}", "|" ],  # roughly
                            $_->[0] x $x . "^Iy", [ $_->[1] . $y . "\x{0650}\x{0649}\x{0655}", "|" ],  # roughly

                            ) ),

                            $_->[0] x $x . "aa", [ "", $_->[0] x $x . "A" ],
                            $_->[0] x $x . "uw", [ "", $_->[0] x $x . "U" ],
                            $_->[0] x $x . "iy", [ "", $_->[0] x $x . "I" ],

                            ( $option{'non-quoting'} ? () : (

                            $_->[0] x $x . "\"a", $_->[1] . $y . "\"\x{064E}",
                            $_->[0] x $x . "\"u", $_->[1] . $y . "\"\x{064F}",
                            $_->[0] x $x . "\"i", $_->[1] . $y . "\"\x{0650}",

                            $_->[0] x $x . "\"_a", $_->[1] . $y . "\"\x{0670}",

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "\"_u", $_->[1] . $y . "\"\x{0657}",
                            $_->[0] x $x . "\"_i", $_->[1] . $y . "\"\x{0656}",

                            $_->[0] x $x . "\"_aA", $_->[1] . $y . "\"\x{0670}\x{0627}",
                            $_->[0] x $x . "\"_aY", $_->[1] . $y . "\"\x{0670}\x{0649}",
                            $_->[0] x $x . "\"_aU", $_->[1] . $y . "\"\x{0670}\x{0648}",
                            $_->[0] x $x . "\"_aI", $_->[1] . $y . "\"\x{0670}\x{064A}",

                            ) ),

                            $_->[0] x $x . "\"A", $_->[1] . $y . "\"\x{064E}\x{0627}",
                            $_->[0] x $x . "\"Y", $_->[1] . $y . "\"\x{064E}\x{0649}",

                            $_->[0] x $x . "\"A\"", $_->[1] . $y . "\"\x{064E}\x{0627}\"\x{0652}",
                            $_->[0] x $x . "\"Y\"", $_->[1] . $y . "\"\x{064E}\x{0649}\"\x{0652}",

                            $_->[0] x $x . "A\"", $_->[1] . $y . "\x{064E}\x{0627}\"\x{0652}",
                            $_->[0] x $x . "Y\"", $_->[1] . $y . "\x{064E}\x{0649}\"\x{0652}",

                            $_->[0] x $x . "\"_I", $_->[1] . $y . "\"\x{0650}\x{0627}",
                            $_->[0] x $x . "\"_I\"", $_->[1] . $y . "\"\x{0650}\x{0627}\"\x{0652}",
                            $_->[0] x $x . "_I\"", $_->[1] . $y . "\x{0650}\x{0627}\"\x{0652}",

                            $_->[0] x $x . "\"U", $_->[1] . $y . "\"\x{064F}\x{0648}",
                            $_->[0] x $x . "\"I", $_->[1] . $y . "\"\x{0650}\x{064A}",

                            $_->[0] x $x . "\"U\"", $_->[1] . $y . "\"\x{064F}\x{0648}\"\x{0652}",
                            $_->[0] x $x . "\"I\"", $_->[1] . $y . "\"\x{0650}\x{064A}\"\x{0652}",

                            $_->[0] x $x . "U\"", $_->[1] . $y . "\x{064F}\x{0648}\"\x{0652}",
                            $_->[0] x $x . "I\"", $_->[1] . $y . "\x{0650}\x{064A}\"\x{0652}",

                            $_->[0] x $x . "\"Uw", [ $_->[1] . $y . "\"\x{064F}", "ww" ],
                            $_->[0] x $x . "\"Iy", [ $_->[1] . $y . "\"\x{0650}", "yy" ],

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "\"^A", $_->[1] . $y . "\"\x{064F}\x{0627}\x{0653}",
                            $_->[0] x $x . "\"^U", $_->[1] . $y . "\"\x{064F}\x{0648}\x{0653}",
                            $_->[0] x $x . "\"^I", $_->[1] . $y . "\"\x{0650}\x{064A}\x{0653}",

                            $_->[0] x $x . "\"^Uw", [ $_->[1] . $y . "\"\x{064F}\x{0648}\x{0655}", "|" ],  # roughly
                            $_->[0] x $x . "\"^Iy", [ $_->[1] . $y . "\"\x{0650}\x{0649}\x{0655}", "|" ],  # roughly

                            ) ),

                            $_->[0] x $x . "\"aa", [ "", $_->[0] x $x . "\"A" ],
                            $_->[0] x $x . "\"uw", [ "", $_->[0] x $x . "\"U" ],
                            $_->[0] x $x . "\"iy", [ "", $_->[0] x $x . "\"I" ],

                            ) ),

                        (
                            map {

                                $fix->[0] x $x . "uw" . $_, [ $fix->[1] . $y . "\x{064F}", "w" . $_ ],
                                $fix->[0] x $x . "iy" . $_, [ $fix->[1] . $y . "\x{0650}", "y" . $_ ],

                                ( $option{'non-quoting'} ? () : (

                                $fix->[0] x $x . "\"uw" . $_, [ $fix->[1] . $y . "\"\x{064F}", "w" . $_ ],
                                $fix->[0] x $x . "\"iy" . $_, [ $fix->[1] . $y . "\"\x{0650}", "y" . $_ ],

                                ) ),

                            } "\"", qw "a u i A Y U I _I", $option{'non-refined'} ? () : qw "_a _u _i ^A ^U ^I"
                        ),

                            $_->[0] x $x . "_aA'|aN", $_->[1] . $y . "\x{0670}\x{0627}\x{0621}\x{064B}",
                            $_->[0] x $x . "A'|aN", $_->[1] . $y . "\x{064E}\x{0627}\x{0621}\x{064B}",

                            $_->[0] x $x . "aN", $_->[1] . $y . "\x{064B}" . ( $_->[0] eq "'a" ? "" : "\x{0627}" ),
                            $_->[0] x $x . "uN", $_->[1] . $y . "\x{064C}",
                            $_->[0] x $x . "iN", $_->[1] . $y . "\x{064D}",

                            ( $option{'non-quoting'} ? () : (

                            $_->[0] x $x . "\"_aA'|aN", $_->[1] . $y . "\"\x{0670}\x{0627}\x{0621}\x{064B}",
                            $_->[0] x $x . "\"A'|aN", $_->[1] . $y . "\"\x{064E}\x{0627}\x{0621}\x{064B}",

                            $_->[0] x $x . "\"_aA'|\"aN", $_->[1] . $y . "\"\x{0670}\x{0627}\x{0621}\"\x{064B}",
                            $_->[0] x $x . "\"A'|\"aN", $_->[1] . $y . "\"\x{064E}\x{0627}\x{0621}\"\x{064B}",

                            $_->[0] x $x . "_aA'|\"aN", $_->[1] . $y . "\x{0670}\x{0627}\x{0621}\"\x{064B}",
                            $_->[0] x $x . "A'|\"aN", $_->[1] . $y . "\x{064E}\x{0627}\x{0621}\"\x{064B}",

                            $_->[0] x $x . "\"A\"'|aN", $_->[1] . $y . "\"\x{064E}\x{0627}\"\x{0652}\x{0621}\x{064B}",
                            $_->[0] x $x . "\"A\"'|\"aN", $_->[1] . $y . "\"\x{064E}\x{0627}\"\x{0652}\x{0621}\"\x{064B}",
                            $_->[0] x $x . "A\"'|\"aN", $_->[1] . $y . "\x{064E}\x{0627}\"\x{0652}\x{0621}\"\x{064B}",

                            $_->[0] x $x . "\"aN", $_->[1] . $y . "\"\x{064B}" . ( $_->[0] eq "'a" ? "" : "\x{0627}" ),
                            $_->[0] x $x . "\"uN", $_->[1] . $y . "\"\x{064C}",
                            $_->[0] x $x . "\"iN", $_->[1] . $y . "\"\x{064D}",

                            ) ),

                        } @sunny, @moony, $empty[0]

                    } 0, 1
                ),

                # 'alif protected endings
                (
                    map {

                        my $x = 1 + $_;
                        my $y = "\x{0651}" x $_;                        # "\xD9\x91" ^sadda

                        map {

                            $_->[0] x $x . "_aA'|aNA", $_->[1] . $y . "\x{0670}\x{0627}\x{0621}\x{064B}\x{0627}",
                            $_->[0] x $x . "A'|aNA", $_->[1] . $y . "\x{064E}\x{0627}\x{0621}\x{064B}\x{0627}",

                            $_->[0] x $x . "aNA", $_->[1] . $y . "\x{064B}\x{0627}",
                            $_->[0] x $x . "aNY", $_->[1] . $y . "\x{064B}\x{0649}",

                            $_->[0] x $x . "uNU", $_->[1] . $y . "\x{064C}\x{0648}",
                            $_->[0] x $x . "iNU", $_->[1] . $y . "\x{064D}\x{0648}",

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "uNA", $_->[1] . $y . "\x{064C}\x{0627}",
                            $_->[0] x $x . "iNA", $_->[1] . $y . "\x{064D}\x{0627}",

                            $_->[0] x $x . "uNY", $_->[1] . $y . "\x{064C}\x{0649}",
                            $_->[0] x $x . "iNY", $_->[1] . $y . "\x{064D}\x{0649}",

                            $_->[0] x $x . "aNU", $_->[1] . $y . "\x{064B}\x{0648}",

                            $_->[0] x $x . "aW-a", $_->[1] . $y . "\x{064E}\x{0648}\x{064E}\x{0627}",
                            $_->[0] x $x . "aW-u", $_->[1] . $y . "\x{064E}\x{0648}\x{064F}\x{0627}",
                            $_->[0] x $x . "aW-i", $_->[1] . $y . "\x{064E}\x{0648}\x{0650}\x{0627}",

                            ) ),

                            $_->[0] x $x . "a_W", $_->[1] . $y . "\x{064E}\x{0648}",
                            $_->[0] x $x . "u_W", $_->[1] . $y . "\x{064F}\x{0648}",
                            $_->[0] x $x . "i_W", $_->[1] . $y . "\x{0650}\x{0648}",

                            $_->[0] x $x . "aW", $_->[1] . $y . "\x{064E}\x{0648}\x{0652}\x{0627}",
                            $_->[0] x $x . "uW", $_->[1] . $y . "\x{064F}\x{0648}\x{0627}",
                            $_->[0] x $x . "UW", $_->[1] . $y . "\x{064F}\x{0648}\x{0627}",
                            $_->[0] x $x . "UA", $_->[1] . $y . "\x{064F}\x{0648}\x{0627}",

                            ( $option{'non-quoting'} ? () : (

                            $_->[0] x $x . "\"_aA'|aNA", $_->[1] . $y . "\"\x{0670}\x{0627}\x{0621}\x{064B}\x{0627}",
                            $_->[0] x $x . "\"A'|aNA", $_->[1] . $y . "\"\x{064E}\x{0627}\x{0621}\x{064B}\x{0627}",

                            $_->[0] x $x . "\"_aA'|\"aNA", $_->[1] . $y . "\"\x{0670}\x{0627}\x{0621}\"\x{064B}\x{0627}",
                            $_->[0] x $x . "\"A'|\"aNA", $_->[1] . $y . "\"\x{064E}\x{0627}\x{0621}\"\x{064B}\x{0627}",

                            $_->[0] x $x . "_aA'|\"aNA", $_->[1] . $y . "\x{0670}\x{0627}\x{0621}\"\x{064B}\x{0627}",
                            $_->[0] x $x . "A'|\"aNA", $_->[1] . $y . "\x{064E}\x{0627}\x{0621}\"\x{064B}\x{0627}",

                            $_->[0] x $x . "\"A\"'|aNA", $_->[1] . $y . "\"\x{064E}\x{0627}\"\x{0652}\x{0621}\x{064B}\x{0627}",
                            $_->[0] x $x . "\"A\"'|\"aNA", $_->[1] . $y . "\"\x{064E}\x{0627}\"\x{0652}\x{0621}\"\x{064B}\x{0627}",
                            $_->[0] x $x . "A\"'|\"aNA", $_->[1] . $y . "\x{064E}\x{0627}\"\x{0652}\x{0621}\"\x{064B}\x{0627}",

                            $_->[0] x $x . "\"aNA", $_->[1] . $y . "\"\x{064B}\x{0627}",
                            $_->[0] x $x . "\"aNY", $_->[1] . $y . "\"\x{064B}\x{0649}",

                            $_->[0] x $x . "\"uNU", $_->[1] . $y . "\"\x{064C}\x{0648}",
                            $_->[0] x $x . "\"iNU", $_->[1] . $y . "\"\x{064D}\x{0648}",

                            ( $option{'non-refined'} ? () : (

                            $_->[0] x $x . "\"uNA", $_->[1] . $y . "\"\x{064C}\x{0627}",
                            $_->[0] x $x . "\"iNA", $_->[1] . $y . "\"\x{064D}\x{0627}",

                            $_->[0] x $x . "\"uNY", $_->[1] . $y . "\"\x{064C}\x{0649}",
                            $_->[0] x $x . "\"iNY", $_->[1] . $y . "\"\x{064D}\x{0649}",

                            $_->[0] x $x . "\"aNU", $_->[1] . $y . "\"\x{064B}\x{0648}",

                            $_->[0] x $x . "\"aW-a", $_->[1] . $y . "\"\x{064E}\x{0648}\x{064E}\x{0627}",
                            $_->[0] x $x . "\"aW-u", $_->[1] . $y . "\"\x{064E}\x{0648}\x{064F}\x{0627}",
                            $_->[0] x $x . "\"aW-i", $_->[1] . $y . "\"\x{064E}\x{0648}\x{0650}\x{0627}",

                            $_->[0] x $x . "\"aW-\"a", $_->[1] . $y . "\"\x{064E}\x{0648}\"\x{064E}\x{0627}",
                            $_->[0] x $x . "\"aW-\"u", $_->[1] . $y . "\"\x{064E}\x{0648}\"\x{064F}\x{0627}",
                            $_->[0] x $x . "\"aW-\"i", $_->[1] . $y . "\"\x{064E}\x{0648}\"\x{0650}\x{0627}",

                            $_->[0] x $x . "aW-\"a", $_->[1] . $y . "\x{064E}\x{0648}\"\x{064E}\x{0627}",
                            $_->[0] x $x . "aW-\"u", $_->[1] . $y . "\x{064E}\x{0648}\"\x{064F}\x{0627}",
                            $_->[0] x $x . "aW-\"i", $_->[1] . $y . "\x{064E}\x{0648}\"\x{0650}\x{0627}",

                            $_->[0] x $x . "\"aW-\"", $_->[1] . $y . "\"\x{064E}\x{0648}\"\x{0652}\x{0627}",
                            $_->[0] x $x . "aW-\"", $_->[1] . $y . "\x{064E}\x{0648}\"\x{0652}\x{0627}",

                            ) ),

                            $_->[0] x $x . "\"a_W", $_->[1] . $y . "\"\x{064E}\x{0648}",
                            $_->[0] x $x . "\"u_W", $_->[1] . $y . "\"\x{064F}\x{0648}",
                            $_->[0] x $x . "\"i_W", $_->[1] . $y . "\"\x{0650}\x{0648}",

                            $_->[0] x $x . "\"aW", $_->[1] . $y . "\"\x{064E}\x{0648}\x{0652}\x{0627}",
                            $_->[0] x $x . "\"uW", $_->[1] . $y . "\"\x{064F}\x{0648}\x{0627}",
                            $_->[0] x $x . "\"UW", $_->[1] . $y . "\"\x{064F}\x{0648}\x{0627}",
                            $_->[0] x $x . "\"UA", $_->[1] . $y . "\"\x{064F}\x{0648}\x{0627}",

                            ) ),

                        } @sunny, @moony, $empty[0]

                    } 0, 1
                ),

                # taa' marbuu.ta endings
                (
                    map {

                        $_->[0], $_->[1] . "\x{0652}",              # "\xD9\x92" sukuun

                        ( $option{'non-quoting'} ? () : (

                        $_->[0] . "\"", $_->[1] . "\"\x{0652}",     # "\xD9\x92" sukuun

                        ) ),

                    } @taaaa
                ),

                (
                    map {

                        my $fix = $_;

                        $_->[0] . "a", $_->[1] . "\x{064E}",
                        $_->[0] . "u", $_->[1] . "\x{064F}",
                        $_->[0] . "i", $_->[1] . "\x{0650}",

                        $_->[0] . "aN", $_->[1] . "\x{064B}",
                        $_->[0] . "uN", $_->[1] . "\x{064C}",
                        $_->[0] . "iN", $_->[1] . "\x{064D}",

                        ( $option{'non-quoting'} ? () : (

                        $_->[0] . "\"a", $_->[1] . "\"\x{064E}",
                        $_->[0] . "\"u", $_->[1] . "\"\x{064F}",
                        $_->[0] . "\"i", $_->[1] . "\"\x{0650}",

                        $_->[0] . "\"aN", $_->[1] . "\"\x{064B}",
                        $_->[0] . "\"uN", $_->[1] . "\"\x{064C}",
                        $_->[0] . "\"iN", $_->[1] . "\"\x{064D}",

                        ) ),

                        # non-voweled/sukuuned

                        ( $option{'non-refined'} ? () : (

                        $_->[0] . "-a", $_->[1] . "\x{064E}",
                        $_->[0] . "-u", $_->[1] . "\x{064F}",
                        $_->[0] . "-i", $_->[1] . "\x{0650}",

                        $_->[0] . "-aN", $_->[1] . "\x{064B}",
                        $_->[0] . "-uN", $_->[1] . "\x{064C}",
                        $_->[0] . "-iN", $_->[1] . "\x{064D}",

                        ( $option{'non-quoting'} ? () : (

                        $_->[0] . "-\"a", $_->[1] . "\"\x{064E}",
                        $_->[0] . "-\"u", $_->[1] . "\"\x{064F}",
                        $_->[0] . "-\"i", $_->[1] . "\"\x{0650}",

                        $_->[0] . "-\"aN", $_->[1] . "\"\x{064B}",
                        $_->[0] . "-\"uN", $_->[1] . "\"\x{064C}",
                        $_->[0] . "-\"iN", $_->[1] . "\"\x{064D}",

                        ) ),

                        ) ),

                        map {

                            ( $option{'non-refined'} ? () : (

                            $fix->[0] . "-a" . $_->[0], [ $fix->[1] . "\x{0652}", "a" . $_->[0] ],
                            $fix->[0] . "-u" . $_->[0], [ $fix->[1] . "\x{0652}", "u" . $_->[0] ],
                            $fix->[0] . "-i" . $_->[0], [ $fix->[1] . "\x{0652}", "i" . $_->[0] ],

                            ( $option{'non-quoting'} ? () : (

                            $fix->[0] . "-\"a" . $_->[0], [ $fix->[1] . "\x{0652}\"", "a" . $_->[0] ],
                            $fix->[0] . "-\"u" . $_->[0], [ $fix->[1] . "\x{0652}\"", "u" . $_->[0] ],
                            $fix->[0] . "-\"i" . $_->[0], [ $fix->[1] . "\x{0652}\"", "i" . $_->[0] ],

                            ) ),

                            ) ),

                        } @sunny, @moony, $empty[0] # @taaaa

                    } $taaaa[0]
                ),

                # definite article assimilation .. non-linguistic

                (
                    map {

                        $_->[0] . "-" . $_->[0], [ "\x{0644}", $_->[0] x 2 ],
                        "l-" . $_->[0] x 2, [ "\x{0644}", $_->[0] x 2 ],

                    } @sunny, @moony
                ),

                (
                    map {

                        my $fix = $_;

                        "l" . $_ . "-all", [ "", "l" . ( $_ eq "" ? "|" : $_ ) . "ll" ],
                        "l" . $_ . "-al-", [ "", "l" . ( $_ eq "" ? "|" : $_ ) . "l-" ],

                        "l" . $_ . "-al-l", [ "", "l" . $_ . "-ll" ],
                        "l" . $_ . "-al-ll", [ "", "l" . $_ . "-ll" ],

                        map {

                            "l" . $fix . "-a" . $_->[0] . "-" . $_->[0], [ "", "l" . $fix . "l-" . $_->[0] x 2 ],
                            "l" . $fix . "-al-" . $_->[0] x 2, [ "", "l" . $fix . "l-" . $_->[0] x 2 ],

                        } @moony, grep { $_->[0] ne "l" } @sunny

                    } "", "a", "u", "i", $option{'non-quoting'} ? () : ( "\"", "\"a", "\"u", "\"i" )
                ),

                # initial vowels

                    ( $option{'non-quoting'} ? () : (

                    "\"",           "\x{0671}",     # this grapheme is mode-dependent in the next level

                    ) ),

                (
                    map {

                        my $fix = $_;

                        $_->[0] . "a", $_->[1] . "\x{064E}",
                        $_->[0] . "u", $_->[1] . "\x{064F}",
                        $_->[0] . "i", $_->[1] . "\x{0650}",

                        ( $option{'non-refined'} ? () : (

                        $_->[0] . "_a", $_->[1] . "\x{0670}",
                        $_->[0] . "_u", $_->[1] . "\x{0657}",
                        $_->[0] . "_i", $_->[1] . "\x{0656}",

                        $_->[0] . "_aA", $_->[1] . "\x{0670}\x{0627}",
                        $_->[0] . "_aY", $_->[1] . "\x{0670}\x{0649}",
                        $_->[0] . "_aU", $_->[1] . "\x{0670}\x{0648}",
                        $_->[0] . "_aI", $_->[1] . "\x{0670}\x{064A}",

                        ) ),

                        $_->[0] . "A", $_->[1] . "\x{064E}\x{0627}",
                        $_->[0] . "Y", $_->[1] . "\x{064E}\x{0649}",

                        $_->[0] . "_I", $_->[1] . "\x{0650}\x{0627}",

                        $_->[0] . "U", $_->[1] . "\x{064F}\x{0648}",
                        $_->[0] . "I", $_->[1] . "\x{0650}\x{064A}",

                        $_->[0] . "Uw", [ $_->[1] . "\x{064F}\x{0648}\x{0651}", "|" ],
                        $_->[0] . "Iy", [ $_->[1] . "\x{0650}\x{064A}\x{0651}", "|" ],

                        ( $option{'non-refined'} ? () : (

                        $_->[0] . "^A", "\x{0622}",                 # use no equivs
                        $_->[0] . "^U", "\x{0623}\x{064F}\x{0648}", # use no equivs
                        $_->[0] . "^I", "\x{0625}\x{0650}\x{064A}", # use no equivs

                        ) ),

                        $_->[0] . "aa", [ "", $_->[0] . "A" ],
                        $_->[0] . "uw", [ "", $_->[0] . "U" ],
                        $_->[0] . "iy", [ "", $_->[0] . "I" ],

                        ( $option{'non-quoting'} ? () : (

                        $_->[0] . "\"a", $_->[1] . "\"\x{064E}",
                        $_->[0] . "\"u", $_->[1] . "\"\x{064F}",
                        $_->[0] . "\"i", $_->[1] . "\"\x{0650}",

                        ( $option{'non-refined'} ? () : (

                        $_->[0] . "\"_a", $_->[1] . "\"\x{0670}",
                        $_->[0] . "\"_u", $_->[1] . "\"\x{0657}",
                        $_->[0] . "\"_i", $_->[1] . "\"\x{0656}",

                        $_->[0] . "\"_aA", $_->[1] . "\"\x{0670}\x{0627}",
                        $_->[0] . "\"_aY", $_->[1] . "\"\x{0670}\x{0649}",
                        $_->[0] . "\"_aU", $_->[1] . "\"\x{0670}\x{0648}",
                        $_->[0] . "\"_aI", $_->[1] . "\"\x{0670}\x{064A}",

                        ) ),

                        $_->[0] . "\"A", $_->[1] . "\"\x{064E}\x{0627}",
                        $_->[0] . "\"Y", $_->[1] . "\"\x{064E}\x{0649}",

                        $_->[0] . "\"A\"", $_->[1] . "\"\x{064E}\x{0627}\"\x{0652}",
                        $_->[0] . "\"Y\"", $_->[1] . "\"\x{064E}\x{0649}\"\x{0652}",

                        $_->[0] . "A\"", $_->[1] . "\x{064E}\x{0627}\"\x{0652}",
                        $_->[0] . "Y\"", $_->[1] . "\x{064E}\x{0649}\"\x{0652}",

                        $_->[0] . "\"_I", $_->[1] . "\"\x{0650}\x{0627}",
                        $_->[0] . "\"_I\"", $_->[1] . "\"\x{0650}\x{0627}\"\x{0652}",
                        $_->[0] . "_I\"", $_->[1] . "\x{0650}\x{0627}\"\x{0652}",

                        $_->[0] . "\"U", $_->[1] . "\"\x{064F}\x{0648}",
                        $_->[0] . "\"I", $_->[1] . "\"\x{0650}\x{064A}",

                        $_->[0] . "\"U\"", $_->[1] . "\"\x{064F}\x{0648}\"\x{0652}",
                        $_->[0] . "\"I\"", $_->[1] . "\"\x{0650}\x{064A}\"\x{0652}",

                        $_->[0] . "U\"", $_->[1] . "\x{064F}\x{0648}\"\x{0652}",
                        $_->[0] . "I\"", $_->[1] . "\x{0650}\x{064A}\"\x{0652}",

                        $_->[0] . "\"Uw", [ $_->[1] . "\"\x{064F}\x{0648}\x{0651}", "|" ],
                        $_->[0] . "\"Iy", [ $_->[1] . "\"\x{0650}\x{064A}\x{0651}", "|" ],

                        ( $option{'non-refined'} ? () : (

                        $_->[0] . "\"^A", "\"\x{0622}",                 # use no equivs
                        $_->[0] . "\"^U", "\"\x{0623}\x{064F}\x{0648}", # use no equivs
                        $_->[0] . "\"^I", "\"\x{0625}\x{0650}\x{064A}", # use no equivs

                        ) ),

                        $_->[0] . "\"aa", [ "", $_->[0] . "\"A" ],
                        $_->[0] . "\"uw", [ "", $_->[0] . "\"U" ],
                        $_->[0] . "\"iy", [ "", $_->[0] . "\"I" ],

                        ) ),

                    (
                        map {

                            $fix->[0] . "uw" . $_, [ $fix->[1] . "\x{064F}", "w" . $_ ],
                            $fix->[0] . "iy" . $_, [ $fix->[1] . "\x{0650}", "y" . $_ ],

                            ( $option{'non-quoting'} ? () : (

                            $fix->[0] . "\"uw" . $_, [ $fix->[1] . "\"\x{064F}", "w" . $_ ],
                            $fix->[0] . "\"iy" . $_, [ $fix->[1] . "\"\x{0650}", "y" . $_ ],

                            ) ),

                        } "\"", qw "a u i A Y U I _I", $option{'non-refined'} ? () : qw "_a _u _i ^A ^U ^I"
                    ),

                        $_->[0] . "_aA'|aN", $_->[1] . "\x{0670}\x{0627}\x{0621}\x{064B}",
                        $_->[0] . "A'|aN", $_->[1] . "\x{064E}\x{0627}\x{0621}\x{064B}",

                        $_->[0] . "aN", $_->[1] . "\x{064B}",
                        $_->[0] . "uN", $_->[1] . "\x{064C}",
                        $_->[0] . "iN", $_->[1] . "\x{064D}",

                        ( $option{'non-quoting'} ? () : (

                        $_->[0] . "\"_aA'|aN", $_->[1] . "\"\x{0670}\x{0627}\x{0621}\x{064B}",
                        $_->[0] . "\"A'|aN", $_->[1] . "\"\x{064E}\x{0627}\x{0621}\x{064B}",

                        $_->[0] . "\"_aA'|\"aN", $_->[1] . "\"\x{0670}\x{0627}\x{0621}\"\x{064B}",
                        $_->[0] . "\"A'|\"aN", $_->[1] . "\"\x{064E}\x{0627}\x{0621}\"\x{064B}",

                        $_->[0] . "_aA'|\"aN", $_->[1] . "\x{0670}\x{0627}\x{0621}\"\x{064B}",
                        $_->[0] . "A'|\"aN", $_->[1] . "\x{064E}\x{0627}\x{0621}\"\x{064B}",

                        $_->[0] . "\"A\"'|aN", $_->[1] . "\"\x{064E}\x{0627}\"\x{0652}\x{0621}\x{064B}",
                        $_->[0] . "\"A\"'|\"aN", $_->[1] . "\"\x{064E}\x{0627}\"\x{0652}\x{0621}\"\x{064B}",
                        $_->[0] . "A\"'|\"aN", $_->[1] . "\x{064E}\x{0627}\"\x{0652}\x{0621}\"\x{064B}",

                        $_->[0] . "\"aN", $_->[1] . "\"\x{064B}",
                        $_->[0] . "\"uN", $_->[1] . "\"\x{064C}",
                        $_->[0] . "\"iN", $_->[1] . "\"\x{064D}",

                        ) ),

                    } $empty[1]
                ),

                # non-notation insertion escapes provided through ':xml'

            );


    no strict 'refs';

    ${ $cls . '::decoder' } = $decoder;

    if ($option{'describe'}) {

        $_->describe('') foreach @{${ $cls . '::decoder' }};
    }

    $cls->demode(defined ${ $cls . '::demode' } ? ${ $cls . '::demode' } : 'default');

    return ${ $cls . '::decoder' };
}


sub eecoder ($@) {
    my $cls = shift @_;
    my $ext = shift @_;

    my %opt = @_ ? do { my $i = 0; map { ++$i % 2 ? lc $_ : $_ } @_ } : ();

    no strict 'refs';

    my $refcoder = \${ $cls . '::' . $ext };

    use strict 'refs';


    if (exists $opt{'load'}) {

        if (ref \$opt{'load'} eq 'SCALAR') {

            if (my $done = do $opt{'load'}) {   # file-define

                return ${$refcoder} = $done;
            }
            else {

                carp "Cannot parse " . $opt{'load'} . ": $@" if $@;
                carp "Cannot do " . $opt{'load'} . ": $!" unless defined $done;
                carp "Cannot run " . $opt{'load'};

                return undef;
            }
        }
        elsif (UNIVERSAL::isa($opt{'load'}, 'CODE')) {

            return ${$refcoder} = $opt{'load'}->();
        }
        elsif (UNIVERSAL::isa($opt{'load'}, 'ARRAY')) {

            if (grep { not $_->isa('Encode::Mapper') } @{$opt{'load'}}) {
                carp "Expecting a reference to an array of 'Encode::Mapper' objects";
                return undef;
            }

            return ${$refcoder} = $opt{'load'};
        }

        carp "Invalid type of the 'load' parameter, action ignored";
        return undef;
    }

    if (exists $opt{'dump'}) {

        require Data::Dumper;

        my ($data, $i, @refs, @data);

        $data = Data::Dumper->new([${$refcoder}], [$ext]);

        for ($i = 0; $i < @{${$refcoder}}; $i++) {

            $refs[$i] = ['L', 'H', $ext . "->[$i]" ];
            $data[$i] = ${$refcoder}->[$i]->dumper($refs[$i]);
        }

        if (ref \$opt{'dump'} eq 'SCALAR') {

            if ($opt{'dump'} =~ /^[A-Z][A-Za-z]*(\:\:[A-Z][A-Za-z]*)+$/) {

                my $class = $cls;

                for ($class, $opt{'dump'}) {

                    $_ =~ s/\:\:/\//g;
                    $_ .= '.pm';
                }

                my $where = $INC{$class} =~ /^(.*)$class$/;

                $opt{'dump'} = $where . $opt{'dump'};
            }
            elsif ($opt{'dump'} !~ s/^!// and -f $opt{'dump'}) {    # 'SCALAR'

                carp "The file " . $opt{'dump'} . " exists, ignoring action";
                return undef;
            }

            open my $file, '>', $opt{'dump'} or die $opt{'dump'};
            print $file 'my ($L, $H, $' . $ext . ');';

            for ($i = 0; $i < @{${$refcoder}}; $i++) {

                print $file $data[$i]->Useqq(1)->Indent(0)->Dump();
            }

            print $file 'return $' . $ext . ';';
            close $file;

            return ${$refcoder};
        }
        elsif (UNIVERSAL::isa($opt{'dump'}, 'SCALAR')) {

            my $dump = ${$opt{'dump'}};

            ${$opt{'dump'}} = $data;

            return ${$refcoder};
        }
    }

    return -1;
}


sub enmode ($$) {
    my ($cls, $mode) = @_;

    $cls = blessed $cls if ref $cls;

    $mode = 'undef' unless defined $mode;
    $mode = $modemap{$mode} if exists $modemap{$mode};

    no strict 'refs';

    my $return = ${ $cls . '::enmode' };

    ${ $cls . '::enmode' } = $mode if defined $mode;

    return $return unless defined ${ $cls . '::encoder' };

    if (defined $mode) {

        $cls->enmoder($mode) unless defined ${ $cls . '::encoder' }->[$mode + $enlevel] or $mode == 0;

        ${ $cls . '::encoder' }->[$enlevel - 1] = ${ $cls . '::encoder' }->[$mode + $enlevel];
    }

    return $return;
}


sub demode ($$) {
    my ($cls, $mode) = @_;

    $cls = blessed $cls if ref $cls;

    $mode = 'undef' unless defined $mode;
    $mode = $modemap{$mode} if exists $modemap{$mode};

    no strict 'refs';

    my $return = ${ $cls . '::demode' };

    ${ $cls . '::demode' } = $mode if defined $mode;

    return $return unless defined ${ $cls . '::decoder' };

    if (defined $mode) {

        $cls->demoder($mode) unless defined ${ $cls . '::decoder' }->[$mode + $delevel] or $mode == 0;

        ${ $cls . '::decoder' }->[$delevel - 1] = ${ $cls . '::decoder' }->[$mode + $delevel];
    }

    return $return;
}


sub enmoder ($$@) {
    my ($cls, $mode) = @_;

    no strict 'refs';

    return ${ $cls . '::encoder' }->[$mode + $enlevel] = undef;
}


sub demoder ($$@) {
    my ($cls, $mode) = @_;

    my $demoder = [];


    # rules for the fullvocalize mode

    $demoder->[4] = [

                [
                    'silent' => 0,
                ],

                    "\x{0671}",         "\x{0627}",

                    "\"\x{0652}",       "",
                    "\"\x{064E}",       "",
                    "\"\x{064F}",       "",
                    "\"\x{0650}",       "",
                    "\"\x{064B}",       "",
                    "\"\x{064C}",       "",
                    "\"\x{064D}",       "",
                    "\"\x{0670}",       "",
                    "\"\x{0657}",       "",
                    "\"\x{0656}",       "",

                    "\"",               "",

                    "\x{064E}\x{0627}\"\x{0652}",       "\x{064E}\x{0627}\x{0652}",
                    "\"\x{064E}\x{0627}\"\x{0652}",     "\x{0627}\x{0652}",

                (
                    ( $option{'font-fixing'} ? (

                    map {

                        "\x{0644}" . $_ . "\x{064E}\x{0627}\"\x{0652}",     "\x{0644}\x{0627}" . $_ . "\x{064E}\x{0652}",
                        "\x{0644}" . $_ . "\"\x{064E}\x{0627}\"\x{0652}",   "\x{0644}\x{0627}" . $_ . "\x{0652}",

                    } "", "\x{0651}"

                    ) : () ),
                ),

                    "\x{064E}\x{0649}\"\x{0652}",       "\x{064E}\x{0649}\x{0652}",
                    "\"\x{064E}\x{0649}\"\x{0652}",     "\x{0649}\x{0652}",

                    "\x{064F}\x{0648}\"\x{0652}",       "\x{064F}\x{0648}\x{0652}",
                    "\"\x{064F}\x{0648}\"\x{0652}",     "\x{0648}\x{0652}",

                    "\x{0650}\x{064A}\"\x{0652}",       "\x{0650}\x{064A}\x{0652}",
                    "\"\x{0650}\x{064A}\"\x{0652}",     "\x{064A}\x{0652}",

                # modern external/internal substitution with wa.sla
                (
                    map {

                        my $vowel = $_;

                        map {

                            "\x{064E}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\x{064F}" . $_ . "\x{0627}" . $vowel, [ "\x{064F}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\x{0650}" . $_ . "\x{0627}" . $vowel, [ "\x{0650}" . $_ . "\x{0671}", "\"" . $vowel ],

                            "\x{064E}\x{0627}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}\x{0627}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\x{064E}\x{0649}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}\x{0649}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\x{064F}\x{0648}" . $_ . "\x{0627}" . $vowel, [ "\x{064F}\x{0648}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\x{0650}\x{064A}" . $_ . "\x{0627}" . $vowel, [ "\x{0650}\x{064A}" . $_ . "\x{0671}", "\"" . $vowel ],

                            # quoted

                            "\"\x{064E}" . $_ . "\x{0627}" . $vowel, [ $_ . "\x{0671}", "\"" . $vowel ],
                            "\"\x{064F}" . $_ . "\x{0627}" . $vowel, [ $_ . "\x{0671}", "\"" . $vowel ],
                            "\"\x{0650}" . $_ . "\x{0627}" . $vowel, [ $_ . "\x{0671}", "\"" . $vowel ],

                            "\"\x{064E}\x{0627}" . $_ . "\x{0627}" . $vowel, [ "\x{0627}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\"\x{064E}\x{0649}" . $_ . "\x{0627}" . $vowel, [ "\x{0649}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\"\x{064F}\x{0648}" . $_ . "\x{0627}" . $vowel, [ "\x{0648}" . $_ . "\x{0671}", "\"" . $vowel ],
                            "\"\x{0650}\x{064A}" . $_ . "\x{0627}" . $vowel, [ "\x{064A}" . $_ . "\x{0671}", "\"" . $vowel ],

                            "\"\x{064E}" . $_ . "\x{0627}\"" . $vowel, [ $_ . "\x{0627}", $vowel ],
                            "\"\x{064F}" . $_ . "\x{0627}\"" . $vowel, [ $_ . "\x{0627}", $vowel ],
                            "\"\x{0650}" . $_ . "\x{0627}\"" . $vowel, [ $_ . "\x{0627}", $vowel ],

                            "\"\x{064E}\x{0627}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0627}" . $_ . "\x{0627}", $vowel ],
                            "\"\x{064E}\x{0649}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0649}" . $_ . "\x{0627}", $vowel ],
                            "\"\x{064F}\x{0648}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0648}" . $_ . "\x{0627}", $vowel ],
                            "\"\x{0650}\x{064A}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064A}" . $_ . "\x{0627}", $vowel ],

                            "\x{064E}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064E}" . $_ . "\x{0627}", $vowel ],
                            "\x{064F}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064F}" . $_ . "\x{0627}", $vowel ],
                            "\x{0650}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0650}" . $_ . "\x{0627}", $vowel ],

                            "\x{064E}\x{0627}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064E}\x{0627}" . $_ . "\x{0627}", $vowel ],
                            "\x{064E}\x{0649}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064E}\x{0649}" . $_ . "\x{0627}", $vowel ],
                            "\x{064F}\x{0648}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064F}\x{0648}" . $_ . "\x{0627}", $vowel ],
                            "\x{0650}\x{064A}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0650}\x{064A}" . $_ . "\x{0627}", $vowel ],

                        } "", "\x09", "\x0A", "\x0D", "\x20", "\x0D\x0A", "\x20\x20", "\x20\x20\x20", "\x20\x20\x20\x20"

                    } "\x{064E}", "\x{064F}", "\x{0650}"
                ),

                # laam + 'alif .. either enforce ligatures, or shuffle the diacritics
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $alif = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $_ . $vowel . $alif,           "\x{0644}" . $alif . $_ . $vowel,
                                "\x{0644}" . $_ . "\"" . $vowel . $alif,    "\x{0644}" . $alif . $_,

                            } "", "\x{0651}"

                        } "\x{064E}", "\x{064F}", "\x{0650}",
                          "\x{064B}", "\x{064C}", "\x{064D}",
                          "\x{0652}"

                    } "\x{0622}", "\x{0623}", "\x{0625}", "\x{0627}"    #, "\x{0671}"

                    ) : () ),
                ),

                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $vowel = $_;

                        map {

                            "\x{0644}" . $_ . $vowel . "\x{0671}",          "\x{0644}\x{0627}" . $_ . $vowel,
                            "\x{0644}" . $_ . "\"" . $vowel . "\x{0671}",   "\x{0644}\x{0627}" . $_,

                        } "", "\x{0651}"

                    } "\x{064E}", "\x{064F}", "\x{0650}",
                      "\x{064B}", "\x{064C}", "\x{064D}",
                      "\x{0652}"

                    ) : () ),
                ),

                # laam + vowel + 'alif + vowel .. internal substitution with wa.sla
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $double = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $double . $vowel . "\x{0627}" . $_,        [ "\x{0644}\x{0671}" . $double . $vowel, "\"" . $_ ],

                                # quoted

                                "\x{0644}" . $double . "\"" . $vowel . "\x{0627}" . $_, [ "\x{0644}\x{0671}" . $double, "\"" . $_ ],
                                "\x{0644}" . $double . "\"" . $vowel . "\x{0627}\"" . $_, [ "\x{0644}\x{0627}" . $double, $_ ],
                                "\x{0644}" . $double . $vowel . "\x{0627}\"" . $_, [ "\x{0644}\x{0627}" . $double . $vowel, $_ ],

                           } "\x{064E}", "\x{064F}", "\x{0650}"

                       } "\x{064E}", "\x{064F}", "\x{0650}"

                    } "", "\x{0651}"

                    ) : () ),
                ),

                # optional ligatures to enforce here

            ];


    # rules for the vocalize mode

    $demoder->[3] = [

                [
                    'silent' => 0,
                ],

                    "\"\x{0652}",       "\x{0652}",
                    "\"\x{064E}",       "",
                    "\"\x{064F}",       "",
                    "\"\x{0650}",       "",
                    "\"\x{064B}",       "",
                    "\"\x{064C}",       "",
                    "\"\x{064D}",       "",
                    "\"\x{0670}",       "",
                    "\"\x{0657}",       "",
                    "\"\x{0656}",       "",

                    "\x{0652}",         "",

                    "\"",               "",

                # modern external/internal substitution with wa.sla
                (
                    map {

                        my $vowel = $_;

                        map {

                            "\x{064E}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\x{064F}" . $_ . "\x{0627}" . $vowel, [ "\x{064F}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\x{0650}" . $_ . "\x{0627}" . $vowel, [ "\x{0650}" . $_ . "\x{0627}", "\"" . $vowel ],

                            "\x{064E}\x{0627}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}\x{0627}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\x{064E}\x{0649}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}\x{0649}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\x{064F}\x{0648}" . $_ . "\x{0627}" . $vowel, [ "\x{064F}\x{0648}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\x{0650}\x{064A}" . $_ . "\x{0627}" . $vowel, [ "\x{0650}\x{064A}" . $_ . "\x{0627}", "\"" . $vowel ],

                            # quoted

                            "\"\x{064E}" . $_ . "\x{0627}" . $vowel, [ $_ . "\x{0627}", "\"" . $vowel ],
                            "\"\x{064F}" . $_ . "\x{0627}" . $vowel, [ $_ . "\x{0627}", "\"" . $vowel ],
                            "\"\x{0650}" . $_ . "\x{0627}" . $vowel, [ $_ . "\x{0627}", "\"" . $vowel ],

                            "\"\x{064E}\x{0627}" . $_ . "\x{0627}" . $vowel, [ "\x{0627}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\"\x{064E}\x{0649}" . $_ . "\x{0627}" . $vowel, [ "\x{0649}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\"\x{064F}\x{0648}" . $_ . "\x{0627}" . $vowel, [ "\x{0648}" . $_ . "\x{0627}", "\"" . $vowel ],
                            "\"\x{0650}\x{064A}" . $_ . "\x{0627}" . $vowel, [ "\x{064A}" . $_ . "\x{0627}", "\"" . $vowel ],

                            "\"\x{064E}" . $_ . "\x{0627}\"" . $vowel, [ $_ . "\x{0627}", $vowel ],
                            "\"\x{064F}" . $_ . "\x{0627}\"" . $vowel, [ $_ . "\x{0627}", $vowel ],
                            "\"\x{0650}" . $_ . "\x{0627}\"" . $vowel, [ $_ . "\x{0627}", $vowel ],

                            "\"\x{064E}\x{0627}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0627}" . $_ . "\x{0627}", $vowel ],
                            "\"\x{064E}\x{0649}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0649}" . $_ . "\x{0627}", $vowel ],
                            "\"\x{064F}\x{0648}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0648}" . $_ . "\x{0627}", $vowel ],
                            "\"\x{0650}\x{064A}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064A}" . $_ . "\x{0627}", $vowel ],

                            "\x{064E}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064E}" . $_ . "\x{0627}", $vowel ],
                            "\x{064F}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064F}" . $_ . "\x{0627}", $vowel ],
                            "\x{0650}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0650}" . $_ . "\x{0627}", $vowel ],

                            "\x{064E}\x{0627}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064E}\x{0627}" . $_ . "\x{0627}", $vowel ],
                            "\x{064E}\x{0649}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064E}\x{0649}" . $_ . "\x{0627}", $vowel ],
                            "\x{064F}\x{0648}" . $_ . "\x{0627}\"" . $vowel, [ "\x{064F}\x{0648}" . $_ . "\x{0627}", $vowel ],
                            "\x{0650}\x{064A}" . $_ . "\x{0627}\"" . $vowel, [ "\x{0650}\x{064A}" . $_ . "\x{0627}", $vowel ],

                        } "", "\x09", "\x0A", "\x0D", "\x20", "\x0D\x0A", "\x20\x20", "\x20\x20\x20", "\x20\x20\x20\x20"

                    } "\x{064E}", "\x{064F}", "\x{0650}"
                ),

                # laam + 'alif .. either enforce ligatures, or shuffle the diacritics
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $alif = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $_ . $vowel . $alif,           "\x{0644}" . $alif . $_ . $vowel,
                                "\x{0644}" . $_ . "\"" . $vowel . $alif,    "\x{0644}" . $alif . $_,

                            } "", "\x{0651}"

                        } "\x{064E}", "\x{064F}", "\x{0650}",
                          "\x{064B}", "\x{064C}", "\x{064D}",
                          # "\x{0652}"

                    } "\x{0622}", "\x{0623}", "\x{0625}", "\x{0627}", "\x{0671}"

                    ) : () ),
                ),

                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $alif = $_;

                        map {

                            "\x{0644}" . $_ . "\x{0652}" . $alif,       "\x{0644}" . $alif . $_,
                            "\x{0644}" . $_ . "\"\x{0652}"  . $alif,    "\x{0644}" . $alif . $_ . "\x{0652}",

                        } "", "\x{0651}"

                    } "\x{0622}", "\x{0623}", "\x{0625}", "\x{0627}", "\x{0671}"

                    ) : () ),
                ),

                # laam + vowel + 'alif + vowel .. internal substitution with wa.sla
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $double = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $double . $vowel . "\x{0627}" . $_,        [ "\x{0644}\x{0627}" . $double . $vowel, "\"" . $_ ],

                                # quoted

                                "\x{0644}" . $double . "\"" . $vowel . "\x{0627}" . $_, [ "\x{0644}\x{0627}" . $double, "\"" . $_ ],
                                "\x{0644}" . $double . "\"" . $vowel . "\x{0627}\"" . $_, [ "\x{0644}\x{0627}" . $double, $_ ],
                                "\x{0644}" . $double . $vowel . "\x{0627}\"" . $_, [ "\x{0644}\x{0627}" . $double . $vowel, $_ ],

                           } "\x{064E}", "\x{064F}", "\x{0650}"

                       } "\x{064E}", "\x{064F}", "\x{0650}"

                    } "", "\x{0651}"

                    ) : () ),
                ),

                # optional ligatures to enforce here

            ];


    # rules for the novocalize mode

    $demoder->[2] = [

                [
                    'silent' => 0,
                ],

                    "\"\x{0652}",       "\x{0652}",
                    "\"\x{064E}",       "\x{064E}",
                    "\"\x{064F}",       "\x{064F}",
                    "\"\x{0650}",       "\x{0650}",
                    "\"\x{064B}",       "\x{064B}",
                    "\"\x{064C}",       "\x{064C}",
                    "\"\x{064D}",       "\x{064D}",
                    "\"\x{0670}",       "\x{0670}",
                    "\"\x{0657}",       "\x{0657}",
                    "\"\x{0656}",       "\x{0656}",

                    "\x{0652}",         "",
                    "\x{064E}",         "",
                    "\x{064F}",         "",
                    "\x{0650}",         "",
                    "\x{064B}",         "",
                    "\x{064C}",         "",
                    "\x{064D}",         "",
                    "\x{0670}",         "",
                    "\x{0657}",         "",
                    "\x{0656}",         "",

                    "\"",               "",

                # modern internal substitution with "fictitious" wa.sla .. lam + vowel + 'alif + vowel below

                # modern external substitution with "fictitious" wa.sla

                # laam + 'alif .. either enforce ligatures, or shuffle the diacritics
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $alif = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $_ . $vowel . $alif,           "\x{0644}" . $alif . $_,
                                "\x{0644}" . $_ . "\"" . $vowel . $alif,    "\x{0644}" . $alif . $_ . $vowel,

                            } "", "\x{0651}"

                        } "\x{064E}", "\x{064F}", "\x{0650}",
                          "\x{064B}", "\x{064C}", "\x{064D}",
                          "\x{0652}"

                    } "\x{0622}", "\x{0623}", "\x{0625}", "\x{0627}", "\x{0671}"

                    ) : () ),
                ),

                # laam + vowel + 'alif + vowel .. internal substitution with wa.sla

                # optional ligatures to enforce here

            ];


    # rules for the noshadda mode

    $demoder->[1] = [

                [
                    'silent' => 0,
                ],

                    "\x{0651}",         "",

                    @{$demoder->[2]}[1 .. @{$demoder->[2]} - 1]

            ];


    # original no-quotes rules

    $demoder->[0] = [

                [
                    'silent' => 0,
                ],

                # modern internal substitution with wa.sla .. lam + vowel + 'alif + vowel below
                (
                    map {

                        my $vowel = $_;

                        map {

                            $vowel . "\x{0627}" . $_, $vowel . "\x{0671}",

                        } "\x{064E}", "\x{064F}", "\x{0650}"

                    } "\x{064E}", "\x{064F}", "\x{0650}"
                ),

                # modern external substitution with wa.sla
                (
                    map {

                        my $vowel = $_;

                        map {

                            "\x{064E}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}" . $_, "\x{0671}" ],
                            "\x{064F}" . $_ . "\x{0627}" . $vowel, [ "\x{064F}" . $_, "\x{0671}" ],
                            "\x{0650}" . $_ . "\x{0627}" . $vowel, [ "\x{0650}" . $_, "\x{0671}" ],

                            "\x{064E}\x{0627}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}\x{0627}" . $_, "\x{0671}" ],
                            "\x{064E}\x{0649}" . $_ . "\x{0627}" . $vowel, [ "\x{064E}\x{0649}" . $_, "\x{0671}" ],
                            "\x{064F}\x{0648}" . $_ . "\x{0627}" . $vowel, [ "\x{064F}\x{0648}" . $_, "\x{0671}" ],
                            "\x{0650}\x{064A}" . $_ . "\x{0627}" . $vowel, [ "\x{0650}\x{064A}" . $_, "\x{0671}" ],

                        } "\x09", "\x0A", "\x0D", "\x20", "\x0D\x0A", "\x20\x20", "\x20\x20\x20", "\x20\x20\x20\x20"

                    } "\x{064E}", "\x{064F}", "\x{0650}"
                ),

                # laam + 'alif .. either enforce ligatures, or shuffle the diacritics
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $alif = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $_ . $vowel . $alif,
                                "\x{0644}" . $alif . $_ . $vowel,

                            } "", "\x{0651}"

                        } "\x{064E}", "\x{064F}", "\x{0650}",
                          "\x{064B}", "\x{064C}", "\x{064D}",
                          "\x{0652}"

                    } "\x{0622}", "\x{0623}", "\x{0625}", "\x{0627}", "\x{0671}"

                    ) : () ),
                ),

                # laam + vowel + 'alif + vowel .. internal substitution with wa.sla
                (
                    ( $option{'font-fixing'} ? (

                    map {

                        my $double = $_;

                        map {

                            my $vowel = $_;

                            map {

                                "\x{0644}" . $double . $vowel . "\x{0627}" . $_,
                                "\x{0644}" . "\x{0671}" . $double . $vowel,

                            } "\x{064E}", "\x{064F}", "\x{0650}"

                        } "\x{064E}", "\x{064F}", "\x{0650}"

                    } "", "\x{0651}"

                    ) : () ),
                ),

                # optional ligatures to enforce here

            ];


    no strict 'refs';

    ${ $cls . '::decoder' }->[$mode + $delevel] = Encode::Mapper->compile(@{$demoder->[$mode]});

    ${ $cls . '::decoder' }->[$mode + $delevel]->describe('') if $option{'describe'};

    return ${ $cls . '::decoder' }->[$mode + $delevel];
}


1;

__END__


=head1 NAME

Encode::Arabic::ArabTeX - Interpreter of the ArabTeX notation of Arabic


=head1 SYNOPSIS

    use Encode::Arabic::ArabTeX;        # imports just like 'use Encode' would, plus extended options

    while ($line = <>) {                # maps the ArabTeX notation for Arabic into the Arabic script

        print encode 'utf8', decode 'arabtex', $line;       # 'ArabTeX' alias 'Lagally' alias 'TeX'
    }

    # ArabTeX lower ASCII transliteration <--> Arabic script in Perl's internal format

    $string = decode 'ArabTeX', $octets;
    $octets = encode 'ArabTeX', $string;

    Encode::Arabic::ArabTeX->encoder('dump' => '!./encoder.code');  # dump the encoder engine to file
    Encode::Arabic::ArabTeX->decoder('load');   # load the decoder engine from module's extra sources


=head1 DESCRIPTION

ArabTeX is an excellent extension to TeX/LaTeX designed for typesetting the right-to-left scripts of
the Orient. It comes up with very intuitive and comprehensible lower ASCII transliterations, the
expressive power of which is even better than that of the scripts.

L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX> implements the rules needed for proper interpretation
of the ArabTeX notation of Arabic. The conversion ifself is done by L<Encode::Mapper|Encode::Mapper>, and
the user interface is built on the L<Encode::Encoding|Encode::Encoding> module.


=head2 ENCODING BUSINESS

Since the ArabTeX notation is not a simple mapping to the graphemes of the Arabic script, encoding the script
into the notation is ambiguous. Two different strings in the notation may correspond to identical strings in
the script. Heuristics must be engaged to decide which of the representations is more appropriate.

Together with this bottle-neck, encoding may not be perfectly invertible by the decode operation, due to
over-generation or approximations in the encoding algorithm.

There are situations where conversion from the Arabic script to the ArabTeX notation is still convenient and
useful. Imagine you need to edit the data, enhance it with vowels or other diacritical marks, produce phonetic
transcripts and trim the typography of the script ... Do it in the ArabTeX notation, having an unrivalled
control over your acts!

Nonetheless, encoding is not the very purpose for this module's existence ;)


=head2 DECODING BUSINESS

The module decodes the ArabTeX notation as defined in the User Manual Version 4.00 of March 11, 2004,
L<ftp://ftp.informatik.uni-stuttgart.de/pub/arabtex/doc/arabdoc.pdf>. The implementation uses three levels
of L<Encode::Mapper|Encode::Mapper> engines to solve the problem:

=over

=item I<Hamza> writing

I<Hamza> carriers are determined from the context in accordance with the Arabic orthographical conventions.
The first level of mapping expands every C<< <'> >> into the verbatim encoding of the relevant carrier.
This level of processing can become optional, if people ever need to encode the I<hamza> carriers explicitly.

Interpretation of geminated I<hamza> C<< <''> >> is B<correct> here, as opposed to ArabTeX itself. In order to
deduce the proper spelling rules, we resorted to L<http://www.arabic-morphology.com/> and experimented with words
like C<< <ra''asa> >>, C<< <ru''isa> >>, C<< <tara''usuN> >>, etc.

On this level, word-internal occurrences of C<< <T> >> get translated into C<< <t> >>, which is an extension
to the notation that simplifies some requirements in modeling of the Arabic morphology.

=item Grapheme generation

The core level includes most of the rules needed, and converts the ArabTeX notation to Arabic graphemes in
Unicode. The engine recognizes all the consonants of Modern Standard Arabic, plus the following letters:

                    [ "|",           ""         ],              # invisible consonant
                    [ "B",           "\x{0640}" ],              # consonantal ta.twil

                    [ "T",           "\x{0629}" ],              # ta' marbu.ta
                    [ "H",           "\x{0629}" ],              # ta' marbu.ta silent

                    [ "p",           "\x{067E}" ],              # pa'
                    [ "v",           "\x{06A4}" ],              # va'
                    [ "g",           "\x{06AF}" ],              # gaf

                    [ "c",           "\x{0681}" ],              # .ha with hamza
                    [ "^c",          "\x{0686}" ],              # gim with three
                    [ ",c",          "\x{0685}" ],              # _ha with three
                    [ "^z",          "\x{0698}" ],              # zay with three
                    [ "^n",          "\x{06AD}" ],              # kaf with three
                    [ "^l",          "\x{06B5}" ],              # lam with bow above
                    [ ".r",          "\x{0695}" ],              # ra' with bow below

There are many nice features in the notation, like assimilation, gemination, hyphenation, all implemented here.
Defective and historical writings of vowels are supported, too! Try yourself if your fonts can handle these ;)

Word-initial sequences like C<< <lV-all> >>, C<< <lV-al-> >>, C<< <lV-al-CC> >> and C<< <lV-aC-C> >>, where C<V>
stands for a short, possibly quoted or missing, vowel, and C<C> represents a fixed consonant, are processed according
to the requirements of the Arabic orthography. Thus, C<< <li-al-laylaTi> >> reduces to C<< <li-llaylaTi> >>,
C<< <li-al-rra^guli> >> becomes C<< <lir-ra^guli> >>, and C<< <la-al-ma^gdu> >> equals C<< <lal-ma^gdu> >>,
while C<< <li-alla_dI> >> turns into C<< <lilla_dI> >>.

=item I<Wasla> and ligatures

I<Wasla> is introduced if there is a preceding long or short vowel, and the blank space is one newline, one
tabulator, or up to four single spaces. Optionally, diacritical marks in between I<laam> and I<'alif> go after
the latter letter, since most of the current systems rendering the Arabic script do not produce the desired
ligatures if the two kinds of graphemes are not adjacent immediately.

=back

There are modes and options in ArabTeX that have not been dealt with yet in
L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX>. Still, mutual consistency of the systems is very high. This
new release does support B<vowel quoting> and works in the ArabTeX's C<\vocalize> mode by default. The other
B<conversion modes> are implemented, too, as described below within the C<enmode> and C<demode> methods.


=head2 EXPORTS, ENGINES & MODES

The module exports as if C<use Encode> also appeared in the package. The C<import> options, except for the
first-place subsequence of C<:xml>, C<:simple> or C<:describe>, are just delegated to L<Encode|Encode> and
imports performed properly.

If the first element in the list to C<use> is C<:xml>, all XML markup, or rather any B<data enclosed in> the
well-paired and non-nested B<angle brackets> C<< < >> and C<< > >>, will be preserved. Properties of the
L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX> engines can be generally controlled through the
L<Encode::Mapper|Encode::Mapper> API.

In case the next, possibly the first, element in this list is C<:simple>, B<rules> in the engines B<get simplified>
so that quotes be mapped to empty strings and infrequent or experimental notations of vowels not be
interpreted in the extra manner of ArabTeX. Using C<:simple> is recommended for simple every-day tasks where
these nuances would have no impact and where full initialization would be bothering.

The C<:describe> option calls the L<Encode::Mapper|Encode::Mapper>'s C<describe> method on the module's engines
right after their compilation.

Initialization of the engines takes place the first time they are used, unless they have already been defined.
There are two explicit methods for it:

=over

=item encoder

Initialize or redefine the encoder engine. If no parameters are given, rules in the module are compiled into a
list of L<Encode::Mapper|Encode::Mapper> objects. Currently, the C<--dump> and C<--load> options have some
experimental meaning.

=item decoder

See the description of C<encoder>.

=back

There are five B<conversion modes> currently recognized in this module, and their aliases are mapped according to
the module's C<%modemap> hash. Selection of the appropriate mode is done best through the C<enmode> and C<demode>
functions of L<Encode::Arabic|Encode::Arabic>, or with a direct call of the namesake methods in
L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX>:

    our %Encode::Arabic::ArabTeX::modemap = (           # the module provides these definitions

            'default'       => 3,                           'undef'         => 0,

            'fullvocalize'  => 4,   'full'          => 4,

            'vocalize'      => 3,   'nosukuun'      => 3,

            'novocalize'    => 2,   'novowels'      => 2,   'none'          => 2,

            'noshadda'      => 1,   'noneplus'      => 1,
        );

    # the function calls might be preferred as more comfortable

    Encode::Arabic::demode 'arabtex', 'full';           # like 'encode' and 'decode' of Encode

    Encode::Arabic::ArabTeX->demode('fullvocalize');    # like the Encode::Encoding interfaces

    # how modes can be set easily

    use Encode::Arabic ':modes';   enmode 'arabtex', 'undef';   demode 'arabtex', 'noneplus';


=over

=item enmode

Currently in development. The mode is fixed to C<'undef'> internally.

=item demode

Enforces the proper version of the final, third level of the L<Encode::Mapper|Encode::Mapper> engines.

=back


=head1 SEE ALSO

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
