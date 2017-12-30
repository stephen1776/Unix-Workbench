#!/usr/bin/env bash

# 1.Write several programs with three levels of nesting and include FOR loops, WHILE loops,
# and IF statements. Before you run your program try to predict what your program is going to print.
# If the result is different from your prediction try to figure out why.
echo "Program 1";
for number in {1..3}
do
  for letter in a b
  do
    echo "number is $number, letter is $letter"
  done
      if [[ $number -lt 3 ]] || [[ $number -gt 8 ]]
      then
        echo $number
      fi
done
echo "Done";
echo "Program 2";

count=10;
while [[ $count -gt 0 ]]
    do
      echo "count is equal to $count"
      let count=$count-1
    done
    for number in {1..3}
    do
      for letter in a b
      do
        echo "number is $number, letter is $letter"
      done
    done


# 2.Enter the yes command into the console, then stop the program from running.
# Take a look at the man page for yes to learn more about the program.

# Note: use 'Ctrl c' to stop