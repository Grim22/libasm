<h1>Libasm @ 42</h1>
<p skip="true"><br></p>
<p skip="true">The aim of this project is to get familiar with assembly language</p>
<p skip="true">Understand the basics of computer architecture (registers, ISA, adressing, CPU, bus...)</p>
<p skip="true">Use LLDB to debug</p>
<p skip="true"><br></p>
<h2>Intro</h2>
<p>An assembly (or assembler) language, often abbreviated asm, is a low-level programming language for a computer, or other programmable device, in which there is a very strong (but often not one-to-one) correspondence between the language and the architecture&rsquo;s machine code instructions. Each assembly language is specific to a particular computer architecture. In contrast, most high-level programming languages are generally portable across multiple architectures but require interpreting or compiling. Assembly language may also be called symbolic machine code.</p>
<h2>Goal</h2>
<p>Code basic C functions in assembly:</p>
<p>◦ ft_strlen (man 3 strlen)</p>
<p>◦ ft_strcpy (man 3 strcpy) ◦ ft_strcmp (man 3 strcmp)</p>
<p>◦ ft_write (man 2 write)</p>
<p>◦ ft_read (man 2 read)</p>
<p>◦ ft_strdup (man 3 strdup, you can call to malloc)</p>
<p><strong>Bonus</strong></p>
<p>&bull; ft_atoi_base (man atoi)</p>
<p>&bull; ft_list_push_front (like the one in the piscine)</p>
<p>&bull; ft_list_size (like the one in the piscine)</p>
<p>&bull; ft_list_sort (like the one in the piscine)</p>
<p>&bull; ft_list_remove_if (like the one in the piscine)</p>
<h2><br></h2>
<h2>Ressources</h2>
<p><strong>Computer architecture</strong></p>
<p><strong>ISA</strong>: Instruction Set Architecture: set of instructions.<br>One instruction (basic action that the CPU can do) = one &quot;op code&quot; in machine code (binary).<br>CPU = implementation of an ISA</p>
<p><strong>&quot;x86&quot;</strong>: most popular ISA: x86-32:<br><br>- x86 with 32 bits registers;<br><br>- x86-64: x86 with 64 bits registers<br><br>(size of the register = basic unit of data that the CPU can process)</p>
<p><strong>ASM</strong>:&nbsp;</p>
<p>- for a given ISA, defines &quot;mnemonic codes&quot; (ex: MOV) to refer to machine code instructions</p>
<p>- Advantage: strong correspondence with machine language -&gt; much faster/simpler than compiling</p>
<p>- Disadvantage: not &quot;portable&quot;: 1 ASM language = 1 ISA.&nbsp;</p>
<p>- The even can be different ASM language for a given ISA:<br> x86 has two main languages/syntax: <br><strong>Intel syntax</strong> (mostly used on Windows) and <strong>AT&amp;T syntax</strong> (mostly used on Unix)</p>
<p><br></p>
<h2>Links</h2>
<p>On ASM:</p>
<p><a href="https://beta.hackndo.com/assembly-basics/">https://beta.hackndo.com/assembly-basics/</a></p>
<p><a href="https://openclassrooms.com/fr/courses/2288321-apprenez-a-programmer-en-assembleur-x86/2288775-introduction-installation">https://openclassrooms.com/fr/courses/2288321-apprenez-a-programmer-en-assembleur-x86/2288775-introduction-installation</a></p>
<p><a href="http://www.egr.unlv.edu/~ed/assembly64.pdf">http://www.egr.unlv.edu/~ed/assembly64.pdf</a></p>
<p>On computer architecture:<br><br><a href="https://www.youtube.com/playlist?list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo">https://www.youtube.com/playlistlist=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo</a></p>
<p>(See Part 1 - Tuto from Crash Course)</p>
