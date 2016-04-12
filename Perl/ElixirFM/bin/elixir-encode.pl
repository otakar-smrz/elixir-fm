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

        $text = decode "arabtex", $1;

        chomp $line;

        $line .= "\t" . (encode "buckwalter", $text);

        $line .= "\t" . (encode "buckwalter", decode "buckwalter",
                         encode "buckwalter", $text);

        $line .= "\t" . (encode "utf8", decode "buckwalter",
                         encode "buckwalter", $text);

        $line .= "\t" . (encode "utf8", $text);

        $line .= "\n";
    }
}
continue {

    print $line;
}
