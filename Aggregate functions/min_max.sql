-- Find the minimum released_year
SELECT 
    MIN(released_year) AS mininum
FROM
    books;
    
    
-- Find the longest book
SELECT 
    MAX(pages) AS max_pages
FROM
    books;

-- the title of the longest book?
-- SELECT MAX(pages), title
-- FROM books; doesn't work!!

SELECT 
    *
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books); -- subqueries

-- OR 
SELECT 
    *
FROM
    books
ORDER BY pages DESC
LIMIT 1;

-- min/max with group by
-- Find the year each author published their first book
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    MIN(released_year) AS 'published year'
FROM
    books
GROUP BY author_lname , author_fname; 


-- Find the longest page count for each author
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    MAX(pages) AS 'longest book'
FROM
    books
GROUP BY author_lname , author_fname;













