set serveroutput on;

DECLARE
    
    -- simple declarations
    COUNTER NUMBER;
    COUNTER2 NUMBER := 2;
    COUNTER3 CONSTANT NUMBER := 3;
    
    -- error: uninitialized constant
    -- COUNTER3 CONSTANT NUMBER;

    COUNTER4 NUMBER(5, 2) := 4;
    COUNTER5 COUNTER%TYPE := 5;
    
    COUNTER6 VARCHAR(255) := 'Hello';
    COUNTER7 VARCHAR(255);

BEGIN

     -- null value (not initialized in declaration section
    DBMS_OUTPUT.PUT_LINE(COUNTER);
    
    -- initialize COUNTER
    COUNTER := 1;
    
    -- error: not (5, 2)
    -- COUNTER4 := 1235.23;
    
    -- changing a constant is a compile time error
    -- so it is not executed in the exception section
    -- COUNTER3 := 20;
    
    -- string concatenation
    COUNTER7 := COUNTER6 || ' World!';
    
    DBMS_OUTPUT.PUT_LINE(SYSDATE);  -- example: 01.01.2018.
    DBMS_OUTPUT.PUT_LINE(COUNTER);  -- 1
    DBMS_OUTPUT.PUT_LINE(COUNTER2); -- 2
    DBMS_OUTPUT.PUT_LINE(COUNTER3); -- 3
    DBMS_OUTPUT.PUT_LINE(COUNTER4); -- 4
    DBMS_OUTPUT.PUT_LINE(COUNTER5); -- 5
    DBMS_OUTPUT.PUT_LINE(COUNTER6); -- 'Hello'
    DBMS_OUTPUT.PUT_LINE(COUNTER7); -- 'Hello World!'
    
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('this is an error');
END;