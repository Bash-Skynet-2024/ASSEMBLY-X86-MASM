; print int using hexadecimal
.model small
.data
.code
main proc
    mov dl, 30h  ; dl = 0 : 30h = 0 :
    add dl, 2h   ; dl = 2
    mov ah, 2h  ; print
    int 21h
endp
end main