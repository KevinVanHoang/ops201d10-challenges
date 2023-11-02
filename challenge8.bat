
#This command turns off the display of each command line in the batch file as it runs.
@echo off

#This command enables delayed variable expansion.
setlocal enabledelayedexpansion

#This line prompts the user to enter the source folder path and assigns the input to the `sourcePath` variable.
set /p sourcePath=Enter the source folder path:

#This line prompts the uder to enter the destination folder path and assigns the input to the `destinationPath` variable.
set /p destinationPath=Enter the destination folder path:

#This line checks if the source folder specified by the user (`!sourcePath`) exists.
#`echo Error`: If the source folder does not exist, then this line displays an error message.
#`goto :eof`: This command ends the batch file execution right away and exits the script
if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)

#This line checks the destination folder specified by the user.
#`echo Error`: If the destination folder does not exist, then this line displays an error message.
#`goto :eof`: This command ends the batch file execution right away and exits the script
if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)

#This line uses the `robocopy` command to copy files and directories from the source folder to the destination folder.
robocopy "!sourcePath!" "!destinationPath!" /E

#This line checks tthe error level returned by the previous `robocopy` command.
#`echo Error`: If there were errors (error level 8 or higher), then this line displays an error message.
#`echo Copy`: This line displays a success message indicating that the copy operation completed without errors.
if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)

#End of Script for Batch file
:end

#This ends the local environments and any environment changes made after `setLocal` are discarded.
endlocal
