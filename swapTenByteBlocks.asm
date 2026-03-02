; Write an 8085 program to swap two blocks of 10 bytes.
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

LXI H, 2100H
LXI D, 3100H
MVI C, 0AH

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
