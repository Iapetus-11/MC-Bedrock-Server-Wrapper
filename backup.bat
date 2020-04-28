@echo off

:time
date /t > date.txt
set date=<date.txt
set date=%date:/=.%
del date.txt
time /t > time.txt
set time=<time.txt
set time=%time::=.%
del time.txt

:mbd
mkdir "backups\%date% %time%"

:backupdirs
xcopy /q /e /i "worlds\world" "backups\%date% %time%\world\"

echo.
echo %date% %time%: Backup Completed!
echo.