# Documentation technique (en cours)

Ce projet cherche à mettre à disposition un ensemble d'écrits d'actualité parus en grande majorité pendant la Fronde (1648-1653). Ces documents ont été repérés et définis comme "mazarinades" par Célestin Moreau, Emile Socard, Ernest Labadie et Hubert Carrier. L'objectif du projet est de récupérer numériquement ces documents, d'en renseigner les métadonnées et à terme d'ajouter de nouvelles sources pouvant être qualifiées de "mazarinade" dans cette collection numérique.

**Livre numériques**
Il s'agit d'exemplaires numériques moissonnés essentiellement sur _Gallica, Mazarinum _et _GoogleBooks_ (licence	CC-BY). Ils sont exposés, grace au protocole IIIF dans un visualiseur (Mirador).
 
**Textes obtenus automatiquement (OCR)**
Chaque document peut être affiché et téléchargé en format texte. Ces textes sont issus d'un processus automatique (reconnaissance automatique de caractères ou OCR), ce qui explique qu'ils contiennent des coquilles ou des erreurs manifestes. Le modèle de reconnaissance automatique a toutefois été entrainé sur des documents du XVIIe siècle (établi par Simon Gabay), ce qui limite ces erreurs. La page de titre a été corrigée manuellement. Une recherche automatique (Ctrl +F) dans la page d'OCR permet de retrouver rapidement les occurrences pointées par le moteur de recherche.

**Technologies utilisées**
TEI-Publisher

IIIF

Kraken


**Sélection des items numériques et nommage**
L'exemplaire numérique correspond à un exemplaire physique de bibliothèque. Pour autant nous avons choisi d'homogénéiser le nommage des documents en nous référant à la numérotation de Célestin Moreau. Le nom (.txt, .pdf, .xml) et l'URL du document  sont formés ainsi: [identifiants Moreau ou ses suppléments] + [bibliothèque numérique source du fac-simile numérique], par exemples : Moreau3_MAZ (n° 3 de la Bibliographie Moreau, issus de _Mazarinum_), Moreau1suppl12_GALL (n° 12 du premier supplément de la Bibliographie Moreau, issu de _Gallica_), ou Labadie158_GBOOKS (n° 158 du supplément de Labadie, issu de _GoogleBooks_).

Il arrive que l'exemplaire numérique disponible en ligne ne corresponde pas exactement à celui décrit par Moreau (il peut s'agir d'une autre édition, ou d'un autre état de la même éditition). Aussi le nommage repose-t-il sur une abstraction, qui serait "le" texte ("le" Moreau n°3, abstraction faite de toutes ses différentes manifestations matérielles).
Il en découle une certaine inexactitude, puisque les différentes éditions peuvent comporter des changements plus ou moins importants. En pareil cas, il n'est pas rare que Moreau ait lui -même produit une nouvelle numérotation (dans ses "Suppléments"), auquel cas nous créons aussi un nouvel item quand le document est disponible en ligne. 
Les réémissions (réédition avec changement d’endroits stratégiques comme la page de titre) sont considérées comme des entités à part.
Ce choix implique quelques approximtations quant à la concordance de certains documents avec les notices de la Base Bibliographique des mazarinades de la Bibliothèque Mazarine (BM) : celle-ci repose en effet sur la description d'éditions (et de leurs variantes) et non d'entités "virtuelles" reposant sur un titre (comme nous le faisons en suivant Moreau). Comme le notice de la BM précise toujours les différences entre les différentes éditions, états ou émisions, il est en principe possible de savoir à quoi correspond l'exemplaire numérique exposé dans Antonomaz.

Ce choix permet d'éviter les redites dans les recherches par mot-clé dans la base textuelle (pour qui veut estimer le nombre d'écrits différents à utiliser le mot "Mazarin", par exemple)
Sur ce site qui donne à fouiller les textes plus que les documents d'un point de vue bibliothéconomique, nous appellerons _doublons_ les exemplaires d’une même édition, même s’ils relèvent d’un état différent, considérant que ce sont souvent des quasi-doublons textuels. Nous appellerons _pseudo-doublons_ les exemplaires d’éditions différentes. Les doublons et pseudo-doublons ne seront pas inclus par défaut dans les recherches textuelles pour éviter les réirations du même texte réédité, mais seront accessibles dans un dossier à part.

**Traitement des images**

**Métadonnées**


