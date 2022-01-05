TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two files are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
    msg BYTE "Hello world!",0
	; data declarations go here

.code
main PROC
	
	; code goes here
    mov edx, OFFSET msg
    call WriteString
    call Crlf

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
