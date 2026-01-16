
uppercase.bin:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	00002537          	lui	a0,0x2

00010078 <loop>:
   10078:	00050283          	lb	t0,0(a0) # 2000 <__DATA_BEGIN__>
   1007c:	02028263          	beqz	t0,100a0 <end_program>
   10080:	06100313          	li	t1,97
   10084:	0062ca63          	blt	t0,t1,10098 <skip>
   10088:	07a00313          	li	t1,122
   1008c:	00534663          	blt	t1,t0,10098 <skip>
   10090:	fe028293          	addi	t0,t0,-32
   10094:	00550023          	sb	t0,0(a0)

00010098 <skip>:
   10098:	00150513          	addi	a0,a0,1
   1009c:	fddff06f          	j	10078 <loop>

000100a0 <end_program>:
   100a0:	0000006f          	j	100a0 <end_program>
