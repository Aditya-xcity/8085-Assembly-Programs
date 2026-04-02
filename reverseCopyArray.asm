; Write an 8085 program to copy an array in reverse order to another memory block.
; Length at 2500H, source starts at 2501H, destination starts at 2600H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M

MOV A, C
ORA A
JZ DONE

LXI H, 2501H
MOV A, C
DCR A
MOV B, A

MOV A, B
ORA A
JZ COPY

FIND_LAST: INX H
           DCR B
           JNZ FIND_LAST

COPY: LXI D, 2600H

LOOP: MOV A, M
      STAX D
      DCX H
      INX D
      DCR C
      JNZ LOOP

DONE: HLT