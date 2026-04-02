; Write an 8085 program to sort array elements in descending order using bubble sort.
; Length at 2500H, array starts at 2501H (in-place sort)
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV A, M
CPI 02H
JC DONE

DCR A
MOV C, A

OUTER: LXI H, 2501H
       MOV B, C

INNER: MOV A, M
       INX H
       CMP M
       JNC NOSWAP
       MOV D, M
       MOV M, A
       DCX H
       MOV M, D
       INX H

NOSWAP: DCR B
        JNZ INNER
        DCR C
        JNZ OUTER

DONE: HLT