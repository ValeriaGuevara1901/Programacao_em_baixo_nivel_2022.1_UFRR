section .data
message: db "Olá Professor!", 10, 0
str1: db 'teste1',0
str2: db 'teste1',0
arg1: db 'copiar',10,0
arg2: times '1' db  66
num: db '233'
negNum: db '-233'

section .text
%include "lib.ioString"
global _start

_start:
	mov rax, 1245
	call print_uint

	mov rdi, -2
	call print_int

	mov rdi, num
	call parse_uint
	mov rdi,rax
	call print_uint

	mov rdi, negNum
	call parse_int
	mov rdi,rax
	call print_int

	mov rdi, str1
	mov rsi, str2
	call string_equals

	mov rdi, rax
	call print_uint

	mov rdi, arg1
	mov rsi, arg2
	call string_copy

	mov rdi, arg2 
	call print_string

	call exit