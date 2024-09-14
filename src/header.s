    .ifndef HEADER_S
HEADER_S = 1

R0 = $0
R1 = $1
R2 = $2
R3 = $3
R4 = $4
R5 = $5
R6 = $6
R7 = $7
R8 = $8
R9 = $9
RA = $A
RB = $B
RC = $C
RD = $D
RE = $E
RF = $F

; MACROS

    ; push zero-page register (clobbers accumulator)
    .macro PUSHR, reg
        lda \reg
        pha
    .endm

    ; pull zero-page register (clobbers accumulator)
    .macro PULLR, reg
        pla
        sta \reg
    .endm

    .endif ; END OF INCLUDE GUARD