# Application - Antonomaz

Ce répertoire contient des ressources utiles au développement de l'application.

## Mise à jour des pages Html (hors pages/blocs gérés par fichiers markdown)
(correspond à la liste des Html ici : https://github.com/Antonomaz/Application/tree/main/Site/templates)

Procédure pour la mise à jour des pages/blocs en question (testée et validée le 06/12/24 KA/GL):

- Se connecter en **ssh** à antonomaz.huma-num.fr
- Lancer le **script** update_karine.sh
- Commenter la redirection (le script précise comment)
- Aller avec son navigateur sur https://antonomaz.huma-num.fr/exist/apps/dashboard/admin#
- Puis suivre le chemin suivant :
- Package Manger puis **EXide**.
- Dans **Exide** : Open, Apps et Antonomaz
- Les fichiers concernés sont dans site/templates
- Quand tout es fini, revenir dans le terminal et suivre la procdure indiquée pour :
- Décommenter la redirection
