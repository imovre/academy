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
    result := placa_korisnika(user_id) * 0.5;
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

BEGIN
    DBMS_OUTPUT.PUT_LINE(porezni_razred(5000));
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
RETURN DECIMAL IS
    result DECIMAL;
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
