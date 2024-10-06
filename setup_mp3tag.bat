@echo off

set "HOME=C:\Users\User"

set "MP3TAG_OPT=%HOME%\Opt\Mp3tag"
set "MP3TAG_SETUP=%HOME%\Github\My_Setup\mp3tag"

del "%MP3TAG_OPT%\mp3tag.cfg"
rmdir /S /Q "%MP3TAG_OPT%\data"
rmdir /S /Q "%MP3TAG_OPT%\export"
mklink "%MP3TAG_OPT%\mp3tag.cfg" "%MP3TAG_SETUP%\mp3tag.cfg"
mklink /J "%MP3TAG_OPT%\data" "%MP3TAG_SETUP%\data"
mklink /J "%MP3TAG_OPT%\export" "%MP3TAG_SETUP%\export"

pause