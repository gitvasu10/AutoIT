$testString = "extenuating the crime is no justice!"
$substring = "the crime"

;StringInStr($parentString, $childString)
ConsoleWrite(StringInStr($testString,  $subString))
ConsoleWrite("Next")


$test2 = "qwerty123"
;StringIsAlNum($variable)

ConsoleWrite(StringIsAlNum($test2))

;----------New line----------------------------------------------
#include<MsgBoxConstants.au3>
Local $string1 = "Line 1 text" & @CRLF & "Line 2 text"

;ConsoleWrite($string1)

;Using the macro(@CRLF) for the newline character 
MsgBox($MB_ICONINFORMATION, "String with NewLine", "String 1" & @CRLF & $string1)
