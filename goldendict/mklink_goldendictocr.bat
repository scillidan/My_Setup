@echo off

del %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GdOcrTool.ahk
del %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GoldenDict.ahk
mklink %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GdOcrTool.ahk %GOLDENDICT_SETUP%\GoldenDictOCR\IncludeAHK\GdOcrTool.ahk
mklink %GOLDENDICT_SRC%\GoldenDictOCR\IncludeAHK\GoldenDict.ahk %GOLDENDICT_SETUP%\GoldenDictOCR\IncludeAHK\GoldenDict.ahk