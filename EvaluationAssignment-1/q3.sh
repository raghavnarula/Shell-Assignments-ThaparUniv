#​ !/bin/bash
read -p "Enter name of File/Dir : " name;
dircount=$(ls -l | grep $name | grep -c "^d");
filecount=$(ls -l | grep $name | grep -c "^-");
if [[ $dircount -gt 0 ]] || [[ $filecount -gt 0 ]]
then
if [ $dircount -gt 0 ]
then
echo "$name is a Directory";
else
echo "$name is a File";
fi
else
echo "Select From below";
echo "1. Create a directory with name \"$name\"";
echo "2. Create a file with with name \"$name\"";
echo "3. Do Nothing. Exit.";

read -p "Enter your choice : " choice;
if [ $choice -eq 1 ]
then
echo "Creating Directory...";
`mkdir $name`;
elif [ $choice -eq 2 ]
then
echo "Creating File...";
`touch $name`;
else
#Exit or Do Noting
echo "Exiting";
fi
fi