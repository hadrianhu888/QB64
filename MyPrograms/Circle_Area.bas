CLS
LET PI = 3.14159
DIM diameter AS DOUBLE
Header$ = "This is a program to calculate the area of a circle given a user-defined diameter value"
'program to find area of a circle given diameter
PRINT Header$
INPUT "Enter diameter >> ", diameter
area = diameter ^ 2 * (1 / 4) * PI
PRINT "Area = "; area; " unit squared."
num1% = 5
num2! = 6.75
num3# = 67500.75
num4& = -4.95
PRINT num1% + num2!
PRINT num2! / num3#
PRINT num3# * num4&
END


