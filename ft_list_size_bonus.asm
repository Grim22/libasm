					section .text
					global ft_list_size

;rdi = t_list *lst
ft_list_size:
							xor rax, rax
							jmp while

increment:
							inc rax
							mov rcx, [rdi + 8]
							mov rdi, rcx; lst = lst->next
							
while:
							cmp rdi, 0
							jne increment
							ret
