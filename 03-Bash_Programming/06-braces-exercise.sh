#!/usr/bin/env bash

#1. Create 100 text files using brace expansion.
mkdir braces
touch > eval echo braces/file{001..100}.txt
