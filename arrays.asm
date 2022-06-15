.data

 myarray : .space 12
.text

 addi $s0 , $zero , 8
 addi $s1 , $zero , 4
 addi $s2 , $zero , 5
 
 #index
 addi $t0 , $zero , 0

 sw $s0 , myarray($t0)
 addi $t0 , $t0 , 4
  sw $s1, myarray($t0)
 addi $t0 , $t0 , 4
 sw $s2 , myarray($t0)
 
 lw $t8 , myarray($zero)
 li $v0 , 1
 move $a0 , $t8
 syscall
 
 