#!/usr/bin/env bash

if [[ $# -eq 0 ]]
then
    echo "il manque un agrument"
    exit 1
fi

echo "<html>"
echo "<head>"
echo "    <meta charset=\"UTF-8\">"
echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
echo "    <title>Mini-projet tableau</title>"
echo "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css\">"
echo "</head>"
echo "<body>"
echo "    <div class=\"table-container\">"
echo "      <table class=\"table is-bordered is-hoverable is-striped is-fullwidth\">"
echo "        <tr>"
echo "            <th>Numero</th>"
echo "            <th>URL</th>"
echo "            <th>Code HTTP</th>"
echo "            <th>Encodage</th>"
echo "            <th>Nb de mots</th>"
echo "        </tr>"

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

        echo "        <tr>"
        echo "            <td>$count</td>"
        echo "            <td>$line</td>"
        echo "            <td>$code_http</td>"
        echo "            <td>$encodage</td>"
        echo "            <td>$nb_mots</td>"
        echo "        </tr>"
    else
        echo "        <tr>"
        echo "            <td>$count</td>"
        echo "            <td>$line</td>"
        echo "            <td>$code_http</td>"
        echo "            <td>N/A</td>"
        echo "            <td>0</td>"
        echo "        </tr>"
    fi
done <"$1"

echo "    </table>"
echo "   </div>"
echo "</body>"
echo "</html>"