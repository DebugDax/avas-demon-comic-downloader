#include <inet.au3>
#include <string.au3>

$url = 'http://www.avasdemon.com/pages/'
Global $i = 1

DirCreate(@ScriptDir & "\comics")

While 1
	TraySetToolTip("Avas Demon" & @CRLF & $i & "...")
	$n = StringFormat ( "%.4d" , $i)
	If Not FileExists(@ScriptDir & "\comics\" & $n & ".png") Then
		ConsoleWrite($i & ": " & $n & ".png" & @CRLF)
		InetGet($url & $n & ".png", @ScriptDir & "\comics\" & $n & ".png", 3, 0)
	Else
		ConsoleWrite('Skipping: ' & $n & ".png" & @CRLF)
	EndIf
	$i = $i + 1
	;sleep(Random(1000,2400,1))
WEnd
