(*
Problème 
Le tri par insertion 

Exercice 
Ecrire une fonction permettant d'insérer un élément dans une liste ordonnée

Exercice 
Maintenant que l'on sait faire l'insertion d'un élément dans une liste trié, essayé d'imaginer
le tri par insertion à la sauce de la récursivité 

*)

let rec insert elem l = match l with
	| [] -> elem::[]
	| h::m -> if elem < h then elem::h::m else h::(insert elem m) ;;


let rec sort_insert = function 
	| [] -> []
	| h::q -> insert h (sort_insert q) ;;