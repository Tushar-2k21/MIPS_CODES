.data
 num1 : .word 10
 num2 : .word 5

.text

 lw $t0 , num1
 lw $t1 , num2
 
 add $t2 , $t1 , $t0
 
 li $v0 ,1
 add $a0 , $t1 , $t0
 syscall
 
