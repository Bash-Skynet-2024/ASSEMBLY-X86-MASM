; input int and print int+2
.model small
.data
.code
main proc
    mov ah, 7h    ; input
    int 21h
    sub al, '0'
    add al, 2
    mov dl, '0'
    add dl, al
    mov ah, 2h
    int 21h
endp
end main