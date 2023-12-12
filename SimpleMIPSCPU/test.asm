addi $1 $0 400
addi $30 $0 0
addi $31 $0 5
addi $30 $30 1
addi $31 $31 -1
beq $31 $0 1
j 3
lw $2 0($1)
beq $2 $0 1
addi $10 $0 -1
sw $30 10($1)
lw $22 10($1)
nop
addi $27 $0 1
add $22 $22 $27
sw $22 0($1)
lw $21 0($1)
