;Radio Button
WinActivate("Page Setup","")
WinWaitActive("Page Setup","",5)
ControlClick("Page Setup","","L&andscape")

;CheckBox
WinActivate("Replace","")
WinWaitActive("Replace","",5)
Dim $IsChecked = ControlCommand("Replace","","Match &case","IsChecked")
ConsoleWrite("IsChecked:" & $IsChecked & @CRLF)
if $IsChecked = 0 Then
   ControlCommand("Replace","","Match &case","CHECK")
Else
   ControlCommand("Replace","","Match &case","UNCHECK")
EndIf
sleep(1000)
$IsChecked = ControlCommand("Replace","","Match &case","IsChecked")
ConsoleWrite("IsChecked:" & $IsChecked & @CRLF)