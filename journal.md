# Journal de bord du projet encadré

## Séance 1 - Les systèmes de fichiers

Pour cette séance, j'ai travaillé sur ma compréhension des systèmes de fichiers, ce qui ont une hiérarchie en forme d'arborescence) et les commandes pour la manipulation des fichiers. 

### Distinction entre la racine et le dossier personnel : 
Le défi pour moi était de bien saisir la différence entre la racine et le dossier personnel (que j'ai vu accompagné avec la description de "racine des répertoires de l'utilisateur"). Le fait de voir "la racine" associé à ces deux concepts a rendu difficile a saisir leur distinction pour moi.

Je vais prendre l'exemple pertinent à notre tâche pour le triage de fichiers dans shell (ce qui m'a permis de comprendre leur distinction)

#### 1. Dossier "racine" `/`

Disons que je suis dans mon dossier personnel et que j'initialise mon shell car je veux naviguer dans l'arborescence de mon dossier personnel en utilisant la commande `cd /chemin` et je peux naviguer d'un dossier à l'autre.

Ensuite, disons que ma machine a un compte utilisateur pour mon frère. Il fait la même tâche dans le shell. On est capable à faire la meme tâche grâce aux fichiers exécutables nécessaires pour ces commandes qui sont accessible à tous utilisateurs depuis la racine !


#### 2. Dossier personnel `/Users/nom_utilisateur/`

Le dossier personnel est la racine des répertoires personnels de chaque utilisateur. Par exemple, dans le mien, j'ai accès aux logiciels que j'ai installés, à mes fichiers, à mes projets, ainsi qu'à mes propres configurations pour mon environnement de travail. De la même manière, un autre utilisateur sur ma machine aura son propre dossier personnel où il pourra faire des configurations en fonction de ses besoins et préférences. 

### Mes points clés :

#### 1. Plusieurs arguments pour une commande :
**Problème :** Il y avait plusieurs triage à effectuer qui consistait des actions répétitives comme la création de dossiers pour organiser des fichiers correspondants. Par exemple
- `mkdir nom_dossier`
- `mkdir nom_dossier`
-  ...

Pour simplifier la tâche, j'ai découvert qu'il était possible de créer plusieurs dossiers en une seule commande en ajoutant plusieurs argument avec le nom de dossier qu'on souhaite créer. Je prends en exemple la création des dossiers correspondants aux mois de l'année : 
`mkdir 01 02 03 04 05 06 07 08 09 10 11 12`

Grâce à l'historique des commandes, je pouvais rapidement réutiliser la même instruction pour créer les mêmes dossiers dans d'autres répertoires. 

#### 2. Utilisation de chemin absolu et relatif :
#### A. Se accéder au dossier de travail à l'aide **du chemin absolu**.
**Problème :** Je trouvais  chronophage de me rendre dans le dossier de travail pour cet exercice en utilisant à plusieurs reprises `cd`, puis `ls` pour lister et vérifier si le bon sous-dossier existait, avant de continuer à naviguer dans l'arborescence jusqu'au bon dossier. Pour m'épargner du temps j'ai utilisé le **chemin absolu**.
  
`/Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/2024-2025\ L7TI005-P\ Programming\ Project/semaine_1`

#### B. Se déplacer des certains fichiers dans un sous-dossier.

**Problème :** J'avais téléchargé des fichiers à trier dans  le dossier courant`semaine_1` au hasard. 

Par exemple, une fois dans mon dossier courant, j'ai utilisé la commande `mkdir` pour créer le dossier `Exercice1`, puis j'ai téléchargé des fichiers avec `wget` . Cependant, dans le fil de ma pensée, je croyais être dans le dossier `Exercice1` , alors que j'étais encore dans le dossier `semaine_1`. 

J'avais initialement l'intention de les déplacer en deux étapes : d'abord les déplacer vers `Exercice1`, puis naviguer vers ce dossier pour ensuite les déplacer vers le sous-dossier `img`. Mais je me suis finalement rappelé de l'utilité de **chemin relatif**. ce qui m'a permis de simplifier la tâche en déplaçant directement (à l'aide de la commande `mv`) une sélection de fichiers vers le sous-dossier `img` du sous-dossier `Exercice1`.
  
` mv *.svg *.png *.jpg *.jpeg *.JPG *.PNG *.gif *GIF Exercice1/img`

**Note :**

J'ai fait l'exercice de triage en 2 tentatives car j'avais supprimé des fichiers et ensuite j'ai eu des clarifications sur l'exercice.

