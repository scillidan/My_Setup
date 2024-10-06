@echo off

set "HOME=C:\Users\User"

set "NEOVIM_CONFIG=%LOCALAPPDATA%\nvim"
set "NEOVIM_DATA=%LOCALAPPDATA%\nvim-data"
set "NEOVIM_SETUP=%HOME%\Github\My_Setup\neovim"
set "NEOVIM_SRC=%HOME%\Source\neovim"

rmdir /S /Q "%NEOVIM_CONFIG%"
rmdir /S /Q "%NEOVIM_DATA%"
mkdir "%NEOVIM_CONFIG%"
mkdir "%NEOVIM_DATA%"
rem copy "%NEOVIM_SRC%\lazy.nvim" "%NEOVIM_DATA%\lazy"
mklink "%NEOVIM_CONFIG%\init.lua" "%NEOVIM_SETUP%\init.lua"
mklink /J "%NEOVIM_CONFIG%\lua" "%NEOVIM_SETUP%\lua"

pause