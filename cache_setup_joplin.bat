@echo off

set "HOME=C:\Users\User"

set "JOPLIN_CONFIG=%HOME%\.config\joplin-desktop"
set "JOPLIN_DATA=%APPDATA%\Joplin"
rem set "JOPLIN_OPT=%LOCALAPPDATA%\Programs\Joplin"
set "JOPLIN_SETUP=%HOME%\Github\My_Setup\joplin"
set "JOPLIN_DL=%HOME%\Download\joplin"

del "%JOPLIN_DATA%\Preferences"
mklink "%JOPLIN_DATA%\Preferences" "%JOPLIN_SETUP\Preferences"
rem del "%JOPLIN_CONFIG%\userstyle.css"
rem mklink "%JOPLIN_CONFIG%\userstyle.css" "%JOPLIN_SETUP\userstyle.css"

del /q "%JOPLIN_CONFIG%\plugins\*.*
xcopy /s /e /y "%JOPLIN_DL%\*" "%JOPLIN_CONFIG%\plugins\*"

pause