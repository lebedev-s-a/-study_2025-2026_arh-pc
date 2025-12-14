%include 'in_out.asm'

SECTION .data
question db 'what is your name? ', 0
filename db 'name.txt', 0
msg db 'my name is  ', 0

SECTION .bss
name resb 100

SECTION .text
global _start

_start:
    mov eax, question
    call sprint

    mov ecx, name
    mov edx, 100
    call sread

    mov ecx, 0644o
    mov ebx, filename
    mov eax, 8
    int 80h

    mov esi, eax

    mov eax, msg
    call slen
    mov edx, eax
    mov ecx, msg
    mov ebx, esi
    mov eax, 4
    int 80h

    mov eax, name
    call slen
    mov edx, eax
    mov ecx, name
    mov eax, 4
    int 80h

    mov ebx, esi
    mov eax, 6
    int 80h

    call quit
