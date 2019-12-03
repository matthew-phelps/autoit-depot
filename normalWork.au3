#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Matthew

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

; Script Start - Add your code below here
Local $startT
Local $endT
Local $prjName
Local $workType

$startT = "8:30"
$endT = "16:00"
$prjName = "Phd peder"
$workType = "Nor"

WinActivate("SmartTID Panel")

ControlClick("SmartTID Panel", "", "Tilføj tid")
WinWaitActive("Select date", "", 10)
Sleep(4000)
ControlClick("Select date", "", "[NAME:btnOK]")

$status = 0
While $status = 0
   If WinActive("SmartTID Panel") = 0 Then
	  WinActivate("SmartTID Panel")
   Else
	  $status = 1
   EndIf
WEnd





ControlClick("SmartTID Panel", "", "Ret tid")
If WinWaitActive("Ret tid", "", 5) = 0 Then Exit

Send($startT)
Send("{TAB}")
Send($endT)
Send("{ENTER}")

$status = 0
While $status = 0
   If WinActive("SmartTID Panel") = 0 Then
	  WinActivate("SmartTID Panel")
   Else
	  $status = 1
   EndIf
WEnd


ControlClick("SmartTID Panel", "", "Jobkladde")
Sleep(1000)



ControlClick("SmartTID Panel", "", "Tilføj")
$status = 0
While $status = 0
   If WinActive("Job journal") = 0 Then
	  WinActivate("Job journal")
   Else
	  $status = 1
   EndIf
WEnd
Sleep(500)



Send($prjName)
Send("{ENTER}")
Sleep(500)
Send("{TAB}")
Sleep(100)
Send("A")
Sleep(100)
Send("{ENTER}")
Sleep(100)
Send("{TAB 3}")
Sleep(100)
Send($startT)
Sleep(100)
Send("{TAB}")
Sleep(100)
Send($endT)
Sleep(100)
Send("{TAB 2}")
Sleep(100)
Send($workType)
Sleep(100)
Send("{ENTER 2}")
Sleep(1000)
$status = 0
While $status = 0
   If WinActive("SmartTID Panel") = 0 Then
	  WinActivate("SmartTID Panel")
   Else
	  $status = 1
   EndIf
WEnd

ControlClick("SmartTID Panel", "", "Tidligere dage","primary", 2)
