include 'emu8086.inc'
mov ax,n1
mov bx,n2
mov const,ax
cmp ax,bx
ja label1
mov ax,bx
mov bx,n1 
mov const,ax
label1:  
    mov ax,const
    inc q
    mov dx,0
    mul q
    mov temp,ax
    div bx
    cmp dx,0
    je label2
    jmp label1
label2:
    mov ax,temp
    call print_num_uns
ret
n1 dw 7
n2 dw 9
q db 0
temp dw 0
const dw 0 
define_print_num_uns
end
