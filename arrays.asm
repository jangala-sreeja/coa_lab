lea si,inp
lea di,outp
mov cx,4 
label1:
    mov al,[si]
    mov [di],al
    inc si
    inc di
    loop label1
ret
inp db 10h,20h,30h,40h
outp db 0,0,0,0 
