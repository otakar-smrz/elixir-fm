use Module::Build;

use strict;
use warnings;

my $build = Module::Build->new(
    module_name         => 'ElixirFM',
    license             => 'gpl',
    dist_author         => 'Otakar Smrz <otakar-smrz users.sf.net>',
    dist_version_from   => 'lib/ElixirFM.pm',
    requires            => {
                               'perl'           => 5.008,
                               'Encode::Arabic' => 0,
                           },
    configure_requires  => {
                               'Module::Build' => 0.38,
                           },
    build_requires =>      {
                               'Encode::Arabic' => 0,
                               'Test::More'     => 0,
                           },
    add_to_cleanup      => [ 'ElixirFM-*' ],
);

$build->create_build_script();
