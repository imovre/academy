set serveroutput on;

-- showing the number of employees
SELECT COUNT(*) FROM zaposlenici;

-- slow query without index
SELECT * FROM zaposlenici WHERE ime = 'Borna';

-- show execution plan
EXPLAIN PLAN FOR SELECT * FROM zaposlenici WHERE ime = 'Borna';
SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());

-- create index on first name
CREATE INDEX idx_zaposlenici_ime ON zaposlenici(ime);

-- fast query with index
SELECT * FROM zaposlenici WHERE ime = 'Borna';

-- show execution plan
EXPLAIN PLAN FOR SELECT * FROM zaposlenici WHERE ime = 'Borna';
SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY());

-- dropping the index
DROP INDEX idx_zaposlenici_ime;
