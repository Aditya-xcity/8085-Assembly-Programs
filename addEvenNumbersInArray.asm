; Write an assembly language program to add all even numbers in an array

; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

.model small
.stack 100h

.data
    array db 2, 5, 8, 3, 6, 9, 4
    count db 7
    result dw 0

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, count        ; number of elements
    mov si, 0            ; index
    mov ax, 0            ; clear AX (for sum)

next_element:
    mov bl, array[si]    ; load current element

    ; check if even (LSB = 0)
    test bl, 1
    jnz skip_add         ; if odd, skip addition

    add al, bl           ; add even number to AL
    adc ah, 0            ; handle carry

skip_add:
    inc si               ; move to next element
    loop next_element    ; repeat until CX = 0

    mov result, ax       ; store final sum

    mov ah, 4ch
    int 21h

main endp
end main
