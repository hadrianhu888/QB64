DIM r AS INTEGER
DIM c AS INTEGER
DIM size AS INTEGER
DIM i AS INTEGER
DIM j AS INTEGER
size = 500
DIM matrix(size, size) AS DOUBLE
DIM fileName AS STRING
DIM fileOptions AS STRING
DIM exitExe AS STRING
CLS
start:
'determine the dimensions of the matrix
PRINT "Enter r = ";
INPUT r
PRINT
PRINT "Enter c = ";
INPUT c
'get the user to fill the matrix
FOR i = 0 TO r - 1 STEP 1
    FOR j = 0 TO c - 1 STEP 1
        PRINT "Enter "; i + 1; ","; j + 1; " of "; r; ","; c;
        INPUT matrix(i, j)
        PRINT
    NEXT j
NEXT i
PRINT
printScreen:
'print out the matrix
PRINT
PRINT "The matrix with dimensions"; r; ","; c
PRINT
FOR i = 0 TO r - 1 STEP 1
    FOR j = 0 TO c - 1 STEP 1
        PRINT matrix(i, j); "   ";
    NEXT j
    PRINT
NEXT i
PRINT
PRINT "Do you want to write the matrix to a file: ";
INPUT fileOptions
IF (fileOptions = "Y") THEN
    PRINT
    PRINT "Enter file name: ";
    INPUT fileName
    OPEN fileName FOR INPUT AS #1
    PRINT "The file name is "; fileName
    PRINT "The matrix with dimensions"; r; ","; c
    PRINT
    FOR i = 0 TO r - 1 STEP 1
        FOR j = 0 TO c - 1 STEP 1
            PRINT #1, matrix(i, j); "   ", fileName
        NEXT j
        PRINT #1, fileName
    NEXT i
    PRINT #1, fileName
    CLOSE #1
ELSE IF (fileOptions = "N") THEN
        GOTO printScreen
    END IF
END IF
PRINT "Exit the program ";

INPUT exitExe
SELECT CASE (exitExe)
    CASE "Y"
    CASE "y"
        END
    CASE "N"
    CASE "n"
        GOTO start
END SELECT
END



