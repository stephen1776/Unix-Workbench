#!/usr/bin/env bash

# File: 03-use-input-excersise.sh

# 1. Write a script that asks the user for an adjective, a noun, and a verb, and then use those words in a sentence (like Mad Libs).

echo "Type in an adjective and then press Enter:"
read adj

echo "Type in a noun and then press Enter:"
read noun

echo "Type in a verb and then press Enter:"
read verb


echo "The $adj $noun $verb."
