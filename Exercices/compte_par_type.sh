#!/bin/bash
ENTITY_TYPE=$1

ENTITY_COUNT=$(cat $YEAR_FOLDER/*/*.ann | grep "$ENTITY_TYPE" | wc -l)
echo "$ENTITY_COUNT"
