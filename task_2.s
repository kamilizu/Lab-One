.section .bss
.global ram
.lcomm ram, 265


.section .text
.global fill_ram
fill_ram:
lea ram+0x50, %rax

movb $0xFF, 0(%rax)
movb $0xFF, 1(%rax)
movb $0xFF, 2(%rax)
movb $0xFF, 3(%rax)
movb $0xFF, 4(%rax)
movb $0xFF, 5(%rax)
movb $0xFF, 6(%rax)
movb $0xFF, 7(%rax)
movb $0xFF, 8(%rax)

ret

.section .note.GNU-stack,"",@progbits
