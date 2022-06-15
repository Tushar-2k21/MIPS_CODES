.data

mymessage: .asciiz "Assembly"


.text
 li $v0, 4
 la $a0, mymessage
