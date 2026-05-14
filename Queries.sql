-- 1- Il codice ed il titolo delle opere di Tiziano conservate 
-- alla “National Gallery” ordinate per codice.
SELECT
  w.id,
  w.title
FROM works AS w
WHERE
  w.artist = 'Titian'
  AND w.museum = 'National Gallery'
ORDER BY
  w.id ASC;

  -- 2- Il nome dell’artista ed il titolo delle opere 
  -- conservate alla “Galleria degli Uffizi” o alla “National Gallery”.
SELECT
  w.artist,
  w.title
FROM works AS w
WHERE
  w.museum IN ('Galleria degli Uffizi', 'National Gallery');

  -- 3- Il nome dell’artista ed il titolo delle opere 
  -- conservate nei musei di Firenze
SELECT 
  w.artist,
  w.title
FROM works AS w
INNER JOIN museums AS m
  ON w.museum = m.name
WHERE 
  m.city = 'Florence';

  -- 4- Le città in cui son conservate opere di Caravaggio
SELECT DISTINCT -- distinct per rimuovere record duplicati
  m.city
FROM works AS w
INNER JOIN museums AS m
  ON w.museum = m.name
WHERE 
  w.artist = 'Caravaggio';

  -- 5- Il codice ed il titolo delle opere di Tiziano conservate 
  -- nei musei di Londra
SELECT
  w.id,
  w.title
FROM works AS w
INNER JOIN museums AS m
  ON w.museum = m.name
WHERE
  w.artist = 'Titian'
  AND m.city = 'London';

  -- 6- Il nome dell’artista ed il titolo 
  -- delle opere di artisti spagnoli conservate nei musei di Firenze

SELECT 
  w.artist, 
  w.title
FROM works AS w
INNER JOIN artists AS a
  ON w.artist = a.name
INNER JOIN museums AS m
  ON w.museum = m.name
WHERE 
  a.nationality = 'Spanish'
  AND m.city = 'Florence';

  -- 7- Il codice ed il titolo delle opere di artisti 
  -- italiani conservate nei musei di Londra, in cui è rappresentata la Madonna
SELECT
  w.id,
  w.title
FROM works as w
INNER JOIN artists AS a
  ON w.artist = a.name
INNER JOIN museums AS m
  ON w.museum = m.name
INNER JOIN characters AS c
  ON w.id = c.work_id
WHERE 
  a.nationality = 'Italian'
  AND m.city = 'London'
  AND c.name = 'Madonna';

  -- 8- Per ciascun museo di Londra, il numero di opere di 
  -- artisti italiani ivi conservate

SELECT 
  w.museum,
  COUNT(w.id) AS works_count
FROM works AS w
INNER JOIN museums AS m
  ON w.museum = m.name
INNER JOIN artists AS a
  ON w.artist = a.name
WHERE
  a.nationality = 'Italian'
  AND m.city = 'London'
GROUP BY 
  w.museum;

  -- 9- Per ciascun artista, il nome dell’artista ed il 
  -- numero di sue opere conservate alla “Galleria degli Uffizi”
SELECT
  w.artist,
  COUNT(w.id) AS works_count
FROM works AS w
WHERE
  w.museum = 'Galleria degli Uffizi'
GROUP BY 
  w.artist;

  -- 10- I musei che conservano almeno 20 opere di artisti italiani
SELECT
  w.museum,
  COUNT(w.id) AS works_count
FROM works AS w
INNER JOIN artists AS a
  ON w.artist = a.name
WHERE 
  a.nationality = 'Italian'
GROUP BY 
  w.museum
HAVING
  COUNT(w.id) >= 20;

  -- 11- Per ogni museo, il numero di opere 
  -- divise per la nazionalità dell’artista
SELECT 
  w.museum,
  a.nationality,
  COUNT(w.id) AS works_count
FROM works AS w
INNER JOIN artists AS a
  ON w.artist = a.name
GROUP BY 
  w.museum, a.nationality;

  -- 12 – Trovare gli artisti che hanno prodotto 
  -- opere conservate nelle città di Roma e Firenze vissuti nel XIII sec.
SELECT
  w.artist
FROM works AS w
INNER JOIN artists AS a
  ON w.artist = a.name
INNER JOIN museums AS m
  ON w.museum = m.name
WHERE
  m.city IN ('Rome', 'Florence') -- se la città è una delle due, rimane la
  AND a.birth_date >= '1200-01-01'
  AND a.death_date <= '1299-12-31'
GROUP BY 
  w.artist -- raggruppa per artista
HAVING 
  COUNT(DISTINCT m.city) = 2;

  -- 13 – Trovare tutte le opere di artisti italiani 
  -- che contengano la parola “Madonna” conservate agli “Uffizi”
SELECT 
  w.title
FROM works AS w
INNER JOIN artists AS a
  ON w.artist = a.name
WHERE 
  a.nationality = 'Italian'
  AND w.title LIKE '%Madonna%'
  AND w.museum = 'Galleria degli Uffizi';

  -- 14 – Spostare la “Nascita di Venere” dalla “Galleria degli Uffizi” 
  -- alla “National Gallery”

UPDATE works
SET museum = 'National Gallery'
WHERE
  title = 'Birth of Venus';

  -- 15 - Cancellare l’ opera “il principe William” 
  -- dal museo delle cere di Londra
DELETE FROM works
WHERE 
  title = 'Prince William'
  AND museum = 'Wax Museum';

  -- 16 – Stampare l’artista con il numero massimo di opere 
  -- conservate al Louvre
SELECT 
  w.artist
FROM works AS w
WHERE 
  w.museum = 'Louvre'
GROUP BY
  w.artist
ORDER BY 
  COUNT(w.id) DESC 
LIMIT 1;
