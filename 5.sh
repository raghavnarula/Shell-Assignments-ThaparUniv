# !/bin/bash

for i in 1 2 3 4 5 6
do
echo "$i"
done
echo "---------***----------"
a=1
while [ $a -lt 7 ]
do 
echo "$a"
a=`expr $a + 1`
done
echo "---------***----------"
a=1
until [ ! $a -lt 7 ]
do
   echo $a
   a=`expr $a + 1`
done