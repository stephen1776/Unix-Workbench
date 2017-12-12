#!/usr/bin/env bash

# 1. Write a bash script where you define an array inside of the script,
# and the first argument for the script indicates the index of the array element
# that is printed to the console when the script is run.
plagues=(blood frogs lice flies sickness boils hail locusts darkness death);

if [[ " ${plagues[@]} " =~ " ${plagues[$1]} " ]];
then
    echo "${plagues[$1]}"
fi

if [[ ! " ${plagues[@]} " =~ " ${plagues[$1]} " ]];
then
    echo "Index $1 isn't in plagues."
fi

# 2. Write a bash script where you define two arrays inside of the script,
# and the sum of the lengths of the arrays are printed to the console when the script is run.
plagues2=(blood frogs lice flies sickness boils hail locusts disease darkness death);
dwarfs=(grumpy sleepy sneezy doc);
echo "The sum of the length of arrays plaques2 and dwarfs is: "
echo "${#plagues[*]} + ${#plagues[*]}" | bc -l