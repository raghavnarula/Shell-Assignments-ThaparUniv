#​ !/bin/bash
echo "Calculating A x B, A and B are Matrix";
read -p "Enter Order of A (?) x (?), (space-sep) : " m n;
#​ input matrix A
echo "Enter elements of A Row-Major serial-wise";
i=0;
while [[ $i -lt `expr $m \* $n` ]]
do
#take input in array, implicit
read A[i];
((i += 1));
done
read -p "Enter Order of B ($n) x (?) : " p;
#​ input matrix B
echo "Enter elements of B Row-Major serial-wise";
i=0;
while [ $i -lt `expr $n \* $p` ]
do
#take input in array, implicit
read B[i];
((i += 1));
done
#​ [i][j] = [`expr cols*i + j`]
j=0; k=0; l=0; sum=0;
while [[ $j -lt $m ]]
do
k=0;
while [[ $k -lt $p ]]
do
l=0;
sum=0;
while [[ $l -lt $n ]]
do
((sum += ${A[j * n + l]} * ${B[p * l + k]}));
((l += 1));
done
((k += 1));
C[`expr $n \* $j + $k`]=$sum;
done
((j += 1));
done
#​ print​ well formatted matrix
echo "C ($m) x ($p)";
i=0; j=0;
while [[ $i -lt $m ]]
do  
j=0;
while [[ $j -lt $p ]]
do
printf "%d\t" ${C[$i * $p + $j + 1]};
((j += 1));
done
((i += 1));
echo;
done;

