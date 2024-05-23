Func NotepadAutomate()
	Run("notepad.exe")
	;Waiting for 10 seconds for notepad to open properly
	Local $testWindow = WinWait("[CLASS:Notepad]", "", "10")
	
	;Wait for 2 seconds
	Sleep(2000)
	
	;Inserting the text in the File
	ControlSend("$testWindow", "", "Edit1", "The test line in file")
	
	;Wait for 2 more seconds
	Sleep(2000)
	
	;Close the window
	WinClose($testWindow)
	
	;Saving the file in a folder
	WinWaitActive("[CLASS:#32770]")
	Sleep(1000)
	Sleep("{TAB} {ENTER}")
EndFunc