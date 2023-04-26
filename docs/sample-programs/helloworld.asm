TITLE Hello World

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
	helloMsg BYTE "Hello, World!", 0

.code
main PROC
    mov edx, OFFSET helloMsg   ; Load message into edx
    call WriteString           ; Write the message to the console
    call Crlf                  ; Add a newline to the console
    exit                       ; Exit the program

main ENDP
END main