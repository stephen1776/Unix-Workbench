#!/bin/bash

# migration-and-destruction-exercises

# 1. Create a file called message.txt in your home directory and move it into another directory.
cd $Home;
touch message.txt;
mv message.txt workbench;
ls;
ls workbench/;

# 2. Copy the message.txt you just moved into your home directory.
cp workbench/message.txt $Home\message.txt;
ls

# 3. Delete both copies of message.txt. Try to do this without using rm.
mv message.txt ~/.local/share/Trash;
mv workbench/message.txt ~/.local/share/Trash;
ls;
ls workbench/;

