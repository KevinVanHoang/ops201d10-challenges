# Script: Ops Challenge 12 Powershell IP Analysis
# Author: Kevin Hoang
# Date of latest revision: 11/7/2023
# Purpose: Powershell script that performs these operations on separate lines

# Specify the save path before running 
$savePath = "C:\Users\admin\Documents\network_report.txt"

# Step 1: Run ipconfig /all command and save the output to network_report.txt
ipconfig /all > $savePath

# Step 2: Use Select-String to search network_report.txt and return only the IP version 4 address
$ipv4Address = Get-Content $savePath | Select-String -Pattern 'IPv4 Address' | ForEach-Object { $_ -replace '\D+(\d+\.\d+\.\d+\.\d+).*', '$1' }

# Step 3: Display the IPv4 address
Write-Output "IPv4 Address: $ipv4Address"

# Step 4: Remove the network_report.txt when you are finished searching it
Remove-Item -Path $savePath -Force
