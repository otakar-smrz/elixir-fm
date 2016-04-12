# ###################################################################### Otakar Smrz, 2009/01/25
#
# ElixirFM Lookup Online #######################################################################

package ElixirFM::CGI::Lookup;

use strict;

our $VERSION = '1.2.1';


use ElixirFM::CGI;

use CGI::Fast ':standard';

use ElixirFM::Exec './elixir';

use ElixirFM;

use Encode::Arabic::ArabTeX ':simple';
use Encode::Arabic::Buckwalter ':xml';

use Encode::Arabic ':modes';


our @example = ( [ 'Unicode',   join " ", "school", decode "buckwalter", "drs k t b" ],
		 [ 'Unicode',   'welcome "and" enjoy' ],
		 [ 'Unicode',   "be happy" ],
		 [ 'ArabTeX',   "qAmUs 'lktrny ^g d d" ] );


sub pretty ($$$) {

    my ($reply, $mode, $q) = @_;

    my $r = '';

    for (my $i = 0; $i < @{$reply}; $i++) {

	my ($data, @data) = @{$reply->[$i][0]};

	$r .= $q->h3($q->span({-class => "mode"}, ucfirst $mode),
		     $q->span({-class => "word",
			       -title => "input word"}, $data));

	next unless @data;

	$r .= $q->ul({-class => 'listexpander'}, $q->li([ map {

		my ($data, @data) = @{$_};

		pretty_root($_, $q) . "\n" . $q->ul($q->li([ map {

		    pretty_entry($_, $q)

		} @data ] ))

	    } @data ]));
    }

    return $r;
}

sub pretty_root {

    my $root = substr $_[0]->[1][1][1][1][0], 1, -1;

    my $q = $_[1];

    return $q->table({-cellspacing => 0, -class => "nest"},
		     $q->Tr($q->td({-class => "root",
				    -title => "common root"}, escape join " ", (decode "zdmg", $root),
									       (quote decode "arabtex", ElixirFM::cling $root, "|")),
			    $q->td({-class => "button"},
				   $q->a({-title => "lookup all entries under this root",
					  -href => 'index.fcgi?mode=lookup' . '&text=' . (escape quote join "+", split " ", decode "arabtex", $root)}, "Lookup"))
		));
}

sub pretty_entry {

    my $data = $_[0];

    my $q = $_[1];

    my $clip = $data->[0];
    my $xtag = substr $data->[1][0], 0, 1;

    my $form = $data->[1][1][0];
    my $root = substr $data->[1][1][1][0], 1, -1;

    my $morphs = $data->[1][1][1][1][0];
    my $reflex = join '", "', split '","', substr $data->[1][1][1][1][1][0], 1, -1;

    my $class = join " ", split ",", substr $data->[1][1][1][1][1][1][0], 1, -1;

    return join $",

      $q->table({-cellspacing => 0, -class => "lexeme"},
		$q->Tr($q->td({-class => "xtag",
			       -title => ElixirFM::describe $xtag}, $xtag),
		       $q->td({-class => "phon",
			       -title => "citation form"},           decode "zdmg", $form),
		       $q->td({-class => "orth",
			       -title => "citation form"},           decode "arabtex", $form),
		       $q->td({-class => "morphs",
			       -title => "morphs of citation form"}, ElixirFM::nice $morphs),
		       $q->td({-class => "class",
			       -title => "derivational class"},      $class),
		       $q->td({-class => "reflex",
			       -title => "lexical reference"},       escape $reflex),

		       $q->td({-class => "button"},
			      $q->a({-title => "inflect this lexeme",
				     -href => 'index.fcgi?mode=inflect' . '&clip=' . $clip}, "Inflect"),
			      $q->a({-title => "derive other lexemes",
				     -href => 'index.fcgi?mode=derive' . '&clip=' . $clip}, "Derive"),
			      $q->a({-title => "lookup in the lexicon",
				     -href => 'index.fcgi?mode=lookup' . '&clip=' . $clip}, "Lookup")),
	    )),

      (@{$data} == 2) ? () :

      $q->ul($q->li($q->table({-cellspacing => 0},

		    $q->Tr([ map { pretty_entity($_, $q) } @{$data}[2 .. @{$data} - 1] ] ) )) );
}

sub pretty_entity {

    my ($data, @data) = @{$_[0]};

    my $q = $_[1];

    my @xtag = ($data, '' x (@data - 1));

    return map { join $",

	    $q->td({-class => "xtag",
		    -title => ElixirFM::describe $xtag[$_]},  $xtag[$_]),
	    $q->td({-class => "phon",
		    -title => "inflectional stem"},           decode "zdmg", $data[$_]->[0]),
	    $q->td({-class => "orth",
		    -title => "inflectional stem"},           decode "arabtex", $data[$_]->[0]),
	    $q->td({-class => "morphs",
		    -title => "morphs of inflectional stem"}, ElixirFM::nice $data[$_]->[1][1][0]),
	    $q->td({-class => "dtag",
		    -title => "grammatical parameters"},      ElixirFM::describe $xtag[$_], 'terse')

	    } 0 .. @data - 1;
}

