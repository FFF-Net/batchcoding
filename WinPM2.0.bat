@echo off
:xcv
cls
title Windows Power Manager By FCTeam and LFTeam
@echo ****************************************************************************************
@echo Windows Power Manager By Frosty Cranky Team and Loppy Faris
@echo ****************************************************************************************
@echo Loading files.
PING localhost -n 2 >NUL
cls
@echo ****************************************************************************************
@echo Windows Power Manager By Frosty Cranky Team and Loppy Faris
@echo ****************************************************************************************
@echo Loading files..
PING localhost -n 2 >NUL
cls
@echo ****************************************************************************************
@echo Windows Power Manager By Frosty Cranky Team and Loppy Faris
@echo ****************************************************************************************
@echo Loading files...
PING localhost -n 2 >NUL
cls
@echo ****************************************************************************************
@echo Windows Power Manager By Frosty Cranky Team and Loppy Faris
@echo ****************************************************************************************
@echo 1.Shutdown this pc
@echo 2.Restart this pc
@echo 3.Sign out or Log off from %username%
@echo 4.Restart windows explorer
@echo 5.See windows version
@echo 6.Open Task manager
@echo 7.Exit from WinPM2
@echo.
set /P "START=Your Input: "
REM -------------------> Script here
if '%START%' equ '' goto none
if '%START%' equ '1' goto off
if '%START%' equ '2' goto rest
if '%START%' equ '3' goto logoff
if '%START%' equ '4' goto exp
if '%START%' equ '5' goto win
if '%START%' equ '6' goto taskmgr
if '%START%' equ '7' goto exit
REM ----------------------------- Batch command start at here
:none
goto xcv

:off
%drivepath%\Windows\system32\shutdown.exe -t 00 -s
taskkill /f /im cmd.exe
taskkill /f /im sethc.exe

REM -------> Spaceline

:rest
%drivepath%\Windows\system32\shutdown.exe -t 00 -r
taskkill /f /im cmd.exe
taskkill /f /im sethc.exe

REM -------> Spaceline

:logoff
%drivepath%\Windows\system32\shutdown.exe /l
taskkill /f /im cmd.exe
taskkill /f /im sethc.exe

REM -------> Spaceline

:exp
taskkill /f /im explorer.exe
start explorer.exe

REM -------> Spaceline

:win
start winver.exe

REM -------> Spaceline

:taskmgr
start %drivepath%\Windows\system32\taskmgr.exe
goto xcv

REM -------> Spaceline

:exit
taskkill /f /im cmd.exe
taskkill /f /im sethc.exe

