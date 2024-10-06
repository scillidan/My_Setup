@echo off

call %~dp0\set_env.bat

rmdir /S /Q %MPV_CONFIG%
mkdir %MPV_CONFIG%

C:\Users\User\Opt\FastCopy\FastCopy.exe /open_window /auto_close %CONFIG_DIR_VIDEO% /to=%MPV_CONFIG%