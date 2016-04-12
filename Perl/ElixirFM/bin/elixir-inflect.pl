#! perl -w

use ElixirFM;

use ElixirFM::Exec;

push @ARGV, "fa`al" unless @ARGV;

print << 'print';

\documentclass{article}
\usepackage[margin=1in]{geometry}
\usepackage{arabtex}
\usepackage{listings}
\pagestyle{empty}

\newcommand{\nice}[1]{\orth{#1}   \phon{#1}}
\newcommand{\pair}[1]{\orth{#1} & \phon{#1}}
\newcommand{\orth}[1]{{\arabtrue\transfalse\showfalse\<#1>}}
\newcommand{\phon}[1]{{\arabfalse\transtrue\showfalse\<#1>}}
\newcommand{\xtag}[1]{\lstinline{#1}}

\renewcommand{\baselinestretch}{1.5}

\usepackage{acolor}
\usepackage{alocal}

\begin{document}

\acolor{diacritics}{red}
\settrans{czech}

\large

print

@clip = ElixirFM::unpretty ElixirFM::Exec::elixir 'lookup', ["tex"], 'huwa';

@data = ElixirFM::unpretty ElixirFM::Exec::elixir 'inflect', ['SP------1-'], map { $_->{'clip'} } map { @{$_} } @clip;

# print join "\n", ElixirFM::concat map { @{$_} } map { @{$_} } @data;

# print join "\n\n", map { join "\n", map { join "\t", "\\xtag{" . $_->[0] . "}", map { "\\nice{" . $_->[0] . "}" } @{$_}[1 .. @{$_} - 1] } @{$_} } @data;

%pron = map { map { $_->[0], [ map { $_->[0] } @{$_}[1 .. @{$_} - 1] ] } @{$_} } @data;

foreach $form (@ARGV) {

    @clip = ElixirFM::unpretty ElixirFM::Exec::elixir 'lookup', ["tex"], $form;

    foreach $clip (@clip) {

        print << '        print';

        \vfill

        print

        @data = ElixirFM::unpretty ElixirFM::Exec::elixir 'inflect', ['VP-A------', 'VI-A------'], map { $_->{'clip'} } @{$clip};

        # print join "\n\n", map { join "\\\\\n", map { join "\t", "\\xtag{" . $_->[0] . "}", map { "\\nice{" . $_->[0] . "}" } @{$_}[1 .. @{$_} - 1] } @{$_} } @data;

        foreach $data (@data) {

            next unless @{$data};

            %verb = map { $_->[0], [ map { $_->[0] } @{$_}[1 .. @{$_} - 1] ] } @{$data};

            print << '            print';

            \begin{center}
            \begin{tabular}{|rl|rl|rl|}

            \hline

            print

            print ' ' x 12, ( map { "\\pair{$_}" } join " ", @{$pron{"SP---" . $_ . "1-"}} ), ' & ',
                            ( map { "\\pair{$_}" } join " ", @{$verb{"VP-A-" . $_ . "--"}} ), ' & ',
                            ( map { "\\pair{$_}" } join " ", @{$verb{"VIIA-" . $_ . "--"}} ), ' \\\\' . "\n"

                    foreach qw '1MS 2MS 2FS 3MS 3FS 1MP 2MP 2FP 3MP 3FP 2MD 3MD 3FD';

            print << '            print';

            \hline

            \end{tabular}
            \end{center}

            print
        }
    }
}

print << 'print';

\end{document}

print
