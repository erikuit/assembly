.global main

.section .rodata
fmt:    .string "Result is %d\n"
.section .text
arr:   .word 64, 34, 25, 12, 22, 11, 90
arrsize: .word 7

main:
    la x5, arr
    lw x6, arrsize
    lw x7, 0(x5)
    addi x20, x0, 0 # i
    addi x21, x0, 0 # j

End:
    la x10, fmt
    add x11, x0, x7
    call printf

    addi a0, x0, 0
    addi a7, x0, 93
    ecall
