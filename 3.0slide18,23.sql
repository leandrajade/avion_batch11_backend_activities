CREATE DATABASE avion_activities;

CREATE TABLE students (
    id PRIMARY KEY,
    first_name TEXT,
    middle_name TEXT,
    last_name TEXT,
    age INTEGER,
    location TEXT
);

INSERT INTO students (id, first_name, last_name, age, location) VALUES (1, 'Juan', 'Cruz', 18, 'Manila');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (2, 'Anne', 'Wall', 20, 'Manila');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (3, 'Theresa', 'Joseph', 21, 'Manila');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (4, 'Isaac', 'Gray', 19, 'Laguna');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (5, 'Zack', 'Matthews', 22, 'Marikina');
INSERT INTO students (id, first_name, last_name, age, location) VALUES (6, 'Finn', 'Lam', 25, 'Manila');

UPDATE students SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1;
DELETE FROM students WHERE id = 1;

---- slide 23
 
SELECT COUNT(id) FROM students;
SELECT * FROM students where location = 'Manila';
select avg(age) from students;
select * from students order by age desc;
