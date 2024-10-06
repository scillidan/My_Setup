@echo off

set "HOME=C:\Users\User"

set "RC_SETUP=%HOME%\Github\My_Setup\_rc"

rmdir /S /Q "%HOME%\.cargo"
rmdir /S /Q "%APPDATA%\pip"
rmdir /S /Q "%HOME%\.nvm"
del "%HOME%\.npmrc"
del "%HOME%\.yarnrc"

mklink /D "%HOME%\.cargo" "%RC_SETUP%\cargo"
mklink /D "%APPDATA%\pip" "%RC_SETUP%\pip"
mklink /D "%HOME%\.nvm" "%RC_SETUP%\nvm"
mklink "%HOME%\.npmrc" "%RC_SETUP%\npmrc"
mklink "%HOME%\.yarnrc" "%RC_SETUP%\yarnrc"

pause