    LOADI R0, #0x000A   ; increment value  (10 = 5 * 2^1)
    LOADI R1, #0x0000   ; memory address (0)
    LOADI R2, #0x0009   ; counter (9)
    LOADI R3, #0x0001   ; constant of 1 for shifting

    LOOP: 
        STORE R0, [R1]  ; mem[R1] = R0
        ADDI R1, R2, #1 ; advanced pointer for next address
        SHFT R0, R0, R3 ; shifting by one to double value
        SUB  R2, R2, R3 ; decrementing counter
        BNE LOOP        ; conitnues until counter reaches 0
        
        HALT