TITLE Input and Output

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    prompt BYTE "Enter a number: ", 0
    resultMsg BYTE "You entered: ", 0
    inputBuffer BYTE 16 DUP(0)
    resultBuffer BYTE 16 DUP(0)

.code
main PROC
    mov edx, OFFSET prompt          ; Load prompt into edx
    call WriteString                ; Write the prompt to the console
    mov edx, OFFSET inputBuffer     ; Load the address of the input buffer into edx
    mov ecx, LENGTHOF inputBuffer-1 ; Load the length of the input buffer into ecx
    call ReadString                 ; Read the input from the console
    mov edx, OFFSET resultMsg       ; Load result message into edx
    call WriteString                ; Write the result message to the console
    mov edx, OFFSET inputBuffer     ; Load the address of the input buffer into edx
    call WriteString                ; Write the input to the console
    call Crlf                       ; Add a newline to the console
    exit                            ; Exit the program

main ENDP
END main
