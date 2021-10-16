cls
@echo off
color 1f
echo ===============================
echo ====== Computer Cracker =======
echo ===============================
echo ======= version beta 1 ========
echo ===============================
color 78

:pri
set /p "ip=Insert a pc IP> "
set /p "time=Insert Time> "
set /p "msg=Insert Message> "

echo (1)...Shutdown
echo (2)....Restart

set /p "op=Selection Operation> "
if %op% == 1 goto shut
if %op% == 2 goto res

:shut
echo Shutdown computer ...
echo IP ... %ip%.
echo Time ... %time% seconds.
echo Message ... %msg%.

echo Do you wish to continue?
set /p "choose=Y/N> "

if %choose% == Y goto shutA
if %choose% == N goto pri
if %choose% == y goto shutA
if %choose% == n goto pri

:shutA
echo Good Bye
shutdown /s /t %time% /m \\%user% /c %msg%
goto exit

:res 
echo Restart computer ...
echo IP ... %ip%.
echo Time ... %time% seconds.
echo Message ... %msg%.

echo Do you wish to continue?
set /p "choose=Y/N> "

if %choose% == Y goto resA
if %choose% == N goto pri
if %choose% == y goto resA
if %choose% == n goto pri

:resA
echo Good Bye
shutdown /s /t %time% /m \\%user% /c %msg%
goto exit

:exit
exit








