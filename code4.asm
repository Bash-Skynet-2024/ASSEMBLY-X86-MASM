; print 2 using variable
.model small
.data
var1 db 2    ; variable 1 with 8bit size containing 2
.code
main proc 
    mov dl, '0'    ; dl to decimal
    add dl, var1   ; value of var1 into dl
    mov ah, 2h     ; print
    int 21h
endp
end main