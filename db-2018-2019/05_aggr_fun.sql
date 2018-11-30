1. Potrebno je ispisati najmanju ocjenu studenta 0016099969.

SELECT
    MIN(ocjene.ocjena) AS najmanja_ocjena
FROM ocjene
WHERE jmbagstudent = '0016099969';

2. Potrebno je ispisati nazive kolegija i od koliko
   se znakova sastoje te ispisati samo one s parnim brojem.
   
SELECT
    naziv,
    length(naziv) as duljina
FROM kolegiji
WHERE
    mod(length(naziv), 2) = 0;

3. Potrebno je ispisati koliko studenata je upisano
   na smjer s id = 1

SELECT COUNT(*) AS broj_studenata FROM studenti
WHERE idSmjer = 1;

4. Potrebno je ispisati one studente kojima
   jmbag pocinje s 119.
   
SELECT * FROM studenti
WHERE
    jmbag LIKE '119%';

5. Potrebno je ispisati sve nastavnike cije je prvo
   slovo imena i prvo slovo prezimena jednako.
   
SELECT * FROM nastavnici
WHERE
    substr(ime, 1, 1) = substr(prezime, 1, 1);

6. Potrebno je ispisati sve inicijale studenata
   te ih poredati silazno.

SELECT
    substr(ime, 1, 1) || '. ' || substr(prezime, 1, 1) || '.' AS inicijali
FROM studenti
ORDER BY inicijali desc;

7. Dohvati prosjek ocjena studenta 0016099969
   te ga zaokruzi na 2 decimale.

SELECT ROUND(AVG(ocjene.ocjena), 2) FROM ocjene
WHERE ocjene.jmbagstudent = '0016099969';

   
8. Ispisi broj znakova zupanije s najduljim nazivom.


SELECT MAX(LENGTH(nazivzupanija)) AS najdulja FROM zupanije;

9. Ispisi sve studente koji su se upisali prosle godine.
                  
SELECT ime, prezime, datumupisa FROM studenti
WHERE
    extract(YEAR FROM datumupisa) =
    extract(YEAR FROM add_months(sysdate, -12));

10.) Ispisi sve studente koji stanuju u zupaniji Grad Zagreb
     te su upisali smjer informatike u 2012 godini.

SELECT * FROM studenti
inner join smjerovi
    on studenti.idSmjer = smjerovi.id
inner join mjesta
    on studenti.postbrstanovanja = mjesta.postbr
inner join zupanije
    on zupanije.id = mjesta.idzupanija
where
    zupanije.nazivzupanija = 'Grad Zagreb'
    AND
    smjerovi.naziv = 'smjer informatika'
    AND
    extract(year from studenti.datumupisa) = 2012;
