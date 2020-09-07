#!/bin/bash

array=( 1 2 3 )

echo "First element is : ${array[0]}"
echo "Second element is : ${array[1]}"
echo "Third element is : ${array[2]}"

echo "All the elements are : ${array[@]}"

for i in "${array[*]}"
do 
echo $i
done
