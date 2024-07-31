.model small
.data
.code
main proc  
    
    mov ah, 3h   ; mov cursor 10 spaces right
    mov bh, 0
    int 10h
    add dl, 10
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov ah, 3h   ; move cursor 5 spaces down
    mov bh, 0
    int 10h
    add dh, 5
    mov ah, 2h
    mov bh, 0
    int 10h
    
    call base   
    
    mov ah, 3h   ; move cursor 3 spaces left
    mov bh, 0
    int 10h
    sub dl, 3
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov ah, 3h   ; move cursor 5 spaces up
    mov bh, 0
    int 10h
    sub dh, 5
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov ah, 3h   ; move cursor 6 spaces left
    mov bh, 0
    int 10h
    sub dl, 6
    mov ah, 2h
    mov bh, 0
    int 10h  
    
    mov bh, 0    ; move cursor 1 step down
    int 10h
    inc dh
    mov ah, 2h
    mov bh, 0
    int 10h
    
    call left  
    
    mov ah, 3h   ; move cursor 10 spaces right
    mov bh, 0
    int 10h
    add dl, 10
    mov ah, 2h
    mov bh, 0
    int 10h 
    
    mov ah, 3h   ; move cursor 5 spaces up
    mov bh, 0
    int 10h
    sub dh, 5
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov ah, 3h   ; move cursor 4 spaces left
    mov bh, 0
    int 10h
    sub dl, 4
    mov ah, 2h
    mov bh, 0
    int 10h  
    
    call right 
        
    mov ah, 4ch
    int 21h
    
endp

base proc
    
    mov bx, 12    
    mov cx, 12
    mov al, 95     
    
    loop1:
    mov dl, al    ; print "_" 
    mov ah, 2h
    int 21h    
    mov cx, bx
    dec bx
    loop loop1
    
    ret
base endp    

left proc
    mov bx, 5
    mov cx, 5
    mov al, 47
    loop2:
    
    mov dl, al    ; print "/"
    mov ah, 2h
    int 21h  
    
    mov ah, 3h    ; move cursor 1 step down
    mov bh, 0
    int 10h
    inc dh
    mov ah, 2h
    mov bh, 0
    int 10h  
   
    
    
    mov ah, 3h    ; move cursor 2 spaces left
    mov bh, 0
    int 10h
    sub dl, 2
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov cx, bx
    dec bx
    loop loop2
    
    ret
left endp

right proc
    mov bx, 5
    mov cx, 5
    mov al, 92
    loop3:
    
    mov dl, al    ; print "\"
    mov ah, 2h
    int 21h  
    
    mov ah, 3h    ; move cursor 1 step down
    mov bh, 0
    int 10h
    inc dh
    mov ah, 2h
    mov bh, 0
    int 10h  
   
    
    
    mov ah, 3h    ; move cursor 1 step right
    mov bh, 0
    int 10h
    add dl, 1
    mov ah, 2h
    mov bh, 0
    int 10h
    
    mov cx, bx
    dec bx
    loop loop3
    
    ret
right endp    
end main  
    
    