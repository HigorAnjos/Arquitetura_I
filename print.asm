;PUC
;22/02/2019
;Higor Anjos
;Segundo programa: print.asm

segment .data

mens db "Bom diaá!",10

tamanho equ $-mens

segment .text

;Dados inicial

global _start ; o main nao funciona mais, ligador diferente agora

_start:

	mov edx, tamanho; quantidade
	mov ecx, mens ; 
	mov ebx, 0 ;Minitor (FD)
	mov eax, 4 ;Servico print
	int 80h ;print
	
sair: mov eax, 1 ;Exit
	  int 80h   ;sai
