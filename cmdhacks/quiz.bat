@echo off
color ob
echo.
echo.
echo.
echo welcome to quiz game!
echo 1)start
echo 2)exit
set /p type=
if%type%==1start1
if%type%==2exit1


:start1
cls
color ob
echo 1)blah
echo 2)yadda
set /p type=
if%type%==1goto correct1
if%type%==2goto wong1


:correct
cls
color 0a
echo correct(you can add more things if you want)
pause  


:wrong 1
cls
color 0c
echo type 1 to exit 
set /p type=
if%type%==1exit

:exit1
cls
echo goodbye!
pause 