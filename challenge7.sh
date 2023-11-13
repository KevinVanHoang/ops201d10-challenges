#!/bin/bash

# Script Name:                  Challenge 7 System Information
# Author:                       Kevin Hoang
# Date of latest revision:      10/30/2023
# Purpose:                      Write a script that outputs a report about current system CPU and RAM performance of a Ubuntu Linux computer.

# Uses lshw to display system information to the screen about the following cmponents: 
# CPU
    # Product
    # Vendor
    # Physical ID
    # Bus info
    # Width

# RAM

#     Description
#     Physical ID
#     Size

# Display adapter

#     Description
#     Product
#     Vendor
#     Physical ID
#     Bus info
#     Width
#     Clock
#     Capabilities
#     Configuration
#     Resources

# Network adapter

#     Description
#     Product
#     Vendor
#     Physical ID
#     Bus info
#     Logical name
#     Version
#     Serial
#     Size
#     Capacity
#     Width
#     Clock
#     Capabilities
#     Configuration
#     Resources

# Uses grep to remove irrelevant information from the lshw output
# Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about
# Runs as Root; you may execute the shell script with sudo or as Root

if [[  $EUID -ne 0  ]]
then
    echo "typo detected to Run type: sudo ./challenge7.sh"
    exit 1
fi

# The function displays system's information for each specified componemnt
system_comp_info() {
    cmponent="$1"
    echo "____*__*_***_-_* $cmponent *_-_***_*__*_____"
    lshw -c $cmponent | grep -E "description|vendor|physical id|bus info|width|clock|capabilities|configuration|resources|logical name|version|serial|size|capacity"
    echo

}  
    # echo "Computer Name: $computer_name"
    # lshw -class CPU | grep "product\|vendor\|physical\|bus\|width"
    #     lshw -class RAM | grep "description\|physical\|size"
    #         lshw -class DISPLAY | grep "description\|vendor\|physical\|bus\|width|bus\"
   

echo "Computer name: $(hostname)"

# Display systems's information for each cmponent
system_comp_info "system"
system_comp_info "display"
system_comp_info "network"
system_comp_info "cpu"
system_comp_info "memory"




exit 0
