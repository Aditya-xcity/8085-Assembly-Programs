; Write an 8085 program to sort an array in ascending order.
; Array length at 2500H, elements start at 2501H, sorted in place
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV A, M
CPI 01H
JC DONE
JZ DONE

MOV B, A
DCR B

OUTER: LXI H, 2501H
       MOV C, B

INNER: MOV A, M
       INX H
       CMP M
       JC NEXT
       JZ NEXT
       MOV D, M
       MOV M, A
       DCX H
       MOV M, D
       INX H

NEXT:  DCR C
       JNZ INNER
       DCR B
       JNZ OUTER

DONE:  HLT