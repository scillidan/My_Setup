@echo off

cd %*
"C:\Users\User\Opt\alacritty\Alacritty.exe" --config-file "C:\Users\User\Github\My_Setup\alacritty\alacritty_cmder.toml" --command "C:\Users\User\Bin\gsudo\x64\gsudo.exe" ".\setup_on_windows.bat"