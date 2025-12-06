    LOADI R0, #0x00C0 
    LUI R0, #0x01       ; base value (448)
    LOADI R1, #0x0001
    LUI R1, #0x80       ; shift amount starts at 1
    
    SHFT  R2, R0, R1 ; R2 = R0 (224)
    ADDI  R1, R1, #1 ; shift amount = 2
    SHFT  R3, R0, R1 ; R3 = R0 (112)
    ADDI  R1, R1, #1 ; shift amount = 3
    SHFT  R4, R0, R1 ; R4 = R0 (56)
    ADDI  R1, R1, #1 ; shift amount = 4
    SHFT  R5, R0, R1 ; R5 = R0 (28)
    ADDI  R1, R1, #1 ; shift amount = 5
    SHFT  R6, R0, R1 ; R6 = R0 (14)
    ADDI  R1, R1, #1 ; shift amount = 6 
    SHFT  R7, R0, R1 ; R7 = R0 (7)

    HALT