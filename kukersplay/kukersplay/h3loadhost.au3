#include <ImageSearch.au3>

global $y = 0, $x = 0
global $nick = FileReadLine("./login.txt")

while 1
	WinActivate("Heroes of Might and Magic")
	MouseClick("left", 0, 0)
	Local $search = _ImageSearch('h3loadgamebutton.png', 1, $x, $y, 15)
	If $search = 1 Then
		MouseClick("left", $x, $y)
	EndIf
	$search = _ImageSearch('h3multiplayerbutton.png', 1, $x, $y, 15)
	If $search = 1 Then
		MouseClick("left", $x, $y)
	EndIf
	$search = _ImageSearch('h3nickedit.png', 1, $x, $y, 15)
	If $search = 1 Then
		MouseClick("left", $x, $y)
		For $i = 0 To 50 Step 1
			Send("{BS}");
		Next
		Send($nick);
	EndIf
	$search = _ImageSearch('h3tcpipbutton.png', 1, $x, $y, 15)
	If $search = 1 Then
		MouseClick("left", $x, $y)
	EndIf
	$search = _ImageSearch('h3hostbutton.png', 1, $x, $y, 15)
	If $search = 1 Then
		MouseClick("left", $x, $y)
	EndIf
	$search = _ImageSearch('h3okbutton.png', 1, $x, $y, 15)
	If $search = 1 Then
		MouseClick("left", $x, $y)
		ExitLoop
	EndIf
	sleep(2000)
WEnd