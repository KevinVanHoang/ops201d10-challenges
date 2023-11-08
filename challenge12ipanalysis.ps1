# Script: Ops Challenge 12 Powershell IP Analysis
# Author: Kevin Hoang
# Date of latest revision: 11/7/2023
# Purpose: Powershell script that performs these operations on separate lines


# Step 1: Run ipconfig /all command and save the output to network_report.txt
ipconfig /all > network_report.txt

# Step 2: Use Select-String to search network_report.txt and return only the IP version 4 address
$ipv4Address = Get-Content -Path network_report.txt | Select-String -Pattern '\b(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\b' | Select-Object -ExpandProperty Matches | Select-Object -ExpandProperty Value

# Step 3: Display the IPv4 address
Write-Output "IPv4 Address: $ipv4Address"

# Step 4: Remove the network_report.txt when you are finished searching it
Remove-Item -Path network_report.txt
