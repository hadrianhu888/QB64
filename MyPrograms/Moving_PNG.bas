
'initiating variables

DIM Pic AS LONG
DIM FileName AS STRING
DIM exitProgram AS STRING

CLS

SCREEN _NEWIMAGE(400, 300, 32)

FileInput:

'Invaders0.png

PRINT "Input file name >> "
INPUT FileName

'check if the file exists

OPEN FileName FOR OUTPUT AS #1

IF _FILEEXISTS(FileName) THEN
    GOSUB FileInput
END IF

PRINT

'load the file and use the mouse to control it

Pic = _LOADIMAGE(FileName)
DO
    WHILE _MOUSEINPUT
        _LIMIT 1000
        PCOPY _DISPLAY, 1
        _PUTIMAGE (_MOUSEX, _MOUSEY), Pic
        _DISPLAY
        PCOPY 1, _DISPLAY
    WEND
LOOP WHILE INKEY$ = ""

'choice to exit the program

PRINT "Press 'E' or 'e' to exit: "
INPUT exitProgram
IF (exitProgram = "E" OR exitProgram = "e") THEN
    END
ELSE
    END
END IF

CLOSE

END
