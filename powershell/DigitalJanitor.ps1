#1. Setup the Variables (The Boxes)
Param(
[string]$TargetFolder = "D:\prjects\powershell_projects\Playground",
[string]$BackupFolder = "D:\prjects\powershell_projects\Playground_Backup"
)
#2. The Logic(The Janitor)
# Write-Host "Starting the cleanup..."

# # Get files from the $TargetFolder box
# Get-ChildItem -Path $TargetFolder | 
# Where-Object {$_.Extension -eq ".txt"} |
# Move-Item -Destination $BackupFolder

# Write-Host "Cleanup Complete!"
#version2
#1. The Scout: Check if the folder exists
if (Test-Path $TargetFolder) {

    # 2. The Good News: it exists!
    Write-Host "found the folder. Proceeding with cleanup..."

    #3. The Logic(The Janitor)
    Get-ChildItem -Path $TargetFolder |
    Where-Object {$_.Extension -eq ".txt"} |
    Move-Item -Destination $BackupFolder -Force
    Write-Host "Cleanup Complete!" -ForegroundColor Green
} else {
    Write-Host "Error: The folder '$TargetFolder' does not exist!" -ForegroundColor Red
}
    exit
