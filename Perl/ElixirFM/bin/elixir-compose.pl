#! perl -w

use Data::Dumper;

$Data::Dumper::Indent = 0;
$Data::Dumper::Terse = 1;

use strict;

our %hash = ();
our %list = ();
our %idx = ();


print << 'PL';

package ElixirFM::Data::Compose;

use Data::Dumper;

$Data::Dumper::Indent = 0;
$Data::Dumper::Terse = 1;

use strict;


warn "Generating dictionaries, please be patient ...\n";

open PM, '>' . (substr __FILE__, 0, -2) . 'pm';

select PM;


print << 'PM';

package ElixirFM::Data::Compose;

sub new {

    my $obj = bless {}, ref $_[0] || $_[0];

$obj->{'data'} = {

PM


our $data = {};
our $lexs = [];

our $idx = 0;

foreach my $lexeme (@{data()}) {

    push @{$lexs}, shift @{$lexeme};

    for (my $i = 0; $i < @{$lexeme}; $i += 2) {

        unshift @{$lexeme->[$i + 1]}, $idx;

        push @{$data->{$lexeme->[$i]}}, $lexeme->[$i + 1];
    }

    $idx++;
}


printf "%s\t=> %s,\n", Data::Dumper->Dump([$_]), Data::Dumper->Dump([$data->{$_}]) foreach keys %{$data};


print << 'PM';

};

$obj->{'lexs'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{$lexs};


print << 'PM';

];

$obj->{'tags'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{tags()};


print << 'PM';

];

$obj->{'tmpl'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{tmpl()};


print << 'PM';

];

$obj->{'cont'} = [

PM


printf "%s,\n", Data::Dumper->Dump([$_]) foreach @{cont()};


print << 'PM';

];

    return $obj;
}

1;

PM


close PM;


sub data {

    return [

PL


sub Nothing () {

    return '';
}

sub Just ($) {

    return $_[0];
}


local $/ = "";

while (my $line = <>) {

    chomp $line;

    if ($line =~ /^\[/ and $line =~ /\]$/) {

        $line =~ s/\$/\\\$/g;

        my $data = eval $line;

        printf "[%s", Data::Dumper->Dump([$data->[0]]);

        for (my $i = 1; $i < @{$data}; $i += 2) {

            printf ",\n%s, [", Data::Dumper->Dump([$data->[$i]]);

            my %assoc = ();

            for (my $j = 0; $j < @{$data->[$i + 1]}; $j += 2) {

                my @accum = ();

                for (my $k = 0; $k < @{$data->[$i + 1][$j + 1]}; $k += 2) {

                    my $tmpl = Data::Dumper->Dump([$data->[$i + 1][$j + 1][$k]]);
                    my $tags = Data::Dumper->Dump([$data->[$i + 1][$j + 1][$k + 1]]);

                    $hash{'tmpl'}{$tmpl} = $idx{'tmpl'}++ unless exists $hash{'tmpl'}{$tmpl};
                    $hash{'tags'}{$tags} = $idx{'tags'}++ unless exists $hash{'tags'}{$tags};

                    push @accum, $hash{'tmpl'}{$tmpl}, $hash{'tags'}{$tags};
                }

                $assoc{join ", ", @accum} = [] unless exists $assoc{join ", ", @accum};

                push @{$assoc{join ", ", @accum}}, $data->[$i + 1][$j];
            }

            print join ",", map {

                my $cont = Data::Dumper->Dump([$assoc{$_}]);

                $hash{'cont'}{$cont} = $idx{'cont'}++ unless exists $hash{'cont'}{$cont};

                sprintf "\n\t[%s],\t%s", $_, $hash{'cont'}{$cont} }

                sort { $assoc{$a}[0] cmp $assoc{$b}[0] } keys %assoc;

            print "\t]";
        }

        print "],\n\n";
    }
}


print << 'PL';

    ]
}

sub tags {

    return [

PL

foreach my $one (keys %{$hash{'tags'}}) {

    my $dat = eval $one;

    for (my $i = 0; $i < @{$dat}; $i += 3) {

        push @{$list{'tags'}[$hash{'tags'}{$one}]}, [ @{$dat}[$i + 2, $i, $i + 1] ];
    }
}

for (my $i = 0; $i < @{$list{'tags'}}; $i++) {

    printf "# %d\n", $i;

    printf "[%s],\n\n", join ",\n ", map { Data::Dumper->Dump([$_]) } @{$list{'tags'}[$i]};
}


print << 'PL';

    ]
}

sub tmpl {

    return [

PL

foreach my $one (keys %{$hash{'tmpl'}}) {

    $list{'tmpl'}[$hash{'tmpl'}{$one}] = eval $one;
}

for (my $i = 0; $i < @{$list{'tmpl'}}; $i++) {

    printf "# %d\n", $i;

    printf "%s,\n\n", Data::Dumper->Dump([$list{'tmpl'}[$i]]);
}


print << 'PL';

    ]
}

sub cont {

    return [

PL

foreach my $one (keys %{$hash{'cont'}}) {

    $list{'cont'}[$hash{'cont'}{$one}] = eval $one;
}

for (my $i = 0; $i < @{$list{'cont'}}; $i++) {

    printf "# %d\n", $i;

    printf "%s,\n\n", Data::Dumper->Dump([$list{'cont'}[$i]]);
}


print << 'PL';

    ]
}

1;

PL
