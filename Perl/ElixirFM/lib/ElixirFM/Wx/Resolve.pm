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


__END__


sub pretty {

    my ($reply, $mode, $q) = @_;

    my @word = ElixirFM::concat ElixirFM::unpretty $reply;

    my @text = split " ", $q->param('text');

    my $r = '';

    $r .= $q->p({-class => 'notice'}, escape 'The numbers of input and output words are not equal! ' . @text . " <> " . @word) unless @text == @word;

    for (my $i = 0; $i < @word; $i++) {

        $r .= $q->h3($q->span({-class => "mode"}, ucfirst $mode),
                     $q->span({-class => "word",
                               -title => "input word"}, $text[$i]));

        if (@{$word[$i]} > 1) {

            $r .= $q->ul({-class => 'listexpander'}, pretty_resolve_tree($word[$i], $q));
        }
        else {

            $r .= $q->ul({-class => 'listexpander'},

                         $q->li({-class => 'empty'},
                                $q->span({-class => "word",
                                          -title => "input word"}, $text[$i])) );
        }
    }

    return $r;
}

sub pretty_resolve_tree {

    my (undef, @data) = @{$_[0]};

    my $q = $_[1];

    return '' unless @data;

    return $q->li([ map {

        my (undef, @data) = @{$_};

        $q->span({-title => "possible tokenization"}, pretty_resolve_data($_, $q)) . "\n" .

        $q->ul($q->li([ map {

                my (undef, @data) = @{$_};

                $q->span({-title => "token form variants"}, pretty_resolve_forms($_, $q)) . "\n" .

                $q->ul($q->li([ map {

                    pretty_resolve_lexeme($_, $q)

                } @data ]))

            } @data ]))

        } @data ]);
}

sub pretty_resolve_data {

    my (undef, @data) = @{$_[0]};

    my $q = $_[1];

    enmode "buckwalter", 'noneplus';

    my $text = join " " . $q->span({-style => 'width: 20px'}, " ") . " ",

                    map {
                            my @x = ElixirFM::nub { $_[0] } map {

                                        escape decode "buckwalter", encode "buckwalter", decode "arabtex", $_

                                  } ElixirFM::nub { $_[0] } map { $_->[1] } map { @{$_}[1 .. @{$_} - 1] } @{$_}[1 .. @{$_} - 1];

                            join " ", @x > 3 ? ($x[0], '..', $x[-1]) : @x

                        } @data;

    enmode "buckwalter", 'default';

    return $text;
}

sub pretty_resolve_forms {

    my ($node, undef) = @{$_[0]};

    my $q = $_[1];

    return join " ", map { join " ", map { escape decode "zdmg", $_ } split " ", substr $_, 1, -1 } @{$node};
}

