#! perl -w

use ElixirFM;

use Encode::Arabic;

use Getopt::Long;

our $style = {};

GetOptions($style, 'default', 'shihadeh', 'milicka');

$/ = "\n:::: ";                             # provide the data of `elixir resolve --lists`

while ($data = decode "utf8", <>) {         # process the data efficiently word by word

    $data = substr $data, 0, -5 if $data =~ /\n:::: $/;

    $data = ":::: " . $data unless $data =~ /^:::: /;

    $data = $data . "\n";

    @text = ElixirFM::unpretty $data;                   # recover structured information

    foreach my $line (@text) {                          # the text is processed by lines

        foreach my $data (@{$line}) {                   # words delimited by whitespace

            my ($node, @data) = @{$data};               # $node is an array reference
            my $word = join "", @{$node};               # remember the word for reuse

            print encode "utf8", $word . "\n" unless @data;     # mention unrecognized words

            foreach my $data (@data) {                  # level of word tokenization

                my (undef, @data) = @{$data};

                foreach my $data (@data) {              # grouped by lexeme sequences

                    my ($node, @data) = @{$data};       # $node contains lexeme refs
                    my @lexs = @{$node};                # remember lexemes for reuse

                    foreach my $data (@data) {              # solution token sequences

                        my ($node, @data) = @{$data};       # @data contains solutions
                        my $form = join "", @{$node};       # fully restored word form

                        if (exists $style->{'milicka'}) {

                            $form = substr $form, 1, -1;        # remove excessive wickets

                            print encode "utf8", join "\t",
                                        ( $word ),               # input word
                                        ( $form ),               # token forms
                                        ( ElixirFM::orth $form ),
                                        ( ElixirFM::phon $form ),
                                        ( join " ", map { $_->[0] } @data ),    # token tags
                                        ( join " ", map { $_->[1] } @data ),    # token forms
                                        ( join " ", map { ElixirFM::orth $_->[1] } @data ),    # token forms
                                        ( join " ", map { ElixirFM::phon $_->[1] } @data ),    # token forms
                                        ( join " + ", map { $_->[3] } @data ),    # token patterns
                                        ( join " ", map { $_->[2] } @data ),    # token roots
                                        ( join " ", map { '"' . $_ . '"' }
                                                    map { ElixirFM::orth $_ }
                                                    map { substr $_->[2], 1, -1 } @data ),    # token roots
                                        ( join " ", map { '"' . $_ . '"' }
                                                    map { ElixirFM::phon $_ }
                                                    map { substr $_->[2], 1, -1 } @data ),    # token roots
                                        # ( join " ", map { $_->[5] } @lexs ),    # lexeme roots
                                        # ( join " ", map { '"' . $_ . '"' }
                                        #             map { ElixirFM::orth $_ }
                                        #             map { substr $_->[5], 1, -1 } @lexs ),    # lexeme roots
                                        # ( join " ", map { '"' . $_ . '"' }
                                        #             map { ElixirFM::phon $_ }
                                        #             map { substr $_->[5], 1, -1 } @lexs ),    # lexeme roots
                                        ( join " + ", map { $_->[6] } @lexs ),    # lexeme patterns
                                        ( join " ", map { $_->[4] } @lexs ),    # lexeme forms
                                        ( join " ", map { ElixirFM::orth $_->[4] } @lexs ),
                                        ( join " ", map { ElixirFM::phon $_->[4] } @lexs ),
                                        ( join " ", map { (split " ", $_->[2])[0] } @lexs ),    # part-of-speech
                                        ( join " ", map { $_->[3] } @lexs ),    # class
                                        ( join " ", map { $_->[1] } @lexs ).    # translation
                                       "\n";
                        }
                        else {

                            print encode "utf8", join "\t",
                                        $word,                                  # input word
                                        $form,                                  # token forms
                                        ( join " ", map { $_->[0] } @data ),    # token tags
                                        ( join " ", map { $_->[0] } @lexs ),    # lexeme ids
                                        ( join " ", map { $_->[1] } @lexs ).    # translation
                                       "\n";
                        }
                    }
                }
            }

            print "";                                   # separate input words
        }

        print "\n";                                     # separate input lines
    }
}
