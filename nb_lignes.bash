#! /bin/bash

echo -n "Nom du fichier :";
read f;

if [ -s ${f} ]; then      #fichier existe et non vide
	while [ 1 -eq 1 ]; do
		nl=$(wc -l < ${f});  #compte nb lignes (< pour avoir juste nl)
		echo "${f}: ${nl}";
		if [ ${nl} -ge 100 ]; then
			exit 0;
		fi
		read -t 2 var_bidon; # J'ATTENDS 2 SEC AVANT D'AFFECTER LA CHAINE VIDE A var_bidon
	done
else
	echo "Entrez un nom de fichier non vide !";
	exit 1; # un script sans erreur se termine toujours par 0 ; si <>0 : erreur
fi

