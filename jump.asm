include 'emu8086.inc' 
;jsdfgd
mov al,6
mov bl,5
cmp al,bl
JE lable1
PRINT 'no'
JMP exit  
lable1:
    PRINT 'yes'
exit:
    RET