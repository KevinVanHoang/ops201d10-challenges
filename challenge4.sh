#!/bin/bash

# Script:                     Arrays 
# Author:                     Kevin Hoang 
# Date of latest revision:    10/25/2023  
# Purpose:                    Ops 201 Challenge 4 Arrays


#Today’s script is a form of automation.

#Review the process for creating a new directory.
#Create four directories using the script.
#Load each directory path into an array.
#create a new .txt file within each directory by referencing the directory with array indices, not the literal directory path.
#Test & validate.
# -----------------------------------------------------------------------------------------------------------------------------------------


#   Creates four directories: dir1, dir2, dir3, dir4

#   Put the names of the four directories in an array
#   Define array


directories=("dir1" "dir2" "dir3" "dir4")


mkdir -p "${directories[@]}"
touch "${directories[0]}/text.txt"
touch "${directories[1]}/text.txt"
touch "${directories[2]}/text.txt"
touch "${directories[3]}/text.txt"





echo "Directories created successfully!"

echo ".txt files created in the directories successfully!"


# paths=(./demo ./demo/dir1 ./demo/dir2 ./demo/dir3)




#  References the array variable to create a new .txt file in each directory


#  Create the directories using the paths we put into the array
# mkdir ${paths[*]}


