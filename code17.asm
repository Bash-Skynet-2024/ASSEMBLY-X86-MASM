; input 2 numbers from user and check if they are equal   

.model small

.data 

txt1 db " enter first number $"
txt2 db "enter second number $"

eq db " numbers are equal $"
neq db "numbers are not equal $"

num1 db ?
num2 db ?

.code
 
main proc
    
    mov ax, seg txt1
    mov ds, ax
    mov dx, offset txt1
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h
    sub al, '0'
    mov num1, al 
    
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h  
    
    mov ax, seg txt2
    mov ds, ax
    mov dx, offset txt2
    mov ah, 9h
    int 21h  
    
    mov ah, 1h
    int 21h
    sub al, '0'
    mov num2, al  
    
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    mov al, num1
    cmp al, num2  ; compare num2 with num1
    
    je result       ; jump to result if both numbers are equal,
                    ; if both equal ZF will be set to 1  
    mov ax, seg neq ; if not equal will execute this code instead of result
    mov ds, ax
    mov dx, offset neq
    mov ah, 9h
    int 21h 
    
    result:  
    mov ax, seg eq
    mov ds, ax
    mov dx, offset eq
    mov ah, 9h
    int 21h
    
    mov ah, 4ch
    int 21h
endp
end main
                   
                    
    
    
    