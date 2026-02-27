@echo off

WHERE choco
IF %ERRORLEVEL% NEQ 0 (
    ECHO "choco is required"
    exit /B 1
)

for %%a in (
    jetbrainstoolbox
    maven
    gradle
    git

    mysql.workbench
    mysql.utilities
) do (
    echo installing %%a ...
    choco install %%a -y
)

choco install jdk8 -y -params "both=true"
choco install mysql --version 5.7.18 -y
choco pin add -n=mysql --version 5.7.18
