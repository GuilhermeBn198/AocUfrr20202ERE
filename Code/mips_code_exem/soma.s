.data
msg1: .asciiz "Digite um numero inteiro (N):"
msg2: .asciiz "Soma = "
if: .asciiz "\n"


# _> N = SUMA :: N = 3 -> 1 + 2 + 3 = 6
.text
.globl main
main:
	li $v0, 4
	la $a0, msg1 # print da msg
	syscall
	
	li $v0, 5 # leitura do dado do usuario
	syscall
	move $t0, $v0
	
	li $t1, 0
	li $t2, 0 # valor da soma
	
	loop: addi $t1, $t1, 1 # i = i +1
		add $t2, $t2, $t1  # sum = sum + i
		beq $t0, $t1, exit # i == N
		j loop
		
	exit: li $v0, 4
		la $a0, msg2
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 10
		syscall
