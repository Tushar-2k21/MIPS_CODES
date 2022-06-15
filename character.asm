.data
 mycharacter : .byte 't'


.text
  li $v0 , 4
  la $a0 , mycharacter
  syscall