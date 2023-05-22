section .data
		primr: db "El resultado es:= %lf", 10,0
section .bss
		resp: resq 3
section .text
extern printf

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

        call sumar
        MOV rdi, rax

        call sumar

        ADD rsp, 48
        MOV rsp, rbp
        POP rbp
        ret



