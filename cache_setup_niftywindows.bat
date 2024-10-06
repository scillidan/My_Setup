@echo off

set "HOME=C:\Users\User"

set "NIFTYWINDOWS_OPT=%HOME%\Opt\NiftyWindows"
set "NIFTYWINDOWS_SETUP=%HOME%\Github\My_Setup\niftywindows"

del "%NIFTYWINDOWS_OPT%\NiftyWindows.ini"
mklink "%NIFTYWINDOWS_OPT%\NiftyWindows.ini" "%NIFTYWINDOWS_SETUP%\NiftyWindows.ini"

pause