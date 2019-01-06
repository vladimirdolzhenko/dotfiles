@echo off

WHERE choco
IF %ERRORLEVEL% NEQ 0 (
    ECHO "choco is required"
    exit /B 1
)

for %%a in (
    firacode
    sourcecodepro
    inconsolata
) do (
    echo installing %%a ...
    choco install %%a -y
)
