# ################################################################### Otakar Smrz, 2003/01/23
#
# Encoding of Arabic: ArabTeX Notation by Klaus Lagally #####################################

package Encode::Arabic::ArabTeX::RE;

our $VERSION = '14.1';

use 5.008;

use strict;
use warnings;

use Scalar::Util 'blessed';

use Encode::Encoding;
use base 'Encode::Encoding';

__PACKAGE__->Define('ArabTeX-RE');


our (%encode_used, %decode_used, @shams, @qamar);

our $enmode;
our $demode;

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
    require Encode;
    push @Encode::ISA, 'Exporter' unless Encode->can('export_to_level');
    Encode->export_to_level(1, @_);
}


sub encode ($$;$) {
    my ($cls, $text, $check) = @_;

    $_[1] = '' if $check;                   # this is what in-place edit needs

    $cls->initialize_encode() unless %encode_used;

    $text = join '', map { exists $encode_used{$_} ? $encode_used{$_} : $_ } split '', $text;

    $text =~ s/([\_\.\^]?\w)\\shadda\{\}/$1$1/g;
    $text =~ s/(\\ham\{.\})\\shadda\{\}/$1$1/g;

    $text =~ s/([\=\s\-\%])\\alif\{\}\\vow\{a\}l/$1"al-/g;
    $text =~ s/([\=\s\-\%])\\alif\{\}l/$1al-/g;
    $text =~ s/(b\\vow\{i\})\\alif\{\}l/$1-al-/g;
    $text =~ s/([\=\s\-\%])\\alif\{\}\\vow\{([ui])\}/$1"$2/g;
    $text =~ s/([\=\s\-\%])\\alif\{\}/$1i/g;
    $text =~ s/(\\vow\{aN\})\\alif\{\}/$1/g;
    $text =~ s/\\alif\{\}(\\vow\{aN\})/$1/g;
    $text =~ s/\\vow\{a\}\\alif\{\}/\\vow{A}/g;
    $text =~ s/\\alif\{\}/\\aux{A}/g;

    $text =~ s/\\madda\{\}/'A/g;

    $text =~ s/\\vow\{a\}\\maq\{\}/\\vow{Y}/g;
    $text =~ s/\\maq\{\}(\\vow\{aN\})/\\vow{aNY}/g;
    $text =~ s/\\vow\{aN\}\\maq\{\}/\\vow{aNY}/g;
    $text =~ s/\\maq\{\}/\\aux{Y}/g;

    $text =~ s/i(}?)y([^aiuAIUY])/I$1$2/g;  # produces \ham{I}, too
    $text =~ s/u(}?)w([^aiuAIUY])/U$1$2/g;

    $text =~ s/([iIuU]})(\\ham\{a\})/$1-$2/g;
    $text =~ s/([\-\s])\\ham\{a\}([^\\])/$1'\\aux{a}$2/g;
    $text =~ s/([^\}\s])\\ham\{a\}/$1\\aux{a}'/g;

    $text =~ s/([^\-\s])(\\ham\{i\})/$1-$2/g;
    $text =~ s/\\ham\{i\}([^\\])/'\\aux{i}$1/g;

    $text =~ s/([^\}])(\\ham\{w\})/$1\\aux{u}$2/g;
    $text =~ s/(\\ham\{w\})([^\\])/$1\\aux{u}$2/g;

    $text =~ s/([^\}])(\\ham\{y\})/$1\\aux{i}$2/g;
    $text =~ s/(\\ham\{y\})([^\\])/$1\\aux{i}$2/g;

    $text =~ s/\\ham\{[aiwy]\}/'/g;
    $text =~ s/\\ham\{I\}/'I/g;

    $text =~ s/(?<![^\=\s\-\%])\\aux\{A\}/\\aux{i}/g;


    no strict 'refs';

    if (defined ${ $cls . '::enmode' } and ${ $cls . '::enmode' } == 3) {

        $text =~ s/\\vow\{(.+?)\}/$1/g;
        $text =~ s/\\aux\{(.+?)\}/"$1/g;
        $text =~ s/\\sukun\{\}/"/g;
    }
    elsif (defined ${ $cls . '::enmode' } and ${ $cls . '::enmode' } == 2) {

        $text =~ s/\\vow\{(.+?)\}/"$1/g;
        $text =~ s/\\aux\{(.+?)\}/$1/g;
        $text =~ s/\\sukun\{\}/"/g;
    }
    elsif (defined ${ $cls . '::enmode' } and ${ $cls . '::enmode' } == 4) {

        $text =~ s/\\vow\{(.+?)\}/$1/g;
        $text =~ s/\\aux\{(.+?)\}/$1/g;
        $text =~ s/\\sukun\{\}//g;
    }

    $text = Encode::encode "utf8", $text if Encode::is_utf8($text);

    return $text;
}


