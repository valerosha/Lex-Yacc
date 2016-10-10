#!/bin/bash

sudo apt-get install byacc flex 
sudo apt-get install gcc
lex exm_1.l
cc lex.yy.c
./a.out
