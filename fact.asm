include 'emu8086.inc'
mov cx,5
mov ax,1
fact:
    mul cx
    loop fact
call print_num_uns
ret
define_print_num_uns