; Write an 8085 program to divide two 8-bit numbers using repeated subtraction.
; Dividend at 2500H, Divisor at 2501H, Quotient at 2502H, Remainder at 2503H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LDA 2500H
MOV D, A

LDA 2501H
MOV B, A
MVI C, 00H

MOV A, B
ORA A
JZ DIV_BY_ZERO

MOV A, D

DIV_LOOP: CMP B
          JC STORE
          SUB B
          INR C
          JMP DIV_LOOP

STORE: MOV D, A
       MOV A, C
       STA 2502H
       MOV A, D
       STA 2503H
       HLT

DIV_BY_ZERO: MVI A, 00H
             STA 2502H
             MOV A, D
             STA 2503H
             HLT
