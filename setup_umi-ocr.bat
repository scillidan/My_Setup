@echo off

set "HOME=C:\Users\User"

set "UMIOCR_SETUP=%HOME%\Github\My_Setup\umi-ocr"

set "UMIOCR_RAPID_OPT=%HOME%\Opt\Umi-OCR_Rapid"
del "%UMIOCR_RAPID_OPT%\UmiOCR-data\.settings"
mklink "%UMIOCR_RAPID_OPT%\UmiOCR-data\.settings" "%UMIOCR_SETUP%\_Rapid\.settings"

set "UMIOCR_PADDLE_OPT=%HOME%\Opt\Umi-OCR_Paddle"
del "%UMIOCR_PADDLE_OPT%\UmiOCR-data\.settings"
mklink "%UMIOCR_PADDLE_OPT%\UmiOCR-data\.settings" "%UMIOCR_SETUP%\_Paddle\.settings"

pause