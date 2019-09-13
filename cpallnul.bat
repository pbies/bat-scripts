@echo off
rem *** may specify disk or disk & path, c:, c:\temp
rem *** if omitted, root directory of current disk is taken
for /r %1\ %%a in (*.*) do echo Processing file %%a... & copy /b "%%a" nul > nul
