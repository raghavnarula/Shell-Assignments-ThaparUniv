echo "Enter the assignment marks"
read assignment
echo "Enter the quiz marks"
read quiz
if [ $assignment -ge 101 -o $quiz -ge 101 ]
    then
        echo "please check inputs"
            exit
else
    echo $(( assignment+quiz ))
fi