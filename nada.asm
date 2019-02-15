;puc_ecec_cpm1057A02-2
;15/02/19
;higor anjos

;primeiro programa: nada.asm

segment .text
;codigos

global main
main:
;pontos de entrada (gcc)

saida: mov eax,1 ;Servicoe exit
int 80h ;encerrar
