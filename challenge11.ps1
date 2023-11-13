# Script: Ops Challenge 11 Automated Endpoint Configuration
# Author: Kevin Hoang
# Date of latest revision: 11/6/2023
# Purpose: Powershell script that performs these operations on separate lines




#Write a Powershell script that automates the configuration of a new Windows 10 endpoint. Your script should perform the following:
# Enable File and Printer Sharing
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

# Allow ICMP traffic
Enable-NetFirewallRule -Name "FPS-ICMP4-ERQ-In"
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

# Enable Remote management
Set-ExecutionPolicy RemoteSigned -Force
Enable-PSRemoting -Force

# Remove bloatware
Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*bloatware*" } | Remove-AppxPackage -AllUsers
# Basil's solution
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))


# Enable Hyper-V
Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1, an insecure protocol
# check if SMBv1 is enabled
Get-SmbServerConfiguration 
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
