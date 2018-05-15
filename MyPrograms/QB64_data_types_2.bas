DIM PI#
PI = 3.14159
DIM max%
max = 500

TYPE name

    first AS STRING * 50
    middle AS STRING * 50
    last AS STRING * 50

END TYPE

TYPE birthdate

    day AS INTEGER
    month AS INTEGER
    year AS LONG

END TYPE

TYPE address

    house_number AS LONG
    street_name AS STRING * 50
    pobox AS STRING * 6
    city AS STRING * 50
    province_state AS STRING * 50
    country AS STRING * 50

END TYPE

TYPE person

    p_name AS name
    p_bdate AS birthdate
    p_add AS address

END TYPE

DIM p(max) AS person
DIM pData AS _OFFSET

pData = _OFFSET(p)

CLS

'get user input

DIM i%
DIM user_input%

PRINT "Enter how many data you want>> ";
INPUT user_input!

FOR i = 0 TO user_input% STEP 1

    'get user name first
    INPUT "Enter your name: "; pData.p_name.first
    PRINT
    INPUT p(i).p_name.middle
    PRINT
    INPUT p(i).p_name.last
    'get user birthdate and year
    PRINT
    INPUT "Enter your birthdate: "; p(i).p_bdate.day
    PRINT
    INPUT p(i).p_bdate.month
    PRINT
    INPUT p(i).p_bdate.year
    PRINT
    'get user address
    PRINT "Enter your address : "
    PRINT
    INPUT "House number : "; p(i).p_add.house_number
    PRINT
    INPUT p(i).p_add.street_name
    PRINT
    INPUT p(i).p_add.pobox
    PRINT
    INPUT p(i).p_add.city
    PRINT
    INPUT p(i).p_add.province_state
    PRINT
    INPUT p(i).p_add.country

NEXT i

'print out the information entered by the u

FOR i = 0 TO user_input% STEP 1

    PRINT "User Name: "; p(i).p_name.first; p(i).p_name.middle; p(i).p_name.last
    PRINT
    PRINT "Birthday: "; p(i).p_bdate.day; p(i).p_bdate.month; p(i).p_bdate.year
    PRINT
    PRINT "Address: "; p(i).p_add.house_number; p(i).p_add.street_name; p(i).p_add.pobox; p(i).p_add.city; p(i).p_add.province_state; p(i).p_add.country

NEXT i

END



