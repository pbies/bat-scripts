@echo off
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do if exist %%a:\ for %%b in ($mft $logfile $volume $attrdef $bitmap $boot $badclus $secure $upcase $extend) do ( title %%a:\%%b & echo ### Processing %%a:\%%b ### & contig64 -v %%a:\%%b )
title Done!
echo 
pause
