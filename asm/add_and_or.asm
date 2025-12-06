    LOADI R0, #0xAA
    LOADI R1, #0x55

    AND R3, R0, R1      ; (R0 & R1) stored in R3
    BNE DONE            ; if (R0 & R1)= 0 addition is safe
    
    OR R2, R0, R1       ; (R0 | R1) in R2

    DONE:
    HALT