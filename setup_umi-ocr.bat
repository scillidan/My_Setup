@echo off

set "HOME=C:\Users\User"

set "OMIOCR_SETUP=%HOME%\Github\My_Setup\omi-ocr"

set "OMIOCR_RAPID_OPT=%HOME%\Opt\Umi-OCR_Rapid"
del "%OMIOCR_RAPID_OPT%\UmiOCR-data\.settings"
mklink "%OMIOCR_RAPID_OPT%\UmiOCR-data\.settings" "%OMIOCR_SETUP%\_Rapid\.settings"

set "OMIOCR_PADDLE_OPT=%HOME%\Opt\Umi-OCR_Paddle"
del "%OMIOCR_PADDLE_OPT%\UmiOCR-data\.settings"
mklink "%OMIOCR_PADDLE_OPT%\UmiOCR-data\.settings" "%OMIOCR_SETUP%\_Paddle\.settings"

pause