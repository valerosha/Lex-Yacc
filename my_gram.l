tests:
input:					
Hello World
output:
VAR (Hello,1,0,4)	 0p(PROB,1,5,5)	VAR (World,1,6,10)	

input:
read x ; if y + 1 == x then write y else skip
output:
READ (0,1,0,3) 0p(PROB,1,4,4)VAR (x,1,5,5)0p(PROB,1,6,6)COLON(0,1,7,7)0p(PROB,1,8,8)IF (0,1,9,10)0p(PROB,1,11,11)VAR (y,1,12,12)0p(PROB,1,13,13)0p(PL,1,14,14) 0p(PROB,1,15,15)NUM (1,1,16,16) 0p(PROB,1,17,17)0p(EQ,1,18,19)0p(PROB,1,20,20)VAR (x,1,21,21)0p(PROB,1,22,22)	THEN (0,1,23,26) 0p(PROB,1,27,27)WRITE (0,1,28,32) 0p(PROB,1,33,33)VAR (y,1,34,34)0p(PROB,1,35,35)ELSE (0,1,36,39) 0p(PROB,1,40,40)SKIP (0,1,41,44)

output:
cur := if y == 5 then its victory
EXPR (cur :=,1,0,5)0p(PROB,1,6,6)IF (0,1,7,8) 0p(PROB,1,9,9)VAR (y,1,10,10)0p(PROB,1,11,11)0p(EQ,1,12,13) 0p(PROB,1,14,14)NUM (5,1,15,15) 0p(PROB,1,16,16)THEN (0,1,17,20) 0p(PROB,1,21,21)VAR (its,1,22,24)0p(PROB,1,25,25)VAR (victory,1,26,32)	


input:
I'm
output:
VAR (I,1,0,0)	Unexpected expr/ simbol in line 1

input:
while x == true if y * 5 != 0 && z >= 7 then good
output:
WHILE (0,1,0,4)	 0p(PROB,1,5,5)VAR (x,1,6,6)0p(PROB,1,7,7)0p(EQ,1,8,9)	 0p(PROB,1,10,10)VAR (true,1,11,14)0p(PROB,1,15,15)IF (0,1,16,17) 0p(PROB,1,18,18)VAR (y,1,19,19)0p(PROB,1,20,20)0p (MULT,1,21,21)	 0p(PROB,1,22,22)NUM (5,1,23,23) 0p(PROB,1,24,24)0p (NOTEQ,1,25,26) 0p(PROB,1,27,27)NUM (0,1,28,28) 0p(PROB,1,29,29)0p(LOGA,1,30,31) 0p(PROB,1,32,32)VAR (z,1,33,33)0p(PROB,1,34,34)0p (BOE,1,35,36) 0p(PROB,1,37,37)NUM (7,1,38,38)	0p(PROB,1,39,39)THEN (0,1,40,43) 0p(PROB,1,44,44)VAR (good,1,45,48)

input:
if it will be error then that is good news do error #
output:
IF (0,1,0,1) 0p(PROB,1,2,2)VAR (it,1,3,4)0p(PROB,1,5,5)VAR (will,1,6,9)0p(PROB,1,10,10)VAR (be,1,11,12)0p(PROB,1,13,13)VAR (error,1,14,18)0p(PROB,1,19,19)THEN (0,1,20,23)0p(PROB,1,24,24)VAR (that,1,25,28)0p(PROB,1,29,29)VAR (is,1,30,31)0p(PROB,1,32,32)VAR (good,1,33,36)0p(PROB,1,37,37)VAR (news,1,38,41)0p(PROB,1,42,42)DO (0,1,43,44) 0p(PROB,1,45,45)VAR (error,1,46,50)0p(PROB,1,51,51)Unexpected expr/ simbol in line 1
 

input:
expr := 5 + 10 ; while true do operation else skip my crazy nonsense ; write correct my sentence
output:
EXPR (expr :=,1,0,6)0p(PROB,1,7,7)NUM (5,1,8,8) 0p(PROB,1,9,9)0p(PL,1,10,10) 0p(PROB,1,11,11)NUM (10,1,12,13) 0p(PROB,1,14,14)COLON(0,1,15,15) 0p(PROB,1,16,16)WHILE (0,1,17,21) 0p(PROB,1,22,22)VAR (true,1,23,26)0p(PROB,1,27,27)DO (0,1,28,29) 0p(PROB,1,30,30)VAR (operation,1,31,39)0p(PROB,1,40,40)ELSE (0,1,41,44)0p(PROB,1,45,45)SKIP (0,1,46,49)0p(PROB,1,50,50)VAR (my,1,51,52)0p(PROB,1,53,53)VAR (crazy,1,54,58)0p(PROB,1,59,59)VAR (nonsense,1,60,67)0p(PROB,1,68,68)COLON(0,1,69,69)0p(PROB,1,70,70)WRITE (0,1,71,75)0p(PROB,1,76,76)VAR (correct,1,77,83)0p(PROB,1,84,84)VAR (my,1,85,86)0p(PROB,1,87,87)VAR (sentence,1,88,95)


input:
do 5 while true // simp comm

output:
DO (0,1,0,1) NUM (5,1,3,3) WHILE (0,1,5,9) VAR (true,1,11,14)SIMP_COMMENTS (// simp comm
,2,16,28)


input:

do comment (* lera*)
do fif com skip (* ( kera *)


output:
DO (0,1,0,1) VAR (comment,1,3,9)DIF_COM((* lera*),1,11,19) 
DO (0,1,20,21) VAR (fif,1,23,25)VAR (com,1,27,29)SKIP (0,1,31,34) DIF_COM((* ( kera *),1,36,47)

input:

do  power ** while 5 * 5


output:
DO (0,1,0,1) VAR (power,1,4,8)0p (POWER,1,10,12) WHILE (0,1,13,17) NUM (5,1,19,19) 0p (MULT,1,21,22) NUM (5,1,23,23)

input :
it wrong exam ***
output:
VAR (it,1,24,25)VAR (wrong,1,27,31)VAR (exam,1,33,36)Unexpected expr simbol in line 1





