@echo off
setlocal EnableDelayedExpansion

REM Read URL from clipboard
for /f "usebackq delims=" %%G in (`powershell -command "Get-Clipboard"`) do set "url=%%G"

REM Clone the repository
C:\Users\User\Bin\Git\cmd\git.exe clone --depth=1 %url%

REM Check if the clone operation was successful
if %errorlevel% equ 0 (
    echo Clone successful!
) else (
    echo Clone failed!
)

pause