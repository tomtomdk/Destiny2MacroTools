#SingleInstance Force
#MaxThreadsPerHotkey, 2

clip = 18

F8::
{
    Toggle := !Toggle

    if (Toggle)
    {
        ; ToolTip, this is true, -50, -50 
    }
    else
    {
        ; ToolTip, this is false, -50, -50
    }

    If (!Toggle)
        Return

    While (Toggle)
	{
        MouseMove, 0, - A_ScreenHeight + 200, 1, R
        Sleep, 100
        MouseMove, 0 , 800, 1, R
        Sleep, 700
        MouseMove, 0, -800, 5, R
        Loop, %clip%
        {
            Random, delay, 100, 300
            Click down
            Sleep, delay
            Click up
            Sleep, delay
            If (!Toggle)
                Return
        }
        Send, s
        continue
	}
	Return
}