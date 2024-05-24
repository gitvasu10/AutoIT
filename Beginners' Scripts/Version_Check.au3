;ConsoleWrite(@AutoItVersion & @CRLF)
;ConsoleWrite(@OSVersion & Chr(13))
;ConsoleWrite(@UserName & Chr(13))

;ConsoleWrite(@ComputerName)

;ConsoleWrite(@IPAddress1 & @CRLF)

;ConsoleWrite(@HomeDrive & @CRLF)

;ConsoleWrite(@UserProfileDir)

;ConsoleWrite(@ScriptName)

;ConsoleWrite( @CRLF & @ScriptLineNumber)

#include<MsgBoxConstants.au3>
MsgBox($MB_OK + @SW_MAXIMIZE, "Testing", "It is going on")