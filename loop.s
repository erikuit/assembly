.global _start

_start:
    addi x22, x0, 8
    addi x23, x0, 4
    addi x20, x0, 10
    addi x21, x0, 7

    bne x22, x23, Loop
    add x19, x20, x21

    add a0, zero, 9
    addi a7, zero, 93
    ecall

Loop:
    add x20, x20, x21
    addi x23, x23, 1
    beq x22, x23, End
    beq x0, x0, Loop
End:
    add a0, zero, x20
    addi a7, zero, 93
    ecall
