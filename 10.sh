#!/bin/bash

echo "enter balance"
read balance
if [ $balance -gt 0 ]
    then 
        echo "Balance is grater then 0"
elif [ $balance -eq 0 ]
    then 
        echo "Balance is equal to 0"
else
    echo "Balance is less than 0"
fi