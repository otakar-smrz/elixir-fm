#/bin/bash

DIR=`dirname $0`

for PML in $@
do
    perl -w $DIR/elixir-purge.pl < $PML > ${PML%.elixir.pml}.purged.pml
    mv $PML ${PML%.elixir.pml}.edited.pml
    mv ${PML%.elixir.pml}.purged.pml $PML
    perl -w $DIR/elixir-prune.pl < $PML > ${PML%.pml}.xml
    perl -w $DIR/elixir-merge.pl < ${PML%.pml}.xml > ${PML%.elixir.pml}.merged.xml
done

# btred -I $DIR/elixir-export.ntred $@
