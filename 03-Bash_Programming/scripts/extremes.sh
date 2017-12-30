#!/usr/bin/env bash

# 4. Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.

# Declare / initialize an array:
arrayElements=($@); #(1 2 3 4 5 6 7)

# Choose first element of array as initial values for min/max;

max=${arrayElements[0]}
min=${arrayElements[0]}

# Loop through all elements in the array
for i in "${arrayElements[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
#echo "Max is: $max"
#echo "Min is: $min"
echo -n "$min $max "