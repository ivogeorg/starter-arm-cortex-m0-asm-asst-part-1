| Instruction | Intepretation |
| --- | --- |
| negate: | _Label (corresponds to the address of the first following instruction)_ |
| [sub](http://infocenter.arm.com/help/topic/com.arm.doc.dui0497a/BABFFEJF.html)     `sp, sp, #8` | Subtact 8 from the stack pointer (and store into the stack pointer) |
| [str](http://infocenter.arm.com/help/topic/com.arm.doc.dui0497a/BABJGHFJ.html)     `r0, [sp, #4]` | |
| `ldr     r3, [sp, #4]` | |
| `rsbs    r3, r3, #0` | |
| `movs    r0, r3` | |
| `add     sp, sp, #8` | |
| `bx      lr` | |
| | |
| main: | _Label (corresponds to the address of the first following instruction)_ |
| `push    {lr}` | |
| `sub     sp, sp, #12` | |
| `movs    r3, #6` | |
| `str     r3, [sp, #4]` | |
| `ldr     r3, [sp, #4]` | |
| `cmp     r3, #0` | |
| `ble     .L4` | |
| `ldr     r3, [sp, #4]` | |
| `movs    r0, r3` | |
| `bl      negate` | |
| `movs    r3, r0` | |
| `str     r3, [sp, #4]` | |
| | |
| .L4: | _Label (corresponds to the address of the first following instruction)_ |
| `movs    r3, #0` | |
| `movs    r0, r3` | |
| `add     sp, sp, #12` | |
| `pop     {pc}` | |
