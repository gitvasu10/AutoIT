;Creating an Excel COM(Component Object Model) object
Local $oExcel = ObjCreate("Excel.Application")

;Opening the workbook
Local $oWorkbook = $oExcel.Workbooks.Open("C:\Users\H569774\OneDrive - Honeywell\Desktop\autoitBook")

Local $iRowCount = $oWorkbook.Sheets(1).UsedRange.Columns(1).Rows.Count

;Defining an array to store the column data
Local $aColumnData[$iRowCount]
; Read data from the entire column
For $i = 1 To $iRowCount
    $aColumnData[$i - 1] = $oWorkbook.Sheets(1).Cells($i, 1).Value
Next

; Close the workbook
$oWorkbook.Close()

; Quit Excel application
$oExcel.Quit()

; Display the column data
For $i = 0 To UBound($aColumnData) - 1
    ConsoleWrite($aColumnData[$i] & @CRLF)
Next

; Close the workbook
$oWorkbook.Close()

; Quit Excel application
$oExcel.Quit()

; Display the column data
For $i = 0 To UBound($aColumnData) - 1
    ConsoleWrite($aColumnData[$i] & @CRLF)
Next