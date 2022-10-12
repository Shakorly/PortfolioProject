CREATE TABLE STAFF
(
STAFF_ID   VARCHAR(20),
STAFF_TYPE VARCHAR(20),
SCHOOL_ID  VARCHAR(20),
FIRST_NAME VARCHAR(100),
LAST_NAME  VARCHAR(100),
AGE        INT,
DOB        DATE,
GENDER     VARCHAR(10),
JOIN_DATE  DATE,
ADDRESS_ID VARCHAR(20)
)

INSERT INTO STAFF(STAFF_ID, STAFF_TYPE, SCHOOL_ID  , FIRST_NAME , LAST_NAME , AGE ,DOB, GENDER, JOIN_DATE, ADDRESS_ID )
VALUES (1, 'Temporary Staff','ST', 'Taiwo', 'Shakiru', 24 , '5/5/95', 'Male', '6/9/22', '11 James Ajayi' )


UPDATE STAFF 
SET SCHOOL_ID = 'sT100'

SELECT * FROM STAFF
