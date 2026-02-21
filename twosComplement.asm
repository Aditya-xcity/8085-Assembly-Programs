; Write a program in assembly language to find two's complement of a number

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

.model small
.stack 100h

.data
    num db 05h
    result db ?

.code
main:
    mov ax, @data
    mov ds, ax

    mov al, num
    not al
    add al, 01h
    mov result, al

    mov ah, 4ch
    int 21h

end main
