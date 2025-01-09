@echo off

set "HOME=C:\Users\User"

set "AUTOHOTKEY_1_OPT=%HOME%\Opt\AutoHotkey_1"
set "AUTOHOTKEY_2_OPT=%HOME%\Opt\AutoHotkey_2"
set "AUTOHOTKEY_SETUP=%HOME%\Github\My_Setup\autohotkey"
set "AUTOHOTKEY_DL=%HOME%\Download\autohotkey"
set "AUTOHOTKEY_SRC=%HOME%\Source\autohotkey"

del "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini"
del "%AUTOHOTKEY_SRC%\AHK-KeyMap\KeyMap_User.ahk"
del "%AUTOHOTKEY_SRC%\QuickSwitch\QuickSwitch.ini"
rem del "%AUTOHOTKEY_SRC%\Autocomplete\Autocomplete_User.ahk"
del "%AUTOHOTKEY_SRC%\AutoHotKey_MouseGesture\MG_User_User.ahk"
del "%AUTOHOTKEY_SRC%\ahk-keyboard-locker\settings.ini"
copy "%AUTOHOTKEY_SRC%\ahk-resize-windows\resize.ahk" "%AUTOHOTKEY_SRC%\ahk-resize-windows\resize.ah2"
mklink /H "%AUTOHOTKEY_SRC%\AHK-KeyMap\KeyMap_User.ahk" "%AUTOHOTKEY_SETUP%\AHK-KeyMap\KeyMap_User.ahk"
rem mklink "%AUTOHOTKEY_SRC%\Autocomplete\Autocomplete_User.ahk" "%AUTOHOTKEY_SETUP%\Autocomplete\Autocomplete_User.ahk"
mklink "%AUTOHOTKEY_SRC%\AutoHotKey_MouseGesture\MG_User_User.ahk" "%AUTOHOTKEY_SETUP%\AutoHotKey_MouseGesture\MG_User_User.ahk"
mklink "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini" "%AUTOHOTKEY_SETUP%\KBLAutoSwitch\KBLAutoSwitch_en.ini"
rem mklink "%AUTOHOTKEY_SRC%\KBLAutoSwitch\KBLAutoSwitch.ini" "%AUTOHOTKEY_SETUP%\KBLAutoSwitch\KBLAutoSwitch_cn.ini"
mklink "%AUTOHOTKEY_SRC%\QuickSwitch\QuickSwitch.ini" "%AUTOHOTKEY_SETUP%\QuickSwitch\QuickSwitch.ini"
mklink "%AUTOHOTKEY_SRC%\ahk-keyboard-locker\settings.ini" "%AUTOHOTKEY_SETUP%\ahk-keyboard-locker\settings.ini"

pause