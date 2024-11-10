#!/usr/bin/env bash

if [[ $# -eq 0 ]]
then
    echo "il manque un agrument"
    exit 1
fi

count=0
while read -r line
do
    ((count++))

    if [[ ! "$line" =~ ^https?:// ]]
    then
        line="https://$line"
    fi

    stdout_a=$(curl -s -I -L "$line")
    stdout_b=$(lynx -dump -nolist "$line")
    code_http=$(echo "$stdout_a" | head -n 1 | cut -d' ' -f2)

    if [ "$code_http" = "200" ]
    then
        encodage=$(echo "$stdout_a" | grep "^content-type" | cut -d'=' -f2)
        encodage=${encodage:-"N/A"}
        nb_mots=$(echo "$stdout_b" | wc -w | tr -d '[:space:]')

        cleaned_output=$(echo -e "$count\t$line\t$code_http\t$encodage\t$nb_mots" | tr -d '\r')
        echo "$cleaned_output"
    else
        echo -e "$count\t$line\t$code_http\tN/A\t0"
    fi
done <"$1";

