@echo off
sync64.exe -r
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist %%a:\ start cmd /c "title %%a: & echo %%a: & chkdsk %%a: & if not errorlevel 1 echo %%a: & pause"
