REM geeks4yu.blogspot.com
@echo off
title Rar Password Cracker
mode con: clos=47 lines=20
copy "C:\Program 
Files\WinRAR\Unrar.exe"
SET PSWD=0
SET DEST=%TEMP%\%RANDOM%
MD %DEST%
:RAR
cls
:RAR
cls
echo____________________________________________
____
echo                     GET DETAIL
echo____________________________________________-
____
echo.
SET/P"NAME=Enter File Name :"
IF"%NAME%"==""goto NERROR
goto GPATH
:NERROR
echo_____________________________________________
____
echo                       ERROR
echo______________________________________________
____
echo Sorry you can't leave it balnk.
pause 
goto RAR
:GPATH
SET/P"PATH=Enter Full Path:"
IF"%PATH%"==""goto PERROR
goto NEXT
:PERROR
echo_______________________________________________
____
echo                       ERROR
echo_______________________________________________
____
echo Sorry you can't leave it blank.
pause
goto RAR
:NEXT   
IF EXIST "%PATH%\%NAME%"GOTO
START 
goto PATH
:PATH 
cls
echo_______________________________________________
____
echo                       ERROR
echo_______________________________________________
____
echo Opppss File does not Exist..
pause
goto 
:START
SET/A PSWD=%PSWD%+1
UNRAR E -INUL-P%PSWD%
"%PATH%\%NAME%""%DEST%"
IF/I%EORROLEVEL% EQU 0 GOTO
FINISH
GOTO START 
:FINISH
RD %DEST%/Q/S
Del"Unrar.exe"
cls
echo__________________________________________________
____
echo                     CRACKED
echo___________________________________________________
____
echo.
echo PASSWORD FOUND!
echo FILE=%NAME%
echo CRACKED PASSWORD=%PSWD%
pause>NUL
exit
REM