let rec palindrome s = 
	let len = String.length s in
	if(len <= 1 ) then 
		true 
	else
		(s.[0] = s.[len-1]) && (palindrome (String.sub s 1 (len-2)) ) ;;

