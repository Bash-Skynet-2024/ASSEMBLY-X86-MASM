; input 2 numbers from user and print sum using nested procedure  

.model small               ; 16 bit model
                           
.data                      ; declare variables

num1 db ?                  ; variable to store first input number
num2 db ?                  ; variable to store second input number

txt1 db "enter num 1 $"    ; variable to display and ask first num input
txt2 db "enter num 2 $"    ; variable to display and ask second num input
txt3 db " + $"             ; variable to display plus sign
txt4 db " = $"             ; variable to display equal to sign

.code                      ; code begins
main proc                  ; main procedure
    
    mov ax, seg txt1       ; display and ask first num input
    mov ds, ax
    mov dx, offset txt1
    mov ah, 9h 
    int 21h   
    
    mov ah, 1h             ; input first num
    int 21h
    sub al, '0'            ; convert al from ascii to decimal 0
    mov num1, al           ; store input in variable 1
    
    mov dl, 13             ; move cursor to beginning of current line
    mov ah, 2h
    int 21h
    mov dl, 10             ; move cursor to next line same position
    mov ah, 2h
    int 21h
    
    mov ax, seg txt2       ; display and ask second num input
    mov ds, ax
    mov dx, offset txt2
    mov ah, 9h
    int 21h  
    
    mov ah, 1h             ; input second num
    int 21h
    sub al, '0'            ; convert al from ascii to decimal 0
    mov num2, al           ; store second input in variable 2
    
    mov dl, 13             ; move cursor to beginning of current line
    mov ah, 2h
    int 21h
    mov dl, 10             ; move cursor to next line same position
    mov ah, 2h
    int 21h
    
    call addnum            ; call the function/procedure to do addtion 
    
    mov ah, 4ch            ; end program 
    int 21h              
    
endp                       ; end procedure

addnum proc                ; body of addition procedure
    
    mov dl, '0'            ; convert dl from ascii to decimal 0
    add dl, num1           ; move into dl the value of num1
    mov ah, 2h             ; print num1
    int 21h
    
    mov ax, seg txt3       ; print plus sign using variable
    mov ds, ax
    mov dx, offset txt3
    mov ah, 9h
    int 21h
    
    mov dl, '0'            ; convert dl from ascii to decimal 0
    add dl, num2           ; move into dl the value of num2
    mov ah, 2h             ; print num2 
    int 21h
    
    mov ax, seg txt4       ; print equal to sign
    mov ds, ax
    mov dx, offset txt4
    mov ah, 9h
    int 21h
    
    mov dl, '0'            ; convert dl from ascii to decimal 0
    add dl, num1           ; dl + num1
    add dl, num2           ; dl = dl + num1 + num2
    mov ah, 2h             ; print dl i.e. addition
    int 21h
    
    ret                    ; return to main procedure
    
addnum endp                ; end the addition procedure
end main                   ; end whole program
     


    
