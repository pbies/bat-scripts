@echo off
net stop wuauserv
net stop cryptsvc
del /f /s /q %windir%\SoftwareDistribution
del /f /s /q %windir%\System32\CatRoot2
net start wuauserv
net start cryptsvc
echo 
pause
