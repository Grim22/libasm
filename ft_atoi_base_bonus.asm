			section .text
			global _ft_atoi_base

; rsi contient la base
; rdi le nombre a convertir
; r8 = i
; r9 = ret
; r10 = sign_index (if pair -> sign = 1, else sign = -1)
; rbx = indice
; rdx et rax sont reserves pour le resultat de la multuplication
; ecx = len_base

_ft_atoi_base:
							push rbx; save rbx
							xor r8, r8; i = 0
							xor r9, r9; ret = 0
							mov r10, 2; r10 sert a obtenir le signe. Pair = signe positif. Initialisation: positif
							jmp base_check
							
; check que ne contient pas de whitespace, ni + ni -
; check que ne contient pas deux elem identiques
; check que contient au moins deux elem

base_doublon_check_2:
							mov al, BYTE[rsi + r8]
							cmp BYTE[rsi + r11], al
							je return_error
							inc r11

base_doublon_check:
							cmp BYTE[rsi + r11], 0
							jne base_doublon_check_2
							jmp base_check_inc

base_check_2:
							cmp BYTE[rsi + r8], 9
							je return_error
							cmp BYTE[rsi + r8], 10
							je return_error
							cmp BYTE[rsi + r8], 11
							je return_error
							cmp BYTE[rsi + r8], 12
							je return_error
							cmp BYTE[rsi + r8], 13
							je return_error
							cmp BYTE[rsi + r8], 32
							je return_error
							cmp BYTE[rsi + r8], 43
							je return_error
							cmp BYTE[rsi + r8], 45
							je return_error
							mov r11, r8
							inc r11; j = i + 1
							jmp base_doublon_check

							
base_check_inc:
							inc r8

base_check:
							cmp BYTE[rsi + r8], 0
							jne base_check_2
							cmp r8, 1
							jbe return_error; return 1 if len_base < 1
							mov rcx, r8; rcx = len_base
							xor r8, r8; i = 0
							jmp skip_space

space_inc:
							inc r8

skip_space:
							cmp BYTE[rdi + r8], 32; si espace (32) incrementer
							je space_inc
							cmp BYTE[rdi + r8], 9; si < 9, passer a get_sign
							jb get_sign
							cmp BYTE[rdi + r8], 13; si > 13, passer a get_sign
							ja get_sign
							jmp space_inc; si compris entre 9 et 13, incrementer

sign_inc:
							inc r8

get_sign:
							cmp BYTE[rdi + r8], 43
							je sign_inc
							cmp BYTE[rdi + r8], 45
							je sign_neg
							jmp while

sign_neg:
							inc r10
							jmp sign_inc		

get_index:
							xor rbx, rbx; index = 0
							jmp get_index_2;

index_inc:
							inc rbx

get_index_2:
							cmp BYTE[rsi + rbx], 0
							je return; si on est arrive a la fin de la base sans trouver lelement, cest quil ne sy trouve pas. on peut return
							mov al, BYTE[rdi + r8]
							cmp BYTE[rsi + rbx], al; on parcourt la base tant qu'on est pas a lelement recherche 
							jne index_inc

increment:
							;ret =  ret * len
							mov rax, rcx; on place len dans rax
							mul r9; rdx:rax = r9 * rax -> en realité rax = r9 * rax, car le produit ne peut depasser la taille dun int
							mov r9, rax; ret = ret * len(base)
							;ret = ret + indice
							add r9, rbx; ret = ret + indice
							inc r8

while:
							cmp BYTE[rdi + r8], 0
							jne get_index
					
return:		
							test r10, 1; revient a faire un AND r10 - 1 -> le resultat aura la meme parite que r10. Si impair, negate
							jnp negate

return_2:							
							mov rax, r9; on place la valeur de retour dans rax
							pop rbx; restore rbx
							ret

return_error:
							mov r9, 1
							jmp return

negate:
							neg r9
							jmp return_2
