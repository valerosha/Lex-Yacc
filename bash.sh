#!/bin/bash

sudo apt-get install byacc flex 
sudo apt-get install gcc
lex exm_1.l
gcc lex.yy.c -lfl -o lexer
./a.out
