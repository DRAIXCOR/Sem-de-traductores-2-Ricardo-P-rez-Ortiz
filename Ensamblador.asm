section .text 
global sumar
, main
sumar:
 	PUSH rbp 
	MOV rbp, rsp 
	SUB rsp, 48 
	MOV QWORD [rbp -24], rdi 
MOV QWORD [rbp -28], rdi 
MOV rax, QWORD [rbp -24]

	ADD rsp, 48 
	MOV rsp, rbp 
	POP rbp 
	ret 
	
main:
 	PUSH rbp 
	MOV rbp, rsp 
	SUB rsp, 48 
		MOV rdi, rax
	call sumar	MOV rdi, rax
	call sumar
	ADD rsp, 48 
	MOV rsp, rbp 
	POP rbp 
	ret 
	