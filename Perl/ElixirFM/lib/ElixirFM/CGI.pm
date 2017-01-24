# ###################################################################### Otakar Smrz, 2007/10/05
#
# ElixirFM Online Interface ####################################################################

package ElixirFM::CGI;

use strict;

our $VERSION = '1.2.2';


use base 'CGI::Application::FastCGI';

use CGI::Fast ':standard';

use base 'Exporter';

our @EXPORT = (qw 'display_header display_headline display_footline display_footer',
               qw 'display_twitter escape quote revert',
               qw '@modes %memoize %enc_hash @enc_list $JSON');

use JSON;

our $JSON = JSON->new()->allow_nonref();

our @modes = qw 'home resolve inflect derive lookup';

our %memoize = ();

our %enc_hash = (   'ArabTeX'       =>      'TeX',
                    'Buckwalter'    =>      'Tim',
                    'Unicode'       =>      'UTF'   );

our @enc_list = reverse sort keys %enc_hash;


use Encode::Arabic::Buckwalter ':xml';

our @example = ( [ decode "buckwalter", "AqrO Aldrs AlOwl" ],
                 [ decode "buckwalter", "Allgp AlErbyp bHr lA sAHl lh" ],
                 [ 'welcome "and" enjoy' ],
                 [ "be happy" ],
                 [ decode "buckwalter", "AhlA wshlA" ] );


sub setup {

    my $c = shift;

    no strict;

    $c->run_modes('home' => \&{__PACKAGE__ . '::main'}, map { $_ => \&{__PACKAGE__ . '::' . (ucfirst $_) . '::main'} } @modes[1 .. @modes - 1]);

    use strict;

    $c->mode_param('mode');

    $c->start_mode('home');
}


# use base 'CGI::Application::FastCGI';

sub run {
    my $self = shift;
    my $request = FCGI::Request();
    $self->fastcgi($request);
    while ($request->Accept >= 0) {
        $self->reset_query;
        $self->CGI::Application::run;
        last if $self->reinit();
    }
}

sub reinit {

    return -M $0 < 0;
}


sub escape ($) {

    my $text = shift;

    $text =~ s/\&/\&amp;/g;
    $text =~ s/\</\&lt;/g;
    $text =~ s/\>/\&gt;/g;

    return $text;
}

sub quote ($) {

    return $_[0] eq '' ? '""' : $_[0];
}

sub revert ($) {

    my $text = shift;

    $text =~ s/\&gt;/\>/g;
    $text =~ s/\&lt;/\</g;
    $text =~ s/\&amp;/\&/g;

    return $text;
}


sub display_header ($) {

    my $c = shift;
    my $q = $c->query();
    my $r;

    $q->charset('utf-8');

    $r .= $q->start_html(-title  => "ElixirFM Online Interface", -encoding => $q->charset(),
                         -meta   => { 'keywords' => join ' ', 'Arabic morphological analyzer analysis generator generation',
                                                              'morphology lexicon dictionary lookup inflection derivation rules grammar language' },
                         -head   => $q->Link({-rel => 'shortcut icon', -href => 'http://quest.ms.mff.cuni.cz/elixir/elixir.ico', -type => 'image/x-icon'}),
                         -style  => [ {-src => 'http://quest.ms.mff.cuni.cz/elixir/elixir.css', -type => 'text/css'},
                                      {-src => 'http://quest.ms.mff.cuni.cz/elixir/listexpander/listexpander.css', -type => 'text/css'} ],
                         -script => [ {-src => 'http://quest.ms.mff.cuni.cz/elixir/elixir.js', -type => 'text/javascript'},
                                      {-src => 'http://quest.ms.mff.cuni.cz/elixir/listexpander/listexpander.js', -type => 'text/javascript'} ]);

    return $r;
}

