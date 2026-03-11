; Write an 8085 program to multiply two 8-bit numbers using repeated addition.
; Number1 at 2500H, Number2 at 2501H, 16-bit result at 2502H (low) and 2503H (high)
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LDA 2500H
MOV E, A
MVI D, 00H

LDA 2501H
MOV C, A

LXI H, 0000H

MOV A, C
ORA A
JZ STORE

LOOP: DAD D
      DCR C
      JNZ LOOP

STORE: SHLD 2502H
HLT
