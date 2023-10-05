.text

.global _start
_start:
	 la x2, _mylabel
	 la x8, _stop
	 lw x8, 0(x8)
	 add x3, x2, x8
	 addi x5, x0, 0
_loop:
	 lw x4, 0(x2)
	 add x5, x5, x4
	 addi x2, x2, 0x4
	 blt x2, x3, _loop

.data
_stop:
	.word 0xc

_mylabel:
	.word 0x1
	.word 0x2
	.word 0x3
	.word 0x4
	.word 0x5
