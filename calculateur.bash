#! /bin/bash

function calcul1() {
	# PAR SUBSTITUTION DU ; PAR L'OPERATEUR
	local operandes=${1};
	local operateur=${2};
	local monExpr=${operandes/;/${operateur}};
	expr $(($monExpr));
}

function calcul2() {
	# PAR EXTRACTION DES OPERANDES
	local operandes=${1};
	local operateur=${2};
	local op1=${operandes%;*};
	local op2=${operandes#*;};
	echo $(( ${op1} ${operateur} ${op2}));
}

r=$(calcul1 "3;5" "*");
echo ${r};

r=$(calcul2 "3;5" "*");
echo ${r};

echo -n "Choix de l'operateur :";
read operateur;
cat data.txt | while read ligne; do
	r=$(calcul1 ${ligne} "${operateur}");
	echo "${operateur} applique a ${ligne} => ${r}" | tee --append calc.txt;
done
