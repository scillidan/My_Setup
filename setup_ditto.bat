@echo off

set "HOME=C:\Users\User"

set "DITTO_OPT=%HOME%\Opt\Ditto"
set "DITTO_SETUP=%HOME%\Github\My_Setup\ditto"

del "%DITTO_OPT%\Ditto.Settings"
copy "%DITTO_SETUP%\Ditto.Settings" "%DITTO_OPT%\Ditto.Settings"

pause