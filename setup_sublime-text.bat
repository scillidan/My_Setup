rem pnpm add -g prettier
rem pnpm add -g terser html-minifier js-beautify clean-css svgo

@echo off

set "HOME=C:\Users\User"

set "SUBLIMETEXT_DATA=%HOME%\AppData\Roaming\Sublime Text"
set "SUBLIMETEXT_SETUP=%HOME%\Github\My_Setup\sublime-text"

del "%SUBLIMETEXT_DATA%\Packages\User\Default.sublime-commands"
del "%SUBLIMETEXT_DATA%\Packages\User\Default (Windows).sublime-keymap"
del "%SUBLIMETEXT_DATA%\Packages\User\Package Control.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Preferences.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\AlignTab.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Color Highlight.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\JsPrettier.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\LSP.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Markdown Extended.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Minify.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\multiAlign.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Terminal.sublime-settings"
del "%SUBLIMETEXT_DATA%\Packages\User\Text Marker.sublime-settings"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\User\Color Highlighter\themes"
mkdir "%SUBLIMETEXT_DATA%\Packages\User\Color Highlighter"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\User\Snippets"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\User\AlignTab"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\MyCustomFilterPipes"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\OpenUri"
rmdir /S /Q "%SUBLIMETEXT_DATA%\Packages\CsvToMd"

mklink "%SUBLIMETEXT_DATA%\Packages\User\Default.sublime-commands" "%SUBLIMETEXT_SETUP%\Packages_User\Default.sublime-commands"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Default (Windows).sublime-keymap" "%SUBLIMETEXT_SETUP%\Packages_User\Default (Windows).sublime-keymap"
copy "%SUBLIMETEXT_SETUP%\Package Control.sublime-settings.txt" "%SUBLIMETEXT_DATA%\Packages\User\Package Control.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Preferences.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\Preferences.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\AlignTab.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\AlignTab.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Color Highlight.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\Color Highlight.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\JsPrettier.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\JsPrettier.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\LSP.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\LSP.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Markdown Extended.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\Markdown Extended.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Minify.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\Minify.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\multiAlign.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\multiAlign.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Terminal.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\Terminal.sublime-settings"
mklink "%SUBLIMETEXT_DATA%\Packages\User\Text Marker.sublime-settings" "%SUBLIMETEXT_SETUP%\Packages_User\Text Marker.sublime-settings"
mklink /J "%SUBLIMETEXT_DATA%\Packages\User\Color Highlighter\themes" "%HOME%\Source\neovim\tokyonight.nvim\extras\sublime"
mklink /J "%SUBLIMETEXT_DATA%\Packages\User\Snippets" "%SUBLIMETEXT_SETUP%\Snippets"
mklink /J "%SUBLIMETEXT_DATA%\Packages\User\AlignTab" "%SUBLIMETEXT_SETUP%\Packages_User\\AlignTab"
mklink /J "%SUBLIMETEXT_DATA%\Packages\MyCustomFilterPipes" "%SUBLIMETEXT_SETUP%\Packages\MyCustomFilterPipes"
mklink /J "%SUBLIMETEXT_DATA%\Packages\CsvToMd" "%SUBLIMETEXT_SETUP%\Packages\CsvToMd"
mklink /J "%SUBLIMETEXT_DATA%\Packages\OpenUri" "%SUBLIMETEXT_SETUP%\Packages\OpenUri"

pause