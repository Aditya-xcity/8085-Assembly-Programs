// Question: Write a program to find the largest of two 8-bit numbers
/*
Name - ADITYA BHARDWAJ
Section - D2
Roll No - 07
Course – B TECH
Branch – CSE
*/

MVI A, 45H
MVI B, 30H
CMP B
JC SMALL
HLT

SMALL:
MOV A, B
HLT
