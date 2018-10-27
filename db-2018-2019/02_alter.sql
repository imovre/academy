DROP TABLE vozila;

CREATE TABLE vozila (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    proizvodac VARCHAR(30) NOT NULL,
    model_vozila VARCHAR(30) NOT NULL,
    godina_proizvodnje NUMBER(4, 0),
    motor VARCHAR(255),
    kilometri DECIMAL(8, 2),
    broj_vrata SMALLINT DEFAULT 5
);

INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('hyundai', 'i20', 2011, 'benzinski', 100000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('bmw', '5', 2001, 'dizelski', 230000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p1', 'm1', 2000, 'dizelski', 130000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p2', 'm2', NULL, 'benzinski', 90000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p3', 'm3', 2016, 'dizelski', 35000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p4', 'm4', 2009, NULL, NULL);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p5', 'm5', 2004, 'dizelski', 184000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p6', 'm6', NULL, 'dizelski', 160000);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p7', 'm7', 2007, 'benzinski', NULL);
INSERT INTO vozila (proizvodac, model_vozila, godina_proizvodnje, motor, kilometri) VALUES ('p8', 'm8', 2011, 'dizelski', 100000);



SELECT * FROM vozila
WHERE
    kilometri IS NOT NULL
ORDER BY kilometri DESC;


/* bmw primjeri */
SELECT * FROM vozila
WHERE
    proizvodac LIKE '%m%';

SELECT * FROM vozila
WHERE
    proizvodac LIKE 'bm%';

SELECT * FROM vozila
WHERE
    proizvodac LIKE '%mw';
/* ************* */    


SELECT
    proizvodac || ' ' || model_vozila AS naziv,
    kilometri,
    motor,
    godina_proizvodnje
FROM vozila
WHERE
    motor IS NOT NULL
  AND
    godina_proizvodnje >= 2010
ORDER BY kilometri DESC;


/* dodaj polje "zastarjelo" da/ne -> 0 / 1 */
ALTER TABLE vozila ADD zastarjelo SMALLINT DEFAULT 0;

/* svi automobili koji su stariji od 2005 */
UPDATE vozila
SET
    zastarjelo = 1
WHERE
    godina_proizvodnje < 2005;
    
UPDATE vozila
SET
    kilometri = kilometri + 1000
WHERE
    motor = 'dizelski';

DELETE FROM vozila
WHERE
    kilometri IS NULL
  OR
    godina_proizvodnje IS NULL;

/* preimenuj polje "zastarjelo" u "zastarjelo_vozilo" */
ALTER TABLE vozila RENAME COLUMN zastarjelo TO zastarjelo_vozilo;

/* obrisi kolonu */
ALTER TABLE vozila DROP COLUMN broj_vrata;

/* obrisi sve iz tablice vozila */
TRUNCATE TABLE vozila;

/* obrisi tablicu vozila */
DROP TABLE vozila;