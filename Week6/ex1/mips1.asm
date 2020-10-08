.data
equation: .asciiz "(y * z^2)/f - q\n"
put_y: .asciiz "Enter Y: "
put_z: .asciiz "Enter Z: "
put_f: .asciiz "Enter F: "
put_q: .asciiz "Enter Q: "

.text

# Print out the equation
li $v0, 4
la $a0, equation
Syscall
# ----------------------

# Read Y
li $v0, 4
la $a0, put_y
syscall

li $v0, 5
syscall
move $t1, $v0
# -------

# Read Z
li $v0, 4
la $a0, put_z
syscall

li $v0, 5
Syscall
move $t2, $v0
# -------

# Read F
li $v0, 4
la $a0, put_f
syscall

li $v0, 5
Syscall
move $t3, $v0
# -------

# Read Q
li $v0, 4
la $a0, put_q
syscall

li $v0, 5
Syscall
move $t4, $v0
# -------

# Evaluating the equation
mul $t1, $t1, $t2 # y * z
mul $t1, $t1, $t2 # answer * z
div $t1, $t3 # answer / f
mflo $t0
sub $t0, $t0, $t4 # answer - q
# -----------------------

# Print the answer
li $v0, 1
move $a0, $t0
syscall
# ----------------

# Return
li $v0, 10
syscall
