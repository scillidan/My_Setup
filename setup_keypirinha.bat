rem mkdir "%HOME%/Source/keyprinha"
rem cd "%HOME%/Source/keyprinha"
rem git clone --depth=1 https://github.com/EhsanKia/Keypirinha-PuzzTools

@echo off

set "HOME=C:\Users\User"

set "KEYPIRINHA_OPT=%HOME%\Opt\Keypirinha"
set "KEYPIRINHA_SETUP=%HOME%\Github\My_Setup\keypirinha"
set "KEYPIRINHA_DL=%HOME%\Download\keypirinha"
set "KEYPIRINHA_SRC=%HOME%\Source\keypirinha"

rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile"
mkdir "%KEYPIRINHA_OPT%\portable\Profile"
rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile\InstalledPackages"
rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile\Packages"
rmdir /S /Q "%KEYPIRINHA_OPT%\portable\Profile\User"
mklink /J "%KEYPIRINHA_OPT%\portable\Profile\InstalledPackages" "%KEYPIRINHA_SETUP%\Profile\InstalledPackages"
mklink /J "%KEYPIRINHA_OPT%\portable\Profile\Packages" "%KEYPIRINHA_SETUP%\Profile\Packages"
mklink /J "%KEYPIRINHA_OPT%\portable\Profile\User" "%KEYPIRINHA_SETUP%\Profile\User"

rem filebrowser for me

set "FILEBROWSER=%KEYPIRINHA_SETUP%\_User\filebrowser"

rmdir /S /Q %FILEBROWSER%
mkdir %FILEBROWSER%

mklink %FILEBROWSER%\user_aliases.cmd %HOME%\Github\My_Setup\cmder\config\user_aliases.cmd
mklink %FILEBROWSER%\user_profile.cmd %HOME%\Github\My_Setup\cmder\config\user_profile.cmd
mklink %FILEBROWSER%\setpath.bat %HOME%\Github\My_Setup\cmder\vendor\setpath.bat
mklink %FILEBROWSER%\AHKExpansionsList_user.ahk %HOME%\Github\My_Setup_Temp\autohotkey\AHKExpansionsList\AHKExpansionsList_user.ahk
mklink %FILEBROWSER%\QuickSwitch.ini %HOME%\Github\My_Setup\autohotkey\QuickSwitch\QuickSwitch.ini
mklink /J %FILEBROWSER%\source %HOME%\Github\JUTSU-docset\source

rem clear cache

del "%KEYPIRINHA_OPT%\portable\Local\Packages\Git\repos.json"

pause