include 'emu8086.inc'
lea si,str
lea di,str
label1:
    mov dl,[si]
    cmp dl,'$'
    je label2
    inc si
    jmp label1
label2:
    dec si
    cmp si,di
    jb exit
    mov dl,[si]
    mov ah,2
    int 21h
    jmp label2
exit:
ret
str db 'sreeja$'