rem Add node.exe into PATH

@echo off

cd %*
start http://localhost:4323
"C:\Users\User\Opt\alacritty\Alacritty.exe" --config-file "C:\Users\User\Github\My_Setup\alacritty\alacritty_cmder.toml" --command "C:\Users\User\AppData\Roaming\pnpm\serve.CMD . -p 4323"