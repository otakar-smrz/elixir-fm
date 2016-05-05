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

            $data = join "\t", $text, $data, (decode "arabtex", $data), (decode "zdmg", $data);

            $elem->set_text($data);
        }
        else {

            recurse $twig, $node;
        }
    }
}

sub root {

    my ($twig, $elem) = @_;

    $root = $elem->text();

    my $data = join "\t", $root, (decode "arabtex", $root), (decode "zdmg", $root);

    $elem->set_text($data);
}

my $twig = XML::Twig->new('twig_roots' => { 'ElixirFM' => sub { },
                                            'Nest/root' => \&root,

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
                          'pretty_print' => 'indented');

$twig->parse(STDIN);
$twig->print();
