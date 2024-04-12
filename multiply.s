.global _start

_start:
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
    add a0, zero, t2
    addi a7, zero, 93
    ecall
