# CPE 1040 - Introduction to Computer Engineering

## Assignment: Tracing an ARM Assembly Program (Part 1)

### 1. Summary

This assignment comes in two parts, assigned _separately_:
1. Part 1 asks you to interpret (in human language) a short ARM assembly program that was originally compiled from a C program. Both programs are provided in the repository, but you can see them next to each other in the online [Compiler Explorer](https://godbolt.org/z/4W6MNq), with code correspondences highlighted in different colors. 
2. Part 2 asks you to _trace_ the same  program. To trace a program means to mock-execute each line/instuction and follow the manipulation of the data.

### 2. Requirements

1. The processor is a state-full machine. When tracing an assembly program you are essentially keeping track of the processor's state. The state of the processor can be approximated by the following set of memories:
   1. The 16 registers:
      1. They are labeled R1 to R16
      2. Most of the a generic, meaining they can be used at the discretion of the programmer
      3. Some of them have conventional special purposes, and so have extra names, and those names are used in assembly programs. They are:
      
         Generic name | Spacial name | Special purpose
         --- | --- | ---
         R11 | FP | Frame pointer
         R12 | IP | Intra-procedural call
         R13 | SP | Stack pointer
         R14 | LR | Link register
         R15 | PC | Program counter
         (R16) | CPSR | Current program status register (aka ASPR)
         
      4. The CSPR (aka ASPR, for Application Program Status Register) contains 4 important 1-bit flags:
      
         Flag mnemonic | Flag name | Enabled (value = 1) if the result of the last instruction is
         --- | --- | ---
         N | Negative | A negative number
         Z | Zero | A zero value
         C | Carry | A value that requires a 33rd bit to be fully represented
         V | Overflow | A value that cannot be represented in 32 bit two’s complement
         
      5. The NZCV flags are important for [conditional execution](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0497a/BABEHFEF.html). By rule, only the comparison instructions always change those flags. Any other instruction can be forced to change the flags by appending an `S` to its name (e.g. `MOV` becomes `MOVS`). See the [instruction set summary](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0497a/BABIHJGA.html).
      
   2. The contents of the instruction cache (assume it is equivalent to the program you are tracing)
   3. The contents of the data cache
   4. The contents of the call stack
2. For part 1, you only have to fill out the _Interpretation_ column for each instruction in the table in the [instruction-intepretation.md](instruction-intepretation.md) file. **You do not have to trace the state of the program as instructions are executed. This will be assigned in part 2.**

## Resources

## C

1. C [reference](https://en.cppreference.com/w/c)
2. C [tutorial](https://www.cprogramming.com/tutorial/c-tutorial.html)
3. C [interactive tutorial](https://www.learn-c.org/)
4. Open book [How to Think Like a Computer Scientist: C Version](https://open.umn.edu/opentextbooks/textbooks/how-to-think-like-a-computer-scientist-c-version-1999)

## ARM assembly

1. ARM Cortex-M0 [Instruction Set Summary](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0497a/BABIHJGA.html)
2. Azeria Labs [Introduction to ARM Assembly Basics](https://azeria-labs.com/writing-arm-assembly-part-1/)
3. Dave Space [Introduction to ARM](http://www.davespace.co.uk/arm/)

### Github

1. Github Tutorial for Beginners ([webpage](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)).
2. Github Basics for Mac and Windows ([video](https://www.youtube.com/watch?v=0fKg7e37bQE)).
3. git & Github Crash Course for Beginners ([video](https://www.youtube.com/watch?v=SWYqp7iY_Tc)).
4. Introduction to Github for Beginners ([video](https://www.youtube.com/watch?v=fQLK8Ib_SKk)).
5. About `git` ([webpage](https://git-scm.com/about)).
6. `git` [documentation](https://git-scm.com/doc) (webpage, book, videos, reference manual).
7. [Github markdown cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).
