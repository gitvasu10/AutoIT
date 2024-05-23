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
$oExcel.Visible = True

;---------Ceating a workbook and a Worksheet------------------------------

Local $oWorkbook = _Excel_Booknew($oExcel)
If @error Then
   MsgBox(16, "ERROR!", "Failed to open the workbook")
   _Excel_Close($oExcel)
   Exit
EndIf
;-------Adding a new worksheet-------------------------
Local $oWorkSheet = $oWorkbook.Sheets.Add()
If @error Then
   MsgBox(16, "ERROR!", "Failed to add a new worksheet")
   _Excel_BookClose($oWorkbook)
   _Excel_Close($oExcel)
   Exit
EndIf

;----Maximize the window----------------------------------------------------]
Local $hwnd = WinGetHandle("[CLASS:XLMAIN]")
if $hwnd = 0 Then
	MsgBox(16,"ERROR!", "Failed to open Excel in full screen mode")
Else
	WinSetState($hwnd,"",@SW_MAXIMIZE);
EndIf

;Local $oWorksheet = _Excel_BookNewSheet($oWorkbook)

Sleep(2000)

;----------Writing data into the Excel worksheet-----------------------------

;If Not _Excel_RangeWrite($oWorksheet, "A1", "Book Name") Then
;    MsgBox(16, "ERROR!", "Failed to write data to cell A1")
;EndIf

$oWorksheet.Cells(1,1).Value = "Book Name"
$oWorksheet.Cells(1,2).Value = "Author"
$oWorksheet.Cells(2,1).Value = "Conundrum"
$oWorksheet.Cells(2,2).Value = "Anuj Dhar"






;_Excel_RangeWrite($oWorkSheet, "A1", "Book Name")
;_Excel_RangeWrite($oWorkSheet, "B1", "Author")
;_Excel_RangeWrite($oWorkSheet, "A2", "Conundrum")
;_Excel_RangeWrite($oWorkSheet, "B2", "Anuj Dhar")

;---------Saving and Close Workbook-----------------------------------------

_Excel_BookSaveAs($oWorkbook, "Report.xlsx")
_Excel_BookClose($oWorkbook)

;---------Releasing the Excel Object------------------------------------------
_Excel_Close($oExcel)