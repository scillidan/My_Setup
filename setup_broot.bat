@echo off

set "HOME=C:\Users\User"

set "BROOT_DATA=%APPDATA%\dystroy\broot\config"
set "BROOT_SETUP=%HOME%\Github\My_Setup\broot"

del "%BROOT_DATA%\conf.hjson"
mklink "%BROOT_DATA%\conf.hjson" "%BROOT_SETUP%\conf.hjson"

pause