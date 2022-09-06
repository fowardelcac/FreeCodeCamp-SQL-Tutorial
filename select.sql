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

-- find the number of employees
SELECT COUNT(emp_id) FROM employee;

-- find the numer of female employees born after 1970
SELECT COUNT(emp_id) FROM employee
WHERE sex = 'F' AND birth_date >= '1970-01-01';

-- find the average of employes salaries
SELECT AVG(salary) FROM employee;

-- find the sum of salary
SELECT SUM(salary) FROM employee;

--find out how many M abd F ther are (agregation)
SELECT COUNT(sex), sex FROM employee
GROUP BY sex;

-- find the total sales from salesman
SELECT SUM(total_sales) AS sales, emp_id FROM works_with
GROUP BY emp_id
ORDER BY sales DESC;

SELECT * FROM works_with;
-- find how much money spent each client
SELECT SUM(total_sales), client_id FROM works_with
GROUP BY client_id;
