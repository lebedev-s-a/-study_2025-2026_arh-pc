%include 'in_out.asm'

SECTION .data
div: DB 'result: ',0

SECTION .text
GLOBAL _start
_start:

mov ebx,3
mov eax,2
add ebx,eax

mov ecx,4
mov eax,ebx
mul ecx
mov ebx,eax

add ebx,5
mov edi,ebx

mov eax,div
call sprint
mov eax,edi
call iprintLF
call quit
