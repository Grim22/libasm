            section .text
            global _ft_strcmp

_ft_strcmp:
            xor rbx, rbx ;i = 0
            xor rax, rax ;utilise pour comparer s1[i] et s2[i]
            jmp while

increment:
            cmp BYTE[rdi + rbx], 0 ; on verfie si on est dans le cas s1[i] = s2[i] = 0
            je ret_zero ; si oui, s1 = s2
            inc rbx ; sinon i++

while:
            mov ah, BYTE[rsi + rbx]; rsi: s1 et rdi: s2
            cmp BYTE[rdi + rbx], ah; compare s1[i] et s2[i]
            je increment ; si s1[i] = s2[i], i++
            jmp return; sinon aller a "return"

ret_zero:
            mov rax, 0
            ret

ret_neg:
            mov rax, -1
            ret

ret_pos:
            mov rax, 1
            ret

return:
            cmp BYTE[rdi + rbx], ah
            jb ret_neg
            cmp BYTE[rdi + rbx], ah
            ja ret_pos
