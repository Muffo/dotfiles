#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

#SingleInstance Force ; Only one instance of the script running at a time

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #NoTrayIcon

SetCapsLockState, AlwaysOff

/* 
| Shortcut                         | Output                           |
| -------------------------------- | -------------------------------- |
| CAPSLOCK + { k, h, j, l }        | { Up, Left, Down, Right }        |
| CAPSLOCK + { u, i }              | { Home, End }                    |
| CAPSLOCK + { e, d }              | { PageUp, PageDown }             |
*/


CapsLock & k::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Up}
    else if GetKeyState("Ctrl", "D")
        Send +!{Up}
    else
        Send +{Up}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send !{Up}
else if GetKeyState("Alt", "D")
    Send ^{Up}
else
    Send {Up}
return

CapsLock & j::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Down}
    else if GetKeyState("Ctrl", "D")
        Send +!{Down}
    else
        Send +{Down}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send !{Down}
else if GetKeyState("Alt", "D")
    Send ^{Down}
else
    Send {Down}
return

CapsLock & h::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Left}
    else if GetKeyState("Ctrl", "D")
        Send +!{Left}
    else
        Send +{Left}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send !{Left}
else if GetKeyState("Alt", "D")
    Send ^{Left}
else
    Send {Left}
return

CapsLock & l::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Right}
    else if GetKeyState("Ctrl", "D")
        Send +!{Right}
    else
        Send +{Right}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send !{Right}
else if GetKeyState("Alt", "D")
    Send ^{Right}
else
    Send {Right}
return

CapsLock & u::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Home}
    else if GetKeyState("Ctrl", "D")
        Send +!{Home}
    else
        Send +{Home}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Home}
    else
        Send !{Home}
else if GetKeyState("Alt", "D")
    Send ^{Home}
else
    Send {Home}
return

CapsLock & i::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{End}
    else if GetKeyState("Ctrl", "D")
        Send +!{End}
    else
        Send +{End}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{End}
    else
        Send !{End}
else if GetKeyState("Alt", "D")
    Send ^{End}
else
    Send {End}
return

CapsLock & e:: send, {PgUp}
CapsLock & d:: send, {PgDn}

return

; Enable commonly used CTRL+# shortcuts using CapsLock instead

CapsLock & z:: send, ^z
CapsLock & x:: send, ^x
CapsLock & c:: send, ^c
CapsLock & v:: send, ^v
CapsLock & a:: send, ^a
CapsLock & s:: send, ^s
CapsLock & f:: send, ^f
CapsLock & q:: send, ^q
CapsLock & w:: send, ^w
CapsLock & r:: send, ^r
CapsLock & t:: send, ^t

return


; Move Backspace in a more convenient position

CapsLock & Enter::
	Send {Backspace}
return
