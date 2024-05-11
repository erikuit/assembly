.global main

.section .rodata
fmt:    .string "Number of arguments is %d\n"
.section .text

main:
    add t0, x0, a0
    add t1, x0, a1
    addi t2, x0, 1
    add a1, x0, t0
    la a0, fmt
    call printf
    addi a0, x0, 0
    addi a7, x0, 93
    ecall
