
#gg
@echo off
setlocal enabledelayedexpansion

set /p sourcePath=Enter the source folder path:

set /p destinationPath=Enter the destination folder path:

if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)

if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)

robocopy "!sourcePath!" "!destinationPath!" /E

if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)

:end
endlocal
