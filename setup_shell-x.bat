@echo off

set "HOME=C:\Users\User"

set "SHELLX_DATA=%APPDATA%\shell-x"
set "SHELLX_SETUP=%HOME%\Github\My_Setup\shell-x"

del "%SHELLX_DATA%\[any]\*.cmd"
del "%SHELLX_DATA%\[any]\*.bat"
del "%SHELLX_DATA%\[any]\*.ico"

for %%F in ("%SHELLX_SETUP%\[any]\*.cmd", "%SHELLX_SETUP%\[any]\*.bat" ), do (
    mklink "%SHELLX_DATA%\[any]\%%~nxF" "%%F"
    mklink "%SHELLX_DATA%\[any]\%%~nF.ico" "%HOME%\Github\_\icon-low-line\ico\darkTheme_cmd.ico"
)

pause