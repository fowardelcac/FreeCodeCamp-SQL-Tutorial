-- union
-- find  list of employee and branch name
SELECT first_name as QBSLC
FROM employee
UNION
SELECT branch_name 
FROM branch;

-- find a list of all clients and branchs suppliers names
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- find a list of all onet spent or earned by teh company
SELECT salary FROM employee 
UNION
SELECT total_sales FROM works_with;

-- joins
INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

-- find all branches and the names of their managers, join employee table with branch table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch ON employee.emp_id = branch.mgr_id;

-- con left join incluimos todos los elemtnos de la tabla employee
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch ON employee.emp_id = branch.mgr_id;

-- TODO DE LA TABLA DERECHA
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch ON employee.emp_id = branch.mgr_id;


-- nested query
-- Finf names of all employees who have sold over 30k to a single client
SELECT employee.first_name, employee.last_name 
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id FROM works_with
    WHERE works_with.total_sales > 30000
);

-- Find all clients whoe are handled by the branch 
-- that michael scott manages
SELECT client.client_name 
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id 
    FROM branch
    WHERE branch.mgr_id = 102
);
