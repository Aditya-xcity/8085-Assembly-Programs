; Write an 8085 program to find the sum of array elements.
; Array length at 2500H, elements start at 2501H, 16-bit sum at 2600H (low) and 2601H (high)
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M
INX H
LXI D, 0000H

MOV A, C
ORA A
JZ STORE

LOOP: MOV A, E
      ADD M
      MOV E, A
      JNC NEXT
      INR D

NEXT: INX H
      DCR C
      JNZ LOOP

STORE: MOV A, E
       STA 2600H
       MOV A, D
       STA 2601H
       HLT