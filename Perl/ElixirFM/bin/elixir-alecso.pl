#!/usr/bin/perl -w

use ElixirFM;

use Encode::Arabic::ArabTeX ':simple';
use Encode::Arabic::Buckwalter ':xml';

use Encode::Arabic;

our $tagset = [

    [ "",
      { "V-" => "fEl",
        "VI" => "mDArE",
        "VP" => "mAD",
        "VC" => "Omr",
        "N-" => "Asm",
        "A-" => "Sfp",
        "S-" => "Dmyr",
        "SP" => "mtSl",
        "SD" => 'I$Arp',
        "SR" => "mwSwl",
        "Q-" => "Edd",
        "QI" => "",
        "QV" => "",
        "QX" => "",
        "QY" => "",
        "QL" => "",
        "QC" => "",
        "QD" => "",
        "QM" => "",
        "D-" => "Zrf",
        "P-" => "Hrf jr",
        "PI" => "mnSrf",
        "C-" => "Hrf ETf",
        "F-" => "Hrf",
        "FN" => "nfy",
        "FI" => "AstfhAm",
        "I-" => "tEjb",
        "X-" => "foreign word",
        "Y-" => "acronym/unit",
        "Z-" => "zero inflections",
        "G-" => "graphical symbol" } ],

    [ "", {} ],

    [ "mood",
      { "I" => "mrfwE",
        "S" => "mnSwb",
        "J" => "mjzwm",
        "E" => "mWkd" } ],

    [ "voice",
      { "A" => "mbny llmElwm",
        "P" => "mbny llmjhwl" } ],

    [ "", {} ],

    [ "person",
      { "1" => "mtklm",
        "2" => "mxATb",
        "3" => "gA}b" } ],

    [ "gender",
      { "M" => "m*kr",
        "F" => "mWnv" } ],

    [ "number",
      { "S" => "mfrd",
        "D" => "mvnY",
        "P" => "jmE" } ],

    [ "case",
      { "1" => "mrfwE",
        "2" => "mjrwr",
        "4" => "mnSwb" } ],

    [ "state",
      { "I" => "nkrp",
        "D" => "mErfp",
        "R" => "mDAf",
        "A" => "blA tnwyn",
        "C" => "mDAf mErfp",
        "L" => "mDAf blA tEryf" } ]

    ];

# $ElixirFM::tagset = $tagset;

our $arabic = {

        "verb" => "fEl",
        "imperfective verb" => "fEl mDArE",
        "perfective verb" => "fEl mAD",
        "imperative verb" => "fEl Omr",
        "noun" => "Asm",
        "adjective" => "Sfp",
        "pronoun" => "Dmyr",
        "personal pronoun" => "Dmyr mtSl",
        "demonstrative pronoun" => 'Dmyr I$Arp',
        "relative pronoun" => "Dmyr mwSwl",
        "numeral" => "Edd",
        "adverb" => "Zrf",
        "preposition" => "Hrf jr",
        "inflected preposition" => "Hrf jr mnSrf",
        "conjunction" => "Hrf ETf",
        "particle" => "Hrf",
        "negative particle" => "Hrf nfy",
        "interrogative particle" => "Hrf AstfhAm",
        "interjection" => "tEjb",

        "indicative" => "mrfwE",
        "subjunctive" => "mnSwb",
        "jussive" => "mjzwm",
        "energetic" => "mWkd",

        "active" => "mbny llmElwm",
        "passive" => "mbny llmjhwl",

        "first person" => "mtklm",
        "second person" => "mxATb",
        "third person" => "gA}b",

        "masculine" => "m*kr",
        "feminine" => "mWnv",

        "singular" => "mfrd",
        "dual" => "mvnY",
        "plural" => "jmE",

        "nominative" => "mrfwE",
        "genitive" => "mjrwr",
        "accusative" => "mnSwb",

        "indefinite" => "nkrp",
        "definite" => "mErfp",
        "construct" => "mDAf",
        "absolute" => "blA tnwyn",
        "overdetermined" => "mDAf mErfp",
        "underdetermined" => "mDAf blA tEryf",

        "foreign word" => "mxtSr Ojnby",

    };

sub escape ($) {

    my $text = $_[0];

    $text =~ s/\&/\&amp;/g;
    $text =~ s/\</\&lt;/g;
    $text =~ s/\>/\&gt;/g;

    return encode "utf8", $text;
}

sub strip ($) {

    my $text = $_[0];

    $text =~ tr[<>][]d;

    return $text;
}

sub simpler ($) {

    my $text = $_[0];

    $text =~ s{reduced/}{};
    $text =~ s{complex/}{};
    $text =~ s{lifted/}{};
    $text =~ s{/negative}{};

    return $text;
}

sub arabic ($) {

    my $text = $_[0];

    $text = join " ", map { exists $arabic->{$_} ? (decode "buckwalter", $arabic->{$_}) . " " . $_ : $_ } split /, /, $text;

    return $text;
}

