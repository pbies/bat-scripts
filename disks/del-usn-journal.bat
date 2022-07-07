@echo off
title %1
echo %1
fsutil usn deletejournal /d %1
echo 
pause
