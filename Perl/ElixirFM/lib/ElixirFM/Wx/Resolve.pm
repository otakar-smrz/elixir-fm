# ###################################################################### Otakar Smrz, 2010/03/27
#
# ElixirFM Widget Interface ####################################################################

package ElixirFM::Wx::Resolve;

use strict;

our $VERSION = '1.1.0';


use Wx ':everything';

use ElixirFM;
use ElixirFM::Exec;

use Encode::Arabic;


# use Memoize;
#
# sub resolve {
#
#     return ElixirFM::Exec::elixir 'resolve', ['--lists'], @_;
# }
#
# memoize 'resolve';


our $memoize = $ElixirFM::Wx::elixir->{'resolve'};


sub elixir {

    my @word = map { split " " } @_;

    my @news = grep { not exists $memoize->{$_} } @word;

    my $news = join " ", @news;

    my $data = ElixirFM::Exec::elixir 'resolve', ['--lists'], $news;

    my @data = ElixirFM::concat ElixirFM::unpretty $data;

    warn "ElixirFM::Wx::Resolve:\t" . "resolving " . @news . " of " . @word . " words\n" if @word > 1;

    warn "ElixirFM::Wx::Resolve:\t" . '@news ' . @news . " <> " . '@data ' . @data . "\n" unless @news == @data;

    $memoize->{$news[$_]} = $data[$_] for 0 .. @data - 1;

    return map { exists $memoize->{$_} ? $memoize->{$_} : [[$_]] } @word;
}


1;
