// loop forever
(OUTER_LOOP)
    // setup max number of registers for draw loop
    @8192
    D=A
    @num_pixel
    M=D
    @counter
    M=0

    @SCREEN
    D=A
    @start_addr
    M=D

    (CLEAR_LOOP)
        // check for keyboard input each cycle
        @KBD
        D=M
        @DRAW_LOOP
        D;JGT

        @start_addr
        A=M
        M=0

        @start_addr
        M=M+1
        
        @counter
        M=M+1

        @num_pixel
        D=M
        @counter
        D=D-M
        
        @CLEAR_LOOP
        D;JGT

    // once cleared or moved on loop again
    @OUTER_LOOP
    0;JMP


    //if i > mult stop
    (DRAW_LOOP)
        @start_addr
        A=M
        M=-1

        @start_addr
        M=M+1
        
        @counter
        M=M+1

        @num_pixel
        D=M
        @counter
        D=D-M
        
        @DRAW_LOOP
        D;JGT

        @OUTER_LOOP
        0;JMP

