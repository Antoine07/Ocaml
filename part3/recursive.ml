let rec cpt_inverse n = if n = 0 then () else
  begin
    print_int n ;
    print_string " ";
    cpt_inverse (n-1) ;
  end;;

 let rec cpt_normal n = 
 if n = 0 then () 
 else
  begin
  	cpt_normal (n-1) ;
    print_int n ;
    print_string " ";
  end;; 