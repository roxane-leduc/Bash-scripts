#!/bin/bash

read -p "Saisir un nom : " LeNom
Personne=$(grep -w $LeNom DN.txt)
echo $Personne
# on récupère la date de naissance
Date=${Personne#*:}
# on cherche s'il y a d'autres personnes avec la même date
if [ $(grep -c "$Date" DN.txt) -gt 1 ]
then
	echo "Ils sont nés à la même date : "
	grep -w "$Date" DN.txt
fi
