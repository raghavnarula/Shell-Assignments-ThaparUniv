# !/bin/bash

echo "Enter the first value:"
read num1
echo "Enter the second value:"
read num2

if [ $num1 -gt $num2 ]
    then
        echo "$num1 is greater then $num2"
elif [ $num1 -eq $num2 ]
    then 
        echo "Both the numbers are equal"
else
    echo "$num1 is less then $num2"
fi

