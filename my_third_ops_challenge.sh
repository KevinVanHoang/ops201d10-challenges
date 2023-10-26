#!/bin/bash

# Script Name:                  Functions
# Author:                       Kevin Hoang
# Date of latest revision:      10/24/2023
# Purpose:                      How a Function Works

# Declaration of variables
LogHist=`last`
# Declaration of functions
print_history() {
    echo "$LogHist This is the login history"
}

# Main
print_history
print_history
print_history

# End