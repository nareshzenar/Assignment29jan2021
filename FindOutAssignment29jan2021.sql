use WFA3DotNet

--Functions in SQL server can be broadly divided into 2 categoris
--    1. Built-in functions
--    2. User Defined functions


--Returns the ASCII code of the given character expression.
Select ASCII('A')

--Converts all the characters in the given Character_Expression, to lowercase letters.
Select LOWER('CONVERT This String Into Lower Case')

--Converts all the characters in the given Character_Expression, to uppercase letters.
Select UPPER('CONVERT This String Into upper Case')

--Removes blanks on the left handside of the given character expression.
Select LTRIM('   Hello')

--Removes blanks on the right hand side of the given character expression.
Select RTRIM('Hello   ')

--Reverses all the characters in the given string expression.
Select REVERSE('ABCDEFGHIJKLMNOPQRSTUVWXYZ')

--Returns the count of total characters, in the given string expression, excluding the blanks at the end of the expression.
Select LEN('SQL Functions   ')

--Returns the specified number of characters from the left hand side of the given character expression.
Select LEFT('ABCDE', 3)

--Returns the specified number of characters from the right hand side of the given character expression.
Select RIGHT('ABCDE', 3)

--returns substring (part of the string), from the given expression. 
--You specify the starting location using the 'start' parameter and the number of characters in the substring using 'Length' parameter. 
--All the 3 parameters are mandatory.
Select SUBSTRING('John@bbb.com',6, 7)


--Mathematical functions

--ABS returns the absolute value like modulus(|x|) ==|-243.5|
SELECT Abs(-243.5) AS AbsNum

--Returns the power value of the specified expression to the specified power.
Select POWER(2,3)

--Returns the square of the given number.
Select SQUARE(9) 

--This function returns the square root of the given value.
Select SQRT(81)


--max(),min(),sum(),count(),avg() functions
create table product1(pid int primary key identity(1,1),pname varchar(10),price float)

insert into product1 values('Lays',20)
insert into product1 values('MilkShake',50)
insert into product1 values('Maggi',100)
insert into product1 values('HeadSet',2000)
insert into product1 values('TicTac',10)

select * from product1

--min()
SELECT MIN(Price) AS SmallestPrice FROM Product1

--max()
SELECT MAX(Price) AS LargestPrice FROM product1

--count()
SELECT COUNT(pid) FROM Product1

--avg()
SELECT AVG(Price) FROM Product1

--sum()
SELECT SUM(price) FROM product1