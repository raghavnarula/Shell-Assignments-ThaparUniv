#!/bin/bash

echo "enter password"
read pswd
len="${#pswd}"

if [ $len -ge 8 ]
    then 
        echo "$pswd" | grep -q [0-9]
        if [ $? -eq 0 ]
            then 
                echo "$pswd" | grep -q [A-Z]
                if [ $? -eq 0 ]
                    then 
                        echo "strong password"
                    else
                        echo " weak password include lowercase char"
                fi
        else
            echo "weak paswd , include numbers in password "
        fi
    else
        echo "password length should be atleast 8 , invalid request"
fi