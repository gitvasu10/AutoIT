#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         Shashwat Malasi

;Creating an Excel sheet in the current folder using AutoIT

; Create an Excel COM object
Local $oExcel = ObjCreate("Excel.Application")

; Add a new workbook
Local $oWorkbook = $oExcel.Workbooks.Add()

; Save the workbook to a specific path
Local $sFilePath = "C:\Users\H569774\OneDrive - Honeywell\Desktop\AutoIT-scripts\Beginners' Scripts\test.xlsx"
$oWorkbook.SaveAs($sFilePath)

; Close the workbook
$oWorkbook.Close()

; Quit Excel application
$oExcel.Quit()
