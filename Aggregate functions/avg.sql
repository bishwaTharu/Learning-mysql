USE books_shop;

-- Calculate the average released_year across all books
SELECT 
    AVG(released_year) AS avg_released_year
FROM
    books;
    
-- Calculate the average stock quantity for books released in the same year
SELECT 
    released_year, AVG(stock_quantity) AS avg_stock_quantity
FROM
    books
GROUP BY released_year;