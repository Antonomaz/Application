# STATISTIQUES

Vu le nombre important d'entités dans le corpus des mazarinades, il semble utile de proposer quelques exploitations statistiques.
Nous le faisons à partir de deux jeux de métadonnées combinés : les informations issues de la tradition bibliographique (qui permettent d'interroger plus de 5000 écrits), et celles issues du corpus Antonomaz, moins complètes (2/3 de cet ensemble), mais plus précises sur certains points (présence ou non d'un nom d'auteur et d'un nom d'imprimeur libraire, d'une permission...).

[Bibliographies](https://antonomaz.huma-num.fr/tools/Biblio_Moreau.html) [Projet Antonomaz](https://github.com/Antonomaz)

En exploitant les données issues des bibliographies du XIXe siècle, à savoir celles de C. Moreau, E. Labadie et E. Socard, il est possible de proposer quelques premières statistiques (dates, lieux, nombre de pages).

*N.B. : les données exploitées sont consultables à [cette adresse](https://antonomaz.huma-num.fr/tools/Biblio_Moreau.html). Elles comportent 5 055 entrées et ont été préalablement nettoyées, des erreurs peuvent cependant encore s'y trouver (notamment des doublons en raison des suppléments publiés par C. Moreau).*

###  Dates de publication

- 88 % des documents (4460 imprimés) indiquent une date de publication.
- 12 % environ (602 imprimés) n'en indiquent pas.
- 63 % environ des mazarinades (3198 imprimés) ont été publiées pendant les deux années les plus productives : 1649 et 1652.

<table class='table table-striped'>
<tr><th scope='col'></th><th scope='col'>1648</th><th scope='col'>1649</th><th scope='col'>1650</th><th scope='col'>1651</th><th scope='col'>1652</th><th scope='col'>1653</th><th scope='col'>1654</th><th scope='col'>Après 1654</th><th scope='col'>Sans Date</th></tr>
<tr><th scope='col'>5062 mazarinades (100.0%)</th><th scope='col'>70 (1.38%)</th><th scope='col'>1817 (35.89%)</th><th scope='col'>493 (9.74%)</th><th scope='col'>598 (11.81%)</th><th scope='col'>1381 (27.28%)</th><th scope='col'>42 (0.83%)</th><th scope='col'>25 (0.49%)</th><th scope='col'>29 (0.57%)</th><th scope='col'>602 (11.89%)</th></tr>
</table>

*Ces données ont été calculées après avoir retiré les entrées sans date de publication.*

### Lieux de publication (villes)

- 65,2 % des documents (3 294 imprimés) indiquent la ville de publication.
- 34,8 %  (1 761 imprimés) ne l'indiquent pas.
- 91 % des mazariandes sont imprimées à Paris.


<table class="table table-striped">
<thead>
  <tr>
    <th scope="col">Lieux de publication</th>
    <th scope="col">Bordeaux</th>
    <th scope="col">Paris</th>
    <th scope="col">Pontoise</th>
    <th scope="col">Rouen</th>
    <th scope="col">Saint-Germain-en-Laye</th>
    <th scope="col">Total</th>
  </tr>
</thead>
<tbody>
  <tr>
    <th scope="row">Nombre de mazarinades</th>
    <td>97</td>
    <td>3 010</td>
    <td>34</td>
    <td>33</td>
    <td>32</td>
    <td>3 196</td>
  </tr>
  <tr>
    <th scope="row">%</th>
    <td>3 %</td>
    <td>91.3 %</td>
    <td>1 %</td>
    <td>1 %</td>
    <td>1 %</td>
    <td>97.3 %</td>
  </tr>
</tbody>
</table>

*Seuls les lieux de publication indiqués au moins dix fois ont été retenus. C'est pourquoi le total n'est pas à 100%. Ces données ont été calculées après avoir retiré les entrées sans lieu de publication.*

### Nombre de pages

**Presque la moitié des mazarinades comportent 7-8 pages (2 cahiers), et 11 % comportent 4 pages (1 cahier).**

<table class="table table-striped">
<thead>
  <tr>
    <th scope="col">Nombre de pages</th>
    <th scope="col">4</th>
    <th scope="col">6</th>
    <th scope="col">7</th>
    <th scope="col">8</th>
    <th scope="col">11</th>
    <th scope="col">12</th>
    <th scope="col">14</th>
    <th scope="col">15</th>
    <th scope="col">16</th>
    <th scope="col">Total</th>
  </tr>
</thead>
<tbody>
  <tr>
    <th scope="row">Nombre de mazarinades</th>
    <td>517</td>
    <td>273</td>
    <td>914</td>
    <td>1 371</td>
    <td>132</td>
    <td>195</td>
    <td>93</td>
    <td>167</td>
    <td>178</td>
    <td>3840</td>
  </tr>
  <tr>
    <th scope="row">%</th>
    <td>11 %</td>
    <td>6 %</td>
    <td>20 %</td>
    <td>29 %</td>
    <td>3 %</td>
    <td>4 %</td>
    <td>2 %</td>
    <td>3.5 %</td>
    <td>4 %</td>
    <td>82.5 %</td>
  </tr>
</tbody>
</table>

_Les données suivantes ont été calculées à partir des seules entrées des bibliographies Moreau (et suppléments) qui indiquent un nombre de pages. Seuls les cas de figure les plus fréquents ont été retenus ici, c'est pourquoi le total n'est pas à 100 %._


### Taux d'anonymat

Les statistiques ici proposées ne concernent pas la totalité du corpus, comme c'est le cas dans la partie précédente, mais uniquement les mazarinades qui composent le corpus du projet Antonomaz, c'est-à-dire celles trouvées dans les bibliothèques numériques accessibles, soit un peu plus de 3 065 documents (2/3 des mazarinades connues)

Sur Antonomaz, environ 57  % d’écrits (1747 imprimés) sont non attribuables et 2  % affichent un pseudonyme au sens large : initiales et pseudonymes (70 imprimés).

**Ainsi, un peu plus de la moitié des mazarinades ne sont pas attribuables à un auteur.**

Dès que nous avons pu identifier l'auteur (même si ce n'est pas explicite sur le document), l'imprimé n'est pas compté comme anonyme.

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: center;">
      <th></th>
      <th>Nombre de mazarinades</th>
      <th>%</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Auteur nommé</th>
      <td>1248</td>
      <td>40.7</td>
    </tr>
    <tr>
      <th>Auteur anonyme</th>
      <td>1747</td>
      <td>57</td>
    </tr>
    <tr>
      <th>Pseudonyme</th>
      <td>70</td>
      <td>2.3</td>
    </tr>
  </tbody>
</table>

À titre de comparaison, on peut observer les statistiques qu'H. Carrier avait proposées, établies sur un échantillon raisonné d'environ 1000 mazarinades (où "les différents genres et années de publication se trouvent équitablement répartis") (_La Presse de la Fronde (1648-1653): Les mazarinades. Les hommes du livre_, Genève, Droz, 1991, t. 2, p. 150.). Il travaille donc sur un échantillon de 1000 écrits, soit 1/5 du corpus global.

__Carrier estime l’anonymat affiché à 83% des pièces, à quoi il ajoute 7% de cryptonymes.__

Ainsi, si on considère comme Carrier l'anonymat affiché, seules 10% de cet échantillon de mazarinades affichent un nom d'auteur, et 90 % effacent leur origine énonciative. Il exclut les pièces officielles types actes royaux, mais aussi "lettres authentiques, manifestes et déclarations des principaux personnages de l’État", problablement parce qu'il estime qu'elles sont évidemment attribuées et que la question de l'auteur n'a pas d'intérêt (_ibid._, p. 77). Son chiffre rend donc compte de l'anonymat affiché (il compte comme anonymes même les pièces dont l'auteur nous est connu par le contexte, et pouvait l'être, parfois évidemment, par les contemporains). Le chiffre ne reflète donc pas le savoir actuel sur les auteurs de mazarinades, mais est un très bon indicateur de l'effet d'anonymat massif produit par ces imprimés.

### Taux d'anonymat éditorial (noms d'imprimeur-libraire indiqués ou non)

55 % de mazarinades inscrivent une adresse typographique complète (sur l'échantillon Antonomaz soit 2/3 du corpus global).
Pour les 45 % imprimés restants, on peut penser que c'est par prudence que ni le nom ni l'adresse des imprimeurs-libraires ne sont affichés. En contrepartie, cet effacement représentait un risque commercial puisque l'acheteur ne pouvait pas identifier le lieu où se procurer le libelle.

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th scope="col"></th>
      <th scope="col">Nombre de mazarinades</th>
      <th scope="col">Pourcentage</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="col">Imprimeur anonyme</th>
      <td>1390</td>
      <td>45.3</td>
    </tr>
    <tr>
      <th scope="col">Pseudonyme</th>
      <td>4</td>
      <td>0.15</td>
    </tr>
    <tr>
      <th scope="col">Adresse typographique complète</th>
      <td>1671</td>
      <td>54.55</td>
    </tr>
  </tbody>
</table>

__Globlament donc on peut affirmer qu'une mazarinade sur deux affiche son origine typographique.__

Carrier calcule que 53 % de ces imprimés ont une adresse typographique complète (lieu, date, nom d'imprimeur), soit sensiblement la même proportion que sur le corpus trois fois plus grand d'Antonomaz. Il note également que ces chiffres varient au cours de la Fronde : si 64% des mazarinades de l'échantillon étudié présentent une adresse typographique complète en 1649, ils ne sont plus que 38% en 1652.

### Affichage d'un privilège ou d'une permission

Les libelles émanent d'officines d'imprimeurs qui soit agissent plus ou moins clandestinement soit répondent aux demandes des pouvoirs ayant le contrôle de l'imprimé (pouvoir royal, parlements, voire factions comme celle de Condé ou de Gaston d'Orléans). 
La grande majorité des mazarinades (3/4) ne sont pas officiellement autorisées et ne mentionnent donc pas de privilège ou de permis d'imprimer ou de vendre. Environ un quart des libelles affichent donc une autorisation au sens large (parfois "Avec permission de vendre"), mais il est vraisemblable que plusieurs de ces mentions ne correspondent pas à une autorisation effective des pouvoirs. 

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>Nombre total de mazarinades</th>
      <th>Nombre avec privilège ou permission</th>
      <th>%</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>3065</td>
      <td>755</td>
      <td>25</td>
    </tr>
  </tbody>
</table>
