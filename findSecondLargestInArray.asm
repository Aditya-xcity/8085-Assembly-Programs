; Write an 8085 program to find the second largest number in an array.
; Length at 2500H, elements start at 2501H
; Store result at 2600H, store FFH if length < 2
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV A, M
CPI 02H
JNC INIT
MVI A, 0FFH
STA 2600H
HLT

INIT: INX H
      MOV B, M
      INX H
      MOV C, M
      MOV A, B
      CMP C
      JNC START
      MOV D, B
      MOV B, C
      MOV C, D

START: MOV A, M
       MOV D, A
       LXI H, 2500H
       MOV A, M
       SUI 02H
       MOV D, A
       LXI H, 2503H

LOOP: MOV A, D
      ORA A
      JZ STORE
      MOV A, M
      CMP B
      JC CHECK_SECOND
      MOV C, B
      MOV B, A
      JMP NEXT

CHECK_SECOND: CMP C
              JC NEXT
              MOV C, A

NEXT: INX H
      DCR D
      JNZ LOOP

STORE: MOV A, C
       STA 2600H
       HLT