sub display_headline ($) {

    my $c = shift;
    my $q = $c->query();
    my $m = $q->param($c->mode_param());
    my $r;

    $r .= $q->a({'href' => 'http://sourceforge.net/projects/elixir-fm/'},
                $q->img({-border => '0',
                         -src => 'http://quest.ms.mff.cuni.cz/elixir/elixir.png',
                         -alt => 'ElixirFM',
                         -style => 'background-color: #FFFFFF; float: left; margin: -2px 8px 0px 0px; height: 48px'}));

    $r .= $q->h1($q->a({'href' => 'http://sourceforge.net/projects/elixir-fm/'}, "ElixirFM"), ( $m eq 'home' ? ('Online', 'Interface') : (ucfirst $m, 'Online') ));

    $r .= $q->div({-class => "menu"},
                  map { $q->param($c->mode_param()) eq $_ ? $q->span(ucfirst $_) : $q->a({'href' => 'index.fcgi?mode=' . $_}, ucfirst $_) } @modes);

    return $r;
}

sub display_footline ($) {

    my $c = shift;
    my $q = $c->query();
    my $r;

    $r .= $q->p({'style' => 'margin-top: 30px'},
                "(C) 2017-2002",
                $q->a({-href => 'http://github.com/otakar-smrz/'}, "Otakar Smr\x{017E}") . ",",
                "Viktor Bielick\x{00FD}, Tim Buckwalter. GNU General Public License",
                $q->a({-href => 'http://www.gnu.org/licenses/'}, "GNU GPL 3") . ".");

    return $r;
}

sub display_footer ($) {

    my $c = shift;
    my $q = $c->query();
    my $r;

    $r .= $q->p(  # {'style' => 'height: 31px'},

#                 $q->a({'style' => 'float: right',
#                        'href'  => "http://jigsaw.w3.org/css-validator/check?uri=referer"},
#                       $q->img({'border' => "0",
#                                'src' => "http://www.w3.org/Icons/valid-css2",
#                                'alt' => "Valid CSS level 2.1",
#                                'height' => "31", 'width' => "88"})),

#                 $q->a({'style' => 'float: right',
#                        'href'  => "http://validator.w3.org/check?uri=referer"},
#                       $q->img({'border' => "0",
#                                'src' => "http://www.w3.org/Icons/valid-xhtml10",
#                                'alt' => "Valid XHTML 1.0 Transitional",
#                                'height' => "31", 'width' => "88"})),

                $q->a({'style' => 'float: right',
                       'href'  => "http://sourceforge.net/projects/elixir-fm/"},
                      $q->img({'border' => "0",
                               'style' => 'margin-bottom: 20px',
                               'src' => "http://sflogo.sourceforge.net/sflogo.php?group_id=181087&type=13",
                               'alt' => "ElixirFM at SourceForge.net",
                               'height' => "30", 'width' => "120"})) );

    $r .= $q->script({-type => 'text/javascript', -src => 'http://api.yamli.com/js/yamli_api.js'}, "");

    $r .= $q->script({-type => 'text/javascript'}, join ' ', split ' ', q {

                            if (typeof(Yamli) == "object") {

                                Yamli.init({ uiLanguage: "en", startMode: "onOrUserDefault",
                                             settingsPlacement: 'inside',
                                             showTutorialLink: false, showDirectionLink: true });

                                elixirYamli('');
                            }
                    });

    $r .= $q->end_html();

    return $r;
}

sub display_twitter ($) {

    my $c = shift;
    my $q = $c->query();
    my $r;

    $r .= $q->div({-style => "float: right"}, q {
<a href="https://twitter.com/dzamedzam" class="twitter-follow-button" data-show-count="false" data-size="medium" data-show-screen-name="false" data-dnt="true">Follow</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>

<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://elixir-fm.sf.net/" data-text="Like this site for understanding and transforming words in #Arabic" data-via="dzamedzam" data-size="medium" data-count="none" data-hashtags="ElixirFM" data-dnt="true" title="Recommend #ElixirFM on Twitter">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
});

    return $r;
}


sub show_param ($@) {

    my $q = shift;

    return join '', map { '&' . $_ . '=' . $q->param($_) } @_;
}


require ElixirFM::CGI::Resolve;

require ElixirFM::CGI::Inflect;

require ElixirFM::CGI::Derive;

require ElixirFM::CGI::Lookup;


