ElixirFM (C) Otakar Smrz 2016, Viktor Bielicky 2016, Tim Buckwalter 2002
             GNU General Public License http://www.gnu.org/licenses/


http://github.com/otakar-smrz/elixir-fm/
http://elixir-fm.sf.net/

http://ufal.mff.cuni.cz/tred/
http://ufal.mff.cuni.cz/padt/online/


Included in this package are the XML source files of the ElixirFM Lexicon.

These are the files with the *.elixir.xml extension that you can open and edit
in TrEd, the Perl-based graphical annotation environment maintained by Charles
University in Prague. This package also contains the *.merged.xml files, the
contents of which are explained in the text below.

The elixir-merge.pl script implements a XML filter to merge the original roots
and templates of the ElixirFM lexicon together, in order to get the actual word
forms of the lexicon. This merged format is likely more suitable for purposes
other than editing in TrEd, in particular for independent data processing.

 perl -w elixir-merge.pl < sunny-complex.elixir.xml > sunny-complex.merged.xml

This would expand items in the *.elixir.xml file into the ArabTeX notation, the
Arabic script, and the phonetic transcription, separated by a tab character. For
instance, the original

      <Nest>
        <root>r ' y</root>
        ...
          <Entry>
            <morphs>FuCL |&lt; aT</morphs>
            <entity>
              <Noun>
                <plural>FuCY</plural>
              </Noun>
            </entity>
            <reflex>
              <LM>vision</LM>
              <LM>sight</LM>
              <LM>view</LM>
              <LM>opinion</LM>
              <LM>viewing</LM>
            </reflex>
          </Entry>

would become

      <Nest>
        <root>r ' y	ر أ ي	r ʾ y</root>
        ...
          <Entry>
            <morphs>FuCL |&lt; aT	ru'yaT	رُؤيَة	ruʾyat</morphs>
            <entity>
              <Noun>
                <plural>FuCY	ru'Y	رُؤَى	ruʾā</plural>
              </Noun>
            </entity>
            <reflex>
              <LM>vision</LM>
              <LM>sight</LM>
              <LM>view</LM>
              <LM>opinion</LM>
              <LM>viewing</LM>
            </reflex>
          </Entry>

You can modify the elixir-merge.pl script, esp. the lines where the variable
$data is constructed, to fit your particular needs.

To run the script, you need the ElixirFM, Encode::Arabic, and XML::Twig modules.
You can get them from http://sourceforge.net/ and http://search.cpan.org/.

Please be aware that this work is licensed under the GNU General Public License.
