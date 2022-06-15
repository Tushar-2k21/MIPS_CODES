.data



.text

addi $t1 , $zero , 2000
addi $t2 , $zero , 3000

mult $t1, $t2
 
mfhi $s1

li $v0 , 1
move $a0 , $s1

syscall