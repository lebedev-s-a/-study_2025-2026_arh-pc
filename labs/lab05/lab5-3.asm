%include "in_out.asm"

SECTION .data
msg: DB '�веди�е ���ок�: ',0h

SECTION .bss
buf1: RESB 80

SECTION .text
GLOBAL _start
_start:
    mov eax, msg
    call sprintLF

    mov eax, buf1
    mov ebx, 80
    call sread

    call quit