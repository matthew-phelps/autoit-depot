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
$prjName = "Phd peder juhl legatet"
$workType = "Norm"

WinActivate("SmartTID Panel")
WinWaitActive("SmartTID Panel", "", 3)

ControlClick("SmartTID Panel", "", "Tilføj tid")
WinWaitActive("Select date", "", 10)
Sleep(4000)
ControlClick("Select date", "", "[NAME:btnOK]")

$status = 0
While $status = 0
   If WinActive("SmartTID Panel") = 0 Then
	  WinActivate("SmartTID Panel")
	  ConsoleWrite(" stat=a0 ")
   Else
	  $status = 1
   EndIf
WEnd
Sleep(1000)




ControlClick("SmartTID Panel", "", "Ret tid")
ConsoleWrite("c")
If WinWaitActive("Ret tid", "", 3) = 0 Then Exit

Send($startT)
Send("{TAB}")
Send($endT)
Send("{ENTER}")

$status = 0
While $status = 0
   If WinActive("SmartTID Panel") = 0 Then
	  WinActivate("SmartTID Panel")
	  ConsoleWrite(" stat=b0 ")
   Else
	  $status = 1
   EndIf
WEnd
Sleep(1000)

ControlClick("SmartTID Panel", "", "Jobkladde")
Sleep(1000)



ControlClick("SmartTID Panel", "", "Tilføj")
$status = 0
While $status = 0
   If WinActive("Job journal") = 0 Then
	  WinActivate("Job journal")
	  ConsoleWrite(" stat=c0 ")
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
	  ConsoleWrite(" stat=d0 ")
   Else
	  $status = 1
   EndIf
WEnd

ControlClick("SmartTID Panel", "", "Tidligere dage","primary", 2)
