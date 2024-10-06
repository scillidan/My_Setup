## Install (On Windows10)

```sh
set "HOME=C:/Users/User"
mkdir "%HOME%/Download/cmder"
cd "%HOME%/Download/cmder"
```

1. Download `ConEmuPack*.7z` from [ConEmu - Releases](https://github.com/Maximus5/ConEmu/releases).
2. Decompress it to `ConEmu/`.
3. Download `clink*.zip` from [clink - Releases](https://github.com/chrisant996/clink/releases).
4. Decompress it to `clink/`.

```sh
mkdir "%HOME%/Source/cmder"
cd "%HOME%/Source/cmder"
git clone --depth=1 https://github.com/chrisant996/clink-fzf
git clone --depth=1 https://github.com/chrisant996/clink-gizmos
git clone --depth=1 https://github.com/shunsambongi/clink-zoxide
git clone --depth=1 https://github.com/vladimir-kotikov/clink-completions
```

For `.lua` scripts:

1. Download `lua-5.3*.zip` from [lua53 (build for Windows) - Releases](https://github.com/alain-riedinger/lua53/releases).
2. Decompress it to `lua53\`.
3. Add `lua53\x64\bin`, `lua53\x64\lib` into `PATH`.

Optional: Cmder → Settings → Import → `_User\ConEmu.xml`.