Libasm @ 42


The aim of this project is to get familiar with assembly language

Understand the basics of computer architecture (registers, ISA, adressing, CPU, bus...)

Use LLDB to debug



Intro
An assembly (or assembler) language, often abbreviated asm, is a low-level programming language for a computer, or other programmable device, in which there is a very strong (but often not one-to-one) correspondence between the language and the architecture’s machine code instructions. Each assembly language is specific to a particular computer architecture. In contrast, most high-level programming languages are generally portable across multiple architectures but require interpreting or compiling. Assembly language may also be called symbolic machine code.

Goal
Code basic C functions in assembly:

◦ ft_strlen (man 3 strlen)

◦ ft_strcpy (man 3 strcpy) ◦ ft_strcmp (man 3 strcmp)

◦ ft_write (man 2 write)

◦ ft_read (man 2 read)

◦ ft_strdup (man 3 strdup, you can call to malloc)

Bonus

• ft_atoi_base (man atoi)

• ft_list_push_front (like the one in the piscine)

• ft_list_size (like the one in the piscine)

• ft_list_sort (like the one in the piscine)

• ft_list_remove_if (like the one in the piscine)


Ressources
Computer architecture

ISA: Instruction Set Architecture: set of instructions.
One instruction (basic action that the CPU can do) = one "op code" in machine code (binary).
CPU = implementation of an ISA

"x86": most popular ISA:

- x86-32: x86 with 32 bits registers;

- x86-64: x86 with 64 bits registers

(size of the register = basic unit of data that the CPU can process)

ASM: 

- for a given ISA, defines "mnemonic codes" (ex: MOV) to refer to machine code instructions

- Advantage: strong correspondence with machine language -> much faster/simpler than compiling

- Disadvantage: not "portable": 1 ASM language = 1 ISA. 

- The even can be different ASM language for a given ISA:
x86 has two main languages/syntax:
Intel syntax (mostly used on Windows) and AT&T syntax (mostly used on Unix)



Links
On ASM:

https://beta.hackndo.com/assembly-basics/

https://openclassrooms.com/fr/courses/2288321-apprenez-a-programmer-en-assembleur-x86/2288775-introduction-installation

http://www.egr.unlv.edu/~ed/assembly64.pdf

On computer architecture:

https://www.youtube.com/playlistlist=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo

(See Part 1 - Tuto from Crash Course)
