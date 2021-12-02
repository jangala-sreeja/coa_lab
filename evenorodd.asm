;program for even or odd
include 'emu8086.inc'
mov al,201
mov bl,2
div bl
cmp ah,0
JE label1
PRINT 'NOT EVEN'
jmp last
label1:
    PRINT 'EVEN'
last:
    RET