sub pretty_resolve_lexeme {

    my ($node, @data) = @{$_[0]};

    my @data = ElixirFM::concise @data;

    my @info = @{$node};

    my $q = $_[1];

    my $xcat = substr $data[0]->[0], 0, 1;

    $info[1] = substr $info[1], 1, -1;
    $info[1] =~ s/\",\"/\", \"/g;

    my @stem = $info[2] =~ /^Verb \[([^\]]*)\] \[([^\]]*)\] \[([^\]]*)\]$/;

    $info[2] = @stem ? join " ", map { split /[,]/, $stem[$_] } 1, 0, 2 : "";

    $info[3] =~ s/[\[\]]//g;

    $info[-2] = substr $info[-2], 1, -1;

    my $root = join " ", (decode "zdmg", $info[-2]), (decode "arabtex", ElixirFM::cling $info[-2]);

    return join $",

      $q->table({-cellspacing => 0, -class => "lexeme"},
                $q->Tr($q->td({-class => "xtag",
                               -title => ElixirFM::describe $xcat}, $xcat),
                       $q->td({-class => "phon",
                               -title => "citation form"},           decode "zdmg", $info[-3]),
                       $q->td({-class => "orth",
                               -title => "citation form"},           decode "arabtex", $info[-3]),
                       $q->td({-class => "root",
                               -title => "root of citation form"},   $root),
                       $q->td({-class => "morphs",
                               -title => "morphs of citation form"}, ElixirFM::nice $info[-1]),
                       $q->td({-class => "class",
                               -title => "derivational class"},      $info[3]),
                       $q->td({-class => "stems",
                               -title => "inflectional stems"},      ElixirFM::nice $info[2]),
                       $q->td({-class => "reflex",
                               -title => "lexical reference"},       $info[1]),

                       $q->td({-class => "button"},
                              $q->a({-title => "inflect this lexeme",
                                     -href => 'index.fcgi?mode=inflect' . '&clip=' . $info[0]}, "Inflect"),
                              $q->a({-title => "derive other lexemes",
                                     -href => 'index.fcgi?mode=derive' . '&clip=' . $info[0]}, "Derive"),
                              $q->a({-title => "lookup in the lexicon",
                                     -href => 'index.fcgi?mode=lookup' . '&clip=' . $info[0]}, "Lookup")),
            )),

      $q->ul($q->li($q->table({-cellspacing => 0},

                    $q->Tr([ map { pretty_resolve_token($_, $q) } @data ] ) )) );
}

sub pretty_resolve_token {

    my @info = @{$_[0]};

    my $q = $_[1];

    return join $",

        $q->td({-class => "xtag",
                -title => ElixirFM::describe $info[0]}, $info[0]),
        $q->td({-class => "phon",
                -title => "inflected form"},             decode "zdmg", $info[-3]),
        $q->td({-class => "orth",
                -title => "inflected form"},             decode "arabtex", $info[-3]),
        $q->td({-class => "morphs",
                -title => "morphs of inflected form"},   ElixirFM::nice $info[-1]),
        $q->td({-class => "dtag",
                -title => "grammatical parameters"},     ElixirFM::describe $info[0], 'terse');
}

