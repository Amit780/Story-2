.text

.global _start

_start:
	  la x7, _increment
	  la x8, _stop
	  lw x9, 0(x8)
      addi x6, x0, 0
_loop:
	  lw x5, 0(x7)
	  add x6, x6, x5
	  bgt x9, x6, _loop


.data
_stop:
	  .word 0x4
_increment:
	  .word 0x1
