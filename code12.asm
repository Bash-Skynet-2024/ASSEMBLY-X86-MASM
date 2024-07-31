; print A - Z , a - z
.model small
.data
.code
main proc 
    
    mov cx, 26  
    mov al, 65
    
    label:
    mov dl, al
    mov ah, 2h
    int 21h
    inc al
    loop label  
    
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    mov cx, 26
    mov al, 97
    
    loop2:
    mov dl, al
    mov ah, 2h
    int 21h
    inc al  
    loop loop2
    
    mov ah, 4ch
    int 21h
    
endp
end main

