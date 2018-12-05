#!/bin/bash
#In a 'for' loop (really, a type of disguised assignment):
# no space after assignment operation

# total number of docs in TREC-8 and TREC-7 collection
count=528155

echo "$count"
echo -n "Values of \"a\" in the loop are: "

declare -A newmap
for (( i=1; i<="$count"; i++ ))
do
  docId="$(/export/home/u16/nahid/tools/indri-5.13/dumpindex/dumpindex /export/home/u16/nahid/data/IndriIndex/TREC8 dn $i)"
  #newmap["$docId"]="$i"
  #echo "${newmap[${docId}]}"
  echo "$i","$docId"
  /export/home/u16/nahid/tools/indri-5.13/dumpindex/dumpindex /export/home/u16/nahid/data/IndriIndex/TREC8 dv "$i" > "/export/home/u16/nahid/data/vectorizedTREC/TREC8/${docId}.txt"
done

exit 0


