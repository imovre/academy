SELECT
    nastavnici.ime,
    nastavnici.prezime,
    mjesta.nazivmjesto,
    zupanije.nazivzupanija
FROM nastavnici
INNER JOIN mjesta
    ON mjesta.postbr = nastavnici.postbr
INNER JOIN zupanije
    ON zupanije.id =  mjesta.idZupanija;



SELECT
    kolegiji.naziv,
    studenti.ime || ' ' || studenti.prezime AS student,
    ocjene.ocjena,
    ocjene.vrijemePolaganja
FROM ocjene
inner join studenti
    on studenti.jmbag = ocjene.jmbagStudent
inner join kolegiji
    on kolegiji.id = ocjene.idKolegij
ORDER BY vrijemepolaganja DESC;


SELECT
    kolegiji.naziv as "neki kolegij",
    smjerovi.naziv as smjer,
    ustanove.naziv as ustanova
FROM kolegiji
INNER JOIN smjerovi
ON kolegiji.idSmjer = smjerovi.id
INNER JOIN ustanove
on ustanove.oib = smjerovi.oibustanova
WHERE
    LOWER(ustanove.naziv) LIKE '%veleučilište%'
    AND
    EXTRACT(YEAR FROM ustanove.datumosnutka) < 2005;
    

SELECT
    prebivaliste.nazivMjesto AS prebivaliste,
    stanovanje.nazivMjesto AS boraviste,
    studenti.*
FROM studenti
INNER JOIN mjesta prebivaliste
ON studenti.postbrprebivanje = prebivaliste.postbr
INNER JOIN mjesta stanovanje
ON studenti.postbrstanovanja = stanovanje.postbr
WHERE
    stanovanje.postbr <> prebivaliste.postbr;


SELECT
    kolegiji.naziv AS kolegij,
    ulogaizvrsitelja.naziv AS uloga,
    nastavnici.ime,
    nastavnici.prezime,
    nastavnici.*
FROM kolegiji
INNER JOIN izvrsitelji
ON kolegiji.id = izvrsitelji.idKolegij
INNER JOIN ulogaizvrsitelja
ON izvrsitelji.idUlogaIzvrsitelja = ulogaizvrsitelja.id
INNER JOIN nastavnici
ON nastavnici.jmbg = izvrsitelji.jmbgNastavnik
WHERE
    nastavnici.titulaispred IS NOT NULL
    AND
    nastavnici.titulaiza IS NOT NULL;
