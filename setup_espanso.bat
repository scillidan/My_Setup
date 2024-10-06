@echo off

set "HOME=C:\Users\User"

set "ESPANSO_SETUP=%HOME%\Github\My_Setup\espanso"
set "ESPANSO_DATA=%HOME%\AppData\Roaming\espanso"

rmdir /S /Q "%ESPANSO_DATA%\config"
rmdir /S /Q "%ESPANSO_DATA%\match"

mklink /J "%ESPANSO_DATA%\config" "%ESPANSO_SETUP%\config"
mklink /J "%ESPANSO_DATA%\match" "%ESPANSO_SETUP%\match"

pause