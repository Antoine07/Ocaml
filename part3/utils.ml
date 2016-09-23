let const = 100;;
let fruits = ["tomato"; "raspberry"; "arduino"];;

let rec len list = 
		match list with 
			[] -> 0
			| elem::l -> 1 + len l ;;


let rec map_list f list = 
	match list with 
		[] -> []
		| h::m -> (f h )::map_list f m ;;

let rev_list l = 
	let rec rev_accu accu l = 
		match l with 
		[] -> accu
		| h::m -> rev_accu (h::accu) m ; 
	in rev_accu [] l;;

let rec rev_accu l = 
		match l with 
		[] -> []
		| h::m -> h::(rev_accu m );;



let generate n =
	let rec accu l n = 
		match n with 0 -> l;
		| n -> n::(accu l (n-1));
	 in accu [] n;;


let rec sigma f l = 
	match l with 
	[] -> 0 ;
	| h::m -> f h + sigma f m ;;



let rec fib x = if x <= 1 then 1 else fib (x - 1) + fib (x - 2);;

	let fibList x = 
		let rec accu n = 
			match n with 0 -> [];
			| n -> ( fib n )::(accu (n-1));
		in accu x;;





let next_square x = let next x = x +1  in (next x)*(next x) ;;