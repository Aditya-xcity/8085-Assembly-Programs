; Program to add 10 BCD numbers stored in an array
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

LXI H, 2500H     ; HL points to start of array
MVI C, 0AH       ; Counter = 10 numbers
MVI A, 00H       ; Clear accumulator
MVI B, 00H       ; B will store carry count

BACK: ADD M      ; Add memory content to A
      DAA        ; Decimal adjust accumulator
      JNC SKIP   ; If no carry, skip increment
      INR B      ; Increment carry count

SKIP: INX H      ; Point to next memory location
      DCR C      ; Decrement counter
      JNZ BACK   ; Repeat until C = 0

STA 2600H        ; Store final BCD result
MOV A, B
STA 2601H        ; Store carry

HLT              ; Stop