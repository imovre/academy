-- obrisi tablicu korisnici (ako postoji)
DROP TABLE korisnici;

-- izrada tablice korisnici
CREATE TABLE korisnici (
    id NUMBER GENERATED ALWAYS AS IDENTITY,
    ime VARCHAR(30),
    prezime VARCHAR(30),
    email VARCHAR(255) NOT NULL,
    lozinka VARCHAR(255) NOT NULL,
    datum_rodenja DATE,        -- date '1990-01-01'
    oib CHAR(11),              -- 11111111111
    neto_placa DECIMAL(10, 2), -- najveci broj: 99999999.99
    visina FLOAT
);

/

INSERT INTO korisnici (
    ime,
    prezime,
    email,
    lozinka
) VALUES (
    'Marko',
    'Markovic',
    'marko@markovic.com',
    'lozinka123'
);

/

INSERT INTO korisnici (
    ime,
    prezime,
    email,
    lozinka,
    oib
) VALUES (
    'Petar',
    'Markovic',
    'petar@markovic.com',
    'lozin',
    '22222222222'
);

/

INSERT INTO korisnici (
    email,
    lozinka,
    datum_rodenja,
    neto_placa,
    visina
) VALUES (
    'matija@markovic.com',
    'lozinka1',
    date '1991-01-01',
    10000,
    180.45
);

/

INSERT INTO korisnici (
    ime,
    prezime,
    email,
    lozinka,
    datum_rodenja,
    oib,
    neto_placa,
    visina
) VALUES (
    'Ivana',
    'Lidic',
    'ivana@lidic.com',
    'novipassword',
    date '1990-01-01',
    '11111111111',
    10000,
    170.55
);

/

SELECT * FROM korisnici;

/

SELECT
    ime || ' ' || prezime AS puno_ime,
    datum_rodenja
FROM korisnici;

/


-- korisnici koji nemaju napisan ni datum rodenja ni oib
SELECT
    email,
    lozinka,
    datum_rodenja,
    oib
FROM korisnici
WHERE
    datum_rodenja IS NULL
  AND
    oib IS NOT NULL;

/

-- postavi korisniku datum rodenja
UPDATE korisnici
SET
    datum_rodenja = date '1991-01-01'
WHERE
    oib = '22222222222';

/

-- povecaj *svim* korisnicima placu za 500
UPDATE korisnici
SET
    neto_placa = neto_placa + 500;

/

-- postavi oib u 'nepoznato' korisnicima koji nemaju oib
UPDATE korisnici
SET
    oib = 'nepoznato',
WHERE
    oib IS NULL;
    
/

-- brisanje korisnika
DELETE FROM korisnici
WHERE
    oib = 'nepoznato'
    OR
    email IS NULL;

DELETE FROM korisnici
WHERE
    id > 3;

/

-- brisanje svih podataka iz tablice (brisanje cijele tablice pa rekreiranje)
TRUNCATE TABLE korisnici;

