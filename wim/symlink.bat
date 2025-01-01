@echo off
setlocal enabledelayedexpansion

REM vars
set "parent_dir=%~n0"
for /f "delims=" %%i in ('git log -1 --pretty=%%B') do set "msg=%%i"

set "_CONFIG_DIR=config"
set "_COC_FILE=config/coc-settings.json"
set "_WIKI_FILE=config/Wim.wiki"
set "_CHEAT_FILE=config/cheat40.txt"
set "_VIMRC_FILE=wim-vim"
set "_VIMWIKI_INDEX=index.wiki"

set "_VIMRC_FILE_DEST=%USERPROFILE%\.vim\vimrc"
set "_COC_FILE_DEST=%USERPROFILE%\.vim\coc-settings.json"
set "_WIKI_FILE_DEST=%USERPROFILE%\.vim\vimwiki\Wim.wiki"
set "_CHEAT_FILE_DEST=%USERPROFILE%\.vim\cheat40.txt"

set "_VIM_PATH=%USERPROFILE%\.vim"
set "_WIKI_DIR=%_VIM_PATH%\vimwiki"
set "_VIM_BK_PATH=%USERPROFILE%\vim-bk"
set "_ARCHIVE_NAME=uctags-2024.06.20-linux-x86_64.tar.gz"
set "_ARCHIVE_EXTRACTED_NAME=uctags-2024.06.20-linux-x86_64"

REM backup
:backup
if exist "!_VIM_PATH!" (
    move "!_VIM_PATH!" "!_VIM_BK_PATH!"
)
mkdir "!_VIM_PATH!"
mkdir "!_WIKI_DIR!"

REM download ctags
:downloadCtags
set "ctags_url=https://github.com/universal-ctags/ctags-nightly-build/releases/download/2024.06.20%2B8976ec3d2c48ec862593910388ae3e55f0e20a3f/uctags-2024.06.20-linux-x86_64.tar.gz"
powershell -Command "Invoke-WebRequest -Uri '!ctags_url!' -OutFile '!_ARCHIVE_NAME!'"
tar -xzf "!_ARCHIVE_NAME!" >nul
mkdir "!_VIM_PATH!\uctags"
move "!_ARCHIVE_EXTRACTED_NAME!\*.*" "!_VIM_PATH!\uctags\"
rd /s /q "!_ARCHIVE_EXTRACTED_NAME!"
del "!_ARCHIVE_NAME!"

REM Check parent wim dir exists
:checkWimExist
if "!parent_dir!"=="wim" (
    echo Wim Directory Exists!
    echo Proceeding ...
) else (
    echo Wim Directory Does Not Exists!
    echo Breaking! ...
    exit /b 1
)

if exist "!_CONFIG_DIR!" (
    echo Config Directory Exists!
    echo Proceeding ...
) else (
    echo Config Directory Does Not Exists!
    echo Breaking! ...
    exit /b 1
)

REM link the files
:linkFiles
echo Symlinking Latest Vimrc
mklink /J "!_VIMRC_FILE_DEST!" "!CD!\%_VIMRC_FILE%"
echo Symlinking Latest CoC Settings
mklink /J "!_COC_FILE_DEST!" "!CD!\%_COC_FILE%"
echo Copying Latest Wim Wiki
copy /Y "!CD!\%_WIKI_FILE%" "!_WIKI_FILE_DEST%"
echo Symlinking Latest Cheat File
mklink /J "!_CHEAT_FILE_DEST!" "!CD!\%_CHEAT_FILE%"
echo.

echo [[Wim]] >> "!_WIKI_DIR!\%_VIMWIKI_INDEX%"

REM Create Update Script
:createUpdateScript
(
    echo @echo off
    echo setlocal enabledelayedexpansion
    echo.
    echo REM vars
    echo set "parent_dir=%%~n0"
    echo for /f "delims=" %%j in ('git log -1 --pretty=%%B') do set "msg=%%j"
    echo.
    echo set "_CONFIG_DIR=config"
    echo set "_COC_FILE=config/coc-settings.json"
    echo set "_WIKI_FILE=config/Wim.wiki"
    echo set "_CHEAT_FILE=config/cheat40.txt"
    echo set "_VIMRC_FILE=wim-vim"
    echo set "_VIMWIKI_INDEX=index.wiki"
    echo.
    echo set "_VIMRC_FILE_DEST=%%USERPROFILE%%\.vim\vimrc"
    echo set "_COC_FILE_DEST=%%USERPROFILE%%\.vim\coc-settings.json"
    echo set "_WIKI_FILE_DEST=%%USERPROFILE%%\.vim\vimwiki\Wim.wiki"
    echo set "_CHEAT_FILE_DEST=%%USERPROFILE%%\.vim\cheat40.txt"
    echo.
    echo REM Check parent wim dir exists
    echo :checkWimExist
    echo if "!parent_dir!"=="wim" ( 
    echo     echo Wim Directory Exists!
    echo     echo Proceeding ...
    echo ) else (
    echo     echo Wim Directory Does Not Exists!
    echo     echo Breaking! ...
    echo     exit /b 1
    echo )
    echo.
    echo REM link the files
    echo :linkFiles
    echo echo Symlinking Latest Vimrc
    echo mklink /J "!_VIMRC_FILE_DEST!" "!CD!\%_VIMRC_FILE%"
    echo echo Symlinking Latest CoC Settings
    echo mklink /J "!_COC_FILE_DEST!" "!CD!\%_COC_FILE%"
    echo echo Copying Latest Wim Wiki
    echo copy /Y "!CD!\%_WIKI_FILE%" "!_WIKI_FILE_DEST%"
    echo echo Symlinking Latest Cheat File
    echo mklink /J "!_CHEAT_FILE_DEST!" "!CD!\%_CHEAT_FILE%"
    echo echo.
    echo }
    echo checkWimExist 
    echo linkFiles
    echo.
    echo echo Message From Woland: !msg!
) > update.bat

chmod +x update.bat
echo Update Script Generated!

:main
call :backup
call :downloadCtags
call :checkWimExist
call :linkFiles
call :createUpdateScript

echo Press Enter To Continue...
pause >nul
echo When CoC finishes installing a few extensions, you can exit Vim.

start "" "C:\path\to\vim.exe"   REM replace with the actual path to vim.exe

REM Get latest commit msg and show to user
echo Message From Woland: !msg!
echo All Done! Enjoy!
