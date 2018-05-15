DIM max AS INTEGER
max = 50

'set up a data type for house                                          o

TYPE house
    number AS INTEGER
    streetName AS STRING * 50
    city AS STRING * 50
    postCode AS STRING * 10
    province AS STRING * 50
    country AS STRING * 50
    buy AS DOUBLE
    sold AS DOUBLE
END TYPE

DIM houseInfo AS house

'get the user input

CLS

PRINT "Enter your house information below >> "
PRINT
PRINT "Enter your house number >> ";
INPUT houseInfo.number
PRINT
PRINT "Enter your street name >> ";
INPUT houseInfo.streetName
PRINT
PRINT "Enter your city >> ";
INPUT houseInfo.city
PRINT
PRINT "Enter your PO box number >> ";
INPUT houseInfo.postCode
PRINT
PRINT "Enter your province >> ";
INPUT houseInfo.province
PRINT
PRINT "Enter your country >> ";
INPUT houseInfo.country
PRINT
PRINT "How much did you buy the house for >> ";
INPUT houseInfo.buy
PRINT
PRINT "House much did you sell the house >> ";
INPUT houseInfo.sold
PRINT

'output the user informaiton

PRINT "Your house information below : "
PRINT
PRINT "House number : "; houseInfo.number
PRINT
PRINT "Street name : "; houseInfo.streetName
PRINT
PRINT "City : "; houseInfo.city
PRINT
PRINT "PO Box Number : "; houseInfo.postCode
PRINT
PRINT "Province : "; houseInfo.province
PRINT
PRINT "Country : "; houseInfo.country
PRINT
PRINT "Bought Price : $"; houseInfo.buy
PRINT
PRINT "Sold Price : $"; houseInfo.sold
PRINT

'end of the program

END


