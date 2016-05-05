#! perl -w

use XML::Twig;

my $twig = XML::Twig->new('twig_roots' => { 'ElixirFM' => sub { },
                                            'Entry/vallex' => sub { $_[1]->delete() },
                          },
                          'pretty_print' => 'indented');

$twig->parse(STDIN);
$twig->print();
