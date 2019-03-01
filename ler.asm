;PUC
;Higor Cavalcante dos Anjos
;Terceiro programa ler.asm

segment .data
mens1 db "Digite uma frase",10
tam1 equ $-mens1

segment .bss
mens2 resb 100

segment .text
global _start
_start:

print: mov edx, tam1 ; quantidade
	   mov ecx, mens1 ; ponteiro
	   mov ebx, 0 ; FD(Destrutor) tela
	   mov eax, 4 ;ser print
	   int 0x80
	  
ler: mov edx,100 ; Maximo
	 mov ecx, mens2
	 mov ebx,1 ;FD(destrutor) teclado
	 mov eax,3 ;serv Read
	 int 80h
	 ;Em eax retorna o numero de caracteres arma2
	 
	 fim: mov eax,1
	 int 128
