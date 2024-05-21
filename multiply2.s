# Multiplication using only add, addi, blt
.global main

.section .rodata
fmt:    .string "Product is %d\n"
.section .text

main:
    addi s0, x0, -2 # Multiplicand
    addi s1, x0, -19  # Multiplier
    addi s2, x0, 0  # Product
    addi t0, x0, 0 # Inverted multiplicand
    addi t1, x0, 0 # Inverted multiplier
    addi t2, x0, 1 # Counter
    addi t3, x0, -1 # Constant

    blt t3, s1, Loop # If multiplier is negative, swap multiplicand and multiplier
    add t6, x0, s1
    add s1, x0, s0
    add s0, x0, t6
    blt t3, s1, Loop # If multiplier is still negative, both are negative, so invert them

InvertN:
    addi s0, s0, 1
    addi t0, t0, 1
    blt s0, x0, InvertN
InvertM:
    addi s1, s1, 1
    addi t1, t1, 1
    blt s1, x0, InvertM

    add s0, x0, t0
    add s1, x0, t1

Loop:
    blt s1, t2, End
    add s2, s2, s0
    addi t2, t2, 1
    blt t3, x0, Loop

End:
    la a0, fmt
    add a1, x0, s2
    call printf

    addi a0, x0, 0
    addi a7, x0, 93
    ecall
