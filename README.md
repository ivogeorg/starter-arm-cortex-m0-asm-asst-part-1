# CPE 1040 - Introduction to Computer Engineering

## Assignment: Tracing an ARM Assembly Program

### 1. Summary

This assignment asks you to _trace_ a short program of ARM assembly language, originally compiled from a C program. Both are provided in the repository, but you can see them next to each other in the online [Compiler Explorer](https://godbolt.org/z/4W6MNq), with code correspondences highlighted in different colors. To trace a program means to mock-execute each line/instuction and follow the manipulation of the data.

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
         (R16) | CPSR | Current program status register (
      
   2. The contents of the instruction cache (assume it is equivalent to the program you are tracing)
   3. The contents of the data cache

## Resources

## C

TODO

## ARM assembly

TODO

### Github

1. Github Tutorial for Beginners ([webpage](https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners)).

2. Github Basics for Mac and Windows ([video](https://www.youtube.com/watch?v=0fKg7e37bQE)).

3. git & Github Crash Course for Beginners ([video](https://www.youtube.com/watch?v=SWYqp7iY_Tc)).

4. Introduction to Github for Beginners ([video](https://www.youtube.com/watch?v=fQLK8Ib_SKk)).

5. About `git` ([webpage](https://git-scm.com/about)).

6. `git` [documentation](https://git-scm.com/doc) (webpage, book, videos, reference manual).

7. [Github markdown cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

