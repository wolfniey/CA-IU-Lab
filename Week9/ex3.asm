.text
	# Read float
	li $v0, 6
	syscall
	mov.s $f7, $f0
	# Read float
	syscall
	mov.s $f6, $f0
	# Read float
	syscall
	mov.s $f5, $f0
	# Read float
	syscall
	mov.s $f4, $f0
	# Read float
	syscall
	mov.s $f3, $f0
	# Read float
	syscall
	mov.s $f2, $f0
	# Read float
	syscall
	mov.s $f1, $f0
	# Read float
	syscall

	mov.s $f8, $f0
	jal check_num
	mov.s $f8, $f1
	jal check_num
	mov.s $f8, $f2
	jal check_num
	mov.s $f8, $f3
	jal check_num
	mov.s $f8, $f4
	jal check_num
	mov.s $f8, $f5
	jal check_num
	mov.s $f8, $f6
	jal check_num
	mov.s $f8, $f7
	jal check_num
	
# Checks number in $f8 if it is the smallest among f0-f7	
check_num:
	li $t0, 1
	#bgt  $f8, $f0, check_num_skip
	c.le.s $f8, $f0
	and $t0, $t0, $fp
	
	
	c.le.s $f8, $f1
	and $t0, $t0, $fp
	
	c.le.s $f8, $f2
	and $t0, $t0, $fp
	
	c.le.s $f8, $f3
	and $t0, $t0, $fp
	
	c.le.s $f8, $f4
	and $t0, $t0, $fp
	
	c.le.s $f8, $f5
	and $t0, $t0, $fp
	
	c.le.s $f8, $f6
	and $t0, $t0, $fp
	
	c.le.s $f8, $f7
	and $t0, $t0, $fp
	
	sub $t0, $t0, 1
	beqz $t0, print_result
	#bgt $f8, $f1, check_num_skip
	#bgt $f8, $f2, check_num_skip
	#bgt $f8, $f3, check_num_skip
	#bgt $f8, $f4, check_num_skip
	#bgt $f8, $f5, check_num_skip
	#bgt $f8, $f6, check_num_skip
	#bgt $f8, $f7, check_num_skip
	#j print_result
#check_num_skip:
	jr $ra
	
print_result:
	li $v0, 2
	mov.s $f12, $f8
	syscall
	
	li $v0, 10
	syscall