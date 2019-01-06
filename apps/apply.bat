@echo off

net session >nul 2>&1
if %errorLevel% EQU 0 (
    echo Success: Administrative permissions confirmed.
) else (
    echo Failure: Administrative permissions are required
    exit /B 1
)

WHERE wls
IF %ERRORLEVEL% NEQ 0 (
    ECHO "NO Windows-Subsystem-Linux"
    "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux"
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

    firefox
    googlechrome

    telegram
    slack

    vlc
    spotify

    sublimetext3

    wsl
) do (
    echo installing %%a ...
    choco install %%a -y
)
