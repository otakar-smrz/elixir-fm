#! perl -w

use Encode::Arabic ':modes';

use Encode::Arabic::ArabTeX ':simple';
use Encode::Arabic::Buckwalter ':xml';

demode "buckwalter", "noneplus";        # remove diacritics

while ($line = <>) {

    next if $line =~ /^[\t ]*[<>]/ or $line =~ /^[\t ]+:{3,4}[\t ]+/;       # elixir lexicon resolve

    if ($line =~ /^[\t ]*(?:[^\t ]{10}| {10})\t([^\t ]+)\t"/ or             # elixir inflect resolve lookup
        $line =~ /^[\t ]*(?:[^\t ]{10}| {10})\t[^\t ]+\t([^\t ]+)\t"/ or    # elixir derive lookup
        $line =~ /^[\t ]*\([^()]+\) *\t[^\t ]{10,}\t([^\t ]+)\t"/ or        # elixir lookup
        $line =~ /^[\t ]+:{1,2}[\t ]+<([^>]+)>/ or                          # elixir resolve
        $line =~ /^[\t ]*[^\t ]+[\t ]+<([^>]+)>[\t ]+[^\t ]+/) {            # elixir-column.pl

        $orth = decode "arabtex", $1;
        $phon = decode "zdmg", $1;

        chomp $line;

        $line .= "\t" . (encode "utf8", $phon);

        $line .= "\t" . (encode "buckwalter", $orth);

        $line .= "\t" . (encode "buckwalter", decode "buckwalter",
                         encode "buckwalter", $orth);

        $line .= "\t" . (encode "utf8", decode "buckwalter",
                         encode "buckwalter", $orth);

        $line .= "\t" . (encode "utf8", $orth);

        $line .= "\n";
    }
}
continue {

    print $line;
}
