; Write an 8085 program to count positive, negative, and zero numbers in an array.
; Length at 2500H, elements start at 2501H
; Store positive count at 2600H, negative count at 2601H, zero count at 2602H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M
INX H

MVI B, 00H
MVI D, 00H
MVI E, 00H

MOV A, C
ORA A
JZ STORE

LOOP: MOV A, M
      ORA A
      JZ ZERO
      ANI 80H
      JZ POSITIVE
      INR D
      JMP NEXT

POSITIVE: INR B
          JMP NEXT

ZERO: INR E

NEXT: INX H
      DCR C
      JNZ LOOP

STORE: MOV A, B
       STA 2600H
       MOV A, D
       STA 2601H
       MOV A, E
       STA 2602H
       HLT