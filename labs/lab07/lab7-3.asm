 %include 'in_out.asm'

section .data
    msg db 'The smallest number: ', 0
    a dd 54
    b dd 62
    c dd 87

section .bss
    min resd 1

section .text
    global _start

_start:
    mov eax, [a]
    mov [min], eax

    mov eax, [b]
    cmp eax, [min]
    jge check_c
    mov [min], eax

check_c:
    mov eax, [c]
    cmp eax, [min]
    jge finish
    mov [min], eax

finish:
    mov eax, msg
    call sprint
    mov eax, [min]
    call iprintLF
    call quit
