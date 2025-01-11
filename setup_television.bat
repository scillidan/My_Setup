@echo off

set "HOME=C:\Users\User"

set "TELEVISION_DATA=%APPDATA%\television"
set "TELEVISION_SETUP=%HOME%\Github\My_Setup\television"

mkdir "%APPDATA%\television"
del "%TELEVISION_DATA%\config.toml"
mklink "%TELEVISION_DATA%\config.toml" "%TELEVISION_SETUP%\config.toml"

pause