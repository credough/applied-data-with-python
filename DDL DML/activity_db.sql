CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
last_name TEXT NOT NULL,
first_name TEXT NOT NULL,
middle_name TEXT NULL,
age INT NOT NULL,
current_status VARCHAR(50) NOT NULL DEFAULT 'employed'
);


INSERT INTO employees (last_name, first_name, middle_name, age, current_status)
VALUES ('Celindro', 'Aaron', 'Patlingrao', 21, 'admin');

INSERT INTO employees (last_name, first_name, age, current_status)
VALUES ('Celindro', 'Ahndrei', 18, 'manager');

INSERT INTO employees (last_name, first_name, middle_name, age)
VALUES ('Celindro', 'Stephanie', 'Patlingrao', 14);

SELECT * from employees