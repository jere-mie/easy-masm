TITLE Simple Arithmetic

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.code
main PROC
    mov eax, 10           ; Load 10 into eax
    mov ebx, 5            ; Load 5 into ebx
    add eax, ebx          ; Add eax and ebx
    call WriteInt         ; Write the result (15) to the console
    call Crlf             ; Add a newline to the console
    exit                  ; Exit the program

main ENDP
END main