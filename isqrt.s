.global main

.section .rodata
fmt:    .string "Result is %d\n"
.section .text

main:
    addi x18, x0, 17 # N
    addi x19, x0, 0 # Result
    addi x20, x0, 1 # Odd
    addi x21, x20, 0 # Sum

Loop:
    blt x18, x21, End
    addi x20, x20, 2
    add x21, x21, x20
    addi x19, x19, 1
    blt x0, x18, Loop

End:
    la a0, fmt
    add a1, x0, x19
    call printf

    addi a0, x0, 0
    addi a7, x0, 93 # Exit syscall
    ecall
