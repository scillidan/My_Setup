@echo off

set "HOME=C:\Users\User"

set "GOLDENDICT_OPT=%HOME%\Opt\GoldenDict"
set "GOLDENDICT_DATA=%APPDATA%\GoldenDict"
set "GOLDENDICT_SETUP=%HOME%\Github\My_Setup\goldendict"
set "GOLDENDICT_DL=%HOME%\Download\goldendict"
set "GOLDENDICT_SRC=%HOME%\Source\goldendict"

rem Enable Dark Theme

rmdir /S /Q "%GOLDENDICT_OPT%\extras"
rmdir /S /Q "%GOLDENDICT_OPT%\icons"
rmdir /S /Q "%GOLDENDICT_DATA%\fonts"
rmdir /S /Q "%GOLDENDICT_DATA%\styles"

mklink /J "%GOLDENDICT_OPT%\extras" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\extras"
mklink /J "%GOLDENDICT_OPT%\icons" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\icons"
mklink /J "%GOLDENDICT_DATA%\fonts" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\fonts"
mkdir "%GOLDENDICT_DATA%\styles\Dark"
type "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\styles\Dark\article-style.css" "%GOLDENDICT_SETUP%\article-style_user.css" > "%GOLDENDICT_DATA%\styles\Dark\article-style.css"
mklink "%GOLDENDICT_DATA%\styles\Dark\qt-style.css" "%GOLDENDICT_SRC%\GoldenDict-Full-Dark-Theme\GoldenDict\styles\Dark\qt-style.css"

rem Backup config

copy %GOLDENDICT_DATA%\config %GOLDENDICT_SETUP%\config_backup

call "%GOLDENDICT_SETUP%\mklink_goldendictocr.bat"
call "%GOLDENDICT_SETUP%\mklink_forvo_pron.bat"

pause