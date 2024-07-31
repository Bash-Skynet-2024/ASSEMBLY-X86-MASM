; jump function
.model small
.data
.code
main proc
    mov dl, '0'  ; dl = dec 0
    add dl, 2    ; dl = 2
    mov ah, 2h   ; print
    int 21h
    jmp label    ; jump to "label"
    mov dl, '0'  ; dl = dec 0
    add dl, 3    ; dl = 3
    mov ah, 2h
    int 21h      ; skips instruction to print 3        
    label:
    mov dl, '0'  ; dl = dec 0
    add dl, 4    ; dl = 4
    mov ah, 2h
    int 21h  
    
endp
end main