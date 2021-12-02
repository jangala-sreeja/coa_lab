include 'emu8086.inc'
mov ax,0
mov bx,1
mov cx,n
cmp cx,0
je exit
cmp cx,1
je print
call print_num
l1:
    mov prev,ax
    add ax,bx
    print ' '
    call print_num
    mov bx,prev
    loop l1
printn
printn 'sum is'
call print_num
ret
exit: 
call print_num
ret
print: 
mov ax,1
call print_num
    ret
n dw 3
prev dw 0
define_print_num_uns  
define_print_num
