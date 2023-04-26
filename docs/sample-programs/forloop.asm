TITLE Looping

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.code
main PROC
    mov eax, 0           ; Initialize counter to 0

    ; Loop 10 times
    L1:
    inc eax              ; Increment the counter
    cmp eax, 10          ; Check if we've reached 10
    jl L1                ; If not, repeat the loop

    call WriteInt        ; Write the final value of the counter (10) to the console
    call Crlf            ; Add a newline to the console
    exit                 ; Exit the program

main ENDP
END main