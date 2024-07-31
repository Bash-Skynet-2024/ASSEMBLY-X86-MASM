; print int 2
.model small
.data
.code 
main proc
    mov dl, '0' ; dl to decimal
    add dl, 2   ; dl = 2
    mov ah, 2h  ; print
    int 21h
endp
end main