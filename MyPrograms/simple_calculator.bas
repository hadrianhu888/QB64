DIM choice AS STRING
DIM a AS DOUBLE
DIM b AS DOUBLE

'clear screen

CLS
'user values
PRINT "Enter values for a and b "
INPUT "a = ", a
INPUT "b = ", b
'user choices for +, -, * or /
INPUT "Enter your choice of +, -, * or /, or press E or e to exit ", choice
SELECT CASE choice
    CASE "+"
        PRINT "a + b = ", a + b
    CASE "-"
        PRINT "a - b = ", a - b
    CASE "*"
        PRINT "a * b = ", a * b
    CASE "/"
        PRINT "a / b = ", a / b
    CASE "e"
    CASE "E"
        PRINT "The program will now exit"
        PRINT
        END (0)
END SELECT
END
