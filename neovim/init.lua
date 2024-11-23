vim.api.nvim_command("language en_US.UTF-8")
vim.o.guifont = "MonaspiceAr NFP + Sarasa Gothic SC + WFM Sans SC:h9"
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.signcolumn = "yes:1"
vim.o.cmdheight = 1
vim.g.mapleader = " "

vim.g.python3_host_prog = "C:/Users/User/AppData/Local/Programs/Python/Python310/python.exe"
vim.o.sessionoptions = "localoptions"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.plenary_curl_bin_path = "C:/Users/User/Bin/curl/bin/curl.exe"
vim.g.plenary_gh_bin_path = "C:/Users/User/Bin/gh/bin/gh.exe"
vim.g.sqlite_clib_path = "C:/Users/User/Bin/sqlite-dll/sqlite3.dll"

require("neovide")
require("install")
require("setup")
require("keymap")