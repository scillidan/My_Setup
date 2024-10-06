@echo off

set "HOME=C:\Users\User"

set "JPEGVIEW_OPT=%HOME%\Opt\JPEGView"
set "JPEGVIEW_SETUP=%HOME%\Github\My_Setup\jpegview"

del "%JPEGVIEW_OPT%\JPEGView.ini"
mklink "%JPEGVIEW_OPT%\JPEGView.ini" "%JPEGVIEW_SETUP%\JPEGView.ini"

pause