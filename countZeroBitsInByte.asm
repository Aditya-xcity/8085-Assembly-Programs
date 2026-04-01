; Write an 8085 program to count zero bits in an 8-bit number.
; Number at 2500H, result at 2600H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LDA 2500H
MOV B, A
MVI C, 08H
MVI D, 00H

LOOP: MOV A, B
      RRC
      MOV B, A
      JC NEXT
      INR D

NEXT: DCR C
      JNZ LOOP

MOV A, D
STA 2600H
HLT
