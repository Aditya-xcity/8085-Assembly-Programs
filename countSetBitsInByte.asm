; Write an 8085 program to count the number of set bits in a byte.
; Data at 2500H, count stored at 2501H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LDA 2500H
MVI B, 08H
MVI C, 00H

LOOP: RRC
      JNC NEXT
      INR C

NEXT: DCR B
      JNZ LOOP

MOV A, C
STA 2501H
HLT