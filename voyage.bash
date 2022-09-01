#! /bin/bash

#~ QUESTION 1
Type=(Camping Hotel Airbnb);
for I in ${Type[*]}; do
	grep ${I} infos.csv > ${I}.csv;
done
	
#~ QUESTION 2
for (( i=0 ; i<${#Type[@]} ; i++ )); do
	echo "$((i+1))) ${Type[${i}]}";
done
read -p 'Choisir un hebergement : ' choix;
Hebergement=${Type[$((choix-1))]};

#~ QUESTION 3
echo "";
Destinations=($(sed '1,2d' infos.csv | cut --delimiter=, --field=2 | sort | uniq));
for (( i=0 ; i<${#Destinations[@]} ; i++ )); do
	echo "$((i+1))) ${Destinations[${i}]}";
done
read -p 'Choisir une localisation : ' choix;
Localisation=${Destinations[$((choix-1))]};

#~ QUESTION 4
echo "";
read -p 'Nombre de personnes qui partent : ' NPersonnes;

#~ QUESTION 5
echo "";
echo "Prix de l'hebergement pour ${NPersonnes} personnes en ${Hebergement} sur ${Localisation}";
echo "";

grep ${Localisation} ${Hebergement}.csv | while read -r ligne; do
	Tableau=($(echo ${ligne} | tr ',' ' '));
	prixParChambre=${Tableau[2]};
	nPersonnesParChambre=${Tableau[3]};
	prixParPersonne=$(( ${prixParChambre} / ${nPersonnesParChambre} ));

	nChambres=$(( ${NPersonnes} / ${nPersonnesParChambre} ));
	if [ 0 -lt $(( ${NPersonnes} % ${nPersonnesParChambre} )) ]; then
		nChambres=$(( ${nChambres} + 1 ));
	fi
	prixTotal=$(( ${nChambres} * ${prixParChambre} ));
	echo "** ${prixTotal} pour ${nChambres} chambre(s) ou emplacement(s) a ${Localisation}";
done
