; Write an 8085 program to compare two data blocks.
; Length at 2500H, block1 starts at 2501H, block2 starts at 2600H
; Store 00H at 2700H if equal, else 01H
; Name - ADITYA BHARDWAJ
; Section - D2
; Roll No - 07
; Course - B TECH
; Branch - CSE

LXI H, 2500H
MOV C, M
INX H
LXI D, 2600H

MVI A, 00H
STA 2700H

MOV A, C
ORA A
JZ DONE

LOOP: MOV A, M
      LDAX D
      CMP M
      JNZ NOT_EQUAL
      INX H
      INX D
      DCR C
      JNZ LOOP
      JMP DONE

NOT_EQUAL: MVI A, 01H
           STA 2700H

DONE: HLT
