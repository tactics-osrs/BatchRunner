@echo off
setlocal EnableDelayedExpansion

:: Set the directory to the Batch folder on the user's desktop
set "dir=C:\Users\steph\Desktop\Tools\Batch"

:: Check if the directory exists, if not, prompt the user for the location
if not exist "!dir!" (
    echo The Batch folder was not found at the default location.
    echo.
    set /p "dir=Please enter the full path to your Batch folder: "
)

:menu
:: Change directory to the Batch folder
cd /d "!dir!"

:: Create a menu
echo.
echo Please select a file to run:
echo.

:: List all files in the directory and number them
set "i=0"
for /f "delims=" %%f in ('powershell -Command "Get-ChildItem -Force -File | Where-Object { $_.Extension -eq '.bat' } | ForEach-Object { $_.Name }"') do (
    set /a "i+=1"
    echo !i!. %%~nf
    set "file!i!=%%f"
)

:: Get user input
echo.
set /p "choice=Enter the number of the file you want to run: "

:: Check if the input is a number and is in the valid range
set "num=0"
echo.!choice!|findstr /r /c:"^[1-9][0-9]*$">nul && set /a "num=choice"
if !num! lss 1 (
    echo Invalid input. Please enter a number between 1 and !i!.
    goto menu
)
if !num! gtr !i! (
    echo Invalid input. Please enter a number between 1 and !i!.
    goto menu
)

:: Run the selected file
call "!file%num%!"
echo.
echo !file%num%! has been successfully opened.
echo.

:: Return to the menu
pause
goto menu
