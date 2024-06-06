#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.0
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <MsgBoxConstants.au3>

Func Example()
    ; Run Notepad
    Run("notepad.exe")

    ; Wait for the Notepad window to become active
    WinWaitActive("[CLASS:Notepad]", "", 10)

    ; Click the "File" menu
    ControlClick("[CLASS:Notepad]", "", "[CLASSNN:MenuBar]")

    ; Click the "Save As" option
    ControlClick("[CLASS:Notepad]", "", "[CLASSNN:MenuBar]1")

    ; Wait for the "Save As" dialog to appear
    WinWaitActive("Save As")

    ; Click the "Cancel" button
    ControlClick("Save As", "", "[CLASS:Button; TEXT:Cancel]")

    ; Close Notepad
    WinClose("[CLASS:Notepad]")
EndFunc   ;==>Example


Example()