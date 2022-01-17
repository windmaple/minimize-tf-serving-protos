#!/bin/bash
touch tmp
rm -rf tmp
mkdir tmp

for i in `find ./app/src/main/proto/ -name *.proto`; do
   echo $i
   mv $i tmp/
   gradle clean
   gradle build
   if [ $? -eq 0 ]; then
     echo "$i can be removed"
     rm -rf tmp/*.proto
   else
     mv tmp/`basename $i` $i
     echo "$i cannot be removed"
   fi
done

find . -empty -type d -delete
