(* on peut définir des fonction locale *)
let sqr_succ_one x = 
	let next x = x +1  in (next x)*(next x) ;;

let sqr_succ x = (x+1)*(x+1);;

(* exemple de variable locale *)
let f x = 
	let y = 5 in x*y;;	

(* si tu appelles y dans le contexte globale cette variable n'existe pas *)

(* Ocaml et les fonctions anomymes sans nom *)
(function x->x*x) 5;;

(* fonction valeur absolue *)
let abs x = if x < 0  then -x else x;;

(* le dernière instruction est renvoyée donc 
c'est elle qui définira le type, attention à ne pas 
inverser l'ordre des expressions e1;e2; ici n'est pas 
équivalent à e2;e1 pour le premier filtrage*)
let rec syracuse n = match n with
	| 1 -> print_int 1; 1 ;
	| n when n mod 2 = 0 -> print_int n; print_string " "; 1 + syracuse(n/2);
	| _ -> print_int n ; print_string " "; 1 + syracuse(3*n+1) ;;

syracuse 10 ;;

(* voici une autre méthode pour calculer et afficher les valeurs de la suite Syracuse*)

let rec syracuse_list = function 
	| 1 -> 1::[]
	| n -> if(n mod 2 = 0) then n::syracuse_list (n/2) else n::syracuse_list(3*n+1) ;;


let lsy = syracuse_list 100;;

print_newline();;

(*j'utilise List une libraire d'Ocaml, ci-dessous List.map permet 
d'appliquer une fonction aux éléments d'une liste*)
let each elem = 
	print_int elem;
	print_string " ";
in
List.map each lsy;;

(* ci-dessous à l'aide de la fonction map de la librairie List 
j'applique la fonction carré aux éléments de ma liste*)

let sqr_list = List.map (function x->x*x) [1;2;3];;

