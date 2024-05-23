;UAC - User Access Control
;UDF - User Defined Function 

;#include<MsgBoxConstants.au3>
;MsgBox($MB_OK, "Testing", StringRegExp("text", 'ext'))
;MsgBox($MB_SYSTEMMODAL, "My First Script!","Hello World!")

;--------------------Function--------------------------------------------------------------------
Func test_func()
   Return MsgBox($MB_SYSTEMMODAL, "Outer heading", "This script is running through a function" )
EndFunc

test_func()

;------------------------------------------------------------------------------------------------


