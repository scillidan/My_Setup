@echo off

set "HOME=C:\Users\User"

set "BAT_DATA=%APPDATA%\bat"
set "BAT_SETUP=%HOME%\Github\My_Setup\bat"

mkdir "%BAT_DATA%\syntaxes"
mkdir "%BAT_DATA%\themes"

rmdir /S /Q "%BAT_DATA%\themes\sublime-tokyonight"
mklink /J "%BAT_DATA%\themes\sublime-tokyonight" "%HOME%\Source\neovim\tokyonight.nvim\extras\sublime"

pause