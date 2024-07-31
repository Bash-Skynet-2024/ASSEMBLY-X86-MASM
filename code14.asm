.model small
.data
.code
main proc
    mov dl, 50
    mov ah, 2h
    int 21h
    
    mov ah, 3h
    mov bh, 0
    int 10h
    inc dl       ; move cursor to the left , use dec dl to move cursor to right
    mov ah, 2h
    mov bh, 0
    int 10h 
    
    mov dl, 50
    mov ah, 2h
    int 21h
    
endp
end main
    
    