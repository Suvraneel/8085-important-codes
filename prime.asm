MVI B,17H
MVI C,02H

WHILE: MOV A,B
CMP C     ; NOT FOUND A DIVISOR TILL END SO NUMBER IS PRIME 
JZ PRIME  ;
LOOP: SUB C ; A=A-C
JC NEXT; A<C
JZ NOPRIME;A==C
JMP LOOP;A>C
NEXT: INR C;C++ 
JMP WHILE;CHECK AGAIN

NOPRIME: MVI A,00H
	 STA 2004H
         HLT
PRIME:   MVI A,01H
         STA 2004H
         HLT
