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


    
    




