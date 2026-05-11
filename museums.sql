-- Active: 1778523018463@@127.0.0.1@3306@museums_exercise
SELECT id, title
FROM works
WHERE 
    museum = 'National Gallery'
    AND artist = 'Titian'
ORDER BY id;

SELECT artist, title
FROM works
WHERE 
    museum IN ('Uffizi Gallery', 'National Gallery');

SELECT w.artist, w.title
FROM works w 
INNER JOIN museums m 
    ON w.museum = m.name
WHERE 
    m.city = 'Florence';

SELECT DISTINCT m.city
FROM works w
INNER JOIN museums m
    ON w.museum  = m.name
WHERE 
    w.artist = 'Caravaggio';

SELECT w.id, w.title
FROM works w
INNER JOIN museums m
    ON w.museum = m.name
WHERE 
    w.artist = 'Titian'
    AND m.city = 'London';

SELECT a.name, w.title
FROM works w 
INNER JOIN artists a
    ON w.artist = a.name
INNER JOIN museums m
    ON w.museum = m.name
WHERE 
    a.nationality = 'Spanish'
    AND m.city = 'Florence';

SELECT w.id, w.title
FROM works w
INNER JOIN artists a
    ON w.artist = a.name
INNER JOIN museums m
    ON w.museum = m.name
INNER JOIN characters c
    ON w.id = c.work_id
WHERE
    a.nationality = 'Italian'
    AND m.city = 'London'
    AND c.name = 'Madonna';

SELECT 
    m.name,
    COUNT(w.id) AS works_count
FROM works w
INNER JOIN museums m
    ON w.museum = m.name
INNER JOIN artists a
    ON w.artist = a.name
WHERE
    a.nationality = 'Italian'
    AND a.death_date IS NULL
GROUP BY
    m.name;

SELECT
    a.name,
    COUNT(w.id) AS works_count
FROM works w 
INNER JOIN artists a 
    ON w.artist = a.name
WHERE 
    w.museum = 'Uffizi Gallery'
GROUP BY
    a.name;

SELECT 
    w.museum,
    COUNT(w.id) AS works_count
FROM works w
INNER JOIN artists a
    ON w.artist = a.name
WHERE
    a.nationality = 'Italian'
GROUP BY 
    w.museum
HAVING
    COUNT(w.id) >= 20;

SELECT 
    w.museum,
    a.nationality,
    COUNT(w.id) AS works_count
FROM works w 
INNER JOIN artists a
    ON w.artist = a.name
GROUP BY
    w.museum,
    a.nationality;

SELECT a.name
FROM works w
INNER JOIN artists a 
    ON w.artist = a.name
INNER JOIN museums m 
    ON w.museum = m.name
WHERE
    m.city IN ('Rome', 'Florence')
    AND a.birthdate >= '1200-01-01' 
    AND a.death_date <= '1299-12-31'
GROUP BY
    a.name
HAVING
    COUNT(DISTINCT m.city) = 2;

SELECT 
    w.title
FROM works w
INNER JOIN artists a
    ON w.artist = a.name
WHERE
    w.title LIKE '%Madonna%'
    AND w.museum = 'Uffizi Gallery'
    AND a.nationality = 'Italian';

















