.data

message : .asciiz " HELLO THIS IS TUSHAR\n. Nice to meet you."




.text
   main:
   jal display 
   
   li $v0 , 10 
   syscall
   
   display : 
   li $v0 , 4
   la $a0 , message
   syscall
      
   jr
    $ra
   