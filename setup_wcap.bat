@echo off

set "HOME=C:\Users\User"

set "WCAP_OPT=%HOME%\Opt\wcap"
set "WCAP_SETUP=%HOME%\Github\My_Setup\wcap"

del "%WCAP_OPT%\wcap.ini"
mklink "%WCAP_OPT%\wcap.ini" "%WCAP_SETUP%\wcap.ini"

pause