set serveroutput on;

DECLARE
    
    -- simple declarations
    counter NUMBER;
    counter2 NUMBER := 2;
    counter3 CONSTANT NUMBER := 3;
    
    -- error: uninitialized constant
    -- counter3 CONSTANT NUMBER;

    counter4 NUMBER(5, 2) := 4;
    
    -- "counter5" is the same type as "counter"
    counter5 counter%TYPE := 5;

    -- string declaration
    counter6 VARCHAR(255) := 'Hello';
    counter7 VARCHAR(255);

BEGIN

     -- null value (not initialized in declaration section)
    DBMS_OUTPUT.PUT_LINE(counter);
    
    -- initialize counter
    counter := 1;
    
    -- error: not (5, 2)
    -- counter4 := 1235.23;
    
    -- changing a constant is a compile time error
    -- so it is not executed in the exception section
    -- counter3 := 20;
    
    -- string concatenation
    counter7 := counter6 || ' World!';
    
    -- print everything
    DBMS_OUTPUT.PUT_LINE(SYSDATE);  -- example: 01.01.2018.
    DBMS_OUTPUT.PUT_LINE(counter);  -- 1
    DBMS_OUTPUT.PUT_LINE(counter2); -- 2
    DBMS_OUTPUT.PUT_LINE(counter3); -- 3
    DBMS_OUTPUT.PUT_LINE(counter4); -- 4
    DBMS_OUTPUT.PUT_LINE(counter5); -- 5
    DBMS_OUTPUT.PUT_LINE(counter6); -- 'Hello'
    DBMS_OUTPUT.PUT_LINE(counter7); -- 'Hello World!'
    
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('this is an error');
END;