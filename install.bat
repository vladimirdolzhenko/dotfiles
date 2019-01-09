@echo off

set module=%1

net session >nul 2>&1
if %errorLevel% EQU 0 (
    echo Administrative permissions confirmed.
) else (
    echo Failure: Administrative permissions are required
    exit /B 1
)

WHERE choco
IF %ERRORLEVEL% NEQ 0 (
    ECHO "choco is missed -- install it"
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" & SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)

SET modules=apps dev fonts windows

IF "%module%" NEQ "" SET modules=%module%

FOR %%m in (%modules%) DO (
    IF EXIST %%m\apply.bat (
        echo apply module %%m
        cd %%m
        call apply.bat
        cd ..
    )
)

echo update choco ...
choco upgrade all
