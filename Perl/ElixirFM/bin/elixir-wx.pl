#!/usr/bin/perl

use ElixirFM::Wx;

our $wx = new ElixirFM::Wx;

$wx->MainLoop();


__END__


#!/usr/bin/perl -w

use strict;
use warnings;
use lib 'lib';
use threads;

use Wx;
use Wx::App::Mastermind;

my $app = Wx::SimpleApp->new;
Wx::App::Mastermind->new;
$app->MainLoop;


__END__


#!/usr/bin/perl -w

our $VERSION = '1.24';
our $ABOUT_VERSION = '2.00-' . $VERSION;
our $AD_HOC_FOREGROUND = 0;

$PerlWrapper::Version = $PerlWrapper::Version;

BEGIN {
    eval "use PAR 'Contents/Resources/Perl-Libraries/VLF.par'"
      if $PerlWrapper::Version;
    die $@ if $@;
}

use strict;
use FindBin;
BEGIN {
    unless( $^O eq 'MSWin32' && $] == 5.008 ) {
        require  Wx::Perl::SplashFast;
        Wx::Perl::SplashFast->new
            ( $PerlWrapper::Version ?
                  'Contents/Resources/files/images/logo240.jpg' :
                  "${FindBin::RealBin}/../files/images/logo240.jpg" );
    }
}

use Wx;
eval "Wx::wxFULL_REPAINT_ON_RESIZE(); 1;"
  || eval "sub Wx::wxFULL_REPAINT_ON_RESIZE() { 0 };";

use VLF::App;

package main;

my $app = VLF::App->new;
$app->MainLoop;

1;
