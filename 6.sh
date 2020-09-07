#!/bin/bash
# echo "reading from $1"
SUM=0
for num in $(cat $1)
    do
        ((SUM+=num))
done
echo $SUM