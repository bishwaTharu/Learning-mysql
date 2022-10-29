-- SELECT REPLACE('Hello World', 'l', '8');

SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?')) AS UpperReversed;
SELECT
  REPLACE
  (
  CONCAT('I', ' ', 'like', ' ', 'cats'),
  ' ',
  '-'
  );
-- I-like-cats
  
SELECT 
    REPLACE(title, ' ', '->') AS title
FROM
    books;
    
    
SELECT 
    author_lname AS forwards, REVERSE(author_lname) AS backwards
FROM
    books;
    
-- full name in caps

SELECT 
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM
    books; 
    
SELECT 
    CONCAT_WS(' ',
            title,
            'was released in',
            released_year) AS blurb
FROM
    books;
    
-- Print book titles and the length of each title

SELECT 
    title, CHAR_LENGTH(title) AS 'character count'
FROM
    books;
    
SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT(author_fname, ',', author_lname) AS author,
    CONCAT(stock_quantity, ' ', 'in stock') AS quantity
FROM
    books;

