include 'emu8086.inc'
lea si,str
lea di,str
label1:
    mov dl,[si]
    cmp dl,'$'
    je label2
    inc si
    jmp label1
label2:
    dec si
    cmp di,si
    ja exit1
    mov al,[si]
    cmp al,[di]
    je label3
    print 'not palindrome'
    jmp exit
label3:
    inc di
    jmp label2
exit1:
    print 'palindrome'
exit:
ret
str db 'sris$'
    