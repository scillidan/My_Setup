@echo off

set "HOME=C:\Users\User"

set "VIM_OPT=%HOME%\Opt\vim"
set "VIM_HOME=%HOME%\.vim"
set "VIM_SRC=%HOME%\Source\vim"
set "VIM_SETUP=%HOME%\Github\My_Setup\vim"

rmdir /S /Q "%VIM_HOME%\autoload"
mkdir "%VIM_HOME%\autoload"

del "%HOME%\.vimrc"
del "%HOME%\.gvimrc"
mklink "%HOME%\.vimrc" "%VIM_SETUP%\vimrc"
mklink "%VIM_HOME%\autoload\plug.vim" "%VIM_SRC%\vim-plug\plug.vim"
mklink "%HOME%\.gvimrc" "%VIM_SETUP%\gvimrc"

pause