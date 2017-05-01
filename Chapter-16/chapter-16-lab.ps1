# 1st command to stop Notepad process
Get-Process -Name *notepad* | Stop-Process

# 2nd command
Stop-Process -Name *notepad* 

# 3rd command
Get-WmiObject -ClassName win32_Process -Filter "Name like '%notepad%'" | ForEach-Object {$_.terminate()}

# 4th command
Get-WmiObject -ClassName win32_Process -Filter "Name like '%notepad%'" | Invoke-WmiMethod -Name terminate

# 5th command
(Get-Process -Name *notepad*).Kill()

# 6th command
Get-Process -Name *notepad* | ForEach-Object {$_.Kill()}