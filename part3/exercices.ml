#use "utils.ml"
#use "palindrome.ml"
#use "recursive.ml"

let rec print_list_string myList = 
	match myList with
		[] -> print_endline "This is the end of the string list!"
		| head::body -> 
					begin
						print_endline head;
						print_list_string body
					end;;


print_list_string fruits;;
print_int (len fruits) ;;

let l = ["serres"; "ocaml"; "ada"];;

let len = List.length l;;

for i=0 to (len-1) do 
	if(palindrome (List.nth l i)) then 
		print_endline "c'est un palindrome"
	else
		print_endline "ce n'est pas un palindrome"
done;;

cpt_inverse 10 ;;
print_endline " ";;
cpt_normal 10 ;;
