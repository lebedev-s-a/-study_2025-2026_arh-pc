%include 'in_out.asm'

SECTION .data
    msg: db '�веди�е ���ок�:', 0h

SECTION .bss
    buf1: resb 80

SECTION .text
    global _start

_start:
    mov eax, msg
    call sprintLF

    mov eax, buf1
    mov ebx, 80
    call sread

    mov eax, buf1
    call sprint

    call quit