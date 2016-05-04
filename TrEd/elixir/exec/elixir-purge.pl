#! perl -w

use XML::Twig;

use subs 'recurse';

sub recurse {

    my ($twig, $elem) = @_;

    $elem->normalize();

    my @elem = $elem->children();

    if (@elem == 1 and $elem[0]->name() eq 'LM') {

        my $patts = $elem->atts();
        my $catts = $elem[0]->atts();

        unless (keys %{$patts} and keys %{$catts}) {

            $_->move('before', $elem[0]) foreach $elem[0]->children();

            $elem->set_atts($catts) unless keys %{$patts};

            $elem[0]->delete();

            recurse $twig, $elem;
        }
        else {

            recurse $twig, $elem[0];
        }
    }
    elsif (@elem == 1 and $elem[0]->is_text()) {

        my $text = $elem[0]->text();

        $text = join " ", split " ", $text;

        if ($text ne "") {

            $elem[0]->set_text($text);
        }
        else {

            $elem[0]->delete();
        }
    }
    else {

        recurse $twig, $_ foreach @elem;
    }
}

my $twig = XML::Twig->new('pretty_print' => 'indented');

$twig->parse(STDIN);
recurse($twig, $twig->root());
$twig->print();
