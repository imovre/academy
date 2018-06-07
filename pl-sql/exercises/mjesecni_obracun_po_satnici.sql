set serveroutput on;

CREATE OR REPLACE FUNCTION dohvati_satnicu(p_zaposlenik_id NUMBER, p_projekt_id NUMBER)
RETURN NUMBER IS
    tmp_satnica NUMBER(10, 2) := 0;
BEGIN
    SELECT satnica
    INTO tmp_satnica
    FROM projekt_zaposlenik
    WHERE zaposlenik_id = p_zaposlenik_id
    AND projekt_id = p_projekt_id;

    RETURN tmp_satnica;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('pogreska');
END;

/


CREATE OR REPLACE FUNCTION ukupno_sati(p_zaposlenik_id NUMBER, datum_od DATE, datum_do DATE)
RETURN NUMBER IS
    ukupno NUMBER(10, 2) := 0;
BEGIN
    SELECT SUM(broj_sati)
    INTO ukupno
    FROM zadaci
    WHERE
        zaposlenik_id = p_zaposlenik_id
    AND
        datum_zavrsetka >= datum_od
    AND
        datum_zavrsetka <= datum_do;

    RETURN ukupno;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('pogreska');
END;

/

CREATE OR REPLACE PROCEDURE novi_obracun(p_zaposlenik_id NUMBER, datum_od DATE, datum_do DATE) IS
    ukupan_broj_sati NUMBER(10, 2) := 0;
    ukupna_cijena NUMBER(10, 2) := 0;
BEGIN
    ukupan_broj_sati := ukupno_sati(p_zaposlenik_id, datum_od, datum_do);
    
    -- pozivanje samo za jedan projekt je dovoljno rjesenje
    ukupna_cijena := ukupan_broj_sati * dohvati_satnicu(p_zaposlenik_id, 1);

    INSERT INTO obracuni (
        zaposlenik_id,
        datum_od,
        datum_do,
        ukupan_broj_sati,
        ukupna_cijena
    ) VALUES (
        p_zaposlenik_id,
        datum_od,
        datum_do,
        ukupan_broj_sati,
        ukupna_cijena
    );
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('pogreska');
        ROLLBACK;
END;

/

DECLARE
    CURSOR cur_zaposlenici IS
        SELECT id FROM zaposlenici;
    
    zaposlenik cur_zaposlenici%ROWTYPE;
    
    datum_od DATE := date '2018-01-01';
    datum_do DATE := date '2018-01-31';
    
BEGIN
    OPEN cur_zaposlenici;
    LOOP

        FETCH cur_zaposlenici INTO zaposlenik;
        EXIT WHEN cur_zaposlenici%NOTFOUND;
        
        novi_obracun(zaposlenik.id, datum_od, datum_do);
    
    END LOOP;
    CLOSE cur_zaposlenici;
END;


/