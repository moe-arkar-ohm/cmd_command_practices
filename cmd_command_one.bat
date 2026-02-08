@echo off
color 0a
echo WELCOME TO THE GATE.

:: Ask for the password

set /p password=Enter the secret code:

:: Check the logic
if %password%==1234 goto :success
if not %password%==1234 goto :fail

:fail 
echo .
echo WRONG CODE! ACCESS DENIED!
echo The police have been alerted.
pause
exit

:success
echo .
echo PASSWORD ACCEPTED.
echo Welcome, Master.
echo Opening your secret files...
mkdir SecretVault
start SecretVault
pause