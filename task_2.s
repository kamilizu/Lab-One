.section .bss
.global ram
.lcomm ram, 265


.section .text
.global fill_ram
fill_ram:

    lea ram, %rax           
    add $0x50, %rax         
    movb $0x09, %cl         

loop:
    movb $0xFF, (%rax)      
    inc %rax                
    dec %cl                
    cmp $0x00, %cl          
    jne loop                

    ret

.section .note.GNU-stack,"",@progbits
