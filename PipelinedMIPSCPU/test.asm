add $1 $2 $3
sub $4 $5 $1
lw $7 -10($8)
sw $9 30($10)
lw $31 30($10)
addi $29 $31 1
sw $9 10($0)
addi $11 $11 -256
beq $11 $0 1
j 7
nop
# 支持的指令数目为64条，ram地址高于64认为是数据