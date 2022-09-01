# Documentation technique

## DOC À COMPLÉTER

Ce projet tend à rassembler et mettre à disposition un ensemble de documents appelés "mazarinades", parus en grande majorité pendant la Fronde (1648-1653). Ces documents ont été repérés et définis comme "mazarinades" par Célestin Moreau, Emile Socard, Ernest Labadie et Hubert Carrier. L'objectif du projet est de récupérer numériquement ces documents, d'en renseigner les métadonnées et à terme d'ajouter de nouvelles sources pouvant être qualifiées de "mazarinade" dans cette collection numérique.

**Livre numériques**
Il s'agit d'exemplaires numériques moissonnés essentiellement sur Gallica, Mazarinum et GoogleBooks.
Rappeler les droits. 

**OCR**
Chaque document peut être affiché et téléchargé en format texte. Ces textes sont issus d'un processus automatique (OCR) ce qui explique qu'ils contiennent des coquilles ou des erreurs manifestes. Le modèle de reconnaissance automatique de caractères a toutefois été entrainé sur des documents du XVIIe siècle (établi par Simon Gabay), ce qui limite ces erreurs. La page de titre a été corrigée manuellement. Une recherche automatique (Ctrl +F) dans la page d'OCR permet de retrouver rapidement les occurrences pointées par le moteur de recherche.

**Sélection des items numériques et nommage**
L'exemplaire numérique correspond à un exemplaire physique de bibliothèque. Pour autant nous avons choisi d'homogénéiser le nommage des documents en nous référant à la numérotation de Célestin Moreau. Le nom et l'adresse du document (.txt, .pdf, .xml) sont formés ainsi: [identifiants Moreau ou ses suppléments] + [bibliothèque numérique source du fac-simile numérique] : Moreau3_MAZ (n° 3 de la Bibliographie Moreau, issus de Mazarinum), Moreau1suppl12_GALL (n° 12 du premier supplément de la Bibliographie Moreau, issu de Gallica), ou Labadie158_GBOOKS (n° 158 du supplément de Labadie, issu de GoogleBooks).

Il arrive que l'exemplaire numérique disponible en ligne ne corresponde pas exactemetn à celui décrit par Moreau (il peut s'agir d'une autre édition, ou d'un autre état de la même éditition. Aussi le nommage repose-t-il sur une abstraction, qui serait "le" texte ("le" Moreau n°3, abstraction faite de toutes ses différentes manifestations matérielles).
Il en découle une certaine inexactitude, puisque les différentes éditions peuvent comporter des changements importants. En pareil cas, il n'est pas rare que MOreau ait lui -même produit une nouvelle numérotation (dans ses "Suppléments"), auquel cas nous créons aussi un nouvel item. 
Par exemple, les réémissions (réédition avec changement d’endroits stratégiques comme la page de titre) sont considérées comme une entité à part.
Ce choix implique quelques approximtations quant à la concordance de certains documents avec les notices de la Base Bibliographique des mazarinades de la Bibliothèque Mazarine (BM) : celle-ci repose en effet sur la description d'éditions (et de leurs variantes) et non d'entitiés "virtuelles" reposant sur un titre (comme nous le faisons en suivant Moreau). Cela dit, la notice de la BM précise toujours les différences entre les différentes éditions, états ou émisions, de sorte qu'il est toujours possible de savoir à quoi correspond l'exemplaire numérique exposé dans Antonomaz.

Ce choix permet d'éviter les redites dans les recherches par mot-clé dans la base textuelle (pour qui veut estimer le nombre d'écrits différents à utiliser le mot "Mazarin", par exemple)
Nous appelons doublons les exemplaires d’une même édition, même s’ils relèvent d’un état différent. Nous appelons pseudo-doublons les exemplaires d’éditions différentes, considérant que ce sont souvent des doublons textuels. Le suffixe -2, -3, désigne les doublons textuels issus de la même collection numérique. 
Les doublons et pseudo-doublons ne seront pas inclus par défaut dans les recherche textuelle pour éviter les réirations du même texte réédité, mais seront accessibles dans un dossier à part.

**Traitement des images**
Google livres > readme de Margaux

**Métadonnées**
auteur, imprimeurs, sources.
renvoyer au Github de Margaux

**Technologies utilisées**
TEI-Publisher

IIIF

Kraken

