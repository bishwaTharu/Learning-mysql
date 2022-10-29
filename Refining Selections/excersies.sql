USE books_shop;
SELECT 
    *
FROM
    books;

-- select all story collection

SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%'; 
    
    
-- Find The Longest Book
SELECT 
    title, pages
FROM
    books
WHERE
    pages LIKE '___'
ORDER BY pages DESC
LIMIT 1;
    
    
-- Print a summary containing the title and year, for the 3 most recent books
SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC;


-- Find all books with an author_lname

-- that contains a space(" ")

SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';
    
-- Find The 3 Books With The Lowest Stock

SELECT 
    title, released_year, stock_quantity
FROM
    books
WHERE
    stock_quantity LIKE '__'
ORDER BY stock_quantity
LIMIT 3;


-- Print title and author_lname, sorted first by author_lname and then by title
SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;


-- Make This Happen...

-- Sorted Alphabetically By Last Name


SELECT 
    UPPER(CONCAT_WS(' ',
                    'my favourite author is',
                    author_fname,
                    author_lname,'!')) AS yell
FROM
    books
ORDER BY author_lname;

















