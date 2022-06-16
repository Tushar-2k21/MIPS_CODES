.data
myage : .word 69 #this is word which uses 32 bits= 4 bytes


.text
 li $v0, 1  # the code is 1 for printing a word
 lw $a0 , myage
 syscall
