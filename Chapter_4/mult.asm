// initialize sum to base value
@R0
D=M
@base
M=D

// setup running sum value
@sum
M=0

// initialize counter to 1
@i
M=1

(LOOP)
//if i > mult stop
    @i
    D=M
    @R1
    D=D-M
    @STOP
    D;JGT
    // sum = sum + base val
    @sum
    D=M
    @base
    D=D+M
    @sum
    M=D
    // i = i + 1
    @i
    M=M+1
    @LOOP
    0;JMP
(STOP)
    // R2 = sum
    @sum
    D=M
    @R2
    M=D
(END)
    @END
    0;JMP
