          # tohost/fromhost are data locations used by Spike
        .section .data
        .align 8
tohost: .byte 0
        .align 8
fromhost: .byte 0

        .section .text
        .globl _start

_start:
        li a0, 0x2000

loop:
        lb t0, 0(a0)
        beqz t0, end_program

        li t1, 97
        blt t0, t1, skip

        li t1, 122
        bgt t0, t1, skip

        addi t0, t0, -32
        sb t0, 0(a0)

skip:
        addi a0, a0, 1
        j loop

end_program:
        j end_program

