include /masm32/include/masm32rt.inc

.data
    MsgBoxText db "Done!", 0

.code

start:

    mov ecx, 120 ; 120 seconds = 2 minutes

from_start:    
    mov bp, 43690
    mov si, 43690

delay:
    dec bp
    nop
    jnz delay
    dec si
    cmp si, 0
    jnz delay

    dec ecx
    test ecx, ecx
    jnz from_start


    invoke MessageBox, NULL, addr MsgBoxText, 0, MB_OK

    invoke ExitProcess, 0

end start
