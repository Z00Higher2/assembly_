; \masm32\bin\ml /c /Zd /coff %projectName%.asm
; \masm32\bin\Link /SUBSYSTEM:CONSOLE %projectName%.obj
; %projectName%.exe
;^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
; Commands to run the executable file in the command line terminal for assembly

.386
.model flat, stdcall
option casemap :none

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
    message db "This is my first Assembly program! ", 0
    titlebar db "This is my first Assembly program!", 0

    

.code
    
main:
    invoke MessageBox, 0 , addr message , addr titlebar, 0
    invoke ExitProcess, 0

end main
