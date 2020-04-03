            section .text
            global _ft_strdup
            extern _malloc

;rax contient ladresse de lespace alloue
;rdi contient la string a copier
;rcx contient la len

_ft_strdup:
            xor rcx, rcx
            jmp get_len            

increment:
            inc rcx

get_len:
            cmp BYTE[rdi + rcx], 0
            jnz increment
            push rdi ;save rdi
            mov rdi, rcx ;put len into rdi (arg of malloc) 
			push rcx ; save rcx
			push rdx; only to move rsp up for the stack to be aligned
            call _malloc
			cmp rax, 0
			je return ; if malloc returns NULL, return 0
			pop rdx
			pop rcx ; restore rcx
            pop rdi ; restore rdi
            xor rdx, rdx
            jmp while
assign:
            mov cl, BYTE[rdi + rdx]
            mov BYTE[rax + rdx], cl
            inc rdx

while:
            cmp rdx, rcx
            jbe assign

return:            
			ret
            
