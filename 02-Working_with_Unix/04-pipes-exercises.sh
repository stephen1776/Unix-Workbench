#!/bin/bash 

# pipes-exercises

# 1. Use pipes to figure out how many US states contain the word “New.”
grep "New" states.txt | wc -l;
# ans 4

# 2. Examine your ~/.bash_history to try to figure out how many unique commands you’ve ever used. (You may need to look up how to use the uniq and sort commands).
cat ~/.bash_history | sort | uniq -c
