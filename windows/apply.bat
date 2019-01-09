@echo off

IF NOT EXIST "%USERPROFILE%\AppData\Roaming\ConEmu.xml" (
    echo Copying ConEmu.xml
    xcopy ConEmu.xml "%USERPROFILE%\AppData\Roaming\ConEmu.xml"
)
