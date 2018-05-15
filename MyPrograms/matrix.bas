DIM max AS INTEGER
max = 50
CLS
DIM matrix(max, max) AS DOUBLE
DIM x AS INTEGER
DIM y AS INTEGER
INPUT "x = "; x
INPUT "y = "; y
PRINT "Matrix dimension : "; x; " by "; y; "."
PRINT
FOR i = 0 TO (x - 1) STEP 1
    FOR j = 0 TO (y - 1) STEP 1
        PRINT "Enter "; i + 1; " , "; j + 1; " of "; x; " , "; y
        INPUT matrix(x, y)
        IF (i >= x) THEN END
    NEXT j
    IF (j >= y) THEN END
NEXT i
FOR i = 0 TO (x - 1) STEP 1
    FOR j = 0 TO (y - 1) STEP 1
        PRINT matrix(x, y);
    NEXT j
    PRINT
NEXT i
PRINT
PRINT
END

