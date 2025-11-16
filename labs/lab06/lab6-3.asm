%include 'in_out.asm'

SECTION .data
    div_msg db 'Result: ', 0
    rem_msg db 'Remainder: ', 0

SECTION .text
    global _start

_start:
    mov eax, 4
    mov ebx, 6
    mul ebx
    add eax, 2
    xor edx, edx
    mov ebx, 5
    div ebx

    mov edi, eax

    mov eax, div_msg
    call sprint
    mov eax, edi
    call iprintLF

    mov eax, rem_msg
    call sprint
    mov eax, edx
    call iprintLF

    call quit
