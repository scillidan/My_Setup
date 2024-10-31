@echo off

set "HOME=C:\Users\User"

set "SMARTZIP_OPT=%HOME%\Opt\SmartZip"
set "SMARTZIP_SETUP=%HOME%\Github\My_Setup\smartzip"

del "%SMARTZIP_OPT%\SmartZip.ini"
del "%SMARTZIP_OPT%\light.ico"
del "%SMARTZIP_OPT%\dark.ico"
mklink "%SMARTZIP_OPT%\SmartZip.ini" "%SMARTZIP_SETUP%\SmartZip.ini"
mklink "%SMARTZIP_OPT%\light.ico" "%SMARTZIP_SETUP%\light.ico"
mklink "%SMARTZIP_OPT%\dark.ico" "%SMARTZIP_SETUP%\dark.ico"

pause