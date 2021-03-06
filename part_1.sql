--1
SELECT empls.name
FROM employee AS empls, employee AS chieves
WHERE chieves.id = empls.chief_id AND empls.salary > chieves.salary;
--2
SELECT empls.name
FROM employee AS empls
WHERE empls.salary = (SELECT MAX(salary) FROM employees AS max
WHERE max.department_id = empls.department_id);
--3
SELECT department_id
FROM employee
GROUP BY department_id
HAVING COUNT(department_id) <= 3;
--4
SELECT empls.name
FROM employee AS empls
LEFT JOIN Employee AS chieves
ON (empls.chief_id = chieves.Id AND empls.department_id = chieves.department_id)
WHERE chieves.id IS NULL;
--5
SELECT empls.department_id
FROM employee as empls
GROUP BY empls.department_id
ORDER BY sum(empls.salary) desc
LIMIT 1
