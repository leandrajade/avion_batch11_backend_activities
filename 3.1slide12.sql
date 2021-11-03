CREATE TABLE classrooms (
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    section CHARACTER VARYING(50)
);

INSERT INTO classrooms (student_id, section) VALUES (1, 'Spinoza');
INSERT INTO classrooms (student_id, section) VALUES (2, 'Machiavelli');
INSERT INTO classrooms (student_id, section) VALUES (3, 'Beauvoir');
INSERT INTO classrooms (student_id, section) VALUES (4, 'Kant');
INSERT INTO classrooms (student_id, section) VALUES (5, 'Descartes');
INSERT INTO classrooms (student_id, section) VALUES (6, 'Foucault');
INSERT INTO classrooms (student_id, section) VALUES (7, 'Hume');
INSERT INTO classrooms (student_id, section) VALUES (8, 'Nietzsche');
INSERT INTO classrooms (student_id, section) VALUES (9, 'Marx');
INSERT INTO classrooms (student_id, section) VALUES (10, 'Engels');

--- INNER JOIN
SELECT c.section, s.last_name as student_name FROM classrooms c INNER JOIN students s ON c.student_id = s.id;

--- LEFT JOIN
SELECT c.section, s.last_name as student_name FROM classrooms c LEFT JOIN students s ON c.student_id = s.id;

--- RIGHT JOIN
SELECT c.section, s.last_name as student_name FROM classrooms c RIGHT JOIN students s ON c.student_id = s.id;

--- FULL JOIN
SELECT c.section, s.last_name as student_name FROM classrooms c FULL JOIN students s ON c.student_id = s.id;
