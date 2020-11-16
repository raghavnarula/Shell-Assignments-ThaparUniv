#​ !/bin/bash
#​ Menu Driven Program
echo "Select the day of week";
echo "1. Monday";
echo "2. Tuesday";
echo "3. Wednesday";
echo "4. Thursday";
echo "5. Friday";
echo "6. Saturday";
echo "7. Sunday";
read -p "Enter a Menu Number : " choice;
if [ $choice -eq 1 ]
then
echo "PC Class Scheduled on Monday 8:00AM";
elif [ $choice -eq 2 ]
then
echo "PC Class Scheduled on Tuesday 9:40AM";
elif [ $choice -eq 3 ]
then
echo "PC Class Scheduled on Wednesday 10:30AM";
elif [ $choice -eq 4 ]
then
echo "PC Class Scheduled on Thursday 9:40AM";
elif [ $choice -eq 5 ]
then
echo "PC Class Scheduled on Friday 11:10AM";
elif [ $choice -eq 6 ]
then
echo "PC Class Scheduled on Saturday 9:40AM";
elif [ $choice -eq 7 ]
then
echo "PC Class can't be scheduled on Sunday!!";
else
echo "Please select Menu number from 1 to 7 only";
fi
