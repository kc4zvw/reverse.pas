10 PRINT TAB(32);"REVERSE"
20 PRINT TAB(15);"Creative Computing  Morristown, New Jersey"
30 PRINT:PRINT:PRINT
100 PRINT "REVERSE -- A Game of Skill": PRINT
130 DIM A(20)
140 REM *** N=NUMBER OF NUMBERS
150 N=9
160 PRINT "Do you want the rules";
170 INPUT A$
180 IF A$="NO" THEN 210
190 GOSUB 710
200 REM *** MAKE A RANDOM LIST A(1) TO A(N)
210 A(1) = INT((N - 1) * RND(1) + 2)
220 FOR K=2 TO N
230 A(K)=INT(N*RND(1)+1)
240 FOR J=1 TO K-1
250 IF A(K)=A(J) THEN 230
260 NEXT J:NEXT K
280 REM *** PRINT ORIGINAL LIST AND START GAME
290 PRINT: PRINT "Here we go ... The list is:"
310 T=0
320 GOSUB 610
330 PRINT "How many shall I reverse";
340 INPUT R
350 IF R=0 THEN 520
360 IF R<=N THEN 390
370 PRINT "Oops! Too many! I can reverse at most";n:GOTO 330
390 T=T+1
400 REM *** REVERSE R NUMBERS AND PRINT NEW LIST
410 FOR K=1 TO INT(R/2)
420 Z=A(K)
430 A(K)=A(R-K+1)
440 A(R-K+1)=Z
450 NEXT K
460 GOSUB 610
470 REM *** CHECK FOR A WIN
480 FOR K=1 TO N
490 IF A(K)<>K THEN 330
500 NEXT K
510 PRINT "You won it in";T;"moves!!!":PRINT
520 PRINT
530 PRINT "Try again (Yes or No)";
540 INPUT A$
550 IF A$="YES" THEN 210
560 PRINT: PRINT "O.K. Hope you had fun!!":GOTO 999
600 REM *** SUBROUTINE TO PRINT LIST
610 PRINT:FOR K=1 TO N:PRINT A(K);:NEXT K
650 PRINT:PRINT:RETURN
700 REM *** SUBROUTINE TO PRINT THE RULES
710 PRINT:PRINT "This is the game of 'REVERSE'.  To win, all you have"
720 PRINT "to do is arrange a list of numbers (1 through";N;")"
730 PRINT "in numerical order from left to right.  To move, you"
740 PRINT "tell me how many numbers (Counting from the left) to"
750 PRINT "reverse.  For example, if the current list is:"
760 PRINT:PRINT "2 3 4 5 1 6 7 8 9"
770 PRINT:PRINT "and you reverse 4, the result will be:"
780 PRINT:PRINT "5 4 3 2 1 6 7 8 9"
790 PRINT:PRINT "Now if you reverse 5, you win!"
800 PRINT:PRINT "1 2 3 4 5 6 7 8 9":PRINT
810 PRINT "No doubt you will like this game, but"
820 PRINT "if you want to quit, reverse 0 (zero).":PRINT: RETURN
999 END
