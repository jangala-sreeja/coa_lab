include 'emu8086.inc'
mov ax,n
mov bx,10
label1:
    mov dx,0
    div bx
    cmp ax,0
    je amst
    inc c
    jmp label1
amst:
    mov ax,n
    mov actn,ax
label2:
    mov ax,n
    mov dx,0
    div bx
    mov n,ax
    mov var,dx
    mov ax,var
    mov cx,c
    multi:
        mul var
        loop multi
    add sum,ax
    cmp n,0
    jne label2
    jmp label3
label3:     
    mov ax,sum
    call print_num_uns
    cmp ax,actn
    je label4
    print 'not armstrong'
    jmp exit
label4:
    print 'armstrong'
exit:
    ret
define_print_num_uns
n dw 153
sum dw 0
var dw 0
actn dw 0
c dw 0