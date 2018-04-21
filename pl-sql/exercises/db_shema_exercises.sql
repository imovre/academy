
-- Napiši kursor koji prima mjesto kao parametar, a ispisuje sve studente tog mjesta.

set serveroutput on;

DECLARE
    CURSOR cur_get_users(mjesto_id NUMBER) IS
        SELECT ime, prezime FROM studenti WHERE studenti.mjesto_id = mjesto_id;
    tmp_row cur_get_users%ROWTYPE;
BEGIN
    OPEN cur_get_users(1);
    LOOP

        FETCH cur_get_users INTO tmp_row;
        EXIT WHEN cur_get_users%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(tmp_row.ime || ' ' || tmp_row.prezime);
    
    END LOOP;
    CLOSE cur_get_users;
END;

/

-- Napiši proceduru koja za svakog profesora računa prosjek njegovih studenata i
-- upisuje ga u kolonu "prosjek" u tablici "profesori".

CREATE OR REPLACE PROCEDURE update_prosjek IS
BEGIN
    UPDATE profesori
        SET prosjek = (
        SELECT AVG(ocjene.ocjena) FROM ocjene
            INNER JOIN predmeti ON ocjene.predmet_id = predmeti.id
            INNER JOIN predmeti_profesori ON predmeti.id = predmeti_profesori.profesor_id
        WHERE predmeti_profesori.profesor_id = profesori.id
    );
    COMMIT;
EXCEPTION   -- handle any errors
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);  -- show details
    rollback;
    raise;
END update_prosjek;
/

BEGIN
update_prosjek();
END;