Lors de la deuxième tentative, j'avais des idées plus claires sur ce qui fonctionnait, et j'ai pu prendre du recul pour accomplir la tâche plus efficacement que lors de la première tentaive.
 

## Séance 2 - Git | Système de gestion de versions

J'ai travaillé avec Git durant cette séance. J'ai mis en pratique l'ensemble des commandes Git qu'on nous a fournit, par exemple:  

	- git clone
	- git status
	- git pull
	- git add ou git rm
	- git commit -m ""
	- git push
	- git tag
	- git log

- La syntaxe générale: 

	-	command \<sous-commande> [-options...] [arguments...]
### Gestion de dépôts :
- Le dépôt local (existant sur ma machine) et dépôt distant sur GitHub ainsi que les conflits potentiels.
-  Liaison de la clé SSH publique au Github.
- Initiation de projet dans le dépôt distant.
	- Gestion de la synchronisation entre le dépôt local et le dépôt distant.
	- L'étiquetage pour marquer un commit particulier afin de marquer une chaîne des modifications. Sur GitHub cela se transforme en "release".

### Gestion des fichiers cachés :
J'appris à révéler et modifier les fichiers cachés:
- Le cas où on fait des modifications dans .gitignore à travers un l'éditeur de text comme TextEdit.
	- avec l'aide de `cmd + shift + .` (mac os) !
- Le cas où on fait une modifications  d'un fichier dans le terminal. 
	- avec la commande `nano` suivie de l'argument, ici le fichier caché **.gitignore**, que l'on souhaite modifier.
	
	

### Un défi :
J'avais initialement l'intuition de créer une seconde clé SSH pour séparer mes projets universitaires. Je me suis rendue compte que cela risquait de compliquer le flux de travail pour les futurs projets. J'ai donc décidé de ne pas poursuivre cette idée. 

Cependant cela m'a permis d'apprendre davantage sur la possibilité d'utiliser plusieurs clés SSH pour une machine ou même une seule clé SSH pour plusieurs comptes GitHub - si nécessaire.

## Séance 3: Les Flux d’Entrées/Sorties et les Pipelines pour Gestion de Fichiers

### À l’aide des commandes simples de Bash

#### Mon dossier de travail :
    /Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/03-seance_03

## Ligne de commande pour obtenir nos résultats
#### Cmd1 :
J'utilise la commande `cat` concaténer toutes les contenues de fichiers `.ann` existants dans tous les sous-dossiers à l'intérieur du dossier de travail `03-seance_03`.

À l’aide de wildcard `*` pour parcourir tous les sous-dossiers dans `./ann/2016`/. Pour cette tâche, on ne s'intéresse qu’au premier niveau de profondeur, puisque chaque dossier d'année contient des sous-dossiers pour chaque mois (par ex. `./ann/2016/01`), et chaque dossier de mois ne contient que des fichiers `.ann`



    cat ann/2016/*/*.ann

<span  style="color:green"><strong>Résultat</strong></span> : *stdout* vers l’écran, chaque ligne correspond à une annotation.

#### Cmd1 et Cmd2 communiquant et connectant à l'aide de pipe :
Maintenant, je me demanade ce que je vais faire avec la sortie de *cmd1*? Je veux compter toutes les annotations dans l’année 2016. Cela concerne une autre commande !

Pour se faire il nous faut rediriger le *stdout* de *cmd1* à la commande suivante pour communiquer la sortie à l’entrée un utilise le moyen du caractère *pipe*  `|`

La deuxième commande `wc` (word-count), pour le comptage et avec une précision qu’on s'intéresse à la valeur de nombre de lignes du *stdout* de la *cmd1*, donc l’option `-l`.

    cat ann/2016/*/*.ann | wc -l

<span  style="color:green"><strong>Résultat</strong></span> : *stdout* vers l'écran, le nombre de lignes de *stdout* de *cmd1*.

#### Cmd3 :
Maintenant, je veux compter les annotations par années. Afin d'éviter d’avoir que le comptage brut. Pour se faire, on utilise la commande `echo` pour écrire les chaînes de caractères dans le stdout

**Exemple :**

>        Annotations en 2016 : 
>               1234
> 

