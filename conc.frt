: copy-word ( adrIn adrOut -- adrRes)

swap dup count >r swap r> 0 do 
( adrIn adrOut len 0 ) 
    dup rot dup c@
    ( adrOut adrOut adrIn char )
      rot c! 1 + swap 1 +
      ( adrIn+1 adrOut+1 )
  loop
  swap drop 
;
        

: conc
  over over
  ( adr1 adr2 adr1 adr2 )
  count swap count 1 + +
  ( adr1 adr2 len2+len1+1 )
  heap-alloc dup >r
  ( adr1 adr2 adrOut || adrOut )
  rot dup >r swap copy-word
  ( adr2 adrRes || adrOut adr1 )
  swap dup >r swap copy-word
  ( adrRes2 || adrOut adr1 adr2 )
  0 swap c!
  (  || adrOut adr1 adr2 )
  r> heap-free r> heap-free r>
;
