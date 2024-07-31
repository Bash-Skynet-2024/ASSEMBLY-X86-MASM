; move cursor up
.model small
.data
.code
main proc
    mov dl, 50
    mov ah, 2h
    int 21h
    
    mov dl, 10
    mov ah, 2h
    int 21h  
    
    mov dl, 50
    mov ah, 2h
    int 21h
    
    mov ah, 3h     ; gets cursor position
    mov bh, 0
    int 10h
    dec dh         ; decrements dh position which contain row number
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov dl, 50
    mov ah, 2h
    int 21h
    
    mov ah, 4ch
    int 21h
                            
endp
end main
    
    