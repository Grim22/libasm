			section .text
			global ft_strcpy

ft_strcpy:
					;rdi: dest
					;rsi: src
					;returns a pointer to dest
					xor rcx, rcx
					xor rax, rax
					jmp while

increment:
					mov al, BYTE[rsi + rcx]
					mov BYTE[rdi + rcx], al
					inc rcx

while:
					cmp BYTE[rsi + rcx], 0
					jne increment
					mov al, BYTE[rsi + rcx]
					mov BYTE[rdi + rcx], al
					mov rax, rdi
					ret
