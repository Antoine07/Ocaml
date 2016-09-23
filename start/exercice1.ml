(*
Exercice 

Soit une liste l de nombre écrire une fonction boolean permettant de rechercher un élément dans cette liste

Utilisez le type suivant, la fonction renvoie Lose si elle ne trouve pas ou bien Find elem si elle le trouve. 
Utilisez cela dans le filtrage de la fonction.

type search_elem =
    | Find of int | Lose ;;


*)

type search_elem =
    | Find of int | Lose ;;

let rec search elem l = 
	match l with
	| [] -> Lose
	| [x] -> if(elem = x) then Find x else Lose;
	| h::m -> if( h = elem ) then Find h else search elem m ;;


(*
Exercice 

Implémentez les fonctions suivantes:

 - la fonction compose qui respectivement compose deux fonctions (comme en maths)
 - implémentez respectivement les fonction square et fact
 - définissez la fonction square_of_fact composé de la fonction square et fact

*)

let compose f g = function x -> f (g x) ;;

let square x = x*x;;
let rec fact n = match n with
	| 0 -> 1
	| n -> n* (fact (n-1));;

(* définition de la fonction compose *)

let square_of_fact = compose square fact ;;


square_of_fact 4 ;;






