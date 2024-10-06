@echo off

call %~dp0\set_env.bat

setlocal

set "dir=%1"

if "%dir%"=="video" (
    set "MPV_CONFIG=%CONFIG_DIR_VIDEO%"
    goto :run_mpv
) else if "%dir%"=="stream" (
    set "MPV_CONFIG=%CONFIG_DIR_STREAM%"
    goto :run_mpv
) else if "%dir%"=="edit" (
    set "MPV_CONFIG=%CONFIG_DIR_EDIT%"
    goto :run_mpv
) else if "%dir%"=="music" (
    set "MPV_CONFIG=%CONFIG_DIR_MUSIC%"
    goto :run_mpv
) else if "%dir%"=="karaok" (
    set "MPV_CONFIG=%CONFIG_DIR_KARAOK%"
    goto :run_mpv
) else if "%dir%"=="manga" (
    set "MPV_CONFIG=%CONFIG_DIR_MANGA%"
    goto :run_mpv
) else if "%dir%"=="test" (
    set "MPV_CONFIG=%CONFIG_DIR_TEST%"
    goto :run_mpv
) else (
    echo Invalid dir
    goto :end
)

:run_mpv
mpv --config-dir="%MPV_CONFIG%" --idle --force-window --keep-open=yes %2
goto :end

:end
endlocal