:: skrypt wyswietla predkosc z jaka dane przechodza przez interfejs sieciowy
@echo off
set startrxd=
set startsent=
set rrxd=
set rsent=
set rxd=
set sent=
cls
:top
cls
:: pobieranie informacji
for /f "tokens=2,3 delims= " %%a in ('netstat -e ^| find /i
"bajty"') do (
set STARTrxd=%%a
set STARTsent=%%b)
echo.
echo.
echo Poczekaj chwile, zbieram dane...
ping localhost -n 3 | find /i "from" > nul
:go
for /f "tokens=2,3 delims= " %%a in ('netstat -e ^| find /i
"bajty"') do (
set rxd=%%a
set sent=%%b)
set /a Rrxd=%rxd%-%STARTrxd%
set /a Rsent=%sent%-%STARTsent%
if DEFINED prerxd (set /a rxdbps=%rrxd%-%prerxd% && set /a rxdKbps=%rxdbps%/1024)
if DEFINED present (set /a sentbps=%rsent%-%present% && set /a sentKbps=%sentbps%/1024)
cls
echo.
echo.
if /i "%Rrxd%" LEQ "0" echo Odebrano: brak zmian
::download w bajtach na sekunder
if DEFINED prerxd (echo Odebrano: %rrxd% z predkoscia %rxdbps% bajtow/s)
::download w kilobajtach na sekunde
if DEFINED prerxd (echo Odebrano: %rrxd% z predkoscia %rxdKbps% kB/s)
::upload w bajtach na sekunde
if DEFINED present (echo Wyslano: %rsent% z predkoscia %sentbps% bajtow/s)
::upload w kilobajtach na sekunde
if DEFINED present (echo Wyslano: %rsent% z predkoscia %sentKBps% kB/s)
if /i "%Rsent%" LEQ "0" echo Wyslano: brak zmian
ping localhost -n 2 | find /i "from" > nul
set prerxd=%rrxd%
set present=%rsent%
goto :go 
