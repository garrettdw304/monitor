print_cmd_str: .asciiz "print"
read_cmd_str: .asciiz "read"

begin_monitoring:
    rts

; Reads a region of memory and writes it to a serial port
; read <start address> <length> <port>
; start address: The address of the first byte to print.
; length: The number of bytes to print.
; port: The serial port to write to. 0 being the standard io that this
;  monitor program uses. 1-3 being the other serial ports that
;  this custom system supports (defined in memory_map.s).
read_cmd_handler:
    rts
; Writes input from a serial port into a region of memory
; write <start address> <length> <port>
; start address: The address to store the first byte at.
; length: The number of bytes to read.
; port: The serial port to read from. 0 being the standard io that this
;  monitor program uses. 1-3 being the other serial ports that
;  this custom system supports (defined in memory_map.s).
write_cmd_handler:
    rts