#### Lignes de commandes successives :

    echo "Annotations en 2016 :"
    cat ann/2016/*/*.ann | wc -l
   <span  style="color:green"><strong>Résultat</strong></span> : *stdout* vers l'écran, des informations de la *cmd1* et *cmd2*, avec les informations textuelles ajoutées avec *cmd3* `echo`.

Cela respecte le format où la première ligne contient le texte explicatif, et la deuxième ligne affiche le comptage d'annotations.

**Note:** 
Je me suis trompée en comptant les fichiers de .ann existant dans le dossier d'année (en utilisant la commande`ls` au lieu de `cat`) et non le comptage d'annotations.  Je me suis aussi trompé du format de résultats attendu. 
  
## Nos résultats dans un fichier texte

> ### Redirection des sorties stdout et stdin dans un fichier

À partir de là, le *stdout* reste l’écran (comme il l’est par défaut), on veut, ensuite rediriger la sortie *stdin* et *stdout* dans un fichier texte afin de sauvegarder les résultats de nos commandes dans un fichier comptes.txt. Pour se faire, on utilise les doubles chevrons `>>` cela écrit *stdout* dans le fichier que je mets comme argument en ajoutant la sortie à la fin du fichier ce qu’on veut pour réussir cette tâche. (les chevrons simples `>` écrasent le fichier si il existe déjà)

    echo "Annotations en 2016 :" > PPE1-2024/Exercices/comptes.txt
    ls ann/2016/*/*.ann | wc -l >> PPE1-2024/Exercices/comptes.txt

  
Ensuite, je refais ça pour toutes les années, en prenant en compte que j'ai déjà créé un dossier Exercices contenant un fichier texte comptes.txt.



#### Lignes de commandes successives :
    echo "Annotations en 2017 :" >> PPE1-2024/Exercices/comptes.txt
    ls ann/2017/*/*.ann | wc -l >> PPE1-2024/Exercices/comptes.txt

    echo "Annotations en 2018 :" >> PPE1-2024/Exercices/comptes.txt
    ls ann/2018/*/*.ann | wc -l >> PPE1-2024/Exercices/comptes.txt

`>> PPE1-2024/Exercices/comptes.txt` C'est important à préciser car je vais actualiser mon travail dans mon dépôt distant avec ce que j'ai fait dans mon dépôt local. Le dossier PPE1-2024 existe dans mon dossier de travail. 


## **Obtenir les occurrences des annotations liées aux lieux :**
Pour commencer, je sais que cette commande rend toutes les annotations :

    cat ann/2016/*/*.ann 

Pour filtrer afin d'avoir que des lignes qui contient "Location" je le fais à l'aide de la command `grep` qui nous permettra de rechercher le motif que l'on met en argument dans l'ensemble de contenus de fichier (dans notre cas).

    cat ann/2016/*/*.ann | grep "Location"

  <span  style="color:green"><strong>Résultat</strong></span> : stdout vers lécran des commandes cm1 + cmd2 grâce au pipe `|`


Ensuite, pour rediriger le stdout dans un fichier j'utilise les doubles chevrons pour ajouter les sorties des ligne de commande successives à la fin du même fichier
	
	echo "Annotations en 2016 :" >> PPE1-2024/Exercices/locations.txt
	cat ann/2016/*/*.ann | grep "Location" | wc -l >> PPE1-2024/Exercices/locations.txt

	echo "Annotations en 2017 :" >> PPE1-2024/Exercices/locations.txt
	cat ann/2017/*/*.ann | grep "Location" | wc -l >> PPE1-2024/Exercices/locations.txt

	echo "Annotations en 2018 :" >> PPE1-2024/Exercices/locations.txt
	cat ann/2018/*/*.ann | grep "Location" | wc -l >> PPE1-2024/Exercices/locations.txt

#### Les commandes
D’ici, je me suis renseignée sur les limitations et options des commandes cut, sort, tail et uniq, car j'avais que des notions sur leur utilisation mais non de leurs spécifités, ce que j'ai remarqué sera essentiel pour réussir cette tâche.

**cmd cut**
- Pour la commande `cut`, je savais que ce qui m'intéressait était l’option `-f`, car les fichiers d’annotations ont des tabulations pour délimiter et cette option a la tabulation par défaut en tant que délimiteur il me faudra juste préciser quel champ je voudrais filtrer.

**cmd sort** 
- Pour la commande `sort`, elle trie nos résultats soit par ordre alphabétique (si les caractères sont en ascii) ou par ordre numérique.

**cmd tail**
- Puis la commande `tail`, elle nous laisse choisir les dernières lignes d’une sortie qu’on souhaite à l'aide de l'option -n, alors `tail -n 15` pour avoir les 15 dernières lignes d’une sortie.

**cmd uniq**
- Après, j’apprends que la commande `uniq` ne fonctionne pas correctement si on ne trie pas nos informations. Alors il est primordial qu’on fasse cela. J’apprends que l'option `-c` est le plus pertinent pour notre cas car on veut le nombre d'occurrences d’un lieu qui précède le nom du lieu (dans notre cas c'est lieu car on vas faire cut au préalable pour obtenir les noms des lieux).

  
 Avec toutes ces informations, j'ai créé la ligne de commande suivante pour réussir cette tâche :
#### Lignes de commandes successives :
    cat ann/2016/*/*.ann | grep "Location"| cut -f 3 | sort | uniq -c | sort | tail -n 15 > PPE1-2024/Exercices/classement_2016.txt
    cat ann/2017/*/*.ann | grep "Location"| cut -f 3 | sort | uniq -c | sort | tail -n 15 > PPE1-2024/Exercices/classement_2017.txt
    cat ann/2018/*/*.ann | grep "Location"| cut -f 3 | sort | uniq -c | sort | tail -n 15 > PPE1-2024/Exercices/classement_2018.txt

