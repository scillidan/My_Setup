@echo off

set "HOME=C:\Users\User"

set "OBSIDIAN_SETUP=%HOME%\Github\My_Setup\obsidian"
set "OBSIDIAN_DL=%HOME%\Download\obsidian"
set "OBSIDIAN_SRC=%HOME%\Source\obsidian"
rem Change this, Set OBSIDIAN_WRITE to your write folder.
set "OBSIDIAN_WRITE_1=%HOME%\Github\YAFA-site\docs"

del "%OBSIDIAN_SETUP%\Config\snippets\themes.css"
rmdir /S /Q %HOME%\Github\YAFA-site\docs\.obsidian

copy "%OBSIDIAN_SRC%\flexoki-obsidian\theme.css" "%OBSIDIAN_SETUP%\Config\snippets\themes.css"
mklink /J "%OBSIDIAN_WRITE_1%\.obsidian" "%OBSIDIAN_SETUP%\Config"

pause