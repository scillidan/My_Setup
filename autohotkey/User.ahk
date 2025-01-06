#NoEnv
SetWorkingDir %A_ScriptDir%
^!+r::Run "C:\Program Files (x86)\Rime\weasel-0.16.1\WeaselServer.exe"

; New functionality to open clipboard URL
^+o::
    ClipWait, 1 ; Wait for the clipboard to contain data
    url := Clipboard ; Get the URL from the clipboard
    If InStr(url, "http") ; Check if the clipboard content is a URL
    {
        Run, %url% ; Open the URL in the default web browser
    }
    Else
    {
        MsgBox, The clipboard does not contain a valid URL. ; Display message if not a URL
    }
return
