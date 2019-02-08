@echo off

net session >nul 2>&1
if %errorLevel% EQU 0 (
    echo Success: Administrative permissions confirmed.
) else (
    echo Failure: Administrative permissions are required
    exit /B 1
)


IF NOT EXIST "%SystemRoot%\System32\wsl.exe" (
    ECHO "NO Windows-Subsystem-Linux - Enable It!"
    "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux"
)

IF NOT EXIST "Ubuntu.appx" (
    echo Downloading Ubuntu 18.04 LTS ...
    "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu.appx -UseBasicParsing
    echo Installing Ubuntu 18.04 LTS ...
    "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command Add-AppxPackage "Ubuntu.appx"
)

WHERE choco
IF %ERRORLEVEL% NEQ 0 (
    ECHO "NO choco"
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" & SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)

for %%a in (
    7zip

    far
    conemu
    babun
    mremoteng

    pstools
    procexp

    firefox
    googlechrome

    telegram
    slack
    whatsapp

    vlc
    spotify

    sublimetext3

    wsl
) do (
    echo installing %%a ...
    choco install %%a -y
)