sub main ($) {

    my $c = shift;

    my $q = $c->query();

    my $r = '';

    $q->param($c->mode_param(), 'home');

    $r .= display_header $c;

    $r .= display_headline $c;

    $q->param('text', join ' ', split ' ', defined $q->param('text') ? $q->param('text') : '');

    if (defined $q->param('submit')) {

        return ElixirFM::CGI::Resolve::main $c if $q->param('submit') eq 'Submit' and $q->param('text') ne '';

        my $idx = rand @example;

        $q->param('text', $example[$idx][-1]);
    }
    else {

        $q->param('text', decode "utf8", $q->param('text'));
    }

    $r .= $q->start_form(-method => 'POST', -style => 'margin: 10px 0px 30px 0px');

    $r .= $q->table( {-border => 0},

                Tr( {-align => 'center'},

                    td( {-colspan => 3},

                        $q->textfield(  -name       =>  'text',
                                        -id         =>  'text',
                                        -default    =>  $q->param('text'),
                                        -accesskey  =>  '4',
                                        -size       =>  80,
                                        -maxlength  =>  180) ) ),

                Tr( {-align => 'center'},

                    td({-align => 'left'},   $q->submit(-name => 'submit', -value => 'Submit')),
                    td({-align => 'center'}, $q->button(-name => 'clear',  -value => 'Clear', -onclick => "elixirClear('text')")),
                    td({-align => 'right'},  $q->submit(-name => 'submit', -value => 'Example')) ) );

    $r .= $q->hidden( -name => $c->mode_param(), -value => $q->param($c->mode_param()) );

    $r .= $q->end_form();

    $r .= $q->p("Welcome to the online interface to",
                $q->a({-href => 'http://sourceforge.net/projects/elixir-fm/'}, "ElixirFM") . ", the implementation of",
                $q->a({-href => 'http://elixir-fm.sourceforge.net/elixir-thesis.pdf'}, "Functional Arabic Morphology"),
                "written in Haskell and Perl.");

    $r .= $q->p("ElixirFM can process words of", $q->a({-href => 'http://en.wikipedia.org/wiki/Dictionary_of_Modern_Written_Arabic'},
                "Modern Written Arabic"), "using four different modes.", "Here, you can learn how to use these modes for various purposes.");

    $r .= display_twitter $c;

    $r .= $q->p("ElixirFM is further documented at", $q->a({-href => 'http://github.com/otakar-smrz/elixir-fm/'}, "GitHub") . ".",
                "The multiple scripts of this site are best viewed with",
                $q->a({-href => 'http://openfontlibrary.org/en/font/droid-arabic-naskh'}, "Droid Arabic Naskh"), "and",
                $q->a({-href => 'http://sourceforge.net/projects/dejavu/'}, "DejaVu"), "fonts.");

    $r .= $q->h2($q->a({-href => 'index.fcgi?mode=resolve'}, 'Resolve'));

    $r .= $q->p("This mode provides tokenization and morphological analysis of the inserted text,",
                "even if you omit some symbols or do not spell everything correctly.");

    $r .= $q->p("You can experiment with entering the text in various notations.");

    # $r .= $q->p("You can check the 'Fuzzy Notation' option due to which the resolution of the input words is less strict.");

    $r .= $q->h2($q->a({-href => 'index.fcgi?mode=inflect'}, 'Inflect'));

    $r .= $q->p("This mode lets you inflect words into the forms required by context.",
                "You only need to define the grammatical parameters of the expected word forms.");

    $r .= $q->p("You can either enter natural language descriptions, or you can specify the parameters using the positional morphological tags.");

    $r .= $q->h2($q->a({-href => 'index.fcgi?mode=derive'}, 'Derive'));

    $r .= $q->p("This mode lets you derive words of similar meaning but different grammatical category.",
                "You only need to tell the desired grammatical categories.");

    $r .= $q->p("You can either enter natural language descriptions, or you can specify the parameters using the positional morphological tags.");

    $r .= $q->h2($q->a({-href => 'index.fcgi?mode=lookup'}, 'Lookup'));

    $r .= $q->p("This mode can lookup lexical entries by the citation form and nests of entries by the root,",
                "and lets you search also in the English translations.");

    $r .= $q->p("You can try enclosing the text in quotes or parentheses if needed.");


    $r .= display_footline $c;

    $r .= display_footer $c;

    return encode "utf8", $r;
}


1;
