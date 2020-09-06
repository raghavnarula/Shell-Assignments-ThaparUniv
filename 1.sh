
clear
i="y"
echo "enter name of phone file"
read db
while [ $i = "y" ]
do
clear
echo " 1. view the phone book "
echo " 2. view specific contact "
echo " 3. add new contact "
echo " 4. Delete contact "
echo " 5.exit "
echo " enter your choice Press 1 to 5 "
read ch
case $ch in
1) echo "Phone book directory "
cat $db |sort
;;
2) echo " Enter person name to search "
read name
grep -i " $name " $db
;;
3) echo " Adding new contact \n Enter name "
read name
echo " Enter contact number "
read no
echo " $name $no " >> $db
;;
4) echo " Enter the name of contact to delete "
read name
grep -v $name $db > temp
cat temp > $db
echo " Contact deleted "
;;
5) exit
;;
*) echo " Invalid choice "
;;
esac
echo " do you wish to continue press y "
read i
if [ $i != "y" ]
then
exit
fi
done