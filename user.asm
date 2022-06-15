.data

   prompt : .asciiz "ENTER YOUR AGE MAN"
   message : .asciiz "\nYour Age is : "
.text
 
  #PROMPT USER TO ENTER
  li $v0 , 4
  la $a0 , prompt
  syscall
  
  #ALLOW USER TO ENTER THE AGE
  li $v0 ,5
  syscall
  
  #display your age message
  move $t0 , $v0
  li $v0 , 4
  la $a0 , message
  syscall
  
  #display entered age
  li $v0  , 1
  move $a0 , $t0
  syscall
  
  