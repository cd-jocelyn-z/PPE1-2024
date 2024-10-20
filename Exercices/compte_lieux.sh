#!/bin/bash
YEAR=$1
MONTH=$2
TOP_N_LOCATIONS=$3

ANN_FOLDER="/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04/ann"

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
