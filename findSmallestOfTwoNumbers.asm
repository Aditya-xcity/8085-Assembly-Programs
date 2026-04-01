; Write an 8085 program to find the smallest of two 8-bit numbers.
; Numbers at 2500H and 2501H, store smallest at 2502H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV A, M
INX H
CMP M
JC STORE_A
MOV A, M

STORE_A: STA 2502H
         HLT
