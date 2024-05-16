.global main

.section .rodata
fmt:    .string "Result is %d\n"
.section .text

main:
    addi x18, x0, 200 # N
    addi x19, x0, 0  # Result
    addi x20, x0, 0  # Sum
    addi x21, x0, 1  # Odd
    add x22, x20, x21  # Next sum

Loop:
    blt x18, x22, End
    add x20, x20, x21
    addi x21, x21, 2
    addi x19, x19, 1
    add x22, x20, x21

    blt x0, x18, Loop

End:
    la a0, fmt
    add a1, x0, x19
    call printf

    addi a0, x0, 0
    addi a7, x0, 93 # Exit syscall
    ecall
