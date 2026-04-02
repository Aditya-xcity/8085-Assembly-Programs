; Write an 8085 program to find the frequency of a key in an array.
; Length at 2500H, key at 2501H, array starts at 2502H
; Store frequency count at 2600H
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

MOV A, C
ORA A
JZ STORE

LOOP: MOV A, M
      CMP B
      JNZ NEXT
      INR D

NEXT: INX H
      DCR C
      JNZ LOOP

STORE: MOV A, D
       STA 2600H
       HLT