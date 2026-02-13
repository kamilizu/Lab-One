.section .bss
.global ram
.lcomm ram, 265


.section .text
.global fill_ram
fill_ram:
    
    movl $0, %eax
    movl $1, %ecx
loop:
    cmp $10, %ecx
    jg end_loop
    
    add %ecx, %eax
    inc %ecx
    jmp loop
    
end_loop:
    
    
    ret

.section .note.GNU-stack,"",@progbits

