@echo off
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%a:\ ( title %%a: & echo %%a: & contig64 %%a:\$mft )
echo 
pause
