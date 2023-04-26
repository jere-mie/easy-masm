TITLE Factorial Calculator

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    prompt BYTE "Enter a number: ", 0
    resultMsg BYTE "Factorial = ", 0
    errorMsg BYTE "Invalid input. Please enter a positive integer.", 0
    num DWORD ?
    result DWORD ?
    outputBuffer BYTE 20 DUP(?)

.code
main PROC
    ; Get the user's input
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov num, eax

    ; Calculate the factorial
    mov eax, num                   ; Load the number to calculate the factorial of into eax
    mov ecx, eax                   ; Copy eax to ecx
    dec ecx                        ; Decrement ecx to start the loop at num - 1
    L1:
    mul ecx                        ; Multiply eax by ecx
    loop L1                        ; Decrement ecx and repeat until ecx = 0
    mov result, eax                ; Move the result to the result variable

    ; Print the result
    cmp num, 0                     ; Check if the user entered a valid number
    jle error                      ; Jump to error if the number is less than or equal to 0
    mov edx, OFFSET resultMsg
    call WriteString
    mov edx, OFFSET outputBuffer
    call WriteDec                  ; Write num to the output buffer
    jmp done                       ; Jump to the end of the program
    error:
    mov edx, OFFSET errorMsg
    call WriteString
    call Crlf
    done:
    exit

main ENDP
END main
