#!/bin/bash

# search-exercises

# 1. Search states.txt and canada.txt for lines that contain the word “New”.
# Note canada.txt not offered.
egrep "New" states.txt;

# 2.  Make five text files containing the names of states that don’t contain one of each of the five vowels.
touch noa_states.txt;
touch noe_states.txt;
touch noi_states.txt;
touch noo_states.txt;
touch nou_states.txt;

egrep -i -v "[a]" states.txt > noa_states.txt; 
egrep -i -v "[e]" states.txt > noe_states.txt; 
egrep -i -v "[i]" states.txt > noi_states.txt; 
egrep -i -v "[o]" states.txt > noo_states.txt; 
egrep -i -v "[u]" states.txt > nou_states.txt; 

# 3. Download the GitHub repository for this book and find out how many .html files it contains.
find . -name "*.html" | wc -l
# ans 12
