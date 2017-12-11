#!/usr/bin/env bash

# File: logic-and-if-else-exercises

# 1. Write a Bash script that takes a string as an argument and prints “how proper” if the string starts with a capital letter.
if [[ $1 =~ ^[A-Z] ]]
then
  echo "how proper"
fi

# 2. Write a Bash script that takes one argument and prints “even” if the first argument is an even number or “odd” if the first argument is an odd number.
if [ $(($2%2)) -eq 0 ]
then
  echo "You entered: $2, which is even."
elif [ ! $(($2%2)) -eq 0 ]
then 
  echo "You entered: $2, which is odd."
fi

# 3. Write a Bash script that takes two arguments. If both arguments are numbers, print their sum, otherwise just print both arguments.
if [[ $3 =~ [0-9] && $4 =~ [0-9] ]]
then
  echo "$3 + $4 = "
  echo "$3 + $4" | bc -l
else
  echo "$3 $4"
fi

# 4. Write a Bash script that prints “Thank Moses it’s Friday” if today is Friday. (Hint: take a look at the date program).
if [[ $(date +%u) -eq 5 ]] #Monday (1) through to Sunday (7)
then
    echo "Thank Moses it’s Friday"
else
    echo "Today is $(date +%A)."
fi