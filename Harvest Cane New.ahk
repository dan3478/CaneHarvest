x::
Send, {d up}
Send, {w up}
Send, {a up}
Send, {lbutton up}
Send, {rbutton up}
ExitApp

1::
Cmd("p on")
Cmd("home a")
Gosub LayerLoop
Cmd("is")
Return

2::
Cmd("p on")
Cmd("home b")
Gosub LayerLoop
Cmd("is")
Return

z::
Cmd("p on")
Cmd("home a")
Gosub LayerLoop
Cmd("home b")
Gosub LayerLoop
Cmd("is")
Return


;;;;;FUNCTIONS;;;;;

Cmd(x)
{
Sleep 100
Send /
Sleep 100
Send %x%
Sleep 100
Send {enter}
Sleep 100
return
}


;;;;;SUBROUTINES;;;;;

MoveRight:
Sleep 50
Send {d down}
Sleep 22500
Send {d up}
Send {w down}
Sleep 562
Send {w up}
Return

MoveLeft:
Sleep 50
Send {a down}
Sleep 22500
Send {a up}
Send {w down}
Sleep 563
Send {w up}
Return

LayerLoop:
Loop, 10 {
Sleep 100
Send {lbutton down}
Gosub, MoveRight
Gosub, MoveLeft
Gosub, MoveRight
Gosub, MoveLeft
Send {lbutton up}
Cmd("shop farming")
Sleep 1000
MouseMove -90, -160, 1, R
Sleep 50
Send {mbutton}
Sleep 100
Send e
Sleep 100
}
Return