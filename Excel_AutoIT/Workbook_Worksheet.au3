#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here


#include<MsgBoxConstants.au3>
#include<Excel.au3>

;-----Creating an Excel object------------------------------------------------
Local $oExcel = _Excel_Open()
If @error Then
   MsgBox(16, "ERROR!", "Failed to open the Excel application")
   Exit
EndIf
;---------Ceating a workbook and a Worksheet------------------------------
Local $oWorkbook = _Excel_Booknew($oExcel)
If @error Then
   MsgBox(16, "ERROR!", "Failed to open the workbook")
   _Excel_Close($oExcel)
   Exit
EndIf

Local $oWorksheet = _Excel_BookNeewSheet($oWorkbook)