**Note :**
- J'ai trié deux fois, une première fois `uniq -c` puisqu'il fallait mettre les localisation par ordre alphabétique pour que la commande unique puisse fonctionner correctement, puis une seconde fois pour mettre en ordre numérique le nombre d'occurrences de chaque lieu.
- J'ai mis les stdout dans un fichier correspondant dans la même ligne de commande.

### **Obtenir les occurrences des annotations liées aux lieux et au mois de février :**

    cat ann/*/02/*.ann | grep "Location" | cut -f 3 | sort | uniq -c | sort | tail -n 15 > PPE1-2024/Exercices/classement_fevrier.txt

- Pour se faire j'ai modifié un peu l'argument de la première commande 
	- J'ai remplacé l'année avec `/*` pour indiquer dans toutes années confondues.
	- Afin d'avoir le mois de mon choix, j'ai remplacé  `/*` avec `02`  pour le préciser au février, car on a déjà les annotations triés par an et pour chaque mois de l'année.
	- Pour le *stdout* qui contenait le résultat, je l'ai redirigé vers un nouveau fichier dans mon dépôt local.

# Séance 3
## exercices git correction d’erreurs
Cette ligne doit rester après correction.

    
    




3lorem upsim
4lorem ipsum
mettre cette ligne de côté


## Journal pour l'exercice git 

### Note:

J'ai décidé de revoir mon travail car je voulais vérifier ce que je faisais. Je me suis rendue compte que ce que j'avais dans mon dépôt distant n'était pas dans mon dépôt local. J'ai vite défait le git tag, puis fait un git fetch et git status, et j'ai vu un message indiquant que j'avais un commit en avance. Autrement dit, quand j'avais fait le commit des modifications du stash, je ne l'avais pas poussé. Ça m'était complètement sorti de la tête !

En plus, j'avais oublié de mettre mon journal à jour pour cette partie. Ces exercices Git me poussent vraiment à être encore plus minutieux !

----------
### Exo 1
J'ai bien vérifié que j'avais un tag ‘fin-ex-pipelines’ qui marquera le début du travail sur cette séance.
### **Exo 2** : Défaire un commit déjà poussé

Je trouve git revert très utile. En effet, je l'ai utilisé à plusieurs reprises, que ce soit pour refaire les questions 3 ou même pour refaire la question 4, afin de retourner là où j'étais avant de faire le tag.

1.  J'utilisais git log pour trouver l'historique des commits.
	- Je prenais le SHA, cette longue chaîne de chiffres et caractères, pour indiquer quel commit je voulais référencer lors du git revert.
2.  git revert exemple_de_sha.
3.  git push.

Cette façon de gérer les erreurs m'a appris qu'avec git revert, on peut corriger les erreurs tout en conservant un historique propre.

----------

### **Exo 3** : Défaire un changement avant qu'il ne soit poussé au dépôt distant

Je ne savais pas quoi faire pour retourner au tag, garder les changements, et les maintenir non-staged en même temps.

J'ai même cherché ailleurs que dans les diapos pour trouver une solution, mais cela m'a poussé trop loin, et je me suis un peu perdue. Je pense avoir tout cassé, mais je suis finalement revenue aux diapos, et après avoir lu beaucoup d'explications ailleurs, ce que je voyais dans les diapos est devenu plus clair. J'ai enfin commencé à suivre les consignes.

Les consignes de l'exercice étaient :

-   Vous devrez retourner à la version du tag "git-seance3-defaire". La commande doit satisfaire les contraintes suivantes : — vous ne devez pas perdre les changements — les changements ne doivent pas être staged après le retour au tag.
    
-   `git reset --soft HEAD^`
    
    -   Satisfaisait en revenant à la dernière version du dépôt, mais il n'annule pas la mise en place (staging).
-   `git reset HEAD^`
    
    -   Satisfait en revenant à la dernière version du dépôt, et il annule la mise en place (staging).

J'ai donc continué avec `git reset HEAD^`. Mais le problème est que HEAD^ ne ramène que d'un commit en arrière, alors qu'on voulait retourner à la version du tag "git-seance3-defaire". C'est là que j'ai essayé de remplacer HEAD^ par le tag "git-seance3-defaire", et j'ai découvert que cela satisfaisait toutes les consignes.

Pour la deuxième partie où il fallait basculer les changements, j'ai découvert une autre façon de gérer une erreur. Cela m'a montré que même une petite erreur ne nécessite pas toujours un `git reset`. Parfois, il faut choisir une approche plus adaptée.

----------

### **Exo 4** : Garder de côté des changements

J'ai rencontré pas mal de problèmes pour vraiment créer un conflit, car je me retrouvais souvent avec deux commits en avance ou des branches divergentes. J'ai essayé `git rebase`, mais cela a réglé le conflit au lieu d'en créer un, alors que je pensais que cela pourrait provoquer un conflit. Encore une fois, cette partie était plus facile quand j'avais bien fait la partie 3, car certains changements étaient encore présents lors de la partie 4 et/ou je n'avais plus de problèmes de branches divergentes.

### Pour créer un conflit pour cet exo (sans autre conflit auparavant...*finalement*)
1.  J'ai fait des changements dans mon dépôt local et dans mon dépôt distant afin de créer un conflit.
2.  Dans mon dépôt local, j'ai fait un `git fetch` et un `git status` pour m'assurer que tout était prêt à continuer le processus de création de conflit.
3. J'ai fait un `git pull` et là, j'avais les bonnes conditions pour continuer cet exercice. Git m'a donné un message indiquant que soit je pouvais continuer, soit je devais trouver une autre façon de gérer le conflit. J'ai donc utilisé `git stash` avec le message indiqué pour cette tâche afin de mettre de côté mes changements.
4.  J'ai fait un `git stash push -m ""` pour mettre de côté ces modifications dans un index, c'est-à-dire mes changements dans mon dépôt local, en ajoutant un message pour avoir le contexte du stash plus tard.
5.  J'ai utilisé `git stash list` pour récupérer l'identifiant du stash, l'indice.
6.  Ensuite, j'ai fait `git stash show -p stash@{0}` pour voir le diff de ce stash. Dans notre cas, celui de stash avec l'indice 0, car c'est le stash que l'on vient de créer.
7.  Puis `git stash apply stash@{0}` pour appliquer ces modifications qui avaient été mises de côté.
8.  Enfin, j'ai fait un `git stash drop stash@{0}`, car je préfère faire cette étape manuellement au cas où. Sinon, il aurait été plus efficace de faire `git stash pop`, qui permet automatiquement de supprimer le stash après l'avoir appliqué.

C'était un exercice vraiment utile pour voir ces différences et apprendre plusieurs façons de gérer les conflits, tout en nous poussant à faire plus attention lorsque l'on gère des projets avec un dépôt local et distant !
Maintnenat je vais créer le tag pour marquer la fin de cette séance.

## Séance 4 : Scripts Bash

Pour cette séance, j'ai appris à créer des scripts Bash pour effectuer des tâches similaires à celles des séances précédentes. Cependant, cette fois-ci, nous avons commencé à réduire les processus chronophages grâce aux scripts Bash.

###  Mon dossier de travail

    /Users/jocelyn/Workspace_B/active/sorbonne_nouvelle/prog_project_encadre/04-seance_04

####  Note : Concernant le test des scripts

-   À l'origine, les fichiers `.ann` étaient dans mon dossier de travail lorsque j'ai créé et testé les scripts. Pour tester les scripts, il suffit de mettre à jour la variable de chemin `ANN_FOLDER` dans les scripts en fonction du dossier de travail actuel.
	- à l'exception du script `comptes.sh` après l'ajout de tests et des arguments.
-   Les fichiers `.ann` doivent être placés dans le même dossier que les scripts pour que tout fonctionne correctement. Une fois le chemin mis à jour, les scripts seront capables de traiter les fichiers `.ann` comme prévu.

Globalement, cette partie me rappelle Python, mais avec une syntaxe propre aux scripts Bash. Je trouve intéressant de découvrir les différentes syntaxes qui existent.

### Création des scripts

Pour le script du premier exercice, j’ai remarqué qu’il ressemblait beaucoup à Python. Ce qu'on avait s appris dans les séances précédentes, comme les commandes, les options, les pipes, et stdin/stdout, m’a énormément aidé pour cet exercice. Il s’agissait simplement de stocker la commande que nous utilisons habituellement pour effectuer une tâche, dans une variable.

#### Exemple

    LOCATION_COUNT=$(cat $YEAR_FOLDER/*/*.ann | grep "Location" | wc -l)

