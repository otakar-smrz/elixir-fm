# ###################################################################### Otakar Smrz, 2009/01/25
#
# ElixirFM Inflect Online ######################################################################

package ElixirFM::CGI::Inflect;

use strict;

our $VERSION = '1.2.1';


use ElixirFM::CGI;

use CGI::Fast ':standard';

use ElixirFM::Exec './elixir';

use ElixirFM;

use Encode::Arabic::ArabTeX ':simple';
use Encode::Arabic::Buckwalter ':xml';

use Encode::Arabic ':modes';


our @example = ( [ 'perfect active third imperative',                            decode "buckwalter", "qrO" ],
		 [ 'perf act 3rd impa',                                          decode "buckwalter", "qrO" ],
		 [ '-P-A-3---- -C--------',                                      decode "buckwalter", "qrO" ],
		 [ 'indicative subjunctive jussive indefinite reduced definite', decode "buckwalter", "AstqrO ktAbp" ],
		 [ 'ind sub jus indf red def',                                   decode "buckwalter", "AstqrO ktAbp" ],
		 [ '--[ISJ]------[IRD]',                                         decode "buckwalter", "AstqrO ktAbp" ] );


sub pretty ($$$$) {

    my ($query, $reply, $mode, $q) = @_;

    my $r = '';

    for (my $i = 0; $i < @{$reply}; $i++) {

	my ($data, @data) = @{$reply->[$i][0]};

	$r .= $q->h3($q->span({-class => "mode"}, ucfirst $mode),
		     $q->span({-class => "word",
			       -title => "input word"}, $data));

	next unless @data;

	$r .= $q->ul({-class => 'listexpander'}, $q->li([ map {

		my ($data, @data) = @{$_};

		(grep { exists $query->{$_->[0]} } @data) ?

		pretty_root($_, $q) . "\n" . $q->ul($q->li([ map {

		    pretty_entry($_, $q, $query)

		} @data ] )) : ()

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

    my ($data, $q, $query) = @_;

    my $clip = $data->[0];

    return "" unless exists $query->{$clip};

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

      $q->ul($q->li($q->table({-cellspacing => 0},

		    $q->Tr([ map { pretty_entity($_, $q) } @{$query->{$clip}} ]) )) );
}

sub pretty_entity {

    my ($data, @data) = @{$_[0]};

    my $q = $_[1];

    my @xtag = ($data, '' x (@data - 1));

    return map { join $",

	    $q->td({-class => "xtag",
		    -title => ElixirFM::describe $xtag[$_]}, $xtag[$_]),
	    $q->td({-class => "phon",
		    -title => "inflected form"},             decode "zdmg", $data[$_]->[0]),
	    $q->td({-class => "orth",
		    -title => "inflected form"},             decode "arabtex", $data[$_]->[0]),
	    $q->td({-class => "morphs",
		    -title => "morphs of inflected form"},   ElixirFM::nice $data[$_]->[1][1][0]),
	    $q->td({-class => "dtag",
		    -title => "grammatical parameters"},     ElixirFM::describe $xtag[$_], 'terse')

	    } 0 .. @data - 1;
}

sub main ($) {

    my $c = shift;

    my $q = $c->query();

    my $r = '';

    $q->param($c->mode_param(), 'inflect');

    $r .= display_header $c;

    $r .= display_headline $c;

    my $memoize = '';

    if (defined $q->param('submit') and $q->param('submit') eq 'Example') {

	my $idx = rand @example;

	$q->param('text', $example[$idx][0]);
	$q->param('clip', $example[$idx][1]);
    }
    else {

	$q->param('text', join ' ', split ' ', defined $q->param('text') ? $q->param('text') : '');

	if ($q->param('text') ne '') {

	    $q->param('text', decode "utf8", $q->param('text'));
	}
	else {

	    $q->param('text', $example[0][0]);
	}

	if (defined $q->param('clip') and $q->param('clip') !~ /^\s*$/) {

	    $q->param('clip', decode "utf8", $q->param('clip'));
	}
	else {

	    $q->param('clip', $example[0][1]);

	    $memoize = 'yes';
	}
    }

    $r .= $q->p("ElixirFM lets you inflect words into the forms required by context.",
		"You only need to define the grammatical parameters of the expected word forms.");

    $r .= display_twitter $c;

    $r .= $q->p("You can either enter natural language descriptions, or you can specify the parameters using the positional morphological tags.");

    $r .= $q->h2('Your Request');

    $r .= $q->start_form(-method => 'POST');

    $r .= $q->table( {-border => 0},

		Tr( {-align => 'left'},

		    td( {-colspan => 3, -class => "xtag"},

			$q->textfield(  -name       =>  'text',
					-id         =>  'text',
					-default    =>  scalar $q->param('text'),
					-accesskey  =>  '4',
					-size       =>  50,
					-maxlength  =>  180) ),

		    td( {-colspan => 1, -align => 'left', -style => "vertical-align: middle; padding-left: 20px"},

			$q->textfield(  -name       =>  'clip',
					-id         =>  'clip',
					-default    =>  scalar $q->param('clip'),
					-accesskey  =>  '5',
					-size       =>  25,
					-maxlength  =>  60) ) ),

		Tr( {-align => 'left'},

		    td({-align => 'left'},   $q->submit(-name => 'submit', -value => ucfirst $q->param($c->mode_param()))),
		    td({-align => 'center'}, $q->button(-name => 'clear',  -value => 'Clear', -onclick => "elixirClear('text')")),
		    td({-align => 'right'},  $q->submit(-name => 'submit', -value => 'Example')),
		    td({-align => 'right'},  $q->button(-name => 'clear',  -value => 'Clear', -onclick => "elixirClear('clip')")) ) );

    $r .= $q->hidden( -name => $c->mode_param(), -value => scalar $q->param($c->mode_param()) );

    $r .= $q->end_form();

    $r .= $q->h2('ElixirFM Reply');

    $r .= $q->p("Point the mouse over the data to receive further information.");

    my $mode = $q->param($c->mode_param());

    my @text = ElixirFM::retrieve scalar $q->param('text');

    my $clip = $q->param('clip');

    $clip = join "\n", ElixirFM::identify $clip;

    $q->param('clip', $clip);

    my $reply = ['lookup', $clip];

    if ($memoize) {

	$memoize{$mode}[0] = ElixirFM::Exec::elixir @{$reply} unless exists $memoize{$mode} and defined $memoize{$mode}[0];

	$reply = $memoize{$mode}[0];
    }
    else {

	$reply = ElixirFM::Exec::elixir @{$reply};
    }

    $reply = [ ElixirFM::unpretty $reply ];

    my @clip = map { $_->[0] } map { @{$_}[ 1 .. @{$_} - 1] } map { @{$_} } @{$reply};

    my $query = [$mode, [@text], @clip];

    if ($memoize) {

	$memoize{$mode}[1] = ElixirFM::Exec::elixir @{$query} unless exists $memoize{$mode} and defined $memoize{$mode}[1];

	$query = $memoize{$mode}[1];
    }
    else {

	$query = ElixirFM::Exec::elixir @{$query};
    }

    $query = [ ElixirFM::unpretty $query ];

    $query = { map { $_->[0], [ @{$_}[1 .. @{$_} - 1] ] } map { @{$_} } @{$query} };

    $r .= pretty $query, $reply, $mode, $q;

    unless ($memoize and exists $memoize{$mode}) {

	# open L, '>>', "$mode/index.log";

	# print L join "\t", gmtime() . "", (join " ", @clip),
	#                    ($query =~ /^\s*$/ ? '--' : '++'),
	#                    encode "utf8", $q->param('text') . "\n";

	# close L;
    }

    $r .= display_footline $c;

    $r .= display_footer $c;

    return encode "utf8", $r;
}


1;
