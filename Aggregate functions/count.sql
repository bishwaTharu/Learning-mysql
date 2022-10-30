USE books_shop;

SELECT 
    COUNT(*) AS total
FROM
    books;
    
    
-- how many distinct authors fname? 
SELECT 
    COUNT(DISTINCT author_fname)
FROM
    books;     
    
SELECT 
    COUNT(DISTINCT author_lname)
FROM
    books;
    
    
SELECT 
    COUNT(*) AS 'count the'
FROM
    books
WHERE
    title LIKE '%the%';
    
    
    
    
    
    
    
    