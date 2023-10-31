#!/bin/bash

# Script Name:                  Challenge 6 Conditionals 
# Author:                       Kevin Hoang
# Date of latest revision:      10/30/2023
# Purpose:                      List of files or directories

# Array to store the files or directories
directories=("dir1" "dir2" "dir3" "dir4")

# Function to check if the directory is in the directories array
dir_in_array() {
  dir_check="$1" # directories I am looking for is in my array
  for dir in "${directories[@]}"; do
    # check if the directory Im searching for is in the array or not
    if [ "$dir" == "$dir_check" ]; then
      return 0 # boolean true - dir was in array!
    fi
  done
  return 1 # boolean false - dir is not in array
}

# Loop to repeatedly ask the user for directories to check
while true; do
  # ask the user for input of a directory to look for in the array
  read -p "Enter a directory name to check if it's on your array.(or type 'done' to finish)" dir_name
    # dir_name is a variable that will store the user's input

  # check if the user's input is "done"
  if [ "$dir_name" = "done" ]; then
    break # exit the loop
  fi

  # check if the directory is in the array using the function
  if dir_in_array "$dir_name"; then
    echo "'$dir_name'  already exists."
  else
    # if the directory is not on the array, ask the user if they want to add it
    read -p "'$dir_name' is not on your array, do you want to add it? (yes/no)" add_dir
    if [ "$add_dir" = "yes" ]; then
      directories+=("$dir_name")
      echo "'$dir_name' added to your array."
    else
      echo "'$dir_name' is not on your array."
    fi
  fi
done

# Ask the user if they are ready to see their completed array
read -p "Are you ready to see your completed array? (yes/no)" show_dir
if [ "$show_dir" = "yes" ]; then
  echo "Your completed array: "
  echo "${directories[@]}"
else
  echo "Ok, you can check your array later."
fi