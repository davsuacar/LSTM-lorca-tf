#!/bin/bash
# Use like this:
# ./files_wc.sh Lorca*

FILES="$@"
for file in $FILES
do
  poems=$(grep "\-\-\-\-\-\-" $file | wc -l)
  poems=$(($poems-0))
  words=$(wc -wml $file)
  echo $poems $words
done
