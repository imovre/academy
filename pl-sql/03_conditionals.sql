set serveroutput on;

-- "if" example
DECLARE
    i NUMBER := 1;
    event NUMBER := 0;
    topValue NUMBER := 10;
BEGIN

    WHILE i <= TOPVALUE LOOP
        IF mod(i, 2) = event THEN
            -- prints: "the 5th element"
            DBMS_OUTPUT.PUT_LINE('the ' || i || 'th element');
        END IF;
        i := i + 1;
    END LOOP;

END;

/

-- "if null" example
DECLARE
    i NUMBER;
BEGIN
    IF i IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('i is null');
    END IF;
    -- prints: i is null
END;

/

-- "if-else" example
DECLARE
    i NUMBER := 1;
    event NUMBER := 5;
    topValue NUMBER := 10;
BEGIN

    WHILE i <= TOPVALUE LOOP
        IF i = event THEN
            -- prints: "the 5th element"
            DBMS_OUTPUT.PUT_LINE('the ' || event || 'th element');
        ELSE
            DBMS_OUTPUT.PUT_LINE('not found');
        END IF;
        i := i + 1;
    END LOOP;

/*
    prints:
    not found
    not found
    not found
    not found
    the 5th element
    not found
    not found
    not found
    not found
    not found
*/
END;

/

-- "if-else" example
DECLARE
    i NUMBER := 1;
    event NUMBER := 5;
    event2 NUMBER := 6;
    topValue NUMBER := 10;
BEGIN

    WHILE i <= TOPVALUE LOOP
        IF i = event THEN
            -- prints: "the 5th element"
            DBMS_OUTPUT.PUT_LINE('the ' || event || 'th element');
        ELSIF i = event2 THEN
            DBMS_OUTPUT.PUT_LINE('the ' || event2 || 'th element');
        ELSE
            DBMS_OUTPUT.PUT_LINE('not found');
        END IF;
        i := i + 1;
    END LOOP;

/*
    prints:
    not found
    not found
    not found
    not found
    the 5th element
    the 6th element
    not found
    not found
    not found
    not found
*/
END;

/

-- "case" expression
DECLARE
    i NUMBER := 1;
BEGIN
    CASE i
    WHEN 6 THEN
        DBMS_OUTPUT.PUT_LINE('Saturday');
    WHEN 7 THEN
        DBMS_OUTPUT.PUT_LINE('Sunday');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Not weekend :(');
    END CASE;
    DBMS_OUTPUT.PUT_LINE('Finished');
    
/*
    prints:
    Not weekend :(
    Finished
*/
END;
