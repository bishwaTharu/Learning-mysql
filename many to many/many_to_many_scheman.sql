CREATE DATABASE tv_review_app;
USE tv_review_app;

CREATE TABLE reviewers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year YEAR,
    genre VARCHAR(100)
);

CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2 , 1 ),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY (series_id)
        REFERENCES series (id),
    FOREIGN KEY (reviewer_id)
        REFERENCES reviewers (id)
);

INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
    
INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
    
INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);
    
-- SELECT 
--     *
-- FROM
--     series;
-- challeng1

SELECT 
    title, rating
FROM
    series
        INNER JOIN
    reviews ON series.id = reviews.series_id;
    
-- challenge 2
SELECT 
    title, AVG(rating) AS avg_rating
FROM
    series
        INNER JOIN
    reviews ON series.id = reviews.series_id
GROUP BY series_id
ORDER BY avg_rating;

-- challenge 3
SELECT 
    first_name, last_name, rating
FROM
    reviewers
        INNER JOIN
    reviews ON reviewers.id = reviews.reviewer_id;
    
-- challenge 4 
SELECT 
    title AS unreviewed_series, rating
FROM
    series
        LEFT JOIN
    reviews ON series.id = reviews.series_id
WHERE
    rating IS NULL;
    
    
-- challenge 5 
SELECT 
    genre, AVG(rating) AS avg_rating
FROM
    series
        INNER JOIN
    reviews ON series.id = reviews.series_id
GROUP BY genre;

-- challenge 6
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(AVG(rating), 0) AS AVG,
    CASE
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewer_id;

-- challenge 7
SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviewers
        INNER JOIN
    reviews ON reviewers.id = reviews.reviewer_id
        INNER JOIN
    series ON series.id = reviews.series_id
ORDER BY title;


