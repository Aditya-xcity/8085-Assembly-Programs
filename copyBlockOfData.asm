; Write an 8085 program to copy a block of data.
; Length at 2500H, source starts at 2501H, destination starts at 2600H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M
INX H
LXI D, 2600H

MOV A, C
ORA A
JZ DONE

LOOP: MOV A, M
      STAX D
      INX H
      INX D
      DCR C
      JNZ LOOP

DONE: HLT