-- ON DELETE SET NULL
--  SI eliminas un dato setea como null
DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch;


-- ON DELETE CASCADE
-- elimina toda la fila
DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;
