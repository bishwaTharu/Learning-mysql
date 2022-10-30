-- "GROUP BY summarizes or aggregates identical data into single rows"

SELECT 
    title, author_lname
FROM
    books;

SELECT 
    title, author_lname
FROM
    books
GROUP BY author_lname; -- Now the data is grouped

-- COUNT how many books each author has written
SELECT 
    author_lname, COUNT(title)
FROM
    books
GROUP BY author_lname , author_fname;








