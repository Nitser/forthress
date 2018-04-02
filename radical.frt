: radicall

dup dup prime if dup swap else 1 swap then dup 2 do 
	
	r@ prime if dup r@ % if else swap r@ * swap then
	else	
	then
loop drop ;
