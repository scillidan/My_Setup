@echo off
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\TabletPC" /v DisableSnippingTool /t REG_SZ /d 1
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\TabletPC" /v DisableSnippingTool /t REG_SZ /d 1
pause