sub class ($$$) {

    my ($p, $c, $m) = @_;

    my $text = '';

    my $data = {    "Pron" => "Dmyr",
                    "Num"  => "Edd",
                    "Adv"  => "Zrf",
                    "Prep" => "Hrf jr",
                    "Conj" => "Hrf ETf",
                    "Part" => "Hrf",
                    "Intj" => "tEjb",
                    "Ynit" => "mxtSr Ojnby",
                    "Zero" => "lqb"             };

    # $c = $c =~ /^[I]?$/ ? "mjrd" : "mzyd";

    $text = $p eq "Verb" ? $c eq 'I' ? "fEl mjrd" : "fEl mzyd" :

            $p eq "Noun" ? $c eq '' ? $m eq '_____' ? "Asm mmnwE mn AlSrf" : "Asm" :
                                      $c eq 'I' ? $m =~ /^FA/ ? "Asm fAEl mjrd" : "Asm" :
                                                  $m =~ /^M.+[^tT]$/ ? $m =~ /[iI]/ ? "Asm fAEl mzyd" : "Asm mfEwl mzyd" :
                                                                       "mSdr mzyd" :


            $p eq "Adj" ? $c eq '' ? "Sfp" : $c eq 'I' ? $m =~ /^M/ ? "Asm mfEwl mjrd" : "Asm fAEl mjrd" :
                                                         $m =~ /[iI]/ ? "Asm fAEl mzyd" : "Asm mfEwl mzyd" :

            $p eq "Xtra" ? $m eq '_____' ? "mxtSr mmnwE mn AlSrf" : "mxtSr" :

            exists $data->{$p} ? $data->{$p} : die $p;

    return decode "buckwalter", $text;
}

sub lexeme ($) {

    my $data = $_[0];

    my $entity = ElixirFM::parse $data->[1];

    my $reflex = eval $data->[2];

    my $class = substr $data->[3], 1, -1;

    return join " ", '<table>',

                     '<tr>',

                     '<th>Lexeme</th><td colspan="2" title="lexical reference" style="direction: ltr">'

                            . (join ", ", map { '"' . $_ . '"' } @{$reflex}) . '</td>',


                     '<td colspan="2">' . (escape class $entity->[0], $class, $data->[6]) . '</td>',

                     '</tr>',

                     '<tr>', (

                        '<td title="citation form">' . (escape ElixirFM::orph($data->[4])) . '</td>',
                        '<td title="pattern template" style="color: blue; direction: ltr">' . (escape ElixirFM::nice($data->[6])) . '</td>',
                        '<td title="common root" style="color: red">' . (escape ElixirFM::orph($data->[5])) . '</td>',
                        '<td title="derivational class">' . (escape $class) . '</td>',
                        '<td title="part of speech">' . (escape $entity->[0]) . '</td>',

                     ),

                     '</tr>',

                     '</table>';
}

sub token ($) {

    my $data = $_[0]->{'data'}{'info'};

    return join " ", '<td title="inflected form">' . (escape ElixirFM::orph($data->[1])) . '</td>',
                     '<td title="pattern template" style="color: blue; direction: ltr">' . (escape ElixirFM::nice($data->[3])) . '</td>',
                     '<td title="grammatical parameters">' . (escape arabic simpler ElixirFM::describe($data->[0], 'terse')) . '</td>';
}


$/ = undef;

@text = split ' ', decode "utf8", <>;

@data = ElixirFM::unpretty <>;

$\ = "\n";

warn unless @text == @data;

print '<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<style type="text/css">
* {

    font-family: DejaVu Sans Condensed, Arial Unicode MS, Arial;
    direction: rtl;
}

table {

    border: 1pt solid black;
    text-align: right;
    width: 100%;
    padding: 0pt;
    margin: 0pt;
}

tr {

    padding: 0pt;
    margin: 0pt;
}

th, td {

    border: 1pt solid black;
    vertical-align: top;
    padding: 0pt;
    margin: 0pt;
}

td th, td td {

    border: 0pt solid black;
    vertical-align: top;
    padding: 0pt;
    margin: 0pt;
}
</style>
<title>
ElixirFM 1.1.880 - Evaluation of Morphological Analyzers for Arabic
</title>
</head><body><table>';

print '<h1>' . 'ElixirFM 1.1.880 August 2009' . '</h1>';
print '<h2>' . 'Evaluation of Morphological Analyzers for Arabic' . '</h2>';

print '<tr>';
print '<th>' . (encode "utf8", join " ", "Input", decode "buckwalter", "Aldxl") . '</th>';
print '<th>' . (encode "utf8", join " ", "Output", decode "buckwalter", "Alxrj") . '</th>';
print '</tr>';

for ($i = 0; $i < @data; $i++) {

    print '<tr>';

    print '<th>' . (encode "utf8", $text[$i]) . '</th>';

    print '<td><table style="border: 0pt">';

    print '<span style="display: none">UNKNOWN WORD</span>' unless @{$data[$i]->{'node'}};

    foreach (@{$data[$i]->{'node'}}) {

        print '<tr>';
        print '<td><table style="border: 0pt">';

        foreach (@{$_->{'node'}}) {

            print '<tr>';
            print '<td><table>';

            print '<tr>';

            print '<th>Complete Word</th>';

            print '<th colspan="3">' . (lexeme $_) . '</th>' foreach @{$_->{'data'}{'info'}};

            print '</tr>';

            foreach (@{$_->{'node'}}) {

                print '<tr>';

                print '<td>' . (escape ElixirFM::orph(strip $_)) . '</td>' foreach @{$_->{'data'}{'info'}};

                foreach (@{$_->{'node'}}) {

                    print token $_;
                }

                print '</tr>';

            }


            print '</table></td>';
            print '</tr>';

        }

        print '</table></td>';
        print '</tr>';
    }

    print '</table></td>';

    print '</tr>';
}

print '</table></body></html>';
