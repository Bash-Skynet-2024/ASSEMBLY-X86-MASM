; print a square
.model small 
.data
.code
main proc 
    
    mov ah, 3h     
    mov bh, 0
    int 10h        ; move cursor 5 spaces to right
    add dl, 5
    mov ah, 2h
    mov bh, 0
    int 10h  
    
    call topside   ; procedure to print top side of square
    
    mov ah, 3h     
    mov bh, 0
    int 10h        ; move cursor 21 spaces to leftt
    sub dl, 21
    mov ah, 2h
    mov bh, 0
    int 10h 
    
    call bothsides ; procedure to  print left and right side of square 
       
    
    mov ah, 3h
    mov bh, 0
    int 10h
    inc dh         ; move cursor one step down
    mov ah, 2h
    mov bh, 0
    int 10h 
    
    call topside   ; procedure to print bottom/top side
    
    mov ah, 4ch    ; end program
    int 21h
    
                   ; end main procedure
endp   

topside proc       ; body of top side procedure
    
    mov bx, 20     ; set counter terminator
    mov cx, 20     ; set counter to 20 iterations
    mov al, 95     ; al contains ascii value for "_" 
    
    up:            ; loop to print upper side of square
    mov dl, al
    mov ah, 2h     ; print "_" 20 times
    int 21h
    mov cx, bx
    dec bx
    loop up 
    
    ret            ; return to main procedure
topside endp       ; end body of top side proc

bothsides proc     ; body of left and right side procedure
     mov bx, 11    ; counter to terminate cx counter
     mov cx, 11     ; set counter to 10 iterations
     mov al, 124    ; al contains ascii value for "|"
    
     sides:          ; loop to print left and right side 
     mov ah, 3h
     mov bh, 0
     int 10h        ; move cursor one step down
     inc dh
     mov ah, 2h
     mov bh, 0
     int 10h
     
     mov dl, al     ; print "|"
     mov ah, 2h
     int 21h 
    
     mov ah, 3h
     mov bh, 0
     int 10h        ; move cursor 19 spaces to right
     add dl, 19
     mov ah, 2h
     mov bh, 0
     int 10h  
    
     mov dl, al     ; print "|"
     mov ah, 2h
     int 21h 
    
     mov ah, 3h
     mov bh, 0
     int 10h        ; move cursor 21 spaces to left
     sub dl, 21
     mov ah, 2h
     mov bh, 0
     int 10h 
     mov cx, bx
     dec bx
    
     loop sides  
    
     ret            ; return to main procedure
bothsides endp      ; end body of left-right side procedure
end main            ; end whole procedure