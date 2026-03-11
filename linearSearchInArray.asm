; Write an 8085 program for linear search in an array.
; Length at 2500H, key at 2501H, array starts at 2502H
; Store 00-based index at 2600H, or FFH if not found
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M
INX H
MOV B, M
INX H

MVI D, 00H
MVI A, 0FFH
STA 2600H

MOV A, C
ORA A
JZ DONE

LOOP: MOV A, M
      CMP B
      JZ FOUND
      INX H
      INR D
      DCR C
      JNZ LOOP
      JMP DONE

FOUND: MOV A, D
       STA 2600H

DONE: HLT
