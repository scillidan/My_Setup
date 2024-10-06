@echo off

set "HOME=C:\Users\User"

rmdir /S /Q "%HOME%\3D Objects"
rmdir /S /Q "%HOME%\Favorites"
rmdir /S /Q "%HOME%\Music"
rmdir /S /Q "%HOME%\Pictures"
rmdir /S /Q "%HOME%\Searches"
rmdir /S /Q "%HOME%\Videos"
rmdir /S /Q "%HOME%\Documents"
del "%HOME%\Desktop\desktop.ini"
del "%HOME%\Downloads\desktop.ini"

pause

