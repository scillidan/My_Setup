@echo off

set "HOME=C:\Users\User"
set "MPV_SETUP=%HOME%\Github\My_Setup\mpv"

call "%MPV_SETUP%\set_env.bat"
call "%MPV_SETUP%\setup_config_dir.bat"
call "%MPV_SETUP%\set_default_config.bat"