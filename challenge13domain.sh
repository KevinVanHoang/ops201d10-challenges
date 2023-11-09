#!/bin/bash

# Script Name:                  Code Challenge 13 Domain Analyzer
# Author:                       Kevin Hoang
# Date of latest revision:      11/8/2023
# Purpose:                      To Display the Domain information


# Function
# Ask the user to enter a domain name
echo "Enter a domain name"
read domain

DisplaysDomaininformation (){
    # Displays the whois information about the domain
    echo "WHOIS information (whois):" >> test.txt
    whois $domain >> test.txt

    # Displays the DNS information about the domain using dig
    echo "DNS information (dig):" >> test.txt
    dig $domain >> test.txt

    # Displays the DNS information about the domain using host
    echo "DNS information (host):" >> test.txt
    host $domain >> test.txt

    # Displays the DNS information about the domain using nslookup
    echo "DNS information (nslookup):" >> test.txt
    nslookup $domain >> test.txt
}
# Calling the Function
DisplaysDomaininformation

#Done
