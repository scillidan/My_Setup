@echo off

set "HOME=C:\Users\User"

set "LOGSEQ_CONFIG=%HOME%\.logseq"
set "LOGSEQ_SETUP=%HOME%\Github\My_Setup\logseq"

rmdir /S /Q "%LOGSEQ_CONFIG%"
mklink /J "%LOGSEQ_CONFIG%" "%LOGSEQ_SETUP%\logseq"

pause