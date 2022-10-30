-- Sum all pages in the entire database
SELECT 
    SUM(pages)
FROM
    books;
    
-- SUM + GROUP BY
-- Sum all pages each author has written
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    SUM(pages) AS total_pages
FROM
    books
GROUP BY author_lname , author_fname;










