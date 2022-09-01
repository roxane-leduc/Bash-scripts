#!/bin/bash

Fichier=(un deux trois quatre cinq six sept huit neuf dix);
ecriture=(premier deuxieme troisieme quatriemem cinquieme sixieme septieme huitieme neuvieme dixieme);

if ! test -d Rep1; then
	mkdir $HOME/Semestre6/SystReseaux/TD3/Rep1;
fi

for i in `seq 0 9`
do
	#fichier se crée seul!!
	echo "Le ${ecriture[i]} fichier" > /home/rleduc/Semestre6/SystReseaux/TD3/Rep1/${Fichier[i]};
done

