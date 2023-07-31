@echo off
cls
color 0f

:start
echo Choose an action:
echo 1) Create new file...
echo 2) Exit
set /p menuselect=Number:
if %menuselect% == 1 goto newfile
if %menuselect% == 2 exit

:newfile
cls
echo Enter a name:
set /p filename=Name:
cls
echo On the next page, you will get to enter the file contents. You can't press enter untill you are ready to save it!
pause
cls
set /p filecontents=
cls
Saving the file...
echo %filecontents% >> %filename%.txt
pause
goto start
