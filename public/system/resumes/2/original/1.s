.data
	msg1: .asciiz "Tamanho do vetor (numero natural menor que 50): "
	noval: .asciiz "\n"
	msg: .asciiz "Dados do vetor:\n"
	m1: .asciiz "Vet["
	m2: .asciiz"]="
	vetor1: .space 200
	vetor2: .space 200
	vetor3: .space 200

.text
	.globl main
main:
	li $v0, 4 #Escrita msg1
	la $a0, msg1
	syscall
	li $v0, 5 #Leitura Tamanho do Vetor
	syscall
	addi $s0, $v0, 0

	la $t0, vetor1
	la $t1, vetor2
	la $t2, vetor3

	li $v0, 4 #Escrita msg
	la $a0, msg
	syscall
	li $s1, 1 #cont
	la $s2, 0($t0)
read1:
	li $v0, 4
	la $a0, m1
	syscall
	li $v0, 1
	addi $a0, $s1, 0
	syscall
	li $v0, 4
	la $a0, m2
	syscall
	li $v0, 5 #leitura de inteiro
	syscall
	sw $v0, 0($s2)
	
	addi $s2, $s2, 4 #i++
	addi $s1, $s1, 1 #cont++
	ble $s1, $s0, read1
	#fim da leitura

	li $v0, 4 #Escrita msg
	la $a0, msg
	syscall
	li $s1, 1 #cont
	la $s2, 0($t1)
read2:
	li $v0, 4
	la $a0, m1
	syscall
	li $v0, 1
	addi $a0, $s1, 0
	syscall
	li $v0, 4
	la $a0, m2
	syscall
	li $v0, 5 #leitura de inteiro
	syscall
	sw $v0, 0($s2)
	
	addi $s2, $s2, 4 #i++
	addi $s1, $s1, 1 #cont++
	ble $s1, $s0, read2
	#fim da leitura

	la $s2, 0($t0)
	la $s3, 0($t1)
	la $s4, 0($t2)
	li $s1, 1
soma:
	lw $t3, 0($s2)
	lw $t4, 0($s3)
	add $t3, $t3, $t4
	sw $t3, 0($s4)
	addi $s2, $s2, 4 #i++
	addi $s3, $s3, 4 #j++
	addi $s4, $s4, 4 #k++
	addi $s1, $s1, 1 #cont++
	ble $s1, $s0, soma
	
	li $s1, 1 #cont
	la $s2, 0($t2)
	li $v0, 4 #Escrita msg
	la $a0, msg
	syscall

print:
	li $v0, 4
	la $a0, m1
	syscall
	li $v0, 1
	addi $a0, $s1, 0
	syscall
	li $v0, 4
	la $a0, m2
	syscall
	
	li $v0, 1 #escrita de inteiro
	lw $a0, 0($s2)
	syscall
	li $v0, 4
	la $a0, noval
	syscall
	
	addi $s2, $s2, 4 #i++
	addi $s1, $s1, 1 #cont++
	ble $s1, $s0, print
	#fim da escrita

	li $v0, 10
	syscall
 