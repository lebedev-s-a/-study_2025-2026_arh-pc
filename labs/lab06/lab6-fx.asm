%include 'in_out.asm'

SECTION .data
    msg1 db 'Function: f(x) = (9x - 8) / 8', 0
    msg2 db 'Enter x: ', 0
    msg3 db 'Result: ', 0

SECTION .bss
    x resb 80

SECTION .text
    global _start

_start:
    mov eax, msg1
    call sprintLF

    mov eax, msg2
    call sprint

    mov ecx, x
    mov edx, 80
    call sread

    mov eax, x
    call atoi
    mov ebx, 9
    imul eax, ebx
    sub eax, 8
    mov ebx, 8
    xor edx, edx
    div ebx
    mov edi, eax
    mov eax, msg3
    call sprint
    mov eax, edi
    call iprintLF
    call quit
