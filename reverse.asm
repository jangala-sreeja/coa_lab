include 'emu8086.inc'
org 100h 
mov ax,n
label1:
    mov ax,n
    mov bl,10
    mov dx,0 
    div ten
    mov n,ax
    mov ax,sum
    mul bl
    add ax,dx
    mov sum,ax
    cmp n,0
    je label2
    loop label1
    jmp exit
label2:
    mov ax,sum
    call print_num_uns
exit:   
    ret
define_print_num_uns 
n dw 1002
sum dw 0 
ten dw 10
end