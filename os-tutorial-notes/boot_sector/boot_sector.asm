    ;; To view the binary objdump -s -D -b binary -mi386 -Maddr16,data16 ./boot_sector.bin

    mov ah, 0x0e                    ; tty mode
    mov al, 'H'
    int 0x10                    ; video service interrupt
	mov al, 'e'
	int 0x10                    ; video service interrupt
	mov al, 'l'
	int 0x10                    ; video service interrupt
	int 0x10
	mov al, 'o'
	int 0x10                    ; video service interrupt

    jmp $
    times 510 - ($-$$) db 0

    dw 0xaa55
