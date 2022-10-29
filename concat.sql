SELECT 
    *
FROM
    books;
    
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS 'Full name'
FROM
    books;
    
SELECT 
    author_fname AS first,
    author_lname AS last,
    CONCAT(author_fname, ' ', author_lname) AS full
FROM
    books;
    
-- concat with seperator

SELECT 
    CONCAT_WS('-', title, author_fname, author_lname) AS 'About'
FROM
    books; 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    