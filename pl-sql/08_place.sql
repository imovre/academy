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
