@echo off

set "HOME=C:\Users\User"

set "CYGWIN_OPT=C:\cygwin64"
set "CYGWIN_HOME=%CYGWIN_OPT%\home\User"
set "CYGWIN_SETUP=%HOME%\Github\My_Setup\cygwin"

del "%CYGWIN_HOME%\.bashrc"
del "%CYGWIN_HOME%\.zshrc"
copy "%CYGWIN_SETUP%\.bashrc" "%CYGWIN_SETUP%\.bashrc_backup"
copy "%CYGWIN_SETUP%\.zshrc" "%CYGWIN_SETUP%\.zshrc_backup"
mklink "%CYGWIN_HOME%\.bashrc" "%CYGWIN_SETUP%\.bashrc"
mklink "%CYGWIN_HOME%\.zshrc" "%CYGWIN_SETUP%\.zshrc"

pause