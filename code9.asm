; nested loops 

.model small

.data 
var1 db ?    ; variable 1 for first loop 
var2 db ?    ; variable 2 for second loop  

.code
main proc  
    
    mov var1, '1'    ; var1 = 1
    mov var2, '5'    ; var2 = 5
    mov cx, 5        ; counter for iterations
   
    loop1:           ; loop 1
    mov dl, var1     ; dl = var1 = 1
    mov ah, 2h       ; print
    int 21h
    inc var1         ; var1 + 1
    
    
    mov dl, 10
    mov ah, 2h
    int 21h     
           
    loop2:           ; loop 2
    mov dl, var2     ; dl = var2 = 5
    mov ah, 2h       ; print
    int 21h
    dec var2         ; var2 - 1
    loop loop2 
    
    
    mov dl, 10
    mov ah, 2h
    int 21h     
            
    mov cx, 6        ; reset counter 
    
    add var2, 5      ; reset value of var2
    
    loop loop1     
endp
end main
    