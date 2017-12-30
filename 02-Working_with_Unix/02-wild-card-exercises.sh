#!/bin/bash

# wild-card-exercises

# 1. Before I organized the photos by year, what command would have listed all of the photos of type .png?
ls *.png

# 2. Before I organized the photos by year, what command would have deleted all of my hiking photos?
rm *hiking*
   
# 3. What series of commands would you use in order to put my figures for a data science course and the pictures I took in the lab into their own folders?
mv *datasci* datasci/
mv *lab* lab/
ls;
