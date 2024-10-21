#!/bin/bash
YEAR=$1
MONTH=$2
TOP_N_LOCATIONS=$3

ANN_FOLDER="/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04/ann"

if [ $# -ne 3 ]
then
    echo "Ce programme demande 3 arguments <YEAR> <MONTH> <TOP_N_LOCATIONS>"
    echo "Choix pour <YEAR: 2016, 2017, 2018 or \"*\">"
    echo "Choix pour <MONTH: 01, 02, 03, ... 12 ou \"*\">"
    echo "Choix pour <TOP N Locations: 1, 2, 3,...10, ... 15, etc. >"
    exit 1
fi

if ! [[ "$YEAR" =~ ^(2016|2017|2018)$|^\*$ ]]
then
    echo "Erreur: Choix pour an devrait être: 2016, 2017, 2018, ou '*' entouré de guillemets (ex: \"*\")."
    exit 1
fi

if ! [[ "$MONTH" =~ ^(0[1-9]|1[0-2])$|^\*$ ]]
then
    echo "Erreur: Choix pour MONTH doit être un mois entre 01 et 12 ou '*' entouré de guillemets (ex: \"*\")."
    exit 1
fi

if ! [[ "$TOP_N_LOCATIONS" =~ ^[0-9]+$ ]]
then
    echo "Erreur: Le nombre de localisations (TOP_N_LOCATIONS) doit être un entier positif."
    exit 1
fi



if [ "$YEAR" != "*" ]
then
    if [ "$MONTH" != "*" ]
    then
        ANN_FILES="$ANN_FOLDER/$YEAR/$MONTH/*.ann"
    else
        ANN_FILES="$ANN_FOLDER/$YEAR/*/*.ann"
    fi
else
    if [ "$MONTH" != "*" ]
    then
        ANN_FILES="$ANN_FOLDER/*/$MONTH/*.ann"
    else
        ANN_FILES="$ANN_FOLDER/*/*/*.ann"
    fi
fi

LOCATION_RANKINGS=$(cat $ANN_FILES | grep "Location" | cut -f 3 | sort | uniq -c | sort | tail -n "$TOP_N_LOCATIONS")
echo "$LOCATION_RANKINGS"
