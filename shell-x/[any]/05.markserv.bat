rem Add node.exe into PATH

@echo off

cd %*
open-cli http://localhost:8642
"C:\Users\User\Opt\alacritty\Alacritty.exe" --config-file "C:\Users\User\Github\My_Setup\alacritty\alacritty_cmder.toml" --command "C:\Users\User\AppData\Roaming\pnpm\markserv.CMD ."