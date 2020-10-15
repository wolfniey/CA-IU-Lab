.text
	# Read value
	li $v0, 5
	syscall
	move $t0,$v0
	
	bltz $t0, print_a
	
	bgtz $t0, print_b
	
	bgez $t0, print_c
	
	j exit
print_a:
	li $v0, 1
	li $a0, -1
	syscall
	j exit
print_b:
li $v0, 1
	li $a0, 1
	syscall
	j exit
print_c:
li $v0, 1
	li $a0, 0
	syscall
	j exit
exit:
	li $v0, 10
	syscall