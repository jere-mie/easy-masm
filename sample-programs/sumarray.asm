TITLE Sum of Array

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    arr DWORD 5, 2, 6, 1, 3          ; Array to calculate the sum of
    count DWORD LENGTHOF arr
    sum DWORD ?

.code
main PROC
    ; Calculate the sum of the array
    mov esi, OFFSET arr              ; Load the address of the array into esi
    mov ecx, count                   ; Load the number of elements into ecx
    xor eax, eax                     ; Clear eax to 0
    L1:
    add eax, [esi]                   ; Add the current element to eax
    add esi, TYPE arr                ; Increment esi to point to the next element
    loop L1                          ; Repeat for all elements
    mov sum, eax                     ; Move the sum to the sum variable

    ; Print the sum of the array
    mov edx, OFFSET sum              ; Load the sum into edx
    call WriteInt                    ; Write the sum to the console
    call Crlf                        ; Add a newline to the console

    exit                            ; Exit the program
main ENDP
END main
