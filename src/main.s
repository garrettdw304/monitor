    .org $E000 ; because our rom starts at address $E000

    .include header.s
    .include memory_map.s
    .include monitor.s

rst:
    ; pause interrupts
    sei

    ; initialize stack
    lda #1
    sta STK_PG_CTRL_REG
    ldx #$FF
    txs

    ; run the monitor program
    jsr begin_monitoring

    ; loop until power is cycled
loop$
    stp
    bra loop$

irq:
nmi:
    rti

    .org $fffa
    .word nmi	; Non-maskable interrupt vector
    .word rst	; Reset interrupt vector
    .word irq	; Interrupt request vector