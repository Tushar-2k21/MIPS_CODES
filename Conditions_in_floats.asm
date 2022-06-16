.data
mes1 : .asciiz "IT WAS TRUE"
mes2 : .asciiz " IT WAS FALSE"
num1 : .float 2.01
num2 : .float 2.00



.text
 main:
 lwc1 $f2 , num1
 lwc1 $f4 , num2
 
 c.eq.s $f2 , $f4
 
 bc1f exit
 
 li $v0 , 4
 la $a0 , mes1
 syscall
 
 
 #end
 li $v0 , 10
 syscall

exit :
  li $v0 , 4
  la $a0 , mes2
  syscall