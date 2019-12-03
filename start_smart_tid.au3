#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Matthew

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------
#include <MsgBoxConstants.au3>

ShellExecute("C:\Program Files (x86)\SmartTID\Panel\SmartTIDPanel.exe")
WinWaitActive("SmartTID Panel")

ControlClick("SmartTID Panel", "", "Tidligere dage")