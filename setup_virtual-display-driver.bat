@echo off

set "HOME=C:\Users\User"

set "VDD_SETUP=%HOME%\Github\My_Setup\virtual-display-driver"
set "VDD_DATA=C:\VirtualDisplayDriver"

del "%VDD_DATA%\vdd_settings.xml"

mklink "%VDD_DATA%\vdd_settings.xml" "%VDD_SETUP%\vdd_settings.xml"

pause