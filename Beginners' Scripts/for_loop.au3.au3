#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

;-------------------------For...Next Loop---------------------------------------

Local $i = 0
for $j = 0 to 10 Step 2
	ConsoleWrite("The value of $i is: " & $i+$j & @CRLF)
Next


;Table of 2
Local $test = 2
ConsoleWrite("The table of 2 is: ")
for $k	= 1 to 10 Step 1
	ConsoleWrite( @CRLF & $test * $k)
	
	MsgBox(64,"The table of 2", @CRLF & $test * $k )

Next


;----------------------------------------While...WEnd loop---------------------------

;Table of 2
Local $test = 2
Local $result = 1
Local $counter = 1
ConsoleWrite("The table of 2 is: " & @CRLF)
While $counter <= 10
		ConsoleWrite($test * $result & @CRLF)
		$result += 1
		$counter += 1
WEnd


;--------------------------------------Do...Until loop----------------------------------

;Table of 2
Local $test = 2
Local $result = 1
Local $counter = 1
Do
	ConsoleWrite($test * $result & @CRLF)
	$result += 1
	$counter += 1
Until $counter > 10