sub main ($) {

    my $c = shift;

    my $q = $c->query();

    my $r = '';

    $q->param($c->mode_param(), 'lookup');

    $r .= display_header $c;

    $r .= display_headline $c;

    my $memoize = '';

    if (defined $q->param('submit') and $q->param('submit') eq 'Example') {

	my $idx = rand @example;

	$q->param('text', $example[$idx][1]);
	$q->param('code', $example[$idx][0]);
    }
    else {

	$q->param('text', join ' ', split ' ', defined $q->param('text') ? $q->param('text') : '');

	if ($q->param('text') ne '') {

	    $q->param('text', decode "utf8", $q->param('text'));
	}
	elsif (defined $q->param('clip') and $q->param('clip') =~ /^\s*\(\s*(-?)\s*([1-9][0-9]*)\s*,\s*(-?)\s*([1-9][0-9]*)\s*\)\s*$/) {

	    $q->param('clip', "($1$2,$3$4)");
	    $q->param('text', $q->param('clip'));
	}
	else {

	    $q->param('text', $example[0][1]);
	    $q->param('code', $example[0][0]);

	    $memoize = 'yes';
	}
    }

    $q->param('code', 'Unicode') unless defined $q->param('code');

    $r .= $q->p("ElixirFM can lookup lexical entries by the citation form and nests of entries by the root.",
		"You can even search the dictionary using English.");

    $r .= display_twitter $c;

    $r .= $q->p("You can try enclosing the text in quotes or parentheses if needed.");

    $r .= $q->h2('Your Request');

    $r .= $q->start_form(-method => 'POST');

    $r .= $q->table( {-border => 0},

		Tr( {-align => 'left'},

		    td( {-colspan => 3},

			$q->textfield(  -name       =>  'text',
					-id         =>  'text',
					-default    =>  $q->param('text'),
					-accesskey  =>  '4',
					-size       =>  50,
					-maxlength  =>  180) ),

		    td( {-colspan => 2, -style => "vertical-align: middle; padding-left: 20px", -class => 'notice'},

			$q->radio_group(-name       =>  'code',
					-values     =>  [ @enc_list ],
					-default    =>  $q->param('code'),
					-accesskey  =>  '5',
					-onchange   =>  "elixirYamli('text')",
					-labelattributes  =>  { 'ArabTeX'    => {-title => "internal phonology-oriented notation"},
								'Buckwalter' => {-title => "letter-by-letter romanization"},
								'Unicode'    => {-title => "original script and orthography"} } ) ) ),

		Tr( {-align => 'left'},

		    td({-align => 'left'},   $q->submit(-name => 'submit', -value => ucfirst $q->param($c->mode_param()))),
		    td({-align => 'center'}, $q->button(-name => 'clear',  -value => 'Clear', -onclick => "elixirClear('text')")),
		    td({-align => 'right'},  $q->submit(-name => 'submit', -value => 'Example')) ) );

    $r .= $q->hidden( -name => $c->mode_param(), -value => $q->param($c->mode_param()) );

    $r .= $q->end_form();

    $r .= $q->h2('ElixirFM Reply');

    $r .= $q->p({-class => 'notice'}, "Click on the items in the list of solutions below in order to display or hide their contents.");

    $r .= $q->p("Point the mouse over the data to receive further information.");

    my $mode = $q->param($c->mode_param());

    my $code = exists $enc_hash{$q->param('code')} ? $enc_hash{$q->param('code')} : 'UTF';

    my $text = $q->param('text');

    $text = join "\n", ElixirFM::identify $text, $code;

    $q->param('text', $text);

    my $reply = [$mode, [$code], $text];

    if ($memoize) {

	$memoize{$mode} = ElixirFM::Exec::elixir @{$reply} unless exists $memoize{$mode};

	$reply = $memoize{$mode};
    }
    else {

	$reply = ElixirFM::Exec::elixir @{$reply};
    }

    $reply = [ ElixirFM::unpretty $reply ];

    $r .= pretty $reply, $mode, $q;

    unless ($memoize and exists $memoize{$mode}) {

	# open L, '>>', "$mode/index.log";

	# print L join "\t", gmtime() . "", $code,
	#                    ($reply =~ /^\s*$/ ? '--' : '++'),
	#                    encode "utf8", (join "\t", split "\n", $q->param('text')) . "\n";

	# close L;
    }

    $r .= display_footline $c;

    $r .= display_footer $c;

    return encode "utf8", $r;
}


1;
