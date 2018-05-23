set serveroutput on;

CREATE OR REPLACE FUNCTION placa_korisnika(
    user_id IN NUMBER
) RETURN number IS
   placa number := 0;
BEGIN
   SELECT gross_income into placa
   FROM users
   WHERE id = user_id;

   RETURN placa;
END;

/

CREATE OR REPLACE FUNCTION I_mirovinski_stup (user_id NUMBER)
RETURN DECIMAL IS
    result DECIMAL;
BEGIN
    result := placa_korisnika(user_id) * 0.15;
    return result;
END;

/

CREATE OR REPLACE FUNCTION II_mirovinski_stup (user_id NUMBER)
RETURN DECIMAL IS
    result DECIMAL;
BEGIN
    result := placa_korisnika(user_id) * 0.05;
    return result;
END;

/

BEGIN
DBMS_OUTPUT.PUT_LINE(I_mirovinski_stup(1));
END;

/

CREATE OR REPLACE FUNCTION I_mirovinski_stup_tablica (user_id NUMBER)
RETURN DECIMAL IS
    result DECIMAL;
    postotak DECIMAL(5, 2);
BEGIN
    SELECT vrijednost INTO postotak FROM mirovinski_stupovi WHERE naziv = 'I. mirovinski stup';
    result := placa_korisnika(user_id) * postotak;
    return result;
END;

/

BEGIN
DBMS_OUTPUT.PUT_LINE(I_mirovinski_stup_tablica(1));
END;

/

CREATE OR REPLACE FUNCTION ukupna_olaksica(user_id NUMBER)
RETURN DECIMAL IS
    result DECIMAL;
BEGIN
    SELECT vrijednost
    INTO result
    FROM olaksice
        INNER JOIN olaksica_user ON olaksice.id = olaksica_user.olaksica_id
    WHERE olaksica_user.user_id = user_id
    AND naziv = 'Osnovni osobni odbitak';

    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(ukupna_olaksica(1));
END;

/

CREATE OR REPLACE FUNCTION oporezivi_dohodak(gross_income DECIMAL, ukupna_olaksica DECIMAL, bruto_doprinosi DECIMAL)
RETURN DECIMAL IS
    result DECIMAL;
BEGIN
    result := gross_income - ukupna_olaksica - bruto_doprinosi;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(oporezivi_dohodak(10000, 3800, 2000));
END;

/

