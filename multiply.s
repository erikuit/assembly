.global main

.section .rodata
fmt:    .string "Product is %d\n"
.section .text

main:
    addi t0, x0, 19 # Multiplicand
    addi t1, x0, 9  # Multiplier
    addi t2, x0, 0  # Product
    addi t4, x0, 1

Loop:
    andi t3, t0, 1    # Multiplier & 1
    bne t3, t4, Shift # If multiplier & 1 != 1
    add t2, t2, t1

Shift:
    srli t0, t0, 1
    slli t1, t1, 1
    bne t0, x0, Loop

End:
    la a0, fmt
    add a1, x0, t2
    call printf

    addi a0, x0, 0
    addi a7, x0, 93
    ecall
