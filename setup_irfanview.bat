@echo off

set "HOME=C:\Users\User"

set "IRFANVIEW_OPT=%HOME%\Opt\iview"
set "IRFANVIEW_SETUP=%HOME%\Github\My_Setup\irfanview"

del "%IRFANVIEW_OPT%\i_view64.ini"
mklink "%IRFANVIEW_OPT%\i_view64.ini" "%IRFANVIEW_SETUP%\i_view64.ini"

pause