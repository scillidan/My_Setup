## Install (on Windows10)

1. Install [MSYS2](https://www.msys2.org/), add `C:\msys64\usr\bin\vim.exe` into PATH
2. Or add `C:\Users\User\Bin\Git\usr\bin\vim.exe` into PATH

```sh
set "HOME=C:/Users/User"
mkdir "%HOME%/Source/vim"
cd "%HOME%/Source/vim"
git clone --depth=1 https://github.com/wolandark/wim
git clone --depth=1 https://github.com/junegunn/vim-plug
```