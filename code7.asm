;loop instruction
.model small
.data
.code 
main proc
    mov dl, '0' ; dl = dec 0
    add dl, 5    ; dl = 5
    mov cx, 5  ; counter for loop iterations : 5 times 
    label:     ; body of loop
    mov ah, 2h ; print dl
    int 21h
    dec dl     ; decrement dl = dl - 1
    loop label ; execute label loop
endp
end main
     
    