CREATE OR REPLACE FUNCTION porezni_razred(gross_income DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
BEGIN
    SELECT MIN(vrijednost) INTO result FROM porezni_razredi WHERE gross_income <= vrijednost_do;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(porezni_razred(10000));
END;

/

CREATE OR REPLACE FUNCTION ukupni_porez(oporezivi_dohodak DECIMAL, porezni_razred DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
BEGIN
    result := oporezivi_dohodak * porezni_razred;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(ukupni_porez(4200, 0.24));
END;

/

CREATE OR REPLACE FUNCTION ukupni_prirez(porez DECIMAL, user_id NUMBER)
RETURN NUMBER IS
    result DECIMAL(10, 2);
    postotak DECIMAL(10, 2) := 0;
BEGIN
    SELECT surtax
    INTO postotak
    FROM cities
        INNER JOIN users
            ON cities.id = users.city_id
    WHERE users.id = user_id;
    result := porez * postotak;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(ukupni_prirez(1008, 1));
END;

/

INSERT INTO configurations (id, config_key, config_value) VALUES (2, 'Doprinos za zdravstveno osiguranje', '0.15');
INSERT INTO configurations (id, config_key, config_value) VALUES (3, 'Doprinosi na plaću za Zapošljavanje', '0.017');
INSERT INTO configurations (id, config_key, config_value) VALUES (4, 'Doprinosi na plaću u slučaju ozljede na radu', '0.005');

/

CREATE OR REPLACE FUNCTION zdravstveno(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
BEGIN
    result := bruto * 0.15;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(zdravstveno(10000));
END;

/

CREATE OR REPLACE FUNCTION zdravstveno_tablica(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
    postotak DECIMAL(10, 2) := 0;
BEGIN
    SELECT TO_NUMBER(config_value, '9.99')
    INTO postotak
    FROM configurations
    WHERE config_key = 'Doprinos za zdravstveno osiguranje';
    result := bruto * postotak;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(zdravstveno_tablica(10000));
END;

/

CREATE OR REPLACE FUNCTION zaposljavanje(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
BEGIN
    result := bruto * 0.017;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(zaposljavanje(10000));
END;

/

CREATE OR REPLACE FUNCTION zdravstveno(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
BEGIN
    result := bruto * 0.15;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(zdravstveno(10000));
END;

/

CREATE OR REPLACE FUNCTION zaposljavanje_tablica(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
    postotak DECIMAL(10, 3) := 0;
BEGIN
    SELECT TO_NUMBER(config_value, '9.999')
    INTO postotak
    FROM configurations
    WHERE config_key = 'Doprinosi na plaću za Zapošljavanje';
    result := bruto * postotak;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(zaposljavanje_tablica(10000));
END;

/

CREATE OR REPLACE FUNCTION ozljede(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
BEGIN
    result := bruto * 0.005;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(ozljede(10000));
END;

/

CREATE OR REPLACE FUNCTION ozljede_tablica(bruto DECIMAL)
RETURN NUMBER IS
    result DECIMAL(10, 2);
    postotak DECIMAL(10, 3) := 0;
BEGIN
    SELECT TO_NUMBER(config_value, '9.999')
    INTO postotak
    FROM configurations
    WHERE config_key = 'Doprinosi na plaću u slučaju ozljede na radu';
    result := bruto * postotak;
    return result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(ozljede_tablica(10000));
END;

/

CREATE OR REPLACE FUNCTION neto_izracun(user_id NUMBER)
RETURN NUMBER IS
    result DECIMAL(10, 2);
    bruto DECIMAL(10, 2);
    mirovine_ukupno DECIMAL(10, 2);
    olaksice DECIMAL(10, 2);
    oporezivo DECIMAL(10, 2);
    porez DECIMAL(10, 2);
    prirez DECIMAL(10, 2);
BEGIN
    bruto := placa_korisnika(user_id);
    mirovine_ukupno := I_mirovinski_stup(user_id) + II_mirovinski_stup(user_id);
    olaksice := ukupna_olaksica(user_id);
    oporezivo := bruto - mirovine_ukupno - olaksice;
    porez := ukupni_porez(oporezivo, porezni_razred(bruto));
    prirez := ukupni_prirez(porez, user_id);
    result := bruto - mirovine_ukupno - porez - prirez;
    RETURN result;
END;

/

BEGIN
    DBMS_OUTPUT.PUT_LINE(neto_izracun(1));
END;

/

CREATE OR REPLACE PROCEDURE spremi_neto(
    in_user_id IN NUMBER,   -- id of the user
    in_neto IN DECIMAL
) IS
BEGIN
    UPDATE users
    SET net_income = in_neto  
    WHERE users.id = in_user_id;
    COMMIT;
EXCEPTION   -- handle any errors
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);  -- show details
    rollback;
    raise;
END spremi_neto;

/

-- obracun za sve zaposlenike
DECLARE
    CURSOR cur_get_users IS
        SELECT
            id, first_name, last_name, gross_income, city_id
        FROM users;
    
    tmp_row cur_get_users%ROWTYPE;
    neto DECIMAL(10, 2);
BEGIN
    OPEN cur_get_users;
    LOOP

        FETCH cur_get_users INTO tmp_row;
        EXIT WHEN cur_get_users%NOTFOUND;
        
        neto := neto_izracun(tmp_row.id);
        spremi_neto(tmp_row.id, neto);
    
    END LOOP;
    CLOSE cur_get_users;
END;
