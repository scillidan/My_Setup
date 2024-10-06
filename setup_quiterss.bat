@echo off

set "HOME=C:\Users\User"

set "QUITERSS_OPT=%HOME%\Opt\QuiteRSS"
set "QUITERSS_SETUP=%HOME%\Github\My_Setup\quiterss"

del "%QUITERSS_OPT%\QuiteRss.ini"
mklink "%QUITERSS_OPT%\QuiteRss.ini" "%QUITERSS_SETUP%\QuiteRss.ini"

pause