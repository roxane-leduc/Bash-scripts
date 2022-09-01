#!/bin/bash

echo Nombre de fichiers dans $HOME
# s affiche seul!!!
find $HOME -type f | wc -l

echo Nombre de repertoires dans $HOME
find $HOME -type d | wc -l

echo Nombre de fichiers vides
find $HOME -type f -empty | wc -l

echo Espace utilise par $HOME
du -sh $HOME
