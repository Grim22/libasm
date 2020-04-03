				section .text
				global _ft_list_push_front
				extern _malloc

;rdi: t_list **begin_list
;rsi: void *data
_ft_list_push_front:
										push rdi
										push rsi
										mov rdi, 16
										call _malloc; rax contient l'adresse du premier element de la structure
										cmp rax, 0
										je return
										pop rsi
										pop rdi
										mov [rax], rsi; lst.content = data
										mov rcx, [rdi]
										mov [rax + 8], rcx ; lst.next = *begin_list
										mov [rdi], rax ; *begin_list = lst

return:										
										ret
										
