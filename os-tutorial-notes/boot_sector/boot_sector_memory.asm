    [org 0x7C00]                ;Global offset since boot sector is loaded at this address in memory

    mov ah, 0x0e                ;video tty
    ;; mov bx, 0x7C00
    ;; add bx, secret
    ;; mov al, [bx]
    mov al, [secret]            ;this is equivalent to 0x7c00 + secret
    int 0x10

    ;; mov bx, 0x7C00
    ;; add bx, 0x19                ;secret is at this offset
    mov bx, 0x19
    mov al, [bx]
	int 0x10

    jmp $
secret:
	db 'X'
    times 510 - ($-$$) db 0
    dw 0xaa55
