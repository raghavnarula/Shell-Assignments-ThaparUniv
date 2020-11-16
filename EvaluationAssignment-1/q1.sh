# # !bin/bash
# creating a txt file named file.txt
cat <<EOF >"Rolllist.txt"
101917153
101917152
101917150
EOF

#​ 'Accept your Roll Number as CL Arg'
rollnumber=$1;
len={#rollnumber};
#​ match the arg with RollList.txt content
count=$(grep -wc $rollnumber Rolllist.txt);
#​ conditionals
#​ ​ $count​ has number of matches
if [ "$count" -gt 0 ]
then
echo $rollnumber | rev;
else
echo "Roll Number is not found in File";
fi