sub decode ($$;$) {
    my ($cls, $text, $check) = @_;
    my $one;

    $_[1] = '' if $check;                   # this is what in-place edit needs

    $text = Encode::decode "utf8", $text unless Encode::is_utf8($text);

    $cls->initialize_decode() unless %decode_used;

    $text = "\n" . $text . "\n";

    $text =~ s/_a/a/g; # is there any special character for the defective fatha?
    $text =~ s/_U/U/g; # _U only affects the pronunciation, not the spelling

    foreach $one (@shams, '\\\'', @qamar) {

        $text =~ s/(?<![\_\.\^])($one)(?![aiuAIUY\-T]|$one)/$1\\O{}/g; #
        $text =~ s/(?<![\_\.\^])($one)$one/$1\\D{}/g;
        # alas! using $one in the replacing expression produces extra \\
    }

    $text =~ s/([\s\-])([aiu])/$1\\L{}$2/gs;

    $text =~ s/([\s\-])'([auUY])/$1\\H{a}$2/gs;
    $text =~ s/([\s\-])'([iI])/$1\\H{i}$2/gs;
    $text =~ s/([\s\-])'A/$1\\M{}/gs;

    $text =~ s/(I|y\\O\{\})'(aN[AY]?[\s\-])/$1\\H{y}$2/gs;
    $text =~ s/a'(|\\D\{\})(|[au]N?)([\s\-])/a\\H{a}$1$2$3/gs;
    $text =~ s/a'(|\\D\{\})(iN?)([\s\-])/a\\H{i}$1$2$3/gs;
    $text =~ s/i'(|\\D\{\})(|[aiu]N?)([\s\-])/i\\H{y}$1$2$3/gs;
    $text =~ s/u'(|\\D\{\})(|[aiu]N?)([\s\-])/u\\H{w}$1$2$3/gs;
    $text =~ s/'(|\\D\{\})(|[aiu]N?)([\s\-])/\\H{}$1$2$3/gs;

    $text =~ s/([iI]|y\\O\{\})'(|\\D\{\})/$1\\H{y}$2/g;
    $text =~ s/'(|\\D\{\})([iI])/\\H{y}$1$2/g;
    $text =~ s/([uU])'(|\\D\{\})/$1\\H{w}$2/g;
    $text =~ s/'(|\\D\{\})([uU])/\\H{w}$1$2/g;
    $text =~ s/A'(|\\D\{\})/A\\H{}$1/g; # how do you write <rA''AsuN>?
    $text =~ s/a'(\\D\{\})/a\\H{a}$1/g; # how do you write <ra''AsuN>?
    $text =~ s/'A/\\M{}/g;
    $text =~ s/'a/\\H{a}a/g;
    $text =~ s/'Y/\\H{a}Y/g;

    $text =~ s/'/\\H{a}a/g; # final resort

    foreach $one (@shams) { $text =~ s/($one)\-$one/l$1\\D{}/g; }
    foreach $one ('\\\\', @qamar) { $text =~ s/l\-($one)/l\\O{}$1/g; }
    # alas! using $one in the replacing expression produces extra \\

    $text =~ s/aNY/\\V{aN}\\Q{}/g;
    $text =~ s/(?<=A\\H\{\}|\\H\{a\})aN/\\V{aN}/g;
    $text =~ s/(?<=T)aN/\\V{aN}/g;

    $text =~ s/(?<!{)aNA?/\\V{aN}\\L{}/g;
    $text =~ s/(?<!{)iN/\\V{iN}/g;
    $text =~ s/(?<!{)uN/\\V{uN}/g;

    $text =~ s/UA/\\V{u}w\\L{}/g;
    $text =~ s/aWA?/\\V{a}w\\O{}\\L{}/g;

    $text =~ s/([^{])a/$1\\V{a}/g;
    $text =~ s/([^{])i/$1\\V{i}/g;
    $text =~ s/([^{])u/$1\\V{u}/g;

    $text =~ s/A/\\V{a}\\L{}/g;
    $text =~ s/Iy/\\V{i}y\\D{}/g;
    $text =~ s/I/\\V{i}y/g;
    $text =~ s/Uw/\\V{u}w\\D{}/g;
    $text =~ s/U/\\V{u}w/g;
    $text =~ s/Y/\\V{a}\\Q{}/g;

    $text =~ s/\-//g;

    $text =~ s/l((\\V\{[aiu]\}|\\D\{\}|\\O\{\})+)(\\L\{\}|\\H\{[ai]\}|\\M\{\})/l$3$1/g;

    foreach $one (keys %decode_used) {  # risky .. the order matters and negative lookahead \{ is just right

        while ($text =~ s/(?<![\_\.\^\{])$one/$decode_used{$one}/) { } # /g does not generally work well
    }

    $text = substr $text, 1, -1;   # remove additional "\n"s

    return $text;
}


sub initialize_encode ($) {
    my $cls = shift @_;

    %encode_used = (
                #            "p", # 81             #"\201",
                #            "^c", # 8D            #"\215",
                #            "^z", # 8E            #"\216",
                #            "\217", # 8F          #"\217",
                #            "g", # 90             #"\220",
                "\x{060C}", ",", # A1               "\241",  '\\,',        # 161 "\xA1", # "\xD8\x8C" right-to-left-comma
                #            "\\lq ", # AB         #"\253",
                "\x{061B}", ";", # BA               "\272",  '\\;',        # 186 "\xBA", # "\xD8\x9B" right-to-left-semicolon
                #            "\\rq", # BB          #"\273",
                "\x{061F}", "?", # BF               "\277",  '\\?',        # 191 "\xBF", # "\xD8\x9F" right-to-left-question-mark
                "\x{0621}", "'", # C1               "\301",  '\\\\H{}',    # 193 "\xC1", # "\xD8\xA1" hamza-on-the-line
                "\x{0622}", "\\madda{}", # C2       "\302",  '\\\\M{}',    # 194 "\xC2", # "\xD8\xA2" madda-over-'alif
                "\x{0623}", "\\ham{a}", # C3        "\303",  '\\\\H{a}',   # 195 "\xC3", # "\xD8\xA3" hamza-over-'alif
                "\x{0624}", "\\ham{w}", # C4        "\304",  '\\\\H{w}',   # 196 "\xC4", # "\xD8\xA4" hamza-over-waaw
                "\x{0625}", "\\ham{i}", # C5        "\305",  '\\\\H{i}',   # 197 "\xC5", # "\xD8\xA5" hamza-under-'alif
                "\x{0626}", "\\ham{y}", # C6        "\306",  '\\\\H{y}',   # 198 "\xC6", # "\xD8\xA6" hamza-over-yaa'
                "\x{0627}", "\\alif{}", # C7        "\307",  '\\\\L{}',    # 199 "\xC7", # "\xD8\xA7" bare 'alif
                "\x{0628}", "b", # C8               "\310",  'b',          # 200 "\xC8", # "\xD8\xA8" <b>
                "\x{0629}", "T", # C9               "\311",  'T',          # 201 "\xC9", # "\xD8\xA9" <T>
                "\x{062A}", "t", # CA               "\312",  't',          # 202 "\xCA", # "\xD8\xAA" <t>
                "\x{062B}", "_t", # CB              "\313",  '\\_t',       # 203 "\xCB", # "\xD8\xAB" <_t>
                "\x{062C}", "^g", # CC              "\314",  '\\^g',       # 204 "\xCC", # "\xD8\xAC" <^g>
                "\x{062D}", ".h", # CD              "\315",  '\\.h',       # 205 "\xCD", # "\xD8\xAD" <.h>
                "\x{062E}", "_h", # CE              "\316",  '\\_h',       # 206 "\xCE", # "\xD8\xAE" <_h>
                "\x{062F}", "d", # CF               "\317",  'd',          # 207 "\xCF", # "\xD8\xAF" <d>
                "\x{0630}", "_d", # D0              "\320",  '\\_d',       # 208 "\xD0", # "\xD8\xB0" <_d>
                "\x{0631}", "r", # D1               "\321",  'r',          # 209 "\xD1", # "\xD8\xB1" <r>
                "\x{0632}", "z", # D2               "\322",  'z',          # 210 "\xD2", # "\xD8\xB2" <z>
                "\x{0633}", "s", # D3               "\323",  's',          # 211 "\xD3", # "\xD8\xB3" <s>
                "\x{0634}", "^s", # D4              "\324",  '\\^s',       # 212 "\xD4", # "\xD8\xB4" <^s>
                "\x{0635}", ".s", # D5              "\325",  '\\.s',       # 213 "\xD5", # "\xD8\xB5" <.s>
                "\x{0636}", ".d", # D6              "\326",  '\\.d',       # 214 "\xD6", # "\xD8\xB6" <.d>
                #            "\327", # D7          #"\327",
                "\x{0637}", ".t", # D8              "\330",  '\\.t',       # 216 "\xD8", # "\xD8\xB7" <.t>
                "\x{0638}", ".z", # D9              "\331",  '\\.z',       # 217 "\xD9", # "\xD8\xB8" <.z>
                "\x{0639}", "`", # DA               "\332",  '\\`',        # 218 "\xDA", # "\xD8\xB9" <`>
                "\x{063A}", ".g", # DB              "\333",  '\\.g',       # 219 "\xDB", # "\xD8\xBA" <.g>
                "\x{0640}", "-", # DC               "\334",  '--',         # 220 "\xDC", # "\xD9\x80" ta.twiil
                "\x{0641}", "f", # DD               "\335",  'f',          # 221 "\xDD", # "\xD9\x81" <f>
                "\x{0642}", "q", # DE               "\336",  'q',          # 222 "\xDE", # "\xD9\x82" <q>
                "\x{0643}", "k", # DF               "\337",  'k',          # 223 "\xDF", # "\xD9\x83" <k>
                #            "\340", # E0          #"\340",
                "\x{0644}", "l", # E1               "\341",  'l',          # 225 "\xE1", # "\xD9\x84" <l>
                #            "\342", # E2          #"\342",
                "\x{0645}", "m", # E3               "\343",  'm',          # 227 "\xE3", # "\xD9\x85" <m>
                "\x{0646}", "n", # E4               "\344",  'n',          # 228 "\xE4", # "\xD9\x86" <n>
                "\x{0647}", "h", # E5               "\345",  'h',          # 229 "\xE5", # "\xD9\x87" <h>
                "\x{0648}", "w", # E6               "\346",  'w',          # 230 "\xE6", # "\xD9\x88" <w>
                "\x{0649}", "\\maq{}", # EC         "\354",  '\\\\Q{}',    # 236 "\xEC", # "\xD9\x89" 'alif maq.suura
                "\x{064A}", "y", # ED               "\355",  'y',          # 237 "\xED", # "\xD9\x8A" <y>
                "\x{064B}", "\\vow{aN}", # F0       "\360",  '\\\\V{aN}',  # 240 "\xF0", # "\xD9\x8B" <aN>
                "\x{064C}", "\\vow{uN}", # F1       "\361",  '\\\\V{uN}',  # 241 "\xF1", # "\xD9\x8C" <uN>
                "\x{064D}", "\\vow{iN}", # F2       "\362",  '\\\\V{iN}',  # 242 "\xF2", # "\xD9\x8D" <iN>
                "\x{064E}", "\\vow{a}", # F3        "\363",  '\\\\V{a}',   # 243 "\xF3", # "\xD9\x8E" <a>
                "\x{064F}", "\\vow{u}", # F5        "\365",  '\\\\V{u}',   # 245 "\xF5", # "\xD9\x8F" <u>
                "\x{0650}", "\\vow{i}", # F6        "\366",  '\\\\V{i}',   # 246 "\xF6", # "\xD9\x90" <i>
                "\x{0651}", "\\shadda{}", # F8      "\370",  '\\\\D{}',    # 248 "\xF8", # "\xD9\x91" ^sadda
                "\x{0652}", "\\sukun{}", # FA       "\372",  '\\\\O{}',    # 250 "\xFA", # "\xD9\x92" sukuun
                "\x{0670}",             #                    '\\\\A{}',    # 243 "\xF3", # "\xD9\xB0" <_a> -> <a>
                "\x{0671}",             #                    '\\\\W{}',    # 199 "\xC7", # "\xD9\xB1" wa.sla-on-'alif -> bare 'alif
              );


    no strict 'refs';

    $cls->enmode(defined ${ $cls . '::enmode' } ? ${ $cls . '::enmode' } : 'default');
}


sub initialize_decode ($) {
    my $cls = shift @_;

    @shams = ('t', '\\_t', 'd', '\\_d', 'r', 'z', 's', '\\^s', '\\.s', '\\.d', '\\.t', '\\.z', 'l', 'n');
    @qamar = ('b', '\\^g', '\\.h', '\\_h', '\\`', '\\.g', 'f', 'q', 'k', 'm', 'h', 'w', 'y');

    %decode_used = (
                # 'p',                     # 129 "\x81",
                # '\\^c',                  # 141 "\x8D",
                # '\\^z',                  # 142 "\x8E",
                # 'g',                     # 144 "\x90",
                '\\,',        "\x{060C}",  # 161 "\xA1", # "\xD8\x8C" right-to-left-comma
                '\\;',        "\x{061B}",  # 186 "\xBA", # "\xD8\x9B" right-to-left-semicolon
                '\\?',        "\x{061F}",  # 191 "\xBF", # "\xD8\x9F" right-to-left-question-mark
                '\\\\H{}',    "\x{0621}",  # 193 "\xC1", # "\xD8\xA1" hamza-on-the-line
                '\\\\M{}',    "\x{0622}",  # 194 "\xC2", # "\xD8\xA2" madda-over-'alif
                '\\\\H{a}',   "\x{0623}",  # 195 "\xC3", # "\xD8\xA3" hamza-over-'alif
                '\\\\H{w}',   "\x{0624}",  # 196 "\xC4", # "\xD8\xA4" hamza-over-waaw
                '\\\\H{i}',   "\x{0625}",  # 197 "\xC5", # "\xD8\xA5" hamza-under-'alif
                '\\\\H{y}',   "\x{0626}",  # 198 "\xC6", # "\xD8\xA6" hamza-over-yaa'
                '\\\\L{}',    "\x{0627}",  # 199 "\xC7", # "\xD8\xA7" bare 'alif
                'b',          "\x{0628}",  # 200 "\xC8", # "\xD8\xA8" <b>
                'T',          "\x{0629}",  # 201 "\xC9", # "\xD8\xA9" <T>
                't',          "\x{062A}",  # 202 "\xCA", # "\xD8\xAA" <t>
                '\\_t',       "\x{062B}",  # 203 "\xCB", # "\xD8\xAB" <_t>
                '\\^g',       "\x{062C}",  # 204 "\xCC", # "\xD8\xAC" <^g>
                '\\.h',       "\x{062D}",  # 205 "\xCD", # "\xD8\xAD" <.h>
                '\\_h',       "\x{062E}",  # 206 "\xCE", # "\xD8\xAE" <_h>
                'd',          "\x{062F}",  # 207 "\xCF", # "\xD8\xAF" <d>
                '\\_d',       "\x{0630}",  # 208 "\xD0", # "\xD8\xB0" <_d>
                'r',          "\x{0631}",  # 209 "\xD1", # "\xD8\xB1" <r>
                'z',          "\x{0632}",  # 210 "\xD2", # "\xD8\xB2" <z>
                's',          "\x{0633}",  # 211 "\xD3", # "\xD8\xB3" <s>
                '\\^s',       "\x{0634}",  # 212 "\xD4", # "\xD8\xB4" <^s>
                '\\.s',       "\x{0635}",  # 213 "\xD5", # "\xD8\xB5" <.s>
                '\\.d',       "\x{0636}",  # 214 "\xD6", # "\xD8\xB6" <.d>
                '\\.t',       "\x{0637}",  # 216 "\xD8", # "\xD8\xB7" <.t>
                '\\.z',       "\x{0638}",  # 217 "\xD9", # "\xD8\xB8" <.z>
                '\\`',        "\x{0639}",  # 218 "\xDA", # "\xD8\xB9" <`>
                '\\.g',       "\x{063A}",  # 219 "\xDB", # "\xD8\xBA" <.g>
                '--',         "\x{0640}",  # 220 "\xDC", # "\xD9\x80" ta.twiil
                'f',          "\x{0641}",  # 221 "\xDD", # "\xD9\x81" <f>
                'q',          "\x{0642}",  # 222 "\xDE", # "\xD9\x82" <q>
                'k',          "\x{0643}",  # 223 "\xDF", # "\xD9\x83" <k>
                'l',          "\x{0644}",  # 225 "\xE1", # "\xD9\x84" <l>
                'm',          "\x{0645}",  # 227 "\xE3", # "\xD9\x85" <m>
                'n',          "\x{0646}",  # 228 "\xE4", # "\xD9\x86" <n>
                'h',          "\x{0647}",  # 229 "\xE5", # "\xD9\x87" <h>
                'w',          "\x{0648}",  # 230 "\xE6", # "\xD9\x88" <w>
                '\\\\Q{}',    "\x{0649}",  # 236 "\xEC", # "\xD9\x89" 'alif maq.suura
                'y',          "\x{064A}",  # 237 "\xED", # "\xD9\x8A" <y>
                '\\\\V{aN}',  "\x{064B}",  # 240 "\xF0", # "\xD9\x8B" <aN>
                '\\\\V{uN}',  "\x{064C}",  # 241 "\xF1", # "\xD9\x8C" <uN>
                '\\\\V{iN}',  "\x{064D}",  # 242 "\xF2", # "\xD9\x8D" <iN>
                '\\\\V{a}',   "\x{064E}",  # 243 "\xF3", # "\xD9\x8E" <a>
                '\\\\V{u}',   "\x{064F}",  # 245 "\xF5", # "\xD9\x8F" <u>
                '\\\\V{i}',   "\x{0650}",  # 246 "\xF6", # "\xD9\x90" <i>
                '\\\\D{}',    "\x{0651}",  # 248 "\xF8", # "\xD9\x91" ^sadda
                '\\\\O{}',    "\x{0652}",  # 250 "\xFA", # "\xD9\x92" sukuun
                '\\\\A{}',    "\x{0670}",  # 243 "\xF3", # "\xD9\xB0" <_a> -> <a>
                '\\\\W{}',    "\x{0671}",  # 199 "\xC7", # "\xD9\xB1" wa.sla-on-'alif -> bare 'alif
              );


    no strict 'refs';

    $cls->demode(defined ${ $cls . '::demode' } ? ${ $cls . '::demode' } : 'default');
}


sub enmode ($$) {
    my ($cls, $mode) = @_;

    $cls = blessed $cls if ref $cls;

    $mode = 'undef' unless defined $mode;
    $mode = $modemap{$mode} if exists $modemap{$mode};

    no strict 'refs';

    my $return = ${ $cls . '::enmode' };

    ${ $cls . '::enmode' } = $mode;

    return $return;
}


sub demode ($$) {
    my ($cls, $mode) = @_;

    $cls = blessed $cls if ref $cls;

    $mode = 'undef' unless defined $mode;
    $mode = $modemap{$mode} if exists $modemap{$mode};

    no strict 'refs';

    my $return = ${ $cls . '::demode' };

    ${ $cls . '::demode' } = $mode;

    return $return;
}


1;

__END__


=head1 NAME

Encode::Arabic::ArabTeX::RE - Deprecated Encode::Arabic::ArabTeX implemented with regular expressions


=head1 SYNOPSIS

    use Encode::Arabic::ArabTeX::RE;

    $string = decode 'arabtex-re', $octets;
    $octets = encode 'arabtex-re', $string;


=head1 DESCRIPTION

Deprecated method using sequential regular-expression substitutions. Limited in scope over the
ArabTeX notation and non-efficient in data processing, still, not requiring the
L<Encode::Mapper|Encode::Mapper> module.


=head2 EXPORTS & MODES

Exports as if C<use Encode> also appeared in the package. Experimental and incomplete support for
B<conversion modes> is provided, see L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX>.


=head1 SEE ALSO

L<Encode::Arabic::ArabTeX|Encode::Arabic::ArabTeX>


=head1 AUTHOR

Otakar Smrz C<< <otakar-smrz users.sf.net> >>, L<http://otakar-smrz.users.sf.net/>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2003-2016 Otakar Smrz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut
