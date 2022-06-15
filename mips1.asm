.data
message : .asciiz " The result is \n"
myarray : .space 24

.text

addi $s0 , $zero , 1
addi $s1 , $zero , 2
addi $s2 , $zero , 3
addi $s3 , $zero , 4
addi $s4 , $zero , 5
addi $s5 , $zero , 6

addi $t0 , $zero , 0


sw $s0 , myarray($t0)
addi $t0 , $t0 ,4

sw $s1 , myarray($t0)
addi $t0 , $t0 ,4

sw $s2 , myarray($t0)
addi $t0 , $t0 ,4

sw $s3 , myarray($t0)
addi $t0 , $t0 ,4

sw $s4 , myarray($t0)
addi $t0 , $t0 ,4

sw $s5 , myarray($t0)

#index =0
addi $t0 , $zero , 0

lw $t6, myarray($t0)
addi $t2 , $t6 , 0

addi $t0 , $zero ,4

lw $t4, myarray($t0)
add $t2 , $t2 , $t4
addi $t0 , $t0 ,4

lw $t6, myarray($t0)
mul $t2 , $t2 , $t6
addi $t0 , $t0 ,4

lw $t6, myarray($t0)
div $t2 , $t2, $t6

addi $t0 , $t0 ,4

lw $t6, myarray($t0)
sub $t2 , $t2 , $t6

addi $t0 , $t0 ,4

lw $t6, myarray($t0)

mul $t8, $t2 , $t6



li $v0 , 1
move $a0 , $t8
syscall



