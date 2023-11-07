# Script: Ops Challenge 11 Automated Endpoint Configuration
# Author: Kevin Hoang
# Date of latest revision: 11/6/2023
# Purpose: Powershell script that performs these operations on separate lines




#Write a Powershell script that automates the configuration of a new Windows 10 endpoint. Your script should perform the following:
# Enable File and Printer Sharing


# Allow ICMP traffic
Enable-NetFirewallRule -Name "FPS-ICMP4-ERQ-In"

# Enable Remote management
Set-ExecutionPolicy RemoteSigned -Force
Enable-PSRemoting -Force

# Remove bloatware
Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*bloatware*" } | Remove-AppxPackage -AllUsers
# Enable Hyper-V

# Disable SMBv1, an insecure protocol