sub main ($) {

    my $c = shift;

    my $q = $c->query();

    my $r = '';

    $q->param($c->mode_param(), 'resolve');

    $r .= display_header $c;

    $r .= display_headline $c;

    my $memoize = '';

    if (defined $q->param('submit') and $q->param('submit') eq 'Example') {

        my $idx = rand @example;

        $q->param('text', $example[$idx][1]);
        $q->param('code', $example[$idx][0]);

        $q->param('fuzzy', '');
        $q->param('quick', '');
    }
    else {

        $q->param('text', join ' ', split ' ', defined $q->param('text') ? $q->param('text') : '');

        if ($q->param('text') ne '') {

            my $text = decode "utf8", $q->param('text');

            unless (defined $q->param('code') and $q->param('code') ne 'Unicode') {

                return ElixirFM::CGI::Lookup::main $c unless $text =~ /\p{InArabic}/;
            }

            $q->param('text', $text);
        }
        else {

            $q->param('text', $example[0][1]);
            $q->param('code', $example[0][0]);

            $q->param('fuzzy', '');
            $q->param('quick', '');

            $memoize = 'yes';
        }
    }

    $q->param('code', 'Unicode') unless defined $q->param('code');

    $q->param('fuzzy', '') unless defined $q->param('fuzzy');
    $q->param('quick', '') unless defined $q->param('quick');

    $r .= $q->p("ElixirFM can analyze non-tokenized as well as tokenized words, even if you omit some symbols or do not spell everything correctly.");

    $r .= $q->p("You can experiment with entering the text in various notations.");

    $r .= $q->h2('Your Request');

    $r .= $q->start_form(-method => 'POST');

    $r .= $q->table( {-border => 0},

                Tr( {-align => 'left'},

                    td( {-colspan => 3},

                        $q->textfield(  -name       =>  'text',
                                        -id         =>  'text',
                                        -dir        =>  'ltr',
                                        -default    =>  $q->param('text'),
                                        -accesskey  =>  '4',
                                        -size       =>  60,
                                        -maxlength  =>  180) ),

                    td( {-colspan => 2, -style => "vertical-align: middle; padding-left: 20px", -class => 'notice'},

                        $q->radio_group(-name       =>  'code',
                                        -values     =>  [ @enc_list ],
                                        -default    =>  $q->param('code'),
                                        -accesskey  =>  '5',
                                        -onchange   =>  "elixirYamli('text')",
                                        -attributes =>  { 'ArabTeX'    => {-title => "internal phonology-oriented notation"},
                                                          'Buckwalter' => {-title => "letter-by-letter romanization"},
                                                          'Unicode'    => {-title => "original script and orthography"} },
                                        -linebreak  =>  0,
                                        -rows       =>  1,
                                        -columns    =>  scalar @enc_list) ) ),

                Tr( {-align => 'left'},

                    td({-align => 'left'},   $q->submit(-name => 'submit', -value => ucfirst $q->param($c->mode_param()))),
                    td({-align => 'center'}, $q->button(-name => 'clear',  -value => 'Clear', -onclick => "elixirClear('text')")),
                    td({-align => 'right'},  $q->submit(-name => 'submit', -value => 'Example')),

                    td( {-align => 'left', -style => "vertical-align: middle; padding-left: 20px"},

                        $q->checkbox_group( -name       =>  'quick',
                                            -values     =>  [ 'Tokenized' ],
                                            -default    =>  [ $q->param('quick') ],
                                            -accesskey  =>  '6',
                                            -title      =>  "consider each input word as one token",
                                            -linebreak  =>  0,
                                            -rows       =>  1,
                                            -columns    =>  1) ),

                    td( {-align => 'right', -style => "vertical-align: middle; padding-left: 20px"},

                        $q->checkbox_group( -name       =>  'fuzzy',
                                            -values     =>  [ 'Fuzzy Notation' ],
                                            -default    =>  [ $q->param('fuzzy') ],
                                            -accesskey  =>  '7',
                                            -title      =>  "less strict resolution of the input",
                                            -linebreak  =>  0,
                                            -rows       =>  1,
                                            -columns    =>  1) ) ) );

    $r .= $q->hidden( -name => $c->mode_param(), -value => $q->param($c->mode_param()) );

    $r .= $q->end_form();

    $r .= $q->h2('ElixirFM Reply');

    $r .= $q->p({-class => 'notice'}, "Click on the items in the list of solutions below in order to display or hide their contents.");

    $r .= $q->p("Point the mouse over the data to receive further information.");

    my $mode = $q->param($c->mode_param());

    my $code = exists $enc_hash{$q->param('code')} ? $enc_hash{$q->param('code')} : 'UTF';

    my $text = ElixirFM::normalize $q->param('text'), $code;

    $q->param('text', $text);

    my @param = map { $q->param($_) ? '--' . $_ : () } 'fuzzy', 'quick';

    my $reply = [$mode, [@param, $code], $text];

    if ($memoize) {

        $memoize{$mode} = ElixirFM::Exec::elixir @{$reply} unless exists $memoize{$mode};

        $reply = $memoize{$mode};
    }
    else {

        $reply = ElixirFM::Exec::elixir @{$reply};
    }

    $r .= pretty $reply, $mode, $q;

    unless ($memoize and exists $memoize{$mode}) {

        open L, '>>', "$mode/index.log";

        print L join "\t", gmtime() . "", $code,
                           ($q->param('fuzzy') ? 'F' : 'A'),
                           ($q->param('quick') ? 'T' : 'N'),
                           ($reply =~ m/^::::$/m ? '--' : '++'),
                           encode "utf8", $q->param('text') . "\n";

        close L;
    }

    $r .= display_footline $c;

    $r .= display_footer $c;

    return encode "utf8", $r;
}


1;
