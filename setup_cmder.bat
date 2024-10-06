@echo off

set "HOME=C:\Users\User"

set "CMDER_OPT=%HOME%\Opt\cmder_mini"
set "CMDER_SETUP=%HOME%\Github\My_Setup\cmder"
set "CMDER_DL=%HOME%\Download\cmder"
set "CMDER_SRC=%HOME%\Source\cmder"

rmdir /S /Q "%CMDER_OPT%\bin"
rmdir /S /Q "%CMDER_OPT%\config"
rmdir /S /Q "%CMDER_OPT%\vendor\clink"
rmdir /S /Q "%CMDER_OPT%\vendor\clink-completions"
rmdir /S /Q "%CMDER_OPT%\vendor\conemu-maximus5"
del "%CMDER_OPT%\config\user_profile.ps1"
del "%CMDER_OPT%\vendor\profile.ps1"
del "%CMDER_OPT%\vendor\setpath*.bat"
del "%CMDER_OPT%\vendor\tere.bat"
del "%CMDER_OPT%\vendor\fzf.lua
del "%CMDER_OPT%\vendor\fuzzy_history.lua
del "%CMDER_OPT%\vendor\zoxide.lua
del "%CMDER_OPT%\vendor\git_aliases_autocomplete.lua
del "%CMDER_OPT%\vendor\git_branch_autocomplete.lua

mklink /J "%CMDER_OPT%\bin" "%CMDER_SETUP%\bin"
mklink /J "%CMDER_OPT%\vendor\conemu-maximus5" "%CMDER_DL%\ConEmu"
mklink /J "%CMDER_OPT%\vendor\clink" "%CMDER_DL%\clink"
mklink /J "%CMDER_OPT%\vendor\clink-completions" "%CMDER_SRC%\clink-completions"
mkdir "%CMDER_OPT%\config"
mklink "%CMDER_OPT%\config\clink_settings" "%CMDER_SETUP%\config\clink_settings"
mklink "%CMDER_OPT%\config\cmder_prompt_config.lua" "%CMDER_SETUP%\config\cmder_prompt_config.lua"
mklink "%CMDER_OPT%\config\user-ConEmu.xml" "%CMDER_SETUP%\config\user-ConEmu.xml"
rem "%CMDER_SETUP%\_User\user-ConEmu.xml" "%CMDER_OPT%\config\user-ConEmu.xml"
mklink "%CMDER_OPT%\config\starship.lua" "%CMDER_SETUP%\config\starship.lua"
mklink "%CMDER_OPT%\config\user_prompt.lua" "%CMDER_SETUP%\config\user_prompt.lua"
rem mklink "%CMDER_OPT%\config\user-profile.sh" "%CMDER_SETUP%\config\user-profile.sh"
mklink "%CMDER_OPT%\vendor\profile.ps1" "%CMDER_SETUP%\vendor\profile.ps1"
mklink "%CMDER_OPT%\config\user_profile.ps1" "%CMDER_SETUP%\config\user_profile.ps1"
mklink "%CMDER_OPT%\config\user_profile.cmd" "%CMDER_SETUP%\config\user_profile.cmd"
mklink "%CMDER_OPT%\vendor\setpath.bat" "%CMDER_SETUP%\vendor\setpath.bat"
mklink "%CMDER_OPT%\vendor\setpath_msys2.bat" "%CMDER_SETUP%\vendor\setpath_msys2.bat"
mklink "%CMDER_OPT%\vendor\setpath_cygwin.bat" "%CMDER_SETUP%\vendor\setpath_cygwin.bat"
mklink "%CMDER_OPT%\config\user_aliases.cmd" "%CMDER_SETUP%\config\user_aliases.cmd"
mklink "%CMDER_OPT%\vendor\tere.bat" "%CMDER_SETUP%\vendor\tere.bat"
mklink "%CMDER_OPT%\vendor\fzf.lua" %CMDER_SETUP%\vendor\fzf_clink-fzf.lua"
mklink "%CMDER_OPT%\vendor\fuzzy_history.lua" %CMDER_SRC%\clink-gizmos\fuzzy_history.lua"
mklink "%CMDER_OPT%\vendor\zoxide.lua" %CMDER_SRC%\clink-zoxide\zoxide.lua"
rem rem mklink "%CMDER_OPT%\vendor\z.cmd" "%CMDER_SRC%\z.lua\z.cmd"
rem rem mklink "%CMDER_OPT%\vendor\z.lua" "%CMDER_SRC%\z.lua\z.lua"
mklink "%CMDER_OPT%\vendor\git_aliases_autocomplete.lua" %CMDER_SRC%\clink-git-extensions\git_aliases_autocomplete.lua"
mklink "%CMDER_OPT%\vendor\git_branch_autocomplete.lua" %CMDER_SRC%\clink-git-extensions\git_branch_autocomplete.lua"

pause