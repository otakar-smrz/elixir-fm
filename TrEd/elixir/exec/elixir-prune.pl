#! perl -w

use XML::Twig;

my $twig = XML::Twig->new('twig_roots' => { 'Entry/vallex' => sub { $_[1]->delete() } },
                          'twig_print_outside_roots' => 1,
                          'pretty_print' => 'none');

$twig->parse(STDIN);
