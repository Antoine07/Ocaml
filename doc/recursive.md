# Element de cours
## La récursion

- Soit la fonction récursive puissance pw x n suivante:

```ocaml

let rec pw x = function 
	| n when n < 0 -> failwith "n must be positive integer" (* gestion des exceptions *)
	| 0 -> 1  (* cas particulier *)					
	| 1 -> x  (* terminale si n = 1 dès le départ il n'y a pas de récursion mais si n > 1 => terminale *)
	| n -> x*(pw x (n-1)) ;; (* recursion voir ci-dessous pour comprendre le mécanisme *)

```


```
Récursion phase descendante:

pw(x,4) = x*pw(x,3)
		   pw(x,3) = x * pw(x,2)
		   				 pw(x,2) = x * pw(x,1) 
		   							   pw(x,1) = x    recursion terminale
-----------------------------------------------------------------------
Phase de remonté de la récursion:

						 pw(x,2) = x * x   <- remplacement de pw(x,1) = x
		   pw(x,3) = x * x * x             <- remplacement de pw(x,2) = x * x
pw(x,4) = x * x * x * x                    <- remplacement de pw(x,3) = x * x * x