Ensuite, pour afficher le stdout à l'écran, j’ai utilisé la commande `echo`. Je faisais tout en tenant compte des particularités de la syntaxe Bash, comme l’utilisation du `$` pour faire référence à une variable. J’ai également appris à comprendre les arguments qui sont placés en haut du script, ainsi que l’utilisation du shebang `(#!/bin/bash)` pour indiquer à la machine qu’il s’agit d’un fichier exécutable.

#### Rendre un fichier exécutable

Pour rendre un fichier exécutable, on utilise la commande :

    chmod +x comptes.sh
#### Exécution du script

Pour exécuter le script, il suffit d'utiliser :

    ./comptes.sh

### Problèmes rencontrés pour script compte_lieux.sh

J'ai eu des problèmes avec le script 2b car je croyais devoir utiliser des boucles pour simuler l’idée de l’arborescence des systèmes de fichiers. J'ai essayé plusieurs situations :

    ./compte_lieux.sh 2016 02 15 
    ./compte_lieux.sh "*" 02 15
    ./compte_lieux.sh 2016 "*" 15
Soit ma boucle fonctionnait correctement pour créer le chemin des fichiers nécessaires, soit, comme dans le cas de `./compte_lieux.sh "*" 02 15`, j'obtenais un résultat avec les 15 meilleurs classements, mais provenant de 2016, 2017, et 2018.

Après réflexion et en utilisant `echo` pour voir ce qui se passe dans chaque étape de ma boucle, j’ai remarqué que tous les fichiers étaient parcourus, même ceux qui ne nous intéressaient pas. 

J’ai donc modifié la façon de faire ce script en utilisant des conditions au lieu de boucles. Vers la fin je me suis rendue compte de faire attention d'un 4e cas où l’année et le mois sont `* * 15`.

### Tests et validation des arguments pour les scripts

Pendant cette partie, j'ai mieux compris les tests et validations des arguments nécessaires. En effet, les utilisateurs peuvent ne pas fournir les arguments requis ou bien les donner de façon incorrecte. Il est donc important de leur fournir des informations adéquates.

Par exemple, pour mon code de `comptes.sh`, il est désormais possible d'utiliser le script en fournissant simplement le chemin du dossier où l'utilisateur a stocké les fichiers. Il est important de s'assurer que le script dispose des permissions nécessaires avec la commande `chmod +x comptes.sh`.

Prenons l'exemple du script `compte_lieux.sh`. J’avais moi-même des incompréhensions sur l'utilisation de `*` comme argument. J'ai appris qu'il faut entourer `*` de guillemets, ce qui est essentiel à préciser pour les utilisateurs à l'aide de `echo` dans le script. De plus, il est nécessaire que les utilisateurs sachent comment un mois est représenté dans ce script. J'avais réfléchi qu'il serait peut-être possible, dans une autre situation, de permettre la saisie du mois sous forme de chaîne de lettres, par exemple "février", et de faire en sorte que le script le reconnaisse comme 02.

### Explication du code dans le dernier diapo

Le script Bash commence par une validation des arguments via un bloc de code conditionnel.

