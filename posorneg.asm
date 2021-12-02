include 'emu8086.inc'  
call scan_num
cmp cx,0
jg label1:
print 'negative'  
jmp exit
label1:
    print 'positive'
exit:
ret
define_scan_num
                                              