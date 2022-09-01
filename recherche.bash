#! /bin/bash

if ! test -d Rep1; then
        mkdir $HOME/Semestre6/SystReseaux/TD3/Rep1;
fi

for i in `seq 0 11`
do
	cd /home/rleduc/Semestre6/SystReseaux/TD4/Rep1/;
	touch un deux trois quatre Sept Dix dix TREIZE Trent_sept quatorze Dix_sept Dix_huit;
done

echo ua: ;
#ls | grep ua ;
find *ua*;

echo ze en fin de nom: ;
#ls *ze;
find -i *ze;

echo seulement dix ou Dix ;
#ls | grep ix$ | grep "^[dD]";
ls | grep "[Dd]ix$";

echo sept dans le nom ;
ls | grep -i sept;

#for nom in *
#do
#	case $nom in
#		*[ua]*) echo ${nom};;
#		*) echo error;;
#	esac
#done

