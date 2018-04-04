-- additional readings: https://www.tutorialspoint.com/plsql/plsql_functions.htm

set serveroutput on;

-- gets a number of users in the table
CREATE OR REPLACE FUNCTION total_users
RETURN number IS
   total number(2) := 0;
BEGIN
   SELECT count(*) into total
   FROM users;

   RETURN total; 
END;

/

DECLARE
   c number(2);
BEGIN
   c := total_users();
   DBMS_OUTPUT.PUT_LINE('Number of users: ' || c);
END;

/

-- get a full description of a user, by id
CREATE OR REPLACE FUNCTION user_details(
    user_id IN NUMBER
) RETURN VARCHAR IS
    description VARCHAR(200);
BEGIN
    SELECT first_name || ', ' || last_name || ', ' || mobile INTO description
    FROM users
    WHERE id = user_id;

RETURN description;
END;

/

DECLARE
   details VARCHAR(200);
BEGIN
   details := user_details(1);
   dbms_output.put_line('Description: ' || details);
END;