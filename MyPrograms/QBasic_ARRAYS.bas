CLS
REM //this program tests for arrays and loops, and conditionals
LET MAX = 500

DIM fibonacci(MAX)
LET fibonacci(0) = 0
LET fibonacci(1) = 1

INPUT "Enter the limit of the Fibonacci Series >> ", value
DIM i
PRINT fibonnaci(0)
PRINT fibonacci(1)
fibonacci(i) = fibonacci(0) + fibonacci(1)
DO WHILE (fibonnaci(i) < value)
    fibonacci(i) = fibonacci(0) + fibonacci(1)
    PRINT fibonacci(i)
    IF fibonacci(i) >= value THEN END
LOOP
END




