'Xinyu Hadrian Hu
'QBASIC program to test out arrays
'QB64 compiler and IDE
'02/05/2018

'define variables here

DECLARE FUNCTION swap (x, y)


DIM selectchoice AS INTEGER
DIM max AS LONG
max = 500
DIM fib(max) AS LONG
fib(0) = 0
fib(1) = 1
DIM header1 AS STRING
DIM header2 AS STRING
header1 = "Fibonacci Series Generator up to a certain value"
header2 = "Fibonacci Series Generator up to a certain index value"

'select options

CLS

printInfo

options:
INPUT "Enter your choice: "; selectchoice
PRINT
PRINT

IF (selectchoice = 1) THEN

    'start of the first part of this program to print Fibonacci series using arrays

    DIM value AS LONG
    DIM index AS LONG
    PRINT header1
    INPUT "Enter a value for Fibonacci series to approach >> "; value
    PRINT " 1", fib(0)
    PRINT " 2", fib(1)
    FOR x = 2 TO value STEP 1
        fib(x) = fib(x - 1) + fib(x - 2)
        PRINT x + 1, fib(x)
        IF (fib(x) > value) THEN END
    NEXT x
    END

ELSEIF (selectchoice = 2) THEN

    'start of the second part of this progrm to print Fibonacci series using arrays

    PRINT header2
    INPUT "Enter an index value for Fibonacci Series >>"; index
    PRINT " 1", fib(0)
    PRINT " 2", fib(1)
    FOR y = 2 TO index STEP 1
        fib(y) = fib(y - 1) + fib(y - 2)
        PRINT y + 1, fib(y)
        IF (fib(y) > index) THEN END
    NEXT y
    END

END IF

'end of the program here
END

FUNCTION swap (x, y)
DIM temp AS INTEGER
temp = x
x = y
y = temp
END FUNCTION


SUB printInfo ()
PRINT "Xinyu Hadrian Hu"
PRINT
END SUB

