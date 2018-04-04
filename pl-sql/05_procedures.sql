-- additional readings: https://www.tutorialspoint.com/plsql/plsql_procedures.htm

set serveroutput on;

-- just an example - triggers are much better solution here
CREATE OR REPLACE PROCEDURE initialize_full_names IS
BEGIN
    UPDATE users
    SET full_name = first_name || ' ' || last_name;
    COMMIT;
EXCEPTION   -- handle any errors
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);  -- show details
    rollback;
    raise;
END initialize_full_names;

/

call initialize_full_names();

/

-- increase income by some %
CREATE OR REPLACE PROCEDURE adjust_gross_income(
    in_user_id IN NUMBER,   -- id of the user
    in_percentage IN NUMBER -- percentage of increase
) IS
BEGIN
    UPDATE users
    SET gross_income = gross_income + gross_income * in_percentage / 100   
    WHERE users.id = in_user_id;
    COMMIT;
EXCEPTION   -- handle any errors
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);  -- show details
    rollback;
    raise;
END adjust_gross_income;

/

-- increase income for 10% for user with id 1
call adjust_gross_income(1, 10);

/

-- same as the other version of this procedure
-- but now with an OUT parameter
CREATE OR REPLACE PROCEDURE adjust_gross_income_out(
    in_user_id IN NUMBER,   -- id of the user
    in_percentage IN NUMBER, -- percentage of increase
    res OUT NUMBER           -- result - OUT number
) IS
BEGIN
    UPDATE users
    SET gross_income = gross_income + gross_income * in_percentage / 100   
    WHERE users.id = in_user_id;
    COMMIT;
    SELECT gross_income INTO res FROM users WHERE users.id = in_user_id;
EXCEPTION   -- handle any errors
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);  -- show details
    rollback;
    raise;
END adjust_gross_income_out;

/

DECLARE
    income NUMBER;
BEGIN
    adjust_gross_income_out(1, 10, income);
    DBMS_OUTPUT.PUT_LINE(income);
END;

/

