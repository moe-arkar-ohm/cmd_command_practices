#1. Setup the Variables (The Boxes)
Param(
[string]$TargetFolder = "D:\prjects\powershell_projects\Playground",
[string]$BackupFolder = "D:\prjects\powershell_projects\Playground_Backup"
)
#2. The Logic(The Janitor)
Write-Host "Starting the cleanup..."

# Get files from the $TargetFolder box
Get-ChildItem -Path $TargetFolder | 
Where-Object {$_.Extension -eq ".txt"} |
Move-Item -Destination $BackupFolder

Write-Host "Cleanup Complete!"
