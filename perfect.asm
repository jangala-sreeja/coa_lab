include 'emu8086.inc'
mov ax,496
mov bx,ax
mov cx,ax
dec cx
perfect:
    mov ax,bx
    mov dx,0 
    div cx
    cmp dx,0
    je sum
    loop perfect
    jmp exit
sum:
    add s,cx
    loop perfect
cmp bx,s
je label1
print 'NOT PERFECT'
label1:
    print 'PERFECT' 
exit:
ret 
s dw 0

