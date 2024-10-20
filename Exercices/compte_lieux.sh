#!/bin/bash
YEAR=$1
MONTH=$2
TOP_N_LOCATIONS=$3

ANN_FOLDER="/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04/ann"

for YEAR_FOLDER in $ANN_FOLDER/*
do
    YEAR_FOLDER_NAME=$(basename "$YEAR_FOLDER")
    if [ "$YEAR" == "$YEAR_FOLDER_NAME" ] || [ "$YEAR" == "*" ]
    then
        for MONTH_FOLDER in $YEAR_FOLDER/*
        do
            MONTH_FOLDER_NAME=$(basename "$MONTH_FOLDER")
            if [ "$MONTH" == "$MONTH_FOLDER_NAME" ] || [ "$MONTH" == "*" ]
            then
                ANN_FILES="$MONTH_FOLDER/*.ann"
                LOCATION_RANKINGS=$(cat $ANN_FILES | grep "Location" | cut -f 3 | sort | uniq -c | sort | tail -n "$TOP_N_LOCATIONS")
                echo "$LOCATION_RANKINGS"
            fi
        done
    fi
done
