@echo off
title Simple SMB Scanner

:start
cls
echo =====================================
echo         Simple SMB Scanner
echo           by Stekplantje
echo =====================================
echo.
echo Enter an SMB server IP address.
echo Example: 192.168.1.100
echo.
echo Type Q to quit.
echo.

set /p "ipp=IP Address: "

if /i "%ipp%"=="q" exit
if "%ipp%"=="" (
    echo.
    echo No IP address entered.
    pause
    goto start
)

title Scanning %ipp%
echo.
echo %ipp% selected.
echo Starting SMB scan...
echo.

net view \\%ipp% /all

echo.
pause
goto start