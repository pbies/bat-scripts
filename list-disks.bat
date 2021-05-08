@echo off
chcp 65001
for %%a in (d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%a:\ ( dir /b /s %%a:\ | sort > %%a.txt )
