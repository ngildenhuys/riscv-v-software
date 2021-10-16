for(int i = 0; i < 64; i++){
	C[i] = (A[i] + B[i]) / 2;
}


vsetivli t0, 64, e8 # set 64 elm vector of elm size 8 bits
vl4re8.v v1, (A) # load in 4 registers with 64 8 bit elements 
vl4re8.v v5, (B)
vadd.vv v9, v1, v5
vsrl.vi v9, v9, 1
vs4re8 v9, (C)




ori x1, 64

lw x2, A
lw x3, B
lw x4, C
ori x9, x0, 0

for_loop: 

	lw x5, 0(x2)
	lw x6, 0(x3)

	add x7, x5, x6
	srli x7, x7, 1
	sw x7, 0(x4)

	addi x2, x2, 4
	addi x3, x3, 4
	subi x1, x1, 1

	bne x0, x1, for_loop
end_for:

