#! perl -w

use XML::Twig;

use subs 'recurse';

sub recurse {

    my ($twig, $elem) = @_;

    my @elem = $elem->children();

    if (@elem == 1 and $elem[0]->is_text()) {

        my $text = $elem[0]->text();

        $text = join " ", split " ", $text;

        $elem[0]->set_text($text);
    }
    else {

        recurse $twig, $_ foreach @elem;
    }
}

my $twig = XML::Twig->new('pretty_print' => 'indented');

$twig->parse(STDIN);
recurse($twig, $twig->root());
$twig->print();
