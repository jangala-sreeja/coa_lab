include 'emu8086.inc'
label1: 
    lea si,inp
    inc i
    mov ax,i
    cmp ax,n
    je label5
    mov j,0
label2:
    mov bx,n
    sub bx,1
    sub bx,i
    cmp j,bx
    jae label1
    mov ax,[si]
    cmp ax,[si+2]
    ja label3
    inc j
    inc si
    inc si
    jmp label2
label3:
    mov bx,[si+2]
    mov [si+2],ax
    mov [si],bx
    inc j
    inc si
    inc si
    jmp label2
label5: 
mov i,-1
lea si,inp
lea di,outp
printing:
    inc i
    mov ax,i
    cmp ax,n
    je exit
    mov ax,[si]
    mov [di],ax
    inc si
    inc si
    inc di
    inc di
    jmp printing 
exit: 
ret
inp dw 10h,30h,20h,40h
outp dw 0,0,0,0 
i dw -1
j dw 0
n dw 4