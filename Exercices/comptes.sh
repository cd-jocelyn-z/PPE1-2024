#!/bin/bash

ANN_FOLDER=$1
if [ $# -ne 1 ]
then
    echo "Ce programme demande un argument: un chemin vers le dossier ann"
    exit 1
fi

#ANN_FOLDER="/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04/ann"

if [ ! -d $ANN_FOLDER ]
then
     echo "Erreur: $ANN_FOLDER n'est pas un dossier valide."
     exit 1
fi

for YEAR_FOLDER in $ANN_FOLDER/*
do
    if [ -d $ANN_FOLDER ]
    then
        LOCATION_COUNT=$(cat $YEAR_FOLDER/*/*.ann | grep "Location" | wc -l)

        YEAR=$(basename "$YEAR_FOLDER")
        echo -e "Annotations en $YEAR :\n$LOCATION_COUNT"
    fi
done
