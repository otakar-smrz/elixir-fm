#/bin/bash

for XML in $@ 
do
    curl -X POST http://api.nigelsmall.com/xml-geoff -d @$XML > ${XML%.xml}.geoff
done

# http://api.nigelsmall.com/xml-geoff
