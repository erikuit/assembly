.global main

.section .rodata
fmt:    .string "I is %d, J is %d\n"
.section .text
arr:   .word 64, 34, 25, 12, 22, 11, 90
arrsize: .word 7

main:
    la x5, arr
    lw x22, arrsize
    lw x7, 0(x5)
    addi x20, x0, 0 # i

L1:
    addi x21, x0, 0 # j

L2:
    addi x20, x20, 1
    bne x20, x22, L3
    bne x20, x22, L2

    j End

L3:
    addi x21, x21, 1

    la x10, fmt
    add x11, x0, x20
    add x12, x0, x21
    call printf

    bne x21, x22, L3
    j L1

End:
    la x10, fmt
    addi x11, x0, 88
    addi x12, x0, 99
    call printf

    addi a0, x0, 0
    addi a7, x0, 93
    ecall
