@echo off

:start
cls

echo 0. System Info DNS
echo 1. DNS Cache
echo 2. Attributes 
echo 3. Cipher
echo 4. Host Name
echo 5. IP Configuration
echo 6. Network Status
echo 7. Get Mac Address
echo 8. File Path
echo 9. Task List

choice /c 0123456789Q /m "Enter your choice, Q to quit"

if errorlevel 9 goto task
if errorlevel 8 goto file
if errorlevel 7 goto mac
if errorlevel 6 goto net
if errorlevel 5 goto ip
if errorlevel 4 goto host
if errorlevel 3 goto encryp
if errorlevel 2 goto attrib
if errorlevel 1 goto cache
if errorlevel 0 goto boottime

:boottime
systeminfo | find "Boot Time"
pause
goto finished


:cache
ipconfig /displaydns
pause
goto finished


:attrib
attrib
pause
goto finished


:encryp
cipher
pause
goto finished


:host
hostname
paus
goto finished


:ip
ipconfig
pause
goto finished


:net
netstat
pause
goto finished


:mac
getmac
pause
goto finished


:file
path
pause
goto finished


:task
tasklist | more
pause
goto finished


:finished
goto start

:end
