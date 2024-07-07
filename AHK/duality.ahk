#SingleInstance Force
#NoEnv
#Include, %A_ScriptDir%/DestinyMacros.ahk
;    #Warn

SetWorkingDir %A_ScriptDir%

RunWait, "C:\Program Files\AutoHotkey\AutoHotkey.exe" "C:\AHK\stopothers.ahk" %A_ScriptName%

ToOrbitToCharacter(1)
CharacterToMoon()
MoonToDuality()
Sleep, 10000 ; Delay for orbit to dungeon loading screen
AntiAFK()

CharacterToMoon()
{
    Send, M
    Sleep, 1000

    MouseClick, Left, X(1549), Y(879), 1, 20 ; Open the moon
    MouseMove, X(960), Y(1080), 10 ; Adjust the map
    Sleep, 3000
    
    Return 1
}

MoonToDuality()
{
    MouseMove, X(0), Y(1080) ; Adjust Map
    Sleep, 3000

    MouseClick, Left, X(1098), Y(392), 20 ; Click MoonToDuality
    Sleep, 1000

    MouseClick, Left, X(1620), Y(890), 20 ; Click launch
    Sleep, 1000

    Return 1
}

AntiAFK()
{
    Loop
    {
        Move("left", 100, false)
        Sleep, 500
        Move("right", 100, false)
        Sleep, 500
        TurnRightDegrees(45)
        Sleep, 500
        Click
        Sleep, 500
        TurnLeftDegrees(45)
        Sleep, 500
        Click
        Sleep, 500
    }
}