include 'emu8086.inc'
org 100h
lea si,inp
mov cx,4
label1: 
    mov al,[si] 
    mov ah,0
    cmp al,min 
    jb label2
    inc si 
    loop label1
    jmp exit
label2:
    mov min,al
    inc si
    loop label1
exit:  
    mov al,min
    call print_num_uns
ret     
inp db 10h,20h,30h,90h
outp db 0,0,0,0
min db 99 
define_print_num_uns
define_print_num
end