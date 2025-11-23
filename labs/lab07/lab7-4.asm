%include 'in_out.asm'

section .data
    msg1 db 'Enter x: ', 0
    msg2 db 'Enter a: ', 0
    msg3 db 'Result: ', 0

section .bss
    x resb 10
    a resb 10
    f resd 1

section .text
    global _start

_start:
    mov eax, msg1
    call sprint
    mov ecx, x
    mov edx, 10
    call sread
    mov eax, x
    call atoi
    mov [x], eax

    mov eax, msg2
    call sprint
    mov ecx, a
    mov edx, 10
    call sread
    mov eax, a
    call atoi
    mov [a], eax

    mov eax, [x]
    cmp eax, [a]
    jle less_equal

    sub eax, [a]
    imul eax, 2
    mov [f], eax
    jmp print_result

less_equal:
    mov dword [f], 15

print_result:
    mov eax, msg3
    call sprint
    mov eax, [f]
    call iprintLF
    call quit
