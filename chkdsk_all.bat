@echo off
sync64.exe -r
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%a:\ start cmd /c "echo %%a: & chkdsk %%a: & pause"
