        .section .text
        .globl _start

_start:
        la a0, input_string   # load address 

loop:
        lb t0, 0(a0)
        beq t0, zero, done

        li t1, 97             # ASCII value for 'a'
        blt t0, t1, next

        li t1, 122            # ASCII value for 'z'
        bgt t0, t1, next

        addi t0, t0, -32      # Convert lowercase letter to uppercase
        sb t0, 0(a0)

next:
        addi a0, a0, 1
        j loop

done:
        j done                # infinite loop


        .section .data
        .align 4
input_string:
        .asciz "Hello world!"
