@echo off
for %%f in ($mft $logfile $volume $attrdef $bitmap $boot $badclus $secure $upcase $extend) do ( title %1\%%f & echo ### Processing %1\%%f ### & contig64 -v %%1\%%f >nul 2>nul )
title Done!
echo 
pause
