#!/usr/bin/env bash
# File: 06-variables-exercises.sh

# 1. Write a Bash program where you assign two numbers to different variables, and then the program prints the sum of those variables.
num_one=5
num_two=6
expr $num_one + $num_two

# 2. Write another Bash program where you assign two strings to different variables, and then the program prints both of those strings. Write a version where the strings are printed on the same line, and a version where the strings are printed on different lines.
str_one="hey"
str_two="there"
echo "$str_one $str_two"
echo "$str_one"
echo "$str_two"

#3. Write a Bash program that prints the number of arguments provided to that program multiplied by the first argument provided to the program.
echo "Script arguments: $@"
echo "First arg: $1. Second arg: $2."
echo "Number of arguments: $#"
echo "$# * $1" | bc -l
