SELECT
	departmentId,
	COUNT(employeeId) headcount
FROM
	employee
GROUP BY
	departmentId;

-------------- 2
SELECT
	e.departmentId,
	d.name,
	COUNT(employeeid) headcount
FROM
	employee e
INNER JOIN department d ON d.departmentId = e.departmentId
GROUP BY
	e.departmentId,d.name

---- 3 with having
SELECT
	e.departmentId,
	d.name,
	COUNT(employeeid) as headcount
FROM
	employee e
INNER JOIN department d ON d.departmentId = e.departmentId
GROUP BY
	e.departmentId,d.name
HAVING COUNT(employeeid) > 2
ORDER BY headcount DESC;

---- salary

SELECT
	e.departmentId,
	d.name,
	sum(salary) as total_salary
FROM
	employee e
INNER JOIN department d ON d.departmentId = e.departmentId
GROUP BY
	e.departmentId, d.name;


---- SQL GROUP BY and DISTINCT

SELECT
	phonenumber
FROM
	employee
GROUP BY
	phonenumber;
