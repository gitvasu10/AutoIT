#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Run("notepad.exe")

$testWindow = WinWaitActive("Untitled - Notepad", "", 5)
Sleep(1000)
WinSetState("Untitled - Notepad", "", @SW_MAXIMIZE)
Sleep(1000)
Send("This is the Notepad Automation script")

MouseClick("right", 25, 45)
Sleep(5000)

;WinClose("*This is the Notepad Automation script - Notepad")
WinClose($testWindow)

WinWaitActive("*This is the Notepad Automation scri", "Save")
;Sleep("{TAB} {ENTER}")

;Send("!n")