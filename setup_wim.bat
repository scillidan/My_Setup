@echo off

set "HOME=C:\Users\User"

set "VIM_OPT=%HOME%\Opt\vim"
set "VIM_HOME=%HOME%\.vim"
set "VIM_SRC=%HOME%\Source\vim"
set "VIM_SETUP=%HOME%\Github\My_Setup\vim"
set "WIM_SETUP=%HOME%\Github\My_Setup\wim"

del "%HOME%\.vimrc"
del "%HOME%\.gvimrc"
rmdir /S /Q "%VIM_HOME%\autoload"
mkdir "%VIM_HOME%\autoload"

cd "%VIM_SRC%"\wim"
call "%WIM_SETUP%\symlink.bat"
cp "%VIM_SRC%\wim\wim-vim" "%WIM_SETUP%\wim-vim"
rem See https://github.com/wolandark/wim#notes
mklink "%HOME%\.vimrc" "%WIM_SETUP%\wim-vim"
mklink "%HOME%\.gvimrc" "%VIM_SETUP%\gvimrc"
mklink "%VIM_HOME%\autoload\plug.vim" "%VIM_SRC%\vim-plug\plug.vim"

pause