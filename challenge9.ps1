# Script: Ops Challenge 9 Log Retrieval via Powershell
# Author: Kevin Hoang
# Date of latest revision: 11/2/2023
# Purpose: Retrieves System Logs 


# 1. Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.#>

Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\Nobunaga\Desktop\last_24.txt


#2. Output all “error” type events from the System event log to a file on your desktop named errors.txt.#

Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\Nobunaga\Desktop\errors.txt



#3. Print to the screen all events with ID of 16 from the System event log.#

Get-EventLog -System | Where-Object {$_.EventID -eq 16}



#4. Print to the screen the most recent 20 entries from the System event log.#

Get-EventLog -LogName System -Newest 20


<#5. Print to the screen all sources of the 500 most recent entries in the System
event log. Ensure that the full lines are displayed (get rid of the
… and show the entire text).#>

Get-EventLog -LogName System -Newest 500 | Format-Table -Autosize
