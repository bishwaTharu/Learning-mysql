-- Working on Shirts_db 

CREATE TABLE shirts (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(1),
    last_worn INT,
    PRIMARY KEY (shirt_id)
);

DESC shirts;

INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('t-shirt','white','S',10),
		('t-shirt','Green','S',200),	
        ('Polo shirt','black','M',10),
        ('tank top','blue','S',50),
        ('t-shirt','Pink','S',0),
        ('Polo Shirt','red','M',5),
        ('tank Top','white','S',200),
        ('tank top','blue','M',15);
        
SELECT 
    *
FROM
    shirts;

-- UPDATE shirts 
-- SET 
--     last_worn = 15
-- WHERE
--     shirt_id = 8;
		
        
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('Polo Shirt','Purple','M',50);

SELECT 
    article, color
FROM
    shirts;
    
SELECT 
    article,color,shirt_size,last_worn
FROM
    shirts
WHERE
    shirt_size = 'M';
    
SELECT 
    *
FROM
    shirts
WHERE
    article = 'Polo Shirt'; 
    
UPDATE shirts 
SET 
    shirt_size = 'L'
WHERE
    article = 'Polo Shirt';
    
UPDATE shirts 
SET 
    last_worn = 0
WHERE
    last_worn = 15;
    
UPDATE shirts 
SET 
    shirt_size = 'X',
    color = 'off white'
WHERE
    color = 'white';
    
SELECT 
    *
FROM
    shirts
WHERE
    last_worn = 200;
    
DELETE FROM shirts 
WHERE
    last_worn = 200;
    
DELETE FROM shirts 
WHERE
    article = 'tank top';
    
DELETE FROM shirts;

drop table shirts;