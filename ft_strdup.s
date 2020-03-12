            section .text
            global _ft_strdup
            extern _malloc

_ft_strdup:
            xor rbx, rbx
            jmp get_len            

increment:
            inc rbx

get_len:
            cmp BYTE[rdi + rbx], 0
            jnz increment
            push rdi ;save rdi
            mov rdi, rbx ;put len into rdi (arg of malloc) 
            call _malloc
            pop rdi ; restore rdi
            ;rax contient ladresse de lespace alloue
            ;rdi contient la string a copier
            ;rbx contient la len
            xor rcx, rcx
            xor rdx, rdx
            jmp while
assign:
            mov cl, BYTE[rdi + rdx]
            mov BYTE[rax + rdx], cl
            inc rdx

while:
            cmp rdx, rbx
            jbe assign
            ret
            