-- База данных «Страны и города мира»:
-- 1. Сделать запрос, в котором мы выберем все данные о городе – регион, страна.
-- 2. Выбрать все города из Московской области.

SELECT country_id, region_id FROM  geodata._cities
    WHERE title = 'Московская область'
    GROUP BY title 

-- База данных «Сотрудники»:

-- 1. Выбрать среднюю зарплату по отделам.
SELECT AVG(employees.salary) FROM employees.salaries

-- 2. Выбрать максимальную зарплату у сотрудника.
SELECT MAX(employees.salary) FROM employees.salaries

-- 3. Удалить одного сотрудника, у которого максимальная зарплата.
DELETE FROM employees.employees, employees.departments, employees.dept_manager, employees.dept_emp, 
employees.titles, employees.salaries
    WHERE employees.salary = MAX(employees.salary)

-- 4. Посчитать количество сотрудников во всех отделах.
SELECT COUNT(emp.no) FROM employees.employees

-- 5. Найти количество сотрудников в отделах и посмотреть, сколько всего денег получает отдел.
SELECT COUNT(emp_no), COUNT(id)
    FROM 
        employees.cities CN
            JOIN
        employees. salaries CN
    GROUP BY dept_name
