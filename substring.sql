SELECT SUBSTRING('Hello World', 1, 4);
SELECT SUBSTRING('Hello World', 7);
SELECT SUBSTRING('Hello World',-7);

SELECT 
    SUBSTRING(title, 1, 10)
FROM
    books;
    
    
-- substring and concat
SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title'
FROM
    books;

 
