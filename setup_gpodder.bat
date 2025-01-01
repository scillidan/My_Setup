@echo off

set "HOME=C:\Users\User"

set "GPODDER_OPT=%HOME%\Opt\gpodder"
set "GPODDER_SETUP=%HOME%\Github\My_Setup\gpodder"

del "%GPODDER_OPT%\config\Settings.json"
mklink "%GPODDER_OPT%\config\Settings.json" "%GPODDER_SETUP%\config\Settings.json"

pause