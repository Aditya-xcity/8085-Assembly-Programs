; Write an assembly language program to add all odd numbers in an array

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

.model small
.stack 100h

.data
    array db 2,5,8,3,6,9,4
    count db 7
    result dw 0

.code
main proc
    mov ax,@data
    mov ds,ax

    mov cx,count
    mov si,0
    mov ax,0

next:
    mov bl,array[si]
    test bl,1
    jz skip          ; if even, skip
    add al,bl
    adc ah,0

skip:
    inc si
    loop next

    mov result,ax

    mov ah,4ch
    int 21h
main endp
end main
