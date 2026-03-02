; Write an 8085 program to swap two blocks of 5 bytes.
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

LXI H, 2000H     ; HL -> First block
LXI D, 3000H     ; DE -> Second block
MVI C, 05H       ; Counter = 5 bytes

LOOP: MOV A, M   ; A = [HL]
      LDAX D     ; A = [DE]
      XCHG
      MOV B, M
      XCHG
      MOV M, A
      MOV A, B
      STAX D
      INX H
      INX D
      DCR C
      JNZ LOOP

HLT
