.data
 num1 : .double 3.14
 num2 : .double 2.71
 #num1 : .float 3.14
 #num2 : .float 2.71

.text

ldc1 $f2 , num1
ldc1 $f4 , num2

#lwc1 $f2 , num1
#lwc1 $f4 , num2

#add.s $f12 , $f2 , $f4
#add.d $f12 , $f2 , $f4

mul.d $f12 , $f2 , $f4

li $v0 , 3
syscall