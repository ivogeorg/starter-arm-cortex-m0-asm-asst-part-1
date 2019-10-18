negate:
        sub     sp, sp, #8
        str     r0, [sp, #4]
        ldr     r3, [sp, #4]
        rsbs    r3, r3, #0
        movs    r0, r3
        add     sp, sp, #8
        bx      lr
main:
        push    {lr}
        sub     sp, sp, #12
        movs    r3, #6
        str     r3, [sp, #4]
        ldr     r3, [sp, #4]
        cmp     r3, #0
        ble     .L4
        ldr     r3, [sp, #4]
        movs    r0, r3
        bl      negate
        movs    r3, r0
        str     r3, [sp, #4]
.L4:
        movs    r3, #0
        movs    r0, r3
        add     sp, sp, #12
        pop     {pc}
