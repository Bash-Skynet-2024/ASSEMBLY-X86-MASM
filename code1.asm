; input int and print
.model small
.data
.code
main proc
    mov ah, 7h           ;input without echo
    int 21h
    sub al, '0'          ; al to decimal
    mov dl, '0'          ;dl to decimal
    add dl, al
    mov ah, 2h           ;print output
    int 21h
endp
end main