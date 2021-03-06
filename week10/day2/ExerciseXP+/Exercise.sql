CREATE TABLE students (
	id SERIAL PRIMARY KEY,
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL
);

INSERT INTO students (last_name, first_name, birth_date) 
VALUES ('Benichou','Marc','	02/11/1998'),
('Cohen','Yoan','03/12/2010'),
('Benichou','Lea','27/07/1987'),
('Dux','Amelia','07/04/1996'),
('Grez','David','14/06/2003'),
('Simpson','Omer','03/10/1980'),
('Turi','Or','30/03/1992');

SELECT * FROM students;
SELECT first_name, last_name FROM students;
SELECT first_name, last_name FROM students WHERE id = 2;
SELECT first_name, last_name FROM students WHERE last_name = 'Benichou' AND first_name = 'Marc';
SELECT first_name, last_name FROM students WHERE last_name = 'Benichou' OR first_name = 'Marc';
SELECT first_name, last_name FROM students WHERE first_name LIKE '%a%';
SELECT first_name, last_name FROM students WHERE first_name LIKE 'a%';
SELECT first_name, last_name FROM students WHERE first_name LIKE '%a';
SELECT first_name, last_name FROM students WHERE SUBSTRING(first_name, LENGTH(first_name)-1, 1) = 'a';
SELECT first_name, last_name FROM students WHERE id = 1 AND id = 3;
SELECT * FROM students WHERE birth_date >= '1/01/2000';