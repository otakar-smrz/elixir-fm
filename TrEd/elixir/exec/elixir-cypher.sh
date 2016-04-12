#/bin/bash

for XML in $@ 
do
    curl -X POST http://api.nigelsmall.com/xml-cypher -d @$XML > ${XML%.xml}.cypher
done

# http://api.nigelsmall.com/xml-cypher
