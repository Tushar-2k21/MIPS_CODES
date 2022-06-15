.data

promptmsg : .asciiz "Enter the number :"
result : .asciiz "\nThe result is : "
num : .word 0 
ans : .word 0 
.text

.globl main
main:
li $v0 , 4
la $a0 , promptmsg
syscall

li $v0 , 5
syscall

sw $v0 , num 

lw $a0 , num
jal findfact
sw $v0 , ans

li $v0 , 4
la $a0 , result
syscall

li $v0 ,1
lw $a0 , ans
syscall

#end

li $v0 , 10
syscall

.globl findfact

findfact:

  subu $sp , $sp , 8
  sw $s0 , ($sp)
  sw $ra , 4($sp)
 
  #base case
  li $v0 , 1
  beq $a0 , 0, done
  
  move $s0 , $a0 
  sub $a0 , $a0 , 1
  jal findfact
  
  mul $v0 , $s0 , $v0
  
 done:
    lw $s0 , ($sp)
    lw $ra , 4($sp)
    addu $sp , $sp , 8
    jr $ra
   
   

