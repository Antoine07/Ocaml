
let rec syracuse = function 
	| 1 -> [1]
	| n -> if(n mod 2 = 0) then n::syracuse (n/2) else n::syracuse(3*n+1) ;;