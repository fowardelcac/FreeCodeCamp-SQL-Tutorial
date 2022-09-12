-- Triggers
-- block of sql donde deifnis cierta operaion de la base de datos
-- dentro de la terminal
CREATE TABLE trigger_test (
    message VARCHAR(100)
);

SELECT * FROM trigger_test;

DELIMITER $$
CREATE 
    TRIGGER my_trigger BEFORE INSERT ON employee
    FOR EACH ROW 
    BEGIN
        INSERT INTO trigger_test VALUES('added new employee');
    END$$
DELIMITER;

SELECT * FROM employee;

INSERT INTO employee
VALUES(109, 'Oscar', 'Gor', '1968-02-19', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;
--------------------------------------------
INSERT INTO employee
VALUES(111, 'Kevin', 'Malone', '1978-02-19', 'M', 690000, 106, 3);

DELIMITER $$
CREATE 
    TRIGGER my_trigger1 BEFORE INSERT ON employee
    FOR EACH ROW 
    BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER;

--------------------------------------------
DELIMITER $$
CREATE 
    TRIGGER my_trigger2 BEFORE INSERT ON employee
    FOR EACH ROW 
    BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female employee');
        ELSE
            INSERT INTO trigger_test VALUES('added leftie employee');
        END If;
    END$$
DELIMITER;

INSERT INTO employee
VALUES(112, 'Juan', 'Malone', '2001-10-03', 'M', 690000, 106, 3);

SELECT * FROM employee;
--------------------------------------------
ALTER TABLE trigger_test DROP COLUMN time;
