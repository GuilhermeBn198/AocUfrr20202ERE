.text
.globl main
main:
	#entry point
	li $v0, 5 # ler um inteiro
	syscall
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	li $v0, 10 # end program
	syscall
