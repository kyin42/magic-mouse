mousex =
diffneeded = 200
RWin::
    MouseGetPos mousex
Return
RWin UP::
    MouseGetPos newx
    diff := (newx-mousex)
    if(diff > diffneeded)
        Send ^#{Right}
    if(diff < -diffneeded)
	Send ^#{Left}
    if(diff > -diffneeded and diff< diffneeded)
	Send {Tab Up}#{Tab Down}
Return