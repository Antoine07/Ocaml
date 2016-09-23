(*
Problème

Combien y-a-t-il d’occurrences du chiffre 1 dans les nombres de 1 à 999 ? Par exemple le
chiffre 1 apparaît une fois dans 51 mais deux fois dans 131.

Le but de ce problème est d'écrire une fonction permettant de généraliser cette recherche à un nombre n donné

1/ Exercice

Ecrire une fonction permettant de retourner une liste composée à partir d'un entier n respectivement
 de ses unités, dizaines, centaines ...

2/ Exercice 
Ecrire une fonction qui permet de compter le nombre de 1 dans un chiffre donné, utiliser la fonction de l'exercie 1

3/ Exercice
Répondre au problème posé en écrivant une fonction complète

*)

let rec list_num n accu = match n with 
	| 0 -> accu ;
	| n -> list_num (n/10) ((n mod 10)::accu);;

(* une autre solution pour avoir une liste dans le bon sens sans deuxième paramètre pour inverser la recurrence *)

let  list_num2 n = 
	let rec accu x l = match x with 
		| 0 -> l
		| x -> accu (x/10) ((x mod 10)::l)
	in accu n [] ;;


let rec cpt_nb_num a l_num = match l_num with 
	| [] -> 0 ;
	| h::l -> if( h = a ) then 1 + cpt l else cpt l ;;

cpt_nb_num 1 (list_num 1234168 []);;

let rec cpt_to_num a n = match n with 
	| n when n = 0 -> 0 ;
	| n -> cpt_nb_num a (list_num n []) + cpt_to_num a (n-1);;



(* 
Exercice

Ecrire un programme permettant d'afficher tous les diviseurs d'un nombre n entier !=0 donné. 

 *)

let search_div_naive n = 
		for i = 2 to n do 
			if( n mod i = 0 ) then print_int i;
		done;;


search_div_naive 36;;

(* 
Exercice 

Reprendre la fonction précédente et retourner cette fois la liste des diviseurs sous forme d'une liste

*)

let search_div_naive_list n = 
	let rec accu x = match x with
		| x when x >= n -> [];
		| x -> if( n mod x = 0 ) then x::(accu (x+1)) else accu (x+1);
	in accu 1;;


search_div_naive_list 36;;

(* 
Exercice (optimisation avec maths)

En considérant que n = pxq avec p>=q => p>=sqrt(n). Optimisez la recherche de l'ensemble des diviseurs de n

Rappel pour manipuler des entiers et calculer des racines pensez à utiliser les fonctions int_of_float ou float_of_int

Réponse: il suffit de rechercher tous les diviseurs q tq q <= sqrt(n) + les diviseurs p = q/n

*)

let search_div_opt_list n = 
	let sqrt_n = int_of_float (sqrt (float_of_int n)) in
		let rec accu x = match x with
			| x when x > sqrt_n -> [];
			| x -> if( n mod x = 0 ) then x::(n/x)::(accu (x+1)) else accu (x+1);
		in accu 1;;
