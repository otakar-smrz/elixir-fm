#! perl -w

use File::Basename;

use strict;


foreach my $file (@ARGV) {

    my ($name, $path, undef) = File::Basename::fileparse($file, '.txt.bw.mada', '.bw.mada', '.mada');

    open XML, '>', $path . '/' . $name . '.aqmar.morpho.pml';

    select XML;

    print << "";
<?xml version="1.0" encoding="UTF-8"?>
<AQMAR-Morpho xmlns="http://ufal.mff.cuni.cz/pdt/pml/">
  <head>
    <schema href="aqmar.morpho.schema.xml" />
  </head>
  <meta>
    <revision>\$Revision: \$</revision>
    <date>\$Date: \$</date>
  </meta>
  <data>


    open TXT, '<', $file;

    local $/ = "\n" . << "";
--------------
SENTENCE BREAK
--------------


    my $i = 0;

    while (my $data = <TXT>) {

    chomp $data;

    $data =~ s/\&/\&amp\;/g;
    $data =~ s/\</\&lt\;/g;
  # $data =~ s/\>/\&gt\;/g;

    $i++;

    print << "";
    <Unit id="m-p$i">
      <form>TEXT</form>
      <data>$data</data>
    </Unit>

    }

    close TXT;

    print << "";
  </data>
</AQMAR-Morpho>

    close XML;

    system 'btred -qTe "AQMAR::Morpho::restore_words()" ' . $path . '/' . $name . '.aqmar.morpho.pml';

    system 'btred -qe "AQMAR::Morpho::create_level_syntax()" ' . $path . '/' . $name . '.aqmar.morpho.pml';

    unlink $path . '/' . $name . '.aqmar.morpho.pml~';
}
