@echo off

set "HOME=C:\Users\User"

set "TABBY_DATA=%APPDATA%\tabby"
set "TABBY_SETUP=%HOME%\Github\My_Setup\tabby"

del "%TABBY_DATA%\config.yaml"
mklink "%TABBY_DATA%\config.yaml" "%TABBY_DATA%\config.yaml"

pause