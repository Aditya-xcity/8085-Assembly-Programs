; Write an 8085 program to reverse an array in place.
; Length at 2500H, array starts at 2501H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV B, M
INX H

MOV A, B
ORA A
JZ DONE
CPI 01H
JZ DONE

MOV D, H
MOV E, L
DCR A
MOV C, A

FIND_END: MOV A, C
          ORA A
          JZ PREPARE
          INX H
          DCR C
          JMP FIND_END

PREPARE: MOV A, B
         STC
         CMC
         RAR
         MOV C, A

SWAP_LOOP: MOV A, C
           ORA A
           JZ DONE

           LDAX D
           MOV B, A
           MOV A, M
           STAX D
           MOV A, B
           MOV M, A

           INX D
           DCX H
           DCR C
           JMP SWAP_LOOP

DONE: HLT
