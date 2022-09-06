-- find all employes order by salary
SELECT * FROM employee  ORDER BY salary DESC;

-- find all employes order by sex then name
SELECT * FROM employee  ORDER BY sex, first_name, last_name; 

-- find the first 5 employees in the table
SELECT * FROM employee LIMIT 5;

-- find the first and last name of all employees
SELECT first_name, last_name FROM employee;

-- find the furname and surnames names of all employes
SELECT first_name AS forename, last_name AS surname
FROM employee;


-- find out all the different genders
SELECT DISTINCT sex FROM employee;

