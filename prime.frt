: prime
dup 2 < if drop 0  else
dup 4 < if drop 1
	else 1 swap  dup 1 - 2 
		do dup r@ % if
			else r> drop dup 1 - >r swap drop 0 swap
			then
		loop
		drop
	then  
then  ;
