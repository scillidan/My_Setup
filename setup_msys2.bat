@echo off

set "HOME=C:\Users\User"

set "MSYS2_OPT=C:\msys64"
set "MSYS2_HOME=%MSYS2_OPT%\home\User"
set "MSYS2_SETUP=%HOME%\Github\My_Setup\msys2"

del "%MSYS2_HOME%\.bashrc"
del "%MSYS2_HOME%\.zshrc"
copy "%MSYS2_SETUP%\.bashrc" "%MSYS2_SETUP%\.bashrc_backup"
copy "%MSYS2_SETUP%\.zshrc" "%MSYS2_SETUP%\.zshrc_backup"
mklink "%MSYS2_HOME%\.bashrc" "%MSYS2_SETUP%\.bashrc"
mklink "%MSYS2_HOME%\.zshrc" "%MSYS2_SETUP%\.zshrc"

pause