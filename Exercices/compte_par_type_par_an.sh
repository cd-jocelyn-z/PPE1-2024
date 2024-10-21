#!/bin/bash
ENTITY_TYPE=$1
if [ $# -ne 1 ]; then
    echo "Ce programme demande un argument: un type d'entité (ex: Location, Person, etc.)."
    exit 1
fi

ANN_FOLDER="/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04/ann"

counter=0

for YEAR_FOLDER in $ANN_FOLDER/*
do
    ENTITY_COUNT=$(YEAR_FOLDER="$YEAR_FOLDER" ./compte_par_type.sh "$ENTITY_TYPE")

    YEAR=$(basename "$YEAR_FOLDER")
    echo -e "Annotations en $YEAR :\n$ENTITY_COUNT"

    counter=$((counter + 1))
    if [ $counter -ge 3 ]
    then
        break
    fi
done
