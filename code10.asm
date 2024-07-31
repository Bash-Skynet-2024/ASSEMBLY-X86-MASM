; nested loops 

.model small

.data 
var1 db ?    ; variable 1 for first loop 
var2 db ?    ; variable 2 for second loop  

.code
main proc  
    
    mov var1, '1'    ; var1 = 1
    mov var2, 97     ; var2 = a
    mov cx, 5        ; counter for iterations
   
    loop1:           ; loop 1
    mov dl, var1     ; dl = var1 = 1
    mov ah, 2h       ; print
    int 21h
    inc var1         ; var1 + 1 
    
    mov dl, 10       ; next line same positn
    mov ah, 2h
    int 21h
    
         
    loop2:
    mov dl, 13       ; print at fist position
    mov ah, 2h
    int 21h
              
    mov dl, var2     ; dl = var2 = a
    mov ah, 2h       ; print
    int 21h  
    
    inc var2         ; var2 +1 
    loop loop2
    
    mov dl, 13       ; cursor at beginn.
    mov ah, 2h
    int 21h
    mov dl, 10       ; new line 
    mov ah, 2h
    int 21h  
            
    mov cx, 6        ; reset counter 
    
    loop loop1     
endp
end main
    