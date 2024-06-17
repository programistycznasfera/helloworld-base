segment .data
	tekst db "Hello World!",0Dh,0Ah,"$"

segment stosik stack
	resb 64
segment .text
mov ax, .data
mov ds, ax
mov ax, stosik
mov ss, ax
mov dx, tekst
mov ah, 9
int 21h
mov ax, 4C00h
int 21h