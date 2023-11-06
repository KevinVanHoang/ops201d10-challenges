# Script: Ops Challenge 10 System Process Commands
# Author: Kevin Hoang
# Date of latest revision: 11/5/2023
# Purpose: Powershell script that performs these operations on separate lines



# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending

# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5

# Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process "chrome.exe" "https://owasp.org/www-project-top-ten/"

# Start the process Notepad ten times using a for loop.
for ($i = 1; $i -le 10; $i++) {
    Start-Process -FilePath "notepad.exe"
}

# Close all instances of the Notepad.
Get-Process -Name "notepad" | ForEach-Object { $_.CloseMainWindow() }

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
# For example peplace "12345" with the actual PID of the process you want to terminate.
Stop-Process -Id 12345 -Force
