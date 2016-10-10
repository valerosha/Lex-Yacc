%{
#include <stdio.h>
void yyerror(char *s);
int start=0;
int stop=0;
int prom_st=0;
int size_term=0;
int countstr=0;
%}
%option yylineno
%option main
%%
write	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("WRITE (0,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return WRITE; */
	}
skip   	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("SKIP (0,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return SKIP;*/
	}
read	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("READ (0,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return READ;*/
	}
while	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("WHILE (0,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return WHILE;*/
	} 
do	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("DO (0,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return DO;*/
	}
if	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("IF (0,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return IF;*/
	}
else	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("ELSE (0,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return ELSE;*/
	}
then	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("THEN (0,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return THEN;*/
	}
\+	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p(PL,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return PL;*/
	}
\-	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	printf("0p(MIN,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return MIN;*/
	}
\==	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p(EQ,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return EQ;*/
	}
\!=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (NOTEQ,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return NOTEQ;*/
	}
\>=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (BOE,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return BOE;*/
	}
\<=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (FOE,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return FOE;*/
	}
\>	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (BIGGER,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return BIGGER;*/
	}
\<	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (FEWER,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return FEWER;*/
	}
\*[ \t]	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (MULT,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return MULT;*/
	}
\*\*[ \t] {size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (POWER,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return MULT;*/
	}
\/	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (DIV,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
       /*return DIV;*/
	}
\%	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p (PROC,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return PROC;*/
	}
\|\|	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p(LOGO,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return LOGO;*/
	}
\&&	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("0p(LOGA,%d,%d,%d)",yylineno,start, prom_st);
	start=stop;
	/*return LOGA;*/
	}


\:=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("IS(0,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return IS;*/
	}

\;	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("COLON(0,%d,%d,%d) ",yylineno,start, prom_st);
	start=stop;
	/*return COLON;*/
	}


[0-9]+	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("NUM (%s,%d,%d,%d) ",yytext,yylineno,start, prom_st);
	start=stop;
	 /* { yylval=atoi(yytext); we should send yacc our num_expr */
	/*return NUM;*/
	}
[a-zA-Z_$][a-zA-Z_]*[ \t]\:\= 	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("EXPR (%s,%d,%d,%d)",yytext,yylineno,start, prom_st);
	start=stop;
/*{ yylval = yytext; we should send yacc our word */ 
	/*return EXPR;*/
}

[a-zA-Z_$][a-zA-Z_]* 	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	printf("VAR (%s,%d,%d,%d)",yytext,yylineno,start, prom_st);
	start=stop;
/*{ yylval = yytext; we should send yacc our word */ 
	/*return VAR;*/

			 }
[ \t]*   {size_term=yyleng;
	  stop=start+size_term;
	   prom_st=stop-1;
	/* printf("0p(PROB,%d,%d,%d)",yylineno,start, prom_st);*/
       	  start=stop;
	/*return PROB;*/
	}

[(][*]((([^*])*([^)])*)|((([^*])*([^)])*[*][^)]+[)]([^*])*([^)])*))*)[*][)]  {size_term=yyleng;
			   stop=start+size_term;
			   prom_st=stop-1;
			   printf("DIF_COM(%s,%d,%d,%d) ",yytext,yylineno,start, prom_st);
		       	   start=stop;
			   /*return ENT;*/
			 }

\/\/[^\n]*	  {size_term=yyleng;
		  stop=start+size_term;
		  prom_st=stop-1;
		  printf("SIMP_COMMENTS (%s,%d,%d,%d)",yytext,yylineno,start, prom_st);
	       	  start=stop;
		/*return ENT;*/
		}




.	{printf("Unexpected expr simbol in line %d\n",yylineno ); exit(1);}
%%


