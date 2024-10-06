; Kill a process

^!#k::WinKill, A

; Show text from window for copy

#y::
WinGetText, _text, A
Clipboard := _text
Gui, Add, Edit, , %_text%
Gui, Show
Return
GuiEscape:
GuiClose:
Gui, Destroy
Return

MG_User_End:
