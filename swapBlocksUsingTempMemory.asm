; Write an 8085 program to swap two blocks using a temporary memory location.
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

LXI H, 2200H
LXI D, 3200H
MVI C, 05H

LOOP: MOV A, M
      STA 4000H
      LDAX D
      MOV M, A
      LDA 4000H
      STAX D
      INX H
      INX D
      DCR C
      JNZ LOOP

HLT
