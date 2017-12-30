#!/usr/bin/env bash
#file: 09-writing-programs-exercises.sh

# 1. Make a script executable.
#echo "Make this script executable." > script1
#chmod u+x script1
#ls -l script1
#-rwxr--r-- 1 stephen stephen 29 Dec 21 15:12 script1

# 2. Put that script in a directory that you create and make that directory part of your PATH.
# mv script1 scripts
# nano ~/.bash_profile
## add
# export PATH=~/GitHub/Unix-Workbench/03-Bash_Programming/scripts:$PATH
# source ~/.bash_profile
## only do once. can use script1 from command now

# 3. Write a program called range that takes one number as an argument and prints all of the numbers between that number and 0.
# See range script
#or see below
#END=$@
#for ((i=1;i<=END;i++)); do
#    echo -n "$i " # print one line with a space between num's
#done

# 4. Write a program called extremes which prints the maximum and minimum values of a sequence of numbers.
## Declare / initialize an array:
#arrayElements=($@); #(1 2 3 4 5 6 7)
#
## Choose first element of array as initial values for min/max;
#
#max=${arrayElements[0]}
#min=${arrayElements[0]}
#
## Loop through all elements in the array
#for i in "${arrayElements[@]}"
#do
#    # Update max if applicable
#    if [[ "$i" -gt "$max" ]]; then
#        max="$i"
#    fi
#
#    # Update min if applicable
#    if [[ "$i" -lt "$min" ]]; then
#        min="$i"
#    fi
#done
#
## Output results:
##echo "Max is: $max"
##echo "Min is: $min"
#echo -n "$min $max "

#Example output:
#range 6
#
### 0 1 2 3 4 5 6
#
#range -3
#
### -3 -2 -1 0
#
#extremes 8 2 9 4 0 3
#
### 0 9
#
#







