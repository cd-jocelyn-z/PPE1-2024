#!/usr/bin/env bash

if [[ $# -ne 1 ]]
then
    echo "Il manque exactement un argument"
    exit 1
fi

fichier_urls=$1
exec > "../tableaux/tableau-fr.html"

echo "<!DOCTYPE html>
<html>
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
    <title>Mini-projet tableau</title>
    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css\">
</head>
<body>
    <div class=\"table-container\">
      <table class=\"table is-bordered is-hoverable is-striped is-fullwidth\">
         <tr>
            <th>Numero</th>
            <th>URL</th>
            <th>Code HTTP</th>
            <th>Encodage</th>
            <th>Nb de mots</th>
         </tr>"

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
        encodage=$(echo "$stdout_a" | grep "^content-type" | cut -d'=' -f2 | tr -d '\r\n')
        encodage=${encodage:-""}
        nb_mots=$(echo "$stdout_b" | wc -w | tr -d '[:space:]')

        echo "                <tr>
                    <td>$count</td>
                    <td>$line</td>
                    <td>$code_http</td>
                    <td>$encodage</td>
                    <td>$nb_mots</td>
                </tr>"
    else
        echo "                 <tr>
                    <td>$count</td>
                    <td>$line</td>
                    <td>$code_http</td>
                    <td></td>
                    <td>0</td>
                </tr>"
    fi
done <"$fichier_urls"

echo "    </table>
   </div>
</body>
</html>"