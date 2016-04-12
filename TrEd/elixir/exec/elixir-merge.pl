#! perl -w

use ElixirFM;

use Encode::Arabic;

use XML::Twig;

use subs 'recurse';

our $root;

sub recurse {

    my ($twig, $elem) = @_;

    foreach my $node ($elem->children()) {

        if ($node->is_text()) {

            my $text = $elem->text();

            my $data = ElixirFM::merge $root, $text;

            $data = encode "utf8", join "\t", $text, $data, (decode "arabtex", $data), (decode "zdmg", $data);

            $elem->set_text($data);
        }
        else {

            recurse $twig, $node;
        }
    }

    $elem->flush();
}

sub root {

    my ($twig, $elem) = @_;

    $root = $elem->text();

    my $data = encode "utf8", join "\t", $root, (decode "arabtex", $root), (decode "zdmg", $root);

    $elem->set_text($data);

    $elem->flush();
}

my $twig = XML::Twig->new('twig_roots' => { 'Nest/root' => \&root,

                                            map { $_ => \&recurse }

                                            'Entry/morphs',
                                            'Entry/entity/*/plural',
                                            'Entry/entity/*/femini',
                                            'Entry/entity/*/masdar',
                                            'Entry/entity/*/imperf',
                                            'Entry/entity/*/pfirst',
                                            'Entry/entity/*/second',
                                            'Entry/limits/snd//snd',
                          },
                          'twig_print_outside_roots' => 1,
                          'pretty_print' => 'none');

$twig->parse(STDIN);
