; Write an 8085 program to swap two blocks using stack.
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course – B TECH
; Branch – CSE

LXI SP, 4000H
LXI H, 2600H
MVI C, 05H

PUSH_LOOP: MOV A, M
           PUSH PSW
           INX H
           DCR C
           JNZ PUSH_LOOP

LXI H, 3600H
MVI C, 05H

POP_LOOP: POP PSW
          MOV M, A
          INX H
          DCR C
          JNZ POP_LOOP

HLT
