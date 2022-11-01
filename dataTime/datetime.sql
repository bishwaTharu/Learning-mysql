USE birthday_app;

SELECT CURDATE(); -- YYYY-MM-DD
SELECT CURTIME(); -- HH-MM-SS
SELECT NOW(); -- YYYY-MM-DD HH-MM-SS

CREATE TABLE people (
	date_of_birth DATE,
    birth_time TIME,
    birth_dt DATETIME
);

INSERT INTO people ( date_of_birth , birth_time , birth_dt )
VALUES ( '1998-03-17' , '10:04:34' ,  '1998-03-17 10:04:34'),
		( '1998-04-17' , '13:04:34' ,  '1998-04-17 13:04:34'),
		( '1998-06-17' , '10:04:35' ,  '1998-06-17 10:04:35');

SELECT 
    *
FROM
    people;
    
SELECT 
    date_of_birth, DAYNAME(date_of_birth)
FROM
    people;
    
SELECT 
    DATE_FORMAT(birth_dt, 'Was born on a %W')
FROM
    people;
    
    
SELECT 
    DATE_FORMAT(birth_dt, '%m/%d/%Y')
FROM
    people;
    
SELECT 
    DATE_FORMAT(birth_dt, '%m/%d/%Y at %h:%i')
FROM
    people;
 