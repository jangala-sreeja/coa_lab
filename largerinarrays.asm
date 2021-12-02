include 'emu8086.inc'
org 100h
lea si,inp 
mov cx,4
label1: 
    mov al,[si] 
    ;mov ah,0
    cmp al,max 
    ja label2
    inc si  
    loop label1
    jmp exit
label2:
    mov max,al
    inc si
    loop label1
exit:  
    mov al,max
    call print_num_uns
ret     
inp db 10h,20h,30h,00h
outp db 0,0,0,0
max db 0 
define_print_num_uns
define_print_num
end