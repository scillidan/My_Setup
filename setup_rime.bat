@echo off

set "HOME=C:\Users\User"

set "RIME_DATA=%APPDATA%\Rime"
set "RIME_SETUP=%HOME%\Github\My_Setup\rime"
set "RIME_DL=%HOME%\Download\rime"
set "RIME_SRC=%HOME%\Source\rime"

del "%RIME_DATA%\default.custom.yaml"
del "%RIME_DATA%\symbols.yaml"
del "%RIME_DATA%\user.yaml"
del "%RIME_DATA%\weasel.custom.yaml"
del "%RIME_DATA%\default.yaml"
del "%RIME_DATA%\custom_phrase.txt"
del "%RIME_DATA%\melt_eng.dict.yaml"
del "%RIME_DATA%\melt_eng.schema.yaml"
del "%RIME_DATA%\rime.lua"
del "%RIME_DATA%\rime_ice.dict.yaml"
del "%RIME_DATA%\rime_ice.schema.yaml"
del "%RIME_DATA%\symbols_caps_v.yaml"
del "%RIME_DATA%\symbols_v.yaml"
rmdir /S /Q "%RIME_DATA%\cn_dicts"
rmdir /S /Q "%RIME_DATA%\en_dicts"
rmdir /S /Q "%RIME_DATA%\lua"
rmdir /S /Q "%RIME_DATA%\opencc"
rmdir /S /Q "%RIME_DATA%\others"

copy "%RIME_SETUP%\data\default.custom.yaml" "%RIME_DATA%\default.custom.yaml"
copy "%RIME_SETUP%\data\user.yaml" "%RIME_DATA%\user.yaml"
copy "%RIME_SETUP%\data\weasel.custom.yaml" "%RIME_DATA%\weasel.custom.yaml"
mklink "%RIME_DATA%\symbols.yaml" "%RIME_SETUP%\data\symbols.yaml"
mklink "%RIME_DATA%\default.yaml" "%RIME_SETUP%\data\rime-ice\default.yaml"
mklink /J "%RIME_DATA%\cn_dicts" "%RIME_SRC%\rime-ice\cn_dicts"
mklink /J "%RIME_DATA%\en_dicts" "%RIME_SRC%\rime-ice\en_dicts"
mklink /J "%RIME_DATA%\lua" "%RIME_SRC%\rime-ice\lua"
mklink /J "%RIME_DATA%\opencc" "%RIME_SRC%\rime-ice\opencc"
mklink /J "%RIME_DATA%\others" "%RIME_SRC%\rime-ice\others"
mklink "%RIME_DATA%\custom_phrase.txt" "%RIME_SRC%\rime-ice\custom_phrase.txt"
mklink "%RIME_DATA%\melt_eng.dict.yaml" "%RIME_SRC%\rime-ice\melt_eng.dict.yaml"
mklink "%RIME_DATA%\melt_eng.schema.yaml" "%RIME_SRC%\rime-ice\melt_eng.schema.yaml"
mklink "%RIME_DATA%\rime.lua" "%RIME_SRC%\rime-ice\rime.lua"
mklink "%RIME_DATA%\rime_ice.dict.yaml" "%RIME_SRC%\rime-ice\rime_ice.dict.yaml"
mklink "%RIME_DATA%\rime_ice.schema.yaml" "%RIME_SRC%\rime-ice\rime_ice.schema.yaml"
mklink "%RIME_DATA%\symbols_caps_v.yaml" "%RIME_SRC%\rime-ice\symbols_caps_v.yaml"
mklink "%RIME_DATA%\symbols_v.yaml" "%RIME_SRC%\rime-ice\symbols_v.yaml"

pause