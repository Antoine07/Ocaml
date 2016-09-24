(*
Exercice

Ecrire une fonction qui permet d'échanger deux éléments d'un vecteur

*)

let swap v i j = 
	let t = v.(i) in
	v.(i) <-v.(j) ; v.(j) <- t ;;

let v1 = [|1;2|];;
let v2 = [|5;7|];;

swap v1 1 0;;


(*
Exercice
Soit deux entier a et b inverser leur valeur dans le script courant, utilisez les références

*)

let a = ref 10 ;;
let b = ref 11;;
let t = !a;;
a:=!b;;
b:=t;;





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