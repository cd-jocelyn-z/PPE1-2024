I like ponies.
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
## exercices git

    
    




