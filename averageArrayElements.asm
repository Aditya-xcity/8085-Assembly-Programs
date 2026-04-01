; Write an 8085 program to find average of array elements.
; Length at 2500H, elements start at 2501H
; Store quotient at 2600H and remainder at 2601H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV B, M
INX H
LXI D, 0000H

MOV A, B
ORA A
JZ STORE_ZERO

SUM_LOOP: MOV A, E
          ADD M
          MOV E, A
          JNC NEXT
          INR D

NEXT: INX H
      DCR B
      JNZ SUM_LOOP

LDA 2500H
MOV B, A
MVI C, 00H

DIV_LOOP: MOV A, D
          ORA A
          JNZ SUBTRACT
          MOV A, E
          CMP B
          JC STORE_RESULT

SUBTRACT: MOV A, E
          SUB B
          MOV E, A
          JNC NO_BORROW
          DCR D

NO_BORROW: INR C
           JMP DIV_LOOP

STORE_RESULT: MOV A, C
              STA 2600H
              MOV A, E
              STA 2601H
              HLT

STORE_ZERO: MVI A, 00H
            STA 2600H
            STA 2601H
            HLT