Si l’argument fourni est incorrect (par exemple, il n'y a pas un seul argument), le script affiche un message demandant un argument et s'arrête. Cette validation permet de quitter le programme en cas d’erreur.

Ensuite, plusieurs variables sont définies pour stocker des informations, comme `FICHIER_URLS`, qui stocke l’argument du programme (le fichier à lire). Deux compteurs, `OK` et `NOK`, sont également définis pour compter les lignes contenant une URL valide ou non.

Une boucle `while` parcourt ensuite le fichier. Chaque ligne est assignée à la variable `LINE`, et on effectue des vérifications pour savoir si elle contient une URL valide. Si c’est le cas, on affiche un message et on incrémente le compteur `OK`. Sinon, on incrémente `NOK` pour les lignes invalides.

À la fin de la boucle, le script affiche le nombre de lignes contenant des URLs valides (`OK`) et celles ne l'étant pas (`NOK`).

## Séance 5 : Approches pour le web crawling - récupération du web depuis le terminal
J'ai installé Helix editor pour éditer mes scripts bash vu qu'on fera de telles taches pour le projet en groupe, par exemple prendre les données du web. 

https://docs.helix-editor.com/install.html

Ensuite, on a appris sur differents approches pour récuperer de données.

### Approches de récuperation de contenu du web

### 1. Lynx
Nécissite l'installation de Lynx dans notre machine
pour navigeur le web en terminal à l'aide de : `brew install lynx`

On découvert l'intêret avec Lynx
- On a que de contenu texte, alors on peut utiliser pour prendre tout le contenu web.
- exemple de stdout sur l'écran lors d'une naviagtion à une siteweb `lynx https://fr.wiktionary.org/wiki/cezve`

Récuperer le contenu textuel (sans navigation)
- `lynx -dump https://fr.wiktionary.org/wiki/cezve`

### 2.1 Les commandes Bash wget et curl :
Les prochaines approches ce sont deux commandes qui nous permet de récuperer des pages web sans passer par un navigateur. Leurs difference nous intêret. 
- wget écrit dans un fichier et cURL écrit dans le terminal.

#### cmd curl
`cmd -option <url>`

- `curl https://google.com`
    - observations:
        - nous donne du texte brut
        - aucune capacité de navigation 
        - on obtient le syntax HTML qui entourre le contenu. 
    - L'intérêt ? On peut voir des informations utiles comme le type d'encodage de la page web, même si on doit les chercher nous-mêmes, car les infos ne sont pas organisées de manière très lisible.
charset=UTF-8
Infos sur la langue :
lang="fr"

- `curl -i https://google.com`
    - observations:
        - nous donne du texte brut
        - aucune capacité de navigation 
        - on obtient le syntax HTML qui entourre le contenu.
    - L’intérêt ?
Les informations qui peuvent nous intéresser sont organisées de manière plus lisible.
Les noms d'informations clés sont en gras dans le bloc supérieure du retour de cette commande avec cette option.
- Le résumé de la communication entre le client (nous) et le serveur qui héberge le site web est lisible. Ces informations sont diffusées par le protocole HTTP.

> Note : dans le cas où on utilise par exemple http au lieu de https dans l’URL, par ex. :

- http://github.com au lieu de https://github.com
- on peut se prévaloir de la commande avec les deux options :
    - `curl -I -L http://github.com`
    - cela va nous rediriger vers la version sécurisée du site https://github.com et va récupérer des informations.


#### 2.2 cmd wget
`cmd -option <url>`

- `wget https://google.com`
    - Ça télécharge le contenu de la page et l'enregistre avec le même nom que la fin de l'URL

- `wget -r https://google.com`
    - elle télécharge la page principale et toutes les pages liées sur le site, donc super pratique pour copier des petits sites web. 

- `wget -o google_crawl.html https://google.com`
    - Ça enregistre le contenu dans google_crawl.html au lieu du nom par défaut.


## Séance 6 :  Mini projet individuel
### Mini projet de la séance 6:

#### Exercice 1: lire les lignes d’un fichier en bash

```bash
while read -r line;
do
    echo ${line};
done < "urls/fr.txt";
```
   
Questions:

1. Pourquoi ne pas utiliser cat ?

- Pour répondre, il faut revoir leurs fonctionnalités. `cat` est utilisé pour afficher tout le contenu d'un fichier texte d'un coup ou bien pour combiner plusieurs fichiers et les afficher dans le stdout. La commande read traite chaque ligne d’un fichier, ce qui est ce qu’on veut ici. De plus, l'option `-r` permet de ne pas interpréter les backslashes, donc à chaque lecture de la ligne, on n'interprétera pas les `\`, et la ligne s'affichera correctement, ce qui est important dans notre cas car on traite des URLs qui contiennent des backslashes ! read avec l'option `-r` est donc le plus pertinent pour notre tâche et le contenu de notre fichier texte.

2. Comment transformer "urls/fr.txt" en paramètre du script ?
- on replace `urls/fr.txt` par `$1` pour indiquer qu'on on attendera un argument de l'utilisateur. 

    2.1 Valider l’argument : ajouter le code nécessaire pour s’assurer qu’on donne bien un argument au script, sinon on s’arrête
    ```bash
    if [[ $# -eq 0 ]]
    then
        echo "il manque d'agrument"
        exit 1
    fi
    ```
    pour indiquer que si l'input de l'utilisateur est vide alors 0 arguments, on affiche un message et on sort du script.


3. Comment afficher le numéro de ligne avant chaque URL (sur la même ligne) ?
- à l'aide d'un compteur qu'on appelera count, on fait référence à sa valeur à chaque itération dans `echo` avec `$count`, on ajout `-e`pour prendre en compte de la tabulation.
    
    • Bien séparer les valeurs par des tabulations
    ```bash
    count=0
    while read -r line
    do
        ((count++))
        echo -e "$count\t${line}";
    done < "$1";
    ```
Résulat du script après l'exercice 1:
```bash
if [[ $# -eq 0 ]]
then
    echo "il manque d'agrument"
    exit 1
fi

count=0
while read -r line
do
    ((count++))
    echo -e "$count\t${line}";
done < "$1";
```

#### Exercice 2 : récupérer les métadonnées de collecte

Après l’exercice 1 fait, on va rajouter des informations à chaque ligne, toujours séparées par des tabulations :
1. le code HTTP de réponse à la requête

    1.1 les erreurs peuvent être corrigées
2. l’encodage de la page, s’il est présent 
3. le nombre de mots dans la page
    
Pour cette tâche on va faire référence aux `curl -I` car c'est ce pair de command et option qui nous montre des métadonnées dans une façon lisible(normalement), ce que nous aidera accomplir extraire ces informations lors de l'execution de notre sciprt.

Prenons en exemple la caputure d'écran que j'ai pris pour l'un des urls dans le fichier fr.txt `curl -I https://fr.wikipedia.org/wiki/Robot_de_cuisine`

Observations :
- Pour obtenir le code HTTP on va chercher la toute première ligne du stdout
- Pour obtenir l'encodage on cherchera "content-type"
- Pour obtenir le nombre de mots dans la page, il nous faudra utiliser `lynx -dump -nolist <url>`, on a vu dans la séance precedente que cette commande nous permet d'avoir un stdout de texte brut de la page web, sans capacité de navigation, et sans le syntaxe HTML.

Résulat du script après l'exercice 2 :
```bash
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
```
NOTE: J'avais des problèmes avec les tabulations dans la sortie de nb_mots, mais j'ai trouvé une solution pour les nettoyer.

## Séance 7
### Mini - projet 2
Pour cette séance, j'ai appris comment automatiser la tâche de création de tableaux dans un fichier HTML.

Pour l'implémenter, j'ai modifié mon ancien script, qui extrait des informations à partir d'un fichier texte contenant des URLs. Ce script récupère des informations comme le numéro de l'URL, le code HTTP, l'encodage de la page, et le nombre de mots dans la page concernée.

J'ai ajouté des balises et la syntaxe correspondant au HTML dans le script.
```echo "" par exemple
echo "<html>"
echo "<head>"
echo "    <meta charset=\"UTF-8\">"
echo "</head>"
echo "<body>"
echo "    <table>"
echo "        <tr>"
echo "            <th>Numero</th>"
echo "            <th>URL</th>"
echo "            <th>Code HTTP</th>"
echo "            <th>Encodage</th>"
echo "            <th>Nb de mots</th>"
echo "        </tr>"
````


**Note**: J'avais mal compris qu'il fallait modifier notre script. Au début, j'ai directement créé un fichier HTML où j'ai créé la table et entré toutes les informations manuellement.


## Séance 8
### Mini-projet 3

Pour cette séance, j'ai appris à utiliser le framework CSS Bulma pour styliser une page web et à l'intégrer dans notre script Bash afin de générer des pages contenant des tableaux en HTML avec un style appliqué. À l'aide de l'hébergement de pages sur GitHub, il a été possible, dans cette partie du mini-projet, de visualiser le rendu final et d'imaginer comment les résultats apparaîtront lors de la réalisation de nos tâches en groupe.

J'ai apprécié consulter leur documentation et découvrir que l'utilisation de ce framework permet également de rendre nos pages responsive sur différents types d'écrans.

Exemple d’intégration dans le script :

```à l'aide de
echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
```
- ici on fait attention à ajouter le caractrerèes d'echape.

Gestion des tableaux :
Étant donné que notre objectif est d'utiliser Bulma, et que des tableaux risquent parfois de dépasser la largeur de l'écran, il est judicieux d'utiliser la classe table-container, qui permet de créer une table défilable en l'encapsulant dans un élément table-container.

Pour styliser les tableaux :
Afin d’appliquer un style simple à nos tableaux, voici les commandes à inclure dans l’entête du fichier HTML généré :

```
echo "    <title>Mini-projet tableau</title>"
echo "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css\">"
```

Ensuite, appliquez les classes Bulma au tableau concerné comme suit :

```
echo "      <table class=\"table is-bordered is-hoverable is-striped is-fullwidth\">"

echo "  ... "

echo "      </table">"
```
- Ces étapes permettent de générer un tableau simple et responsive avec Bulma. C’était intéressant de voir comment décomposer cette partie en petites étapes pour automatiser certaines tâches dans le script Bash.