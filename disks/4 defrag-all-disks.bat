@echo off
sync64.exe -r
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist %%a:\ start cmd /c "echo %%a: & defrag /h /u /v %%a: & echo %%a: & pause"
