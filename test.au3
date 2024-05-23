
Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Send("This is a test script in AutoIT")
WinClose("Untitled - Notepad")
WinWaitActive("Notepad", "Save")
