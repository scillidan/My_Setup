@echo off

set "HOME=C:\Users\User"

set "OMEGAT_OPT=C:\Program Files\OmegaT"
set "OMEGAT_DATA=%HOME%\AppData\Roaming\OmegaT"
set "OMEGAT_SETUP=%HOME%\Github\My_Setup\omegat"
set "GOLDENDICT_DL=%HOME%\Download\goldendict"
set "PLUGIN=%OMEGAT_OPT%\plugins"
set "DICTIONARY=%GOLDENDICT_DL%\files_stardict"
set "GLOSSARY=%HOME%\Gist\glossary"

set "OMEGAT_PROJ=%HOME%\Github\_\omegat-project"

del "%OMEGAT_DATA%\omegat.prefs"
mklink "%OMEGAT_DATA%\omegat.prefs" "%OMEGAT_SETUP%\omegat.prefs"

rmdir /S /Q "%OMEGAT_PROJ%\dictionary"
mklink /J "%OMEGAT_PROJ%\dictionary" "%GOLDENDICT_DL%\files_stardict"

rem del "%OMEGAT_PROJ%\glossary\glossary.txt"
rem mklink "%OMEGAT_PROJ%\glossary\glossary.txt" "%GLOSSARY%\.txt"

pause