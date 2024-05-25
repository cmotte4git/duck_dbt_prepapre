SELECT 42;

CREATE TABLE person (name VARCHAR, age BIGINT);
INSERT INTO person VALUES ('Alice', 37), ('Ana', 35), ('Bob', 41), ('Bea', 25);

PREPARE query_person AS
    SELECT *
    FROM person
    WHERE starts_with(name, ?)
      AND age >= ?;


EXECUTE query_person('B', 40);
SHOW PREPARE;


PRAGMA table_info('person');

SELECT temporary FROM duckdb_tables;
