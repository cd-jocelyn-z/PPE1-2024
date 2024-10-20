#!/bin/bash
ANN_FOLDER="/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04/ann"

for YEAR_FOLDER in $ANN_FOLDER/*
do
    LOCATION_COUNT=$(cat $YEAR_FOLDER/*/*.ann | grep "Location" | wc -l)

    YEAR=$(basename "$YEAR_FOLDER")
    echo -e "Annotations en $YEAR :\n$LOCATION_COUNT"
done
