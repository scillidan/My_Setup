@echo off

set "HOME=C:\Users\User"

set "PEGASUS_OPT=%HOME%\Opt\pegasus-fe"
set "RETROARCH_OPT=%HOME%\Opt\RetroArch"
set "PEGASUS_SETUP=%HOME%\Github\My_Setup\pegasus-frontend"
set "PEGASUS_DL=%HOME%\Download\pegasus"
set "PEGASUS_SRC=%HOME%\Source\pegasus"

rmdir /S /Q "%PEGASUS_OPT%\RetroArch"
mklink /J "%PEGASUS_OPT%\RetroArch" "%RETROARCH_OPT%"
rmdir /S /Q "%PEGASUS_OPT%\RetroArch\cheats"
rmdir /S /Q "%PEGASUS_OPT%\RetroArch\config"
rmdir /S /Q "%PEGASUS_OPT%\RetroArch\cores"
rmdir /S /Q "%PEGASUS_OPT%\RetroArch\downloads"
rmdir /S /Q "%PEGASUS_OPT%\RetroArch\system"
mklink /J "%PEGASUS_OPT%\RetroArch\cheats" "%PEGASUS_DL%\pegasus-g\RetroArch\cheats"
mklink /J "%PEGASUS_OPT%\RetroArch\config" "%PEGASUS_DL%\pegasus-g\RetroArch\config"
mklink /J "%PEGASUS_OPT%\RetroArch\cores" "%PEGASUS_DL%\pegasus-g\RetroArch\cores"
mklink /J "%PEGASUS_OPT%\RetroArch\downloads" "%PEGASUS_DL%\pegasus-g\RetroArch\downloads"
mklink /J "%PEGASUS_OPT%\RetroArch\system" "%PEGASUS_DL%\pegasus-g\RetroArch\system"

rmdir /S /Q "%PEGASUS_OPT%\config"
mkdir "%PEGASUS_OPT%\config"
mklink "%PEGASUS_OPT%\config\game_dirs.txt" "%PEGASUS_SETUP%\config\game_dirs.txt"
mklink "%PEGASUS_OPT%\config\settings.txt" "%PEGASUS_SETUP%\config\settings.txt"
mkdir "%PEGASUS_OPT%\config\themes"
for /d %%i in (%PEGASUS_SRC%\*) do mklink /J "%PEGASUS_OPT%\config\themes\%%~nxi" "%%i"

rmdir /S /Q "%PEGASUS_OPT%\Roms"
mklink /D "%PEGASUS_OPT%\Roms" "%PEGASUS_DL%\pegasus-g\Roms"
for /r "%PEGASUS_OPT%\Roms" %%f in (metadata.pegasus.txt) do (
    del "%%f"
)
for /d %%d in ("%PEGASUS_OPT%\Roms\*") do (
    if exist "%PEGASUS_SETUP%\metadata\%%~nxd\metadata.pegasus.txt" (
        mklink "%%d\metadata.pegasus.txt" "%PEGASUS_SETUP%\metadata\%%~nxd\metadata.pegasus.txt"
    )
)

rem mkdir "%RETROARCH_OPT%\Emulators"

pause