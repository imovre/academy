set serveroutput on;


-- 1.
DECLARE
    CURSOR cur_get_users IS
        SELECT id, first_name, last_name FROM users
        WHERE LOWER(SUBSTR(users.first_name, 0, 1)) IN ('a', 'e', 'i', 'o', 'u');
    row_type cur_get_users%ROWTYPE;
BEGIN
    OPEN cur_get_users;
    LOOP
        FETCH cur_get_users INTO row_type;
        EXIT WHEN cur_get_users%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(row_type.id);
    END LOOP;
    CLOSE cur_get_users;
END;

/

-- 2.
DECLARE
    CURSOR cur_get_users IS
        SELECT first_name, last_name FROM users INNER JOIN languages ON users.language_id = languages.id
        WHERE languages.name = 'English';
    row_type cur_get_users%ROWTYPE;
BEGIN
    OPEN cur_get_users;
    LOOP
        FETCH cur_get_users INTO row_type;
        EXIT WHEN cur_get_users%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(row_type.first_name);
        DBMS_OUTPUT.PUT_LINE(row_type.last_name);
    END LOOP;
    CLOSE cur_get_users;
END;

/

-- 3.
DECLARE
    CURSOR cur_get_users IS
        SELECT first_name, last_name FROM users INNER JOIN company_positions ON company_positions.id = users.company_position_id
        INNER JOIN roles ON users.role_id = roles.id
        WHERE company_positions.name = 'Director' AND roles.name != 'Administrator';
    row_type cur_get_users%ROWTYPE;
BEGIN
    OPEN cur_get_users;
    LOOP
        FETCH cur_get_users INTO row_type;
        EXIT WHEN cur_get_users%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(row_type.first_name);
        DBMS_OUTPUT.PUT_LINE(row_type.last_name);
    END LOOP;
    CLOSE cur_get_users;
END;

/

-- 4.
DECLARE
    CURSOR cur_get_users IS
        SELECT first_name, last_name FROM users WHERE mobile LIKE '%222';
    row_type cur_get_users%ROWTYPE;
BEGIN
    OPEN cur_get_users;
    LOOP
        FETCH cur_get_users INTO row_type;
        EXIT WHEN cur_get_users%NOTFOUND;
        IF SUBSTR(row_type.first_name, 0, 1) = 'A' AND SUBSTR(row_type.last_name, 0, 1) = 'M' THEN
            DBMS_OUTPUT.PUT_LINE(row_type.first_name);
            DBMS_OUTPUT.PUT_LINE(row_type.last_name);
        END IF;
    END LOOP;
    CLOSE cur_get_users;
END;

/

-- 5.
DECLARE
    CURSOR cur_get_users IS
        SELECT first_name || ' ' || last_name AS full_name, company_positions.name AS position_name
        FROM users INNER JOIN company_positions ON users.company_position_id = company_positions.id;
    row_type cur_get_users%ROWTYPE;
BEGIN
    OPEN cur_get_users;
    LOOP
        FETCH cur_get_users INTO row_type;
        EXIT WHEN cur_get_users%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(row_type.full_name);
        DBMS_OUTPUT.PUT_LINE(row_type.position_name);
    END LOOP;
    CLOSE cur_get_users;
END;

