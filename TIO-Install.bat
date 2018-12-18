ECHO off
cls
ECHO Enter you Target Group.
set /p INPUT=
SET INPUT
cls
ECHO Now we check your OS:
cls
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:32BIT
ECHO 32-bit Install...
msiexec /i NessusAgent-7.1.2-Win32.msi NESSUS_GROUPS="%INPUT%" NESSUS_SERVER="cloud.tenable.com:443" NESSUS_KEY=00abcd00000efgh11111i0k222lmopq3333st4455u66v777777w88xy9999zabc00
GOTO END

:64BIT
ECHO 64-bit Install...
msiexec /i NessusAgent-7.1.2-x64.msi NESSUS_GROUPS="%INPUT%" NESSUS_SERVER="cloud.tenable.com:443" NESSUS_KEY=00abcd00000efgh11111i0k222lmopq3333st4455u66v777777w88xy9999zabc00
GOTO END

:END

REM you will need to download the proper 32 and 64 bit msi from https://www.tenable.com/downloads/nessus-agents and the edit this file for your needs. 
REM used to link a Tenable IO agent to your instance of TIO. Tested up to Win 7 32/64 and Win 10 32/64.
