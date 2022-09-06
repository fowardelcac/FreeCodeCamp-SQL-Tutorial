-- % = any number of characters(end), _= one character
-- find any client's who are an llc
SELECT * FROM client 
WHERE client_name LIKE'%LLC';

UPDATE branch_supplier SET supplier_name = 'Stamford Label'
WHERE supplier_name  = 'Stamford Lables';

-- find any branch supplier who are in the label businees
SELECT * FROM branch_supplier 
WHERE supplier_name LIKE '%Label%'; --en alguna parte

-- find any employee born in october
SELECT * FROM employee
WHERE birth_date LIKE '____-10%';

-- find any client who are schools
SELECT * FROM client
WHERE client_name LIKE '%School%';
