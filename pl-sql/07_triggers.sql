set serveroutput on;

/* update tasks table on change */
CREATE OR REPLACE TRIGGER trig_update_tasks
    BEFORE INSERT
    OR UPDATE ON tasks
    FOR EACH ROW
BEGIN
    /* difference of hours */
    :NEW.hours_diff := :NEW.hours_predicted - :NEW.hours_spent;

    /* is task late */
    IF :NEW.finish_date > :NEW.planned_finish_date THEN
        :NEW.is_late := 1;
    ELSE
        :NEW.is_late := 0;
    END IF;
    
    /* is task mine */
    IF :NEW.user_id = :NEW.created_by_id THEN
        :NEW.is_mine := 1;
    ELSE
        :NEW.is_mine := 0;
    END IF;
END;
/

/* update only one row instead of calling whole procedure
 * UPDATE is missing */
CREATE OR REPLACE TRIGGER trig_update_users_task_change
    AFTER INSERT
    OR DELETE ON tasks
    FOR EACH ROW
DECLARE
    user_id NUMBER;
BEGIN
    IF INSERTING THEN
        user_id := :NEW.user_id;
        UPDATE users SET task_count = task_count + 1 WHERE id = user_id;
    END IF;
    
    IF DELETING THEN
        user_id := :OLD.user_id;
        UPDATE users SET task_count = task_count - 1 WHERE id = user_id;
    END IF;
END;

/

ALTER TRIGGER trig_update_users_task_change DISABLE;

/

/* procedure which updates task_count in users */
CREATE OR REPLACE PROCEDURE initialize_task_count IS
BEGIN
    UPDATE users
    SET task_count = (SELECT COUNT(*) FROM tasks WHERE user_id = users.id);
END initialize_task_count;

/

/* call procedure from trigger */
CREATE OR REPLACE TRIGGER trig_update_users_after_task
    AFTER INSERT
    OR UPDATE ON tasks
BEGIN
    initialize_task_count();
END;

/

/* update client tasks count procedure */
CREATE OR REPLACE PROCEDURE initialize_task_count_clients IS
BEGIN
    UPDATE clients
    SET task_count = (SELECT COUNT(*) FROM tasks WHERE tasks.client_id = clients.id);
END initialize_task_count_clients;
/

INSERT INTO tasks
    (id, name, user_id, created_by_id, client_id, hours_predicted, hours_spent) VALUES
    (2, 'Implement login screen', 1, 1, 1, 10, 12);
    

/* calculate mpc */
CREATE OR REPLACE TRIGGER trig_mpc_vpc
BEFORE INSERT OR
UPDATE ON products
FOR EACH ROW
DECLARE
    tmp_tax NUMBER;
BEGIN
    tmp_tax := 1 + to_number(:NEW.tax);
    :NEW.mpc := :NEW.vpc * tmp_tax;
    :NEW.tax_value := :NEW.mpc - :NEW.vpc;
END;

/
SELECT TO_NUMBER(config_value, '999.99') FROM configurations WHERE config_key = 'tax';
/

/* calculate mpc from global tax rate */
CREATE OR REPLACE TRIGGER trig_mpc_pdv_global_tax
BEFORE INSERT OR
UPDATE ON products
FOR EACH ROW
DECLARE
    tmp_tax NUMBER;
BEGIN
    SELECT TO_NUMBER(config_value, '999.99') INTO tmp_tax FROM configurations WHERE config_key = 'tax';
    tmp_tax := 1 + to_number(:NEW.tax);
    :NEW.mpc := :NEW.vpc * tmp_tax;
    :NEW.tax_value := :NEW.mpc - :NEW.vpc;
END;
