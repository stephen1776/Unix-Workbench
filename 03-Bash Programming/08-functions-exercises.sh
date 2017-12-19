#!/usr/bin/env bash
# file: 08-functions-exercises.sh
# Below this list of exercises you can find examples of how these programs should work when used on the command line.

# 1. Write a function called plier which multiplies together a sequence of numbers.
# run 'source 08-functions-exercises.sh'

function plier {
  prod=1

  for element in $@
  do
    let prod=$(($prod * $element))
  done

  echo ${prod}
}

# 2. Write a function called isiteven that prints 1 if a number is even or 0 a number is not even.

function isiteven {
    for i in $@
    do
        if [[ $((i % 2)) -eq 0 ]];
        then echo "1"
        else echo "0"
        fi
    done
}


# 3. Write a function called nevens which prints the number of even numbers when provided with a sequence of numbers. Use isiteven when writing this function.
function nevens {
    elements=$@
    sum_even=0
    for j in $@
    do
        if [[ $(isiteven $j) -eq 1 ]]
        then
        sum_even=$(($sum_even+1))
        fi
    done
    echo ${sum_even}
}

# 4. Write a function called howodd which prints the percentage of odd numbers in a sequence of numbers. Use nevens when writing this function.
function howodd {
    num_even=$(nevens $@)
    echo "scale=2; $num_even/$#" | bc
}

# 5. Write a function called fib which prints the number of fibonacci numbers specified.
function fib {
#if [ $# -eq 1 ]
#then
#    Num=$1
#else
#    echo -n "Enter a Number :"
#    read Num
#fi

f1=0
f2=1
Num=$@
echo "The Fibonacci sequence for the number $Num is: "

for (( i=0;i<Num;i++ ))
do
     echo -n "$f1 "
     fn=$((f1+f2))
     f1=$f2
     f2=$fn
done

echo
}
#6. Write fibNum function that prints fib numbers up to the one specified.
function fibNum {
c=0
a=1
b=1
n=$@
echo -n "$c "
echo -n "$a "
echo -n "$b "
#Fibonacci series logic
while((c<n))
do
c=$((a+b))
echo -n "$c "
a=$b
b=$c
done
echo -e "\n"
}

# Results should look like:
## plier 7 2 3
### 42
#isiteven 42
### 1
#nevens 42 6 7 9 33
### 2
#howodd 42 6 7 9 33
### .40
#fib 4
### 0 1 1 2
#fib 10
### 0 1 1 2 3 5 8 13 21 34