@echo off

set module=%1

net session >nul 2>&1
if %errorLevel% EQU 0 (
    echo Success: Administrative permissions confirmed.
) else (
    echo Failure: Administrative permissions are required
    exit /B 1
)

WHERE wls
IF %ERRORLEVEL% NEQ 0 (
    ECHO "NO Windows-Subsystem-Linux - Enable It!"
    "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux"
)

WHERE choco
IF %ERRORLEVEL% NEQ 0 (
    ECHO "choco is missed -- install it"
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" & SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)

SET modules=dev fonts apps

IF "%module%" NEQ "" SET modules=%module%

FOR %%m in (%modules%) DO (
    IF EXIST %%m\NUL (
        echo apply module %%m
        cd %%m
        apply.bat
        cd ..
    )
)
