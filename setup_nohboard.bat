@echo off

set "HOME=C:\Users\User"

set "NOHBOARD_OPT=%HOME%\Opt\NohBoard-ReWrite"
set "NOHBOARD_SETUP=%HOME%\Github\My_Setup\nohboard"

rmdir /S /Q "%NOHBOARD_OPT%\keyboards\Normal\us_intl_87"
mklink /J "%NOHBOARD_OPT%\keyboards\Normal\us_intl_87" "%NOHBOARD_SETUP%\us_intl_87"
rmdir /S /Q "%NOHBOARD_OPT%\keyboards\Normal\us_intl_82"
mklink /J "%NOHBOARD_OPT%\keyboards\Normal\us_intl_82" "%NOHBOARD_SETUP%\us_intl_82"

pause