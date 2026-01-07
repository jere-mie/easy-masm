TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
	; data declarations go here
	lineMsg BYTE    "#########################", 0dh, 0ah, 0
	welcomeMsg BYTE "# Welcome to easy-masm! #", 0dh, 0ah, 0

.code
main PROC
	
	; code goes here

	mov edx, OFFSET lineMsg
	call WriteString

	mov edx, OFFSET welcomeMsg
	call WriteString

	mov edx, OFFSET lineMsg
	call WriteString

	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
