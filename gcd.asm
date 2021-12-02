include 'emu8086.inc'
mov ax,n1
mov bx,n2
mov const,ax
mov q,bx
cmp ax,bx
ja label1
mov ax,bx
mov bx,n1
mov const,ax
mov q,bx
label1:
    mov ax,const
    mov dx,0
    div q
    cmp dx,0
    je label2
    dec q
    jmp label1
label2:
    mov dx,0
    mov ax,bx
    div q
    cmp dx,0
    je label3
    dec q
    jmp label1
label3:
    mov ax,q
    call print_num_uns
ret
n1 dw 63
n2 dw 35
q dw 0
const dw 0
define_print_num_uns



    