; Write an 8085 program to find the smallest number in an array.
; Array length at 2500H, elements start at 2501H, result stored at 2600H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M
INX H

MOV A, M
DCR C
JZ STORE

LOOP: INX H
      CMP M
      JC NEXT
      JZ NEXT
      MOV A, M

NEXT: DCR C
      JNZ LOOP

STORE: STA 2600H
HLT
