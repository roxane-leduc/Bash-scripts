#! /bin/ksh

let res=0;
set -A tab;

for i in `seq 1 5`
do
	for j in `seq 1 20`
	do
		((res=res+1));
		tab[$i,$j]=$res;
		echo -n ${tab[$i,$j]} " ";
	done
	echo  
done
