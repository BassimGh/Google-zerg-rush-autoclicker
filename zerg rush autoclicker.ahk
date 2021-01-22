CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SetMouseDelay, -1

x1 := -1680     ;   \
y1 := -228      ;    |  ← screen coordinates of the browser window with google zerg rush
x2 := -20       ;    |
y2 := 821       ;   /
Stop := False

q::
    While (Stop = False) {
        PixelSearch, yx, yy, x1, y1, x2, y2, 0xFBBC05, 2, RGB Fast
        if (!ErrorLevel) {
            yx += 2 ;   yx : yellow o's x pos
            yy += 2 ;   yy : yellow o's y pos
            Click, %yx%, %yy%
        }
        PixelSearch, gx, gy, x1, y1, x2, y2, 0xEA4739 , 2, RGB Fast
        if (!ErrorLevel) {
            gx += 2 ;   gx : green o's x pos
            gy += 2 ;   gy : green o's y pos
            Click, %gx%, %gy%
            }
    }
    Return

NumpadAdd::
    Stop := False
    Return
NumpadSub::
    Stop := True
    Return
Numpad0::
    MouseGetPos, x1, y1
    Return
Numpad9::
    MouseGetPos, x2, y2
    Return

Esc::x2itApp