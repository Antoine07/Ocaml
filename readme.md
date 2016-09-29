## Problème

Combien y-a-t-il d’occurrences du chiffre 1 dans les nombres de 1 à 999 ? Par exemple le chiffre 1 apparaît une fois dans 51 mais deux fois dans 131.

Le but de ce problème est d'écrire de petites fonctions, une fois implémentées ces fonctions seront utilisées pour répondre à la problématique de l'énoncé.

 - Exercice
Ecrire une fonction, prenant en paramètre un entier n et retournant une liste composée des unités, dizaines, centaines, ... de cette entier.

 - Exercice 
Ecrire une fonction qui permet de compter le nombre de 1 dans un chiffre donné, utiliser la fonction de l'exercie 1.

 - Exercice
Répondre au problème posé ci-dessus, à l'aide des fonctions déjà écrites.

## Exercice
 - Ecrire une fonction permettant d'afficher tous les diviseurs d'un nombre n entier différent de 0.
 - Ecrire une nouvelle fonction qui cette fois retourne la liste des diviseurs d'un nombre entier n.
 
## Exercice (optimisation maths)
En considérant que n = pxq avec p>=q => p>=sqrt(n). Optimisez la recherche de l'ensemble des diviseurs de n.

Rappels pour manipuler des entiers et calculer des racines pensez à utiliser les fonctions int_of_float ou float_of_int d'OCaml

Réponse: il suffit de rechercher tous les diviseurs q tq q <= sqrt(n) + les diviseurs p = q/n

## Exercice
 - Ecrire une fonction swap qui permet d'échanger deux éléments d'un vecteur.
 - Implémentez l'algorithme d'euclide pour rechercher le pgcd d'un couple d'entier

## Problème 
Le tri par insertion 

 - 1 Exercice (ok)
Ecrire une fonction permettant d'insérer un élément dans une liste ordonnée.

 - 2 Exercice (ne pas faire celui-ci)
Maintenant que l'on sait faire l'insertion d'un élément dans une liste triée, essayez d'implémenter un algorithme permettant de réaliser ce tri.

- 3 Exercice (ok)
Ecrire une fonction qui permet de supprimer un entier particulier d'une liste d'entiers. Testez la fonction avec les exemples suivants:
``` ocaml
supp_elem 5 [1;2;3;5;7];;
supp_elem 5 [1;2;3;5;7;5;5;5];;
supp_elem 5 [1;2;3];;
supp_elem 5 [];;
```
- 4 Exercice (pour dimanche)
Ecrire deux fonctions qui permettent chacune d'inverser une liste d'entier en utilisant @ dans un premier temps puis sans utiliser l'opérateur @.

- 5 Exercice (pour dimanche)
Ecrire un programme permettant d'afficher tous les diviseurs d'un nombre n entier !=0 donné. 

- 6 Exercice (pour dimanche)
Reprendre la fonction précédente et retourner cette fois la liste des diviseurs sous forme d'une liste


## Problème (pour dimanche)
- Réalisez un programme permettant de calculer le pgcd d'un couple a b

## rappels de cours

Dans Ocaml c'est la dernière expression qui est retournée dans le "script global", ci-dessous l'expression x + y sera retournée
```ocaml
let add x y = x + y ;; 
```
Attention, si il y a plusieurs expressions e1; e2 ; e3, qui se suivent dans la définition d'une fonction c'est la dernière expression qui sera retournée à l'extérieur de la fonction, par exemple ci-dessous l'expression x sera retournée, pas l'expression x + y juste avant séparée par ; 
```ocaml
let bar x = let y = 5 in x + y; x ;; (* x est retourné à l'extérieur de la fonction pas x + y *)
```

