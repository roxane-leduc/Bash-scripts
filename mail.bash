#!/bin/bash

declare -A tab 

i=0
while read -r ligne; do
     set -- "$ligne"
     # un set -- suivi de noms de variables permet d'unsetter ces variables
     # si ligne a pour contenu "lalard x 160429 2001 Alard"
     # set -- lalard x 160429 2001 Alard
     # va provoquer un 
     # unset lalard
     # unset x
     Ligne=(${ligne}) 
     
     tab[$i,0]=${Ligne[0]} #login
     tab[$i,1]=${Ligne[5]} #prenom
     tab[$i,2]=${Ligne[4]} #nom

     # echo "${tab[$i,1],}.${tab[$i,2],}@insa-rouen.fr" >> ListeDeMails.txt
     echo "${tab[$i,1],}.${tab[$i,2],}@insa-rouen.fr"

     i=$((i+1))

done < TabUsers

