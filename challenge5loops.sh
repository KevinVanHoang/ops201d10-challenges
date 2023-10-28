#!/bin/bash

# Script:                     Loops 
# Author:                     Kevin Hoang 
# Date of latest revision:    10/25/2023  
# Purpose:                    Ops 201 Challenge 5 Loops



    # Displays running processes
    # Asks the user for a PID
    # Kills the process with that PID
    # Starts over at step 1 and continues until the user exits with Ctrl + C


# Array to store running process IDs

variable=0

while variable=0
    do
   # Display running processes
    echo "Running Processes:"
    ps aux
    echo "Enter the PID of the process to kill"
    
    read input
    kill -9 $input
    done




 # Ask user for PID input
    #read -p "Enter the PID of the process to kill (or enter 0 to exit):
    




