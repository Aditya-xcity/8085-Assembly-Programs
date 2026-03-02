; Write an 8085 program to swap two blocks of user-defined length.
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

LXI H, 2500H
MOV C, M         ; Length stored at 2500H
INX H
LXI D, 3500H

LOOP: MOV A, M
      MOV B, A
      LDAX D
      MOV M, A
      MOV A, B
      STAX D
      INX H
      INX D
      DCR C
      JNZ LOOP

HLT
