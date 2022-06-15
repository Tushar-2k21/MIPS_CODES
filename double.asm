.data
 mydouble : .double 7.232
 myzero : .double 12.32
.text
 
 #ldc1 $f2 , mydouble
 #ldc1 $f0 , myzero
 li $v0  , 3
 ldc1 $f12 , mydouble
 #ldc1 $f0 , myzero
 #add.d $f12 , $f2 , $f0
 syscall