.global main

.section .rodata
fmt:    .string "Product is %d\n"
.section .text

main:
    addi t0, x0, 19 
    addi t1, x0, 9
    addi t2, x0, 0 
    addi t4, x0, 1

    bne t0, x0, Loop

    jal x0, End

Loop:
    andi t3, t0, 1
    beq t3, t4, Add
    jal x0, Shift

Shift:
    srli t0, t0, 1
    slli t1, t1, 1

    beq t0, x0, End
    beq x0, x0, Loop

Add:
    add t2, t2, t1
    jal x0, Shift

End:
    la a0, fmt
    add a1, x0, t2
    call printf
    addi a0, x0, 0
    addi a7, x0, 93
    ecall
