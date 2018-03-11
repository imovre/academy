set serveroutput on;

-- simple loop with GOTO
BEGIN

    -- starts the loop
    LOOP
        DBMS_OUTPUT.PUT_LINE('in a loop');
        -- breaks the loop
        GOTO out_of_loop;
    END LOOP;
    <<out_of_loop>>
    NULL;

EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('this is an error');

END;

/

-- for loop
DECLARE

    -- simple declarations
    counter NUMBER := 3;

BEGIN

    FOR i IN 1..counter LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        DBMS_OUTPUT.PUT_LINE('in a loop');
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('this is an error');

END;

/

-- for loop reverse
DECLARE

    -- simple declarations
    counter NUMBER := 3;

BEGIN
    -- prints 3 2 1
    FOR i IN REVERSE 1..counter LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        DBMS_OUTPUT.PUT_LINE('in a loop');
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('this is an error');

END;

/

-- while loop
DECLARE

    -- simple declarations
    counter NUMBER := 3;
    i NUMBER := 1;

BEGIN

    -- prints 1 2 3
    WHILE i <= counter LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
        DBMS_OUTPUT.PUT_LINE('in a loop');
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('this is an error');

END;

/