#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Sleep(1000)

Send("This one is the final!")

Sleep(1000)

WinClose("*This one is the final - Notepad")

WinWaitActive("*This is the final!", "Save")

WinWaitActive("Save As","Save")

