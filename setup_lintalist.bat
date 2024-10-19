rem git clone --depth=1 https://github.com/lintalist/lintalist-themes
rem unzip Solarized.zip -d Solarized

rem Close lintalist.exe first

@echo off

set "HOME=C:\Users\User"

set "AUTOHOTKEY_SRC=%HOME%\Source\autohotkey"
set "LINTALIST_OPT=%AUTOHOTKEY_SRC%\lintalist"
set "LINTALIST_SETUP=%HOME%\Github\My_Setup\lintalist"
set "LINTALIST_SRC=%HOME%\Source\lintalist"

del "%LINTALIST_OPT%\Settings.ini"
del "%LINTALIST_OPT%\bundles\default.txt"
rmdir /S /Q "%LINTALIST_OPT%\themes\Solarized"

copy "%LINTALIST_SETUP%\Settings_User.ini" "%LINTALIST_OPT%\Settings.ini"
mklink "%LINTALIST_OPT%\bundles\default.txt" "%LINTALIST_SETUP%\bundles\default.txt"
mklink /J "%LINTALIST_OPT%\themes\Solarized" "%LINTALIST_SRC%\lintalist-themes\Solarized"

pause