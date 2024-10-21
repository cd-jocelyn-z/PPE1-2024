#!/bin/bash
ENTITY_TYPE=$1
if [ $# -ne 1 ]
then
    echo "Ce programme demande un argument: un type d'entité (ex: Location, Person, Organization etc.)."
    exit 1
fi

ENTITY_COUNT=$(cat $YEAR_FOLDER/*/*.ann | grep "$ENTITY_TYPE" | wc -l)
echo "$ENTITY_COUNT"
