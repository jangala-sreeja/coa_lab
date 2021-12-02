include 'emu8086.inc'  
mov ax,n
mov cx,n
label1:   
    mov dx,0
    mov ax,n
    div cx
    cmp dx,0
    je label2
    loop label1
    jmp exit
label2:
    inc c
    loop label1
cmp c,2
je label3
print 'NOT PRIME'
jmp exit
label3:
    print 'PRIME'
exit:
    ret
n dw 11
c dw 0

