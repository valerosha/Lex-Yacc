%{
#include <stdio.h>
#include<string.h>
#include<sys/types.h>
#include<sys/stat.h>

void yyerror(char *s);
int start=0;
int stop=0;
int prom_st=0;
int size_term=0;
int countstr=0;
int num_line=1;
int fil=1;
int bal;
char fili_name[50]="result.txt" ;
FILE *fl;
%}
%option yylineno

%%
write	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a+"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"WRITE (0,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	
	start=stop;
	/*return WRITE; */
	}
skip   	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a+"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"SKIP (0,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return SKIP;*/
	}
read	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a+"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"READ (0,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return READ;*/
	}
while	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a+"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"WHILE (0,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return WHILE;*/
	} 
do	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a+"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"DO (0,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return DO;*/
	}
if	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a+"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"IF (0,%d,%d,%d) ",yylineno,start, prom_st);fclose(fl);}
	start=stop;
	/*return IF;*/
	}
else	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"ELSE (0,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return ELSE;*/
	}
then	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"THEN (0,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return THEN;*/
	}
\+	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p(PL,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return PL;*/
	}
\-	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;	
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p(MIN,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return MIN;*/
	}
\==	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p(EQ,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return EQ;*/
	}
\!=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (NOTEQ,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return NOTEQ;*/
	}
\>=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (BOE,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return BOE;*/
	}
\<=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (FOE,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return FOE;*/
	}
\>	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (BIGGER,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return BIGGER;*/
	}
\<	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (FEWER,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return FEWER;*/
	}
\*	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (MULT,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return MULT;*/
	}
\*\* {size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (POWER,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return MULT;*/
	}
\/	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (DIV,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
       /*return DIV;*/
	}
\%	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p (PROC,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return PROC;*/
	}
\|\|	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p(LOGO,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return LOGO;*/
	}
\&&	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"0p(LOGA,%d,%d,%d)",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return LOGA;*/
	}


\:=	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"IS(0,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return IS;*/
	}

\;	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"COLON(0,%d,%d,%d) ",num_line,start, prom_st);fclose(fl);}
	start=stop;
	/*return COLON;*/
	}


[0-9]+	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"NUM (%s,%d,%d,%d) ",yytext,num_line,start, prom_st);fclose(fl);}
	start=stop;
	 /* { yylval=atoi(yytext); we should send yacc our num_expr */
	/*return NUM;*/
	}
[a-zA-Z_$][a-zA-Z_]*[ \t]\:\= 	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"EXPR (%s,%d,%d,%d)",yytext,num_line,start, prom_st);fclose(fl);}
	start=stop;
/*{ yylval = yytext; we should send yacc our word */ 
	/*return EXPR;*/
}

[a-zA-Z_$][a-zA-Z_]* 	{size_term=yyleng;
	stop=start+size_term;
 	prom_st=stop-1;
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"VAR (%s,%d,%d,%d)",yytext,num_line,start, prom_st);fclose(fl);}
	start=stop;
/*{ yylval = yytext; we should send yacc our word */ 
	/*return VAR;*/

			 }
[ \t]*   {size_term=yyleng;
	  stop=start+size_term;
	   prom_st=stop-1;
	/* printf("0p(PROB,%d,%d,%d)",num_line,start, prom_st);*/
       	  start=stop;
	/*return PROB;*/
	}
[\n] { 
	num_line=num_line+1;
	start=0;
	}



[(][*]((([^*])*([^)])*)|((([^*])*([^)])*[*][^)]+[)]([^*])*([^)])*))*)[*][)] {

	if(fil==0)
	{
	int i;
		for(i=0; i<yyleng; i++)
			{
				start=start+1;
				if(yytext[i]=='\n')
					{
						start=0;
						num_line=num_line+1;
					}
			}
	}
	else
	{
		int i;
		int begin_lineno=num_line;
		int begin_colno=start;
		int end_colno;
		for(i=0; i<yyleng; i++)
			{
				end_colno=start;
				start=start+1;
				if(yytext[i]=='\n')
					{
						start=0;
						num_line=num_line+1;
					}
			}
	if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"Comment(\"%s\", %d, %d, %d, %d); ", yytext, begin_lineno, num_line, begin_colno, end_colno);fclose(fl);}
	}
}





\/\/[^\n]*	  {
		if(fil==0) /*   */
		{
			num_line=num_line+1;
			start=0;

		}
		else
		{
		  size_term=yyleng;
		  stop=start+size_term;
		  prom_st=stop-1;
		  if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
	else {fprintf(fl,"SIMP_COMMENTS (%s,%d,%d,%d)",yytext,num_line,start, prom_st);fclose(fl);}
	       	  start=stop;
		/*return ENT;*/
		}
}



.		{size_term=yyleng;
		stop=start+size_term;
 		prom_st=stop-1;
		if((fl = fopen(fili_name ,"a"))==NULL) {printf ("Error !");}
		else {fprintf(fl,"Unexpected expr simbol in line (%s,%d,%d,%d)",yytext,num_line,start, prom_st);fclose(fl);}
		start=stop;
}
%%

	void show()
			{
				char itog_text[1024]= "";
				 if((fl = fopen(fili_name ,"r"))==NULL) {printf ("Ошибка при открытии файла!");}
				 else {
					while(!feof(fl))
						{
							fgets(itog_text,1024, fl);
							printf("%s",itog_text);
						}
					}
	       	 
				printf("\n");

			}


main(int argc,char *argv[])
	{
		
		int file;
		file= creat(fili_name, S_IRUSR| S_IWUSR);
		if(file==-1){
			printf("Файл не создан!\n");	
		}
		else {printf("\n");};

		if (strcmp(argv[1],"-filter")==0)
			{
				fil = 0; /* без фильтрации коммент */
				yyin=fopen(argv[2],"r");
			}
		else 
			{
				yyin=fopen(argv[1],"r");
			}

		if(yyin==NULL)
		printf("Такой файл не существует!\n");	
		else	
			{
				yylex();
				show();
			}
	}
