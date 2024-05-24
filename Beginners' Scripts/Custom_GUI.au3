#include<GUIConstantsEx.au3>

Global $title = "Custom Message Box"
Global $message = "Choose an option of your choice:"

;GUI creation
Local $oGUI = GUICreate($title, 450,250)
GUISetBkColor(0xABCDEF) ;White colour in background

;Add message label
Local $hLabel = GUICtrlCreateLabel($message, 10, 10, 280, 30)
GUICtrlSetFont(-1, 10, 800) ; Set font bold

; Add buttons
Local $hButton1 = GUICtrlCreateButton("Option 1", 30, 60, 100, 30)
Local $hButton2 = GUICtrlCreateButton("Option 2", 130, 60, 100, 30)
Local $hButton3 = GUICtrlCreateButton("Option 3", 230, 60, 100, 30)

; Show GUI
GUISetState(@SW_SHOW, $oGUI)

While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $hButton1
            MsgBox(0, "Option Selected", "Option 1 selected")
            ExitLoop
        Case $hButton2
            MsgBox(0, "Option Selected", "Option 2 selected")
            ExitLoop
        Case $hButton3
            MsgBox(0, "Option Selected", "Option 3 selected")
            ExitLoop
    EndSwitch